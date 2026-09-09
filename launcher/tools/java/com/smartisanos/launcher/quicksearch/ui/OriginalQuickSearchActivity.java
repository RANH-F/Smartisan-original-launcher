package com.smartisanos.launcher.quicksearch.ui;

import android.app.Activity;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextWatcher;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.util.LruCache;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.KeyEvent;
import android.view.animation.AccelerateInterpolator;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.BaseAdapter;
import android.widget.AbsListView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.smartisanos.launcher.quickdesktop.QuickDesktopController;
import com.smartisanos.launcher.quicksearch.SearchEntry;
import com.smartisanos.launcher.quicksearch.SearchIconBackend;
import com.smartisanos.launcher.quicksearch.SearchHistoryRepository;
import com.smartisanos.launcher.quicksearch.SearchIndexRepository;
import com.smartisanos.launcher.quicksearch.SearchSnapshot;
import com.smartisanos.launcher.quicksearch.ContactSearchRepository;
import com.smartisanos.launcher.quicksearch.ContactSearchEntry;
import com.smartisanos.launcher.quicksearch.ContactSearchSnapshot;
import com.smartisanos.launcher.quicksearch.transition.OriginalSearchTransitionHost;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.Method;

/** Parallel Q6 Preview host for the pristine QuickSearch visual skeleton. */
public final class OriginalQuickSearchActivity extends Activity
        implements SearchIndexRepository.SnapshotListener, SearchHistoryRepository.Listener {
    private static final String TAG = "QS_ORIGINAL_UI";
    private static final String QUERY_TAG = "QS_INDEX";
    private static final String RESOURCE_ASSET =
            "quicksearch_original/original-quicksearch-res.apk";
    private static final String RESOURCE_PACKAGE =
            "com.smartisanos.launcher.quicksearch.originalresources";
    private static final float TRANSITION_RANGE = 300.0f;
    private static final float FOREGROUND_THRESHOLD = 150.0f;
    private static boolean transitionShownInProcess;

    private final ExecutorService matcherExecutor = Executors.newSingleThreadExecutor(
            new ThreadFactory() {
                @Override public Thread newThread(Runnable runnable) {
                    Thread thread = new Thread(runnable, "QuickSearchOriginalMatcher");
                    thread.setDaemon(true);
                    return thread;
                }
            });
    private final ExecutorService contactAvatarExecutor = Executors.newSingleThreadExecutor();
    private final LruCache<String, Bitmap> contactAvatarCache = new LruCache<String, Bitmap>(3 * 1024 * 1024) {
        @Override protected int sizeOf(String key, Bitmap value) { return value.getByteCount(); }
    };
    private final AtomicInteger filterVersion = new AtomicInteger();
    private final ArrayList<SearchIconBackend.IconRequest> iconRequests =
            new ArrayList<SearchIconBackend.IconRequest>();
    private final ArrayList<RowModel> allRows = new ArrayList<RowModel>();
    private final ArrayList<RowModel> visibleRows = new ArrayList<RowModel>();

    private SearchIndexRepository repository;
    private ContactSearchRepository contactRepository;
    private SearchHistoryRepository historyRepository;
    private OriginalSearchBarCompat searchBar;
    private EditText query;
    private View emptyLayout;
    private View topAppsLayout;
    private View suggestionsContainer;
    private View applicationHeader;
    private TextView applicationHeaderText;
    private View historyTitle;
    private HistoryFlowLayoutCompat historyLayout;
    private ListView suggestions;
    private TextView[] topApps;
    private SectionedSearchAdapter adapter;
    private Context resourceContext;
    private Resources uiResources;
    private LayoutInflater uiInflater;
    private long boundGeneration;
    private long hydratedIconSourceGeneration = -1L;
    private boolean listenerBound;
    private boolean destroyed;
    private String currentQuery = "";
    private String activeResultQuery = "";
    private int activeResultCount;
    private int scrollFirstBefore = -1;
    private int recycledBindCount;
    private long adapterGeneration;
    // Empty and query are real page states.  A non-empty edit must never
    // re-enter QUERY just because a newer matcher generation was requested.
    private boolean queryStateVisible;
    private long topAppsGeneration;
    private long formalSession;
    private long formalRequestUptime;
    private boolean formalBoundLogged;
    private boolean scrollSampleLogged;
    private boolean scrollCandidateLogged;
    private boolean historyListenerBound;
    private SearchHistoryRepository.HistorySnapshot historySnapshot;
    private boolean pendingInitialImeShow;
    private int imeRequestGeneration;
    private boolean imeRequestAttempted;
    private boolean imeRetryScheduled;
    private boolean resumed;
    private boolean windowFocused;
    private long imeSessionStartUptime;
    private FrameLayout pageRoot;
    private View pageContent;
    private ValueAnimator transitionAnimator;
    private float transitionProgress = TRANSITION_RANGE;
    private boolean transitionEntrancePending;
    private boolean transitionExiting;
    private final View.OnAttachStateChangeListener imeAttachListener =
            new View.OnAttachStateChangeListener() {
                @Override public void onViewAttachedToWindow(View view) {
                    maybeShowInitialIme("ATTACHED");
                }

                @Override public void onViewDetachedFromWindow(View view) {
                    logImeDeferred("DETACHED");
                }
            };
    private final MaintainedLauncherSettingsHost.QuickSearchTokenReadyListener
            tokenReadyListener =
            new MaintainedLauncherSettingsHost.QuickSearchTokenReadyListener() {
                @Override public void onQuickSearchTokensReady() {
                    runOnUiThread(new Runnable() {
                        @Override public void run() {
                            if (destroyed) return;
                            ArrayList<Object> models = currentMatchModels();
                            if (!MaintainedLauncherSettingsHost
                                    .areQuickSearchMatchModelsReady(models)) return;
                            findScrollCandidate(models);
                            if (currentQuery.length() > 0) {
                                executeFilter(currentQuery, filterVersion.get(), true, models);
                            }
                        }
                    });
                }
            };

    @Override protected void onCreate(Bundle state) {
        long begin = SystemClock.elapsedRealtime();
        super.onCreate(state);
        Log.i(TAG, "QS_ORIGINAL_UI_CREATE layoutName=qs_original_search_activity");
        configureWindow();
        resourceContext = createResourceContext();
        uiResources = resourceContext.getResources();
        uiInflater = LayoutInflater.from(this).cloneInContext(resourceContext);
        int layoutId = resource("layout", "qs_original_search_activity");
        if (layoutId == 0) throw new IllegalStateException("Q6 layout missing");
        setContentView(uiInflater.inflate(layoutId, null, false));
        prepareTransition(getIntent());
        bindViews();
        repository = SearchIndexRepository.get(this);
        contactRepository = ContactSearchRepository.get(this);
        historyRepository = SearchHistoryRepository.get(this);
        bindHistory(historyRepository.getCurrentSnapshot());
        acceptLaunchIntent(getIntent(), false);
        beginSearchSession("CREATE");
        Log.i(TAG, "QS_ORIGINAL_UI_INFLATED layoutName=qs_original_search_activity"
                + " elapsedMs=" + (SystemClock.elapsedRealtime() - begin));
    }

    @Override protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        prepareTransition(intent);
        acceptLaunchIntent(intent, true);
        beginSearchSession("NEW_INTENT");
    }

    @Override protected void onStart() {
        super.onStart();
        if (!listenerBound) {
            listenerBound = true;
            repository.addSnapshotListener(this);
        }
        if (!historyListenerBound) {
            historyListenerBound = true;
            historyRepository.addListener(this);
        }
        SearchSnapshot snapshot = repository.getCurrentSnapshot();
        if (snapshot != null && snapshot.generation > 0L) bindSnapshot(snapshot, false);
        maybeShowInitialIme("START");
    }

    @Override protected void onResume() {
        super.onResume();
        resumed = true;
        maybeShowInitialIme("RESUME");
    }

    @Override protected void onPause() {
        resumed = false;
        super.onPause();
    }

    @Override public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        windowFocused = hasFocus;
        if (hasFocus) {
            QuickDesktopController.onSearchSurfaceReady();
            maybeShowInitialIme("WINDOW_FOCUS");
        }
    }

    @Override public void onSnapshotPublished(final SearchSnapshot snapshot) {
        runOnUiThread(new Runnable() {
            @Override public void run() {
                if (!destroyed) bindSnapshot(snapshot, false);
            }
        });
    }

    @Override public void onHistorySnapshotChanged(
            final SearchHistoryRepository.HistorySnapshot snapshot) {
        runOnUiThread(new Runnable() {
            @Override public void run() {
                if (!destroyed) bindHistory(snapshot);
            }
        });
    }

    @Override public void onBackPressed() {
        handleSearchBack("ACTIVITY");
    }

    public void finishWithoutAnimation() {
        pendingInitialImeShow = false;
        finishImmediately();
    }

    private void finishImmediately() {
        finish();
        overridePendingTransition(0, 0);
    }

    @Override protected void onDestroy() {
        destroyed = true;
        filterVersion.incrementAndGet();
        if (repository != null && listenerBound) repository.removeSnapshotListener(this);
        if (historyRepository != null && historyListenerBound) {
            historyRepository.removeListener(this);
        }
        MaintainedLauncherSettingsHost.removeQuickSearchTokenReadyListener(tokenReadyListener);
        cancelIconRequests();
        matcherExecutor.shutdownNow();
        contactAvatarExecutor.shutdownNow();
        if (query != null) query.removeOnAttachStateChangeListener(imeAttachListener);
        if (transitionAnimator != null) transitionAnimator.cancel();
        Log.i(TAG, "QS_ORIGINAL_UI_DESTROY entryCount=" + allRows.size());
        super.onDestroy();
    }

    private void configureWindow() {
        Window window = getWindow();
        // Theme.Translucent.NoTitleBar leaves the legacy translucent-status flag
        // set on several modern ROMs; that flag ignores setStatusBarColor() and
        // exposes the compositor's black fallback.  This Activity owns a white
        // search surface, so explicitly switch to drawable system-bar backgrounds.
        window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS
                | WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION);
        window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
        window.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
        window.setDimAmount(0.0f);
        window.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_NOTHING);
        // Direct/singleTask entry has no transition frame to paint the system
        // bars.  Keep it on the same white surface as the search page instead
        // of exposing the translucent theme's black fallback status bar.
        window.setStatusBarColor(Color.WHITE);
        window.setNavigationBarColor(Color.WHITE);
        int flags = View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR;
        if (Build.VERSION.SDK_INT >= 26) flags |= View.SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR;
        window.getDecorView().setSystemUiVisibility(flags);
    }

    private void bindViews() {
        searchBar = (OriginalSearchBarCompat) findViewById(
                resource("id", "qs_original_search_bar"));
        searchBar.setCancelListener(new View.OnClickListener() {
            @Override public void onClick(View view) {
                beginExitTransition("CANCEL");
            }
        });
        searchBar.setBackListener(new OriginalSearchEditTextCompat.BackListener() {
            @Override public void onSearchBack() {
                handleSearchBack("IME_PRE");
            }
        });
        query = searchBar.getEditText();
        emptyLayout = findViewById(resource("id", "qs_original_empty_layout"));
        topAppsLayout = findViewById(resource("id", "qs_original_recommend_apps_layout"));
        suggestionsContainer = findViewById(
                resource("id", "qs_original_suggestions_container"));
        applicationHeader = findViewById(
                resource("id", "qs_original_application_header"));
        applicationHeaderText = (TextView) findViewById(resource("id", "sortkey"));
        applicationHeaderText.setText(uiResources.getString(
                resource("string", "qs_original_application_header")));
        historyTitle = findViewById(resource("id", "qs_original_history_title"));
        historyLayout = (HistoryFlowLayoutCompat) findViewById(
                resource("id", "qs_original_history_layout"));
        historyLayout.configure(dimen("qs_original_history_child_spacing"),
                dimen("qs_original_history_row_spacing"), 2);
        View clearHistory = findViewById(resource("id", "qs_original_clear_history"));
        clearHistory.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View view) {
                showClearHistoryConfirm();
            }
        });
        suggestions = (ListView) findViewById(resource("id", "qs_original_suggestions"));
        topApps = new TextView[]{
                topApp(1), topApp(2), topApp(3), topApp(4), topApp(5)
        };
        adapter = new SectionedSearchAdapter();
        suggestions.setAdapter(adapter);
        suggestions.setOnScrollListener(new AbsListView.OnScrollListener() {
            @Override public void onScrollStateChanged(AbsListView view, int state) {
                if (state == SCROLL_STATE_TOUCH_SCROLL && scrollFirstBefore < 0
                        && activeResultCount >= 5) {
                    scrollFirstBefore = suggestions.getFirstVisiblePosition();
                } else if (state == SCROLL_STATE_IDLE && scrollFirstBefore >= 0) {
                    int after = suggestions.getFirstVisiblePosition();
                    if (!scrollSampleLogged && after != scrollFirstBefore) {
                        scrollSampleLogged = true;
                        Log.i(QUERY_TAG, "QS_ORIGINAL_SCROLL_SAMPLE query="
                                + activeResultQuery + " resultCount=" + activeResultCount
                                + " firstBefore=" + scrollFirstBefore + " firstAfter=" + after
                                + " recycledBindCount=" + recycledBindCount);
                    }
                    scrollFirstBefore = -1;
                }
            }

            @Override public void onScroll(AbsListView view, int firstVisibleItem,
                    int visibleItemCount, int totalItemCount) {
            }
        });
        query.addTextChangedListener(new TextWatcher() {
            @Override public void beforeTextChanged(CharSequence text, int start, int count,
                    int after) {
            }

            @Override public void onTextChanged(CharSequence text, int start, int before,
                    int count) {
                requestFilter(text == null ? "" : text.toString());
            }

            @Override public void afterTextChanged(Editable editable) {
            }
        });
        query.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override public boolean onEditorAction(TextView view, int actionId,
                    KeyEvent event) {
                if (actionId != EditorInfo.IME_ACTION_DONE
                        && (event == null || event.getKeyCode() != KeyEvent.KEYCODE_ENTER)) {
                    return false;
                }
                String submitted = view.getText() == null ? ""
                        : view.getText().toString().trim();
                if (submitted.length() == 0 || historyRepository == null) return false;
                historyRepository.recordQuery(submitted);
                Log.i(QUERY_TAG, "QS_ORIGINAL_HISTORY_QUERY_SUBMITTED content=" + submitted);
                Object service = getSystemService(Context.INPUT_METHOD_SERVICE);
                if (service instanceof InputMethodManager) {
                    ((InputMethodManager) service).hideSoftInputFromWindow(
                            view.getWindowToken(), 0);
                }
                return true;
            }
        });
        query.addOnAttachStateChangeListener(imeAttachListener);
        query.requestFocus();
    }

    private void beginSearchSession(String reason) {
        pendingInitialImeShow = true;
        imeRequestAttempted = false;
        imeRetryScheduled = false;
        imeRequestGeneration++;
        imeSessionStartUptime = SystemClock.elapsedRealtime();
        if (query != null) {
            query.setFocusableInTouchMode(true);
            query.requestFocus();
            query.setSelection(query.length());
        }
        Log.i(QUERY_TAG, "QS_ORIGINAL_IME_REQUEST session=" + imeRequestGeneration
                + " reason=" + reason + " windowFocus=" + windowFocused
                + " viewAttached=" + isImeViewAttached() + " editFocused=" + isImeFocused());
        maybeShowInitialIme(reason);
    }

    private void handleSearchBack(String source) {
        CharSequence text = query == null ? null : query.getText();
        if (text != null && text.toString().trim().length() > 0) {
            final int expectedImeSession = imeRequestGeneration;
            query.post(new Runnable() {
                @Override public void run() {
                    if (destroyed || query == null
                            || expectedImeSession != imeRequestGeneration) return;
                    android.view.inputmethod.BaseInputConnection.removeComposingSpans(
                            query.getEditableText());
                    query.setText(null);
                    query.requestFocus();
                    Log.i(QUERY_TAG, "QS_ORIGINAL_BACK_CLEAR_APPLIED session="
                            + expectedImeSession);
                }
            });
            Log.i(QUERY_TAG, "QS_ORIGINAL_BACK action=CLEAR_QUERY source=" + source
                    + " route=NEXT_LOOP");
            return;
        }
        Log.i(QUERY_TAG, "QS_ORIGINAL_BACK action=EXIT source=" + source);
        beginExitTransition("BACK_" + source);
    }

    private boolean isImeViewAttached() {
        return query != null && (Build.VERSION.SDK_INT < 19 || query.isAttachedToWindow());
    }

    private boolean isImeFocused() {
        return query != null && query.hasFocus();
    }

    private void logImeDeferred(String reason) {
        Log.i(QUERY_TAG, "QS_ORIGINAL_IME_DEFERRED reason=" + reason
                + " session=" + imeRequestGeneration + " windowFocus=" + windowFocused
                + " viewAttached=" + isImeViewAttached() + " editFocused=" + isImeFocused());
    }

    private void maybeShowInitialIme(String reason) {
        if (!pendingInitialImeShow || destroyed || isFinishing()) return;
        if (transitionEntrancePending) {
            logImeDeferred("TRANSITION_" + reason);
            return;
        }
        if (!resumed || !windowFocused || !isImeViewAttached() || query == null
                || !query.isShown() || !query.isEnabled() || !query.isFocusableInTouchMode()
                || !query.hasFocus()) {
            logImeDeferred(reason);
            return;
        }
        if (imeRequestAttempted) return;
        imeRequestAttempted = true;
        final int generation = imeRequestGeneration;
        final long begin = imeSessionStartUptime;
        Object service = getSystemService(Context.INPUT_METHOD_SERVICE);
        boolean shown = service instanceof InputMethodManager
                && ((InputMethodManager) service).showSoftInput(
                        query, InputMethodManager.SHOW_IMPLICIT);
        Log.i(QUERY_TAG, "QS_ORIGINAL_IME_REQUEST session=" + generation + " reason=" + reason
                + " windowFocus=" + windowFocused + " viewAttached=" + isImeViewAttached()
                + " editFocused=" + isImeFocused());
        if (shown) {
            pendingInitialImeShow = false;
            Log.i(QUERY_TAG, "QS_ORIGINAL_IME_SHOW session=" + generation
                    + " route=IMM result=true elapsedMs="
                    + (SystemClock.elapsedRealtime() - begin));
            return;
        }
        if (!imeRetryScheduled) {
            imeRetryScheduled = true;
            query.post(new Runnable() {
                @Override public void run() {
                    if (destroyed || !pendingInitialImeShow
                            || generation != imeRequestGeneration) return;
                    imeRequestAttempted = false;
                    maybeShowInitialIme("NEXT_LOOP_RETRY");
                }
            });
        }
        Log.i(QUERY_TAG, "QS_ORIGINAL_IME_SHOW session=" + generation
                + " route=IMM result=false elapsedMs="
                + (SystemClock.elapsedRealtime() - begin));
    }

    private void prepareTransition(Intent intent) {
        if (intent == null || !intent.getBooleanExtra(
                OriginalSearchTransitionHost.EXTRA_TRANSITION, false)) return;
        intent.removeExtra(OriginalSearchTransitionHost.EXTRA_TRANSITION);
        if (transitionAnimator != null) transitionAnimator.cancel();
        pageRoot = findPageRoot();
        pageContent = findViewById(resource("id", "qs_original_search_activity_view"));
        transitionProgress = 0.0f;
        transitionEntrancePending = true;
        transitionExiting = false;
        applyTransitionProgress(0.0f);
        final boolean first = !transitionShownInProcess;
        transitionShownInProcess = true;
        if (pageRoot != null) {
            pageRoot.post(new Runnable() {
                @Override public void run() {
                    if (!destroyed && transitionEntrancePending) {
                        animateTransition(TRANSITION_RANGE, first ? 350L : 300L,
                                false, "ENTER");
                    }
                }
            });
        } else {
            transitionEntrancePending = false;
        }
        Log.i("QS_TRANSITION", "QS_TRANSITION_ACTIVITY_PREPARE mode=STATIC_LIVE_HANDOFF"
                + " capture=0 blur=0 bitmap=0"
                + " first=" + first);
    }

    private FrameLayout findPageRoot() {
        View content = findViewById(android.R.id.content);
        if (!(content instanceof ViewGroup)) return null;
        ViewGroup group = (ViewGroup) content;
        if (group.getChildCount() == 0) return null;
        View child = group.getChildAt(0);
        return child instanceof FrameLayout ? (FrameLayout) child : null;
    }

    private void animateTransition(float target, long duration, final boolean finishAtEnd,
            final String reason) {
        if (transitionAnimator != null) transitionAnimator.cancel();
        final float from = transitionProgress;
        ValueAnimator animator = ValueAnimator.ofFloat(from, target);
        animator.setDuration(Math.max(0L, duration));
        if (target > from) animator.setInterpolator(new AccelerateInterpolator());
        animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override public void onAnimationUpdate(ValueAnimator value) {
                applyTransitionProgress(((Float) value.getAnimatedValue()).floatValue());
            }
        });
        animator.addListener(new AnimatorListenerAdapter() {
            private boolean cancelled;

            @Override public void onAnimationCancel(Animator animation) {
                cancelled = true;
            }

            @Override public void onAnimationEnd(Animator animation) {
                if (cancelled || destroyed) return;
                Log.i("QS_TRANSITION", "QS_TRANSITION_END reason=" + reason
                        + " progress=" + transitionProgress);
                if (finishAtEnd) {
                    finishImmediately();
                } else {
                    transitionEntrancePending = false;
                    maybeShowInitialIme("TRANSITION_END");
                }
            }
        });
        transitionAnimator = animator;
        Log.i("QS_TRANSITION", "QS_TRANSITION_BEGIN reason=" + reason
                + " from=" + from + " to=" + target + " durationMs=" + duration);
        animator.start();
    }

    private void applyTransitionProgress(float progress) {
        transitionProgress = Math.max(0.0f, Math.min(TRANSITION_RANGE, progress));
        float fraction = transitionProgress / TRANSITION_RANGE;
        // The Activity window is translucent, so the live Launcher remains below
        // this stable pristine-compatible surface for the whole Q9 curve.
        int systemBarColor = Color.argb(Math.round(255.0f * fraction), 255, 255, 255);
        getWindow().setStatusBarColor(systemBarColor);
        getWindow().setNavigationBarColor(systemBarColor);
        if (pageRoot != null) pageRoot.setAlpha(fraction);
        if (pageContent != null) {
            if (transitionProgress <= FOREGROUND_THRESHOLD) {
                pageContent.setVisibility(View.INVISIBLE);
                pageContent.setAlpha(0.0f);
            } else {
                pageContent.setVisibility(View.VISIBLE);
                pageContent.setAlpha((transitionProgress - FOREGROUND_THRESHOLD)
                        / FOREGROUND_THRESHOLD);
            }
        }
    }

    private void beginExitTransition(String reason) {
        pendingInitialImeShow = false;
        Object service = getSystemService(Context.INPUT_METHOD_SERVICE);
        if (service instanceof InputMethodManager && query != null) {
            ((InputMethodManager) service).hideSoftInputFromWindow(query.getWindowToken(), 0);
        }
        if (pageRoot == null) {
            finishImmediately();
            return;
        }
        transitionEntrancePending = false;
        transitionExiting = true;
        long duration = Math.max(1L, Math.round(transitionProgress));
        animateTransition(0.0f, duration, true, "EXIT_" + reason);
    }

    private void acceptLaunchIntent(Intent intent, boolean resetExisting) {
        formalSession = intent == null ? 0L
                : intent.getLongExtra(MaintainedLauncherSettingsHost.EXTRA_QS_PERF_SESSION, 0L);
        formalRequestUptime = intent == null ? 0L : intent.getLongExtra(
                MaintainedLauncherSettingsHost.EXTRA_QS_FORMAL_REQUEST_UPTIME, 0L);
        formalBoundLogged = false;
        if (!resetExisting) return;
        filterVersion.incrementAndGet();
        adapterGeneration++;
        topAppsGeneration++;
        cancelIconRequests();
        currentQuery = "";
        activeResultQuery = "";
        activeResultCount = 0;
        visibleRows.clear();
        adapter.notifyDataSetChanged();
        query.setText(null);
        query.requestFocus();
        boundGeneration = 0L;
        SearchSnapshot snapshot = repository == null ? null : repository.getCurrentSnapshot();
        if (snapshot != null && snapshot.generation > 0L) bindSnapshot(snapshot, true);
    }

    private void cancelIconRequests() {
        for (SearchIconBackend.IconRequest request : iconRequests) {
            if (request != null) request.cancel();
        }
        iconRequests.clear();
    }

    private TextView topApp(int index) {
        return (TextView) findViewById(resource("id", "qs_original_top_app_" + index));
    }

    private void bindSnapshot(SearchSnapshot snapshot, boolean force) {
        if (snapshot == null || snapshot.generation <= 0L
                || (!force && snapshot.generation == boundGeneration)) return;
        cancelIconRequests();
        boundGeneration = snapshot.generation;
        adapterGeneration++;
        topAppsGeneration++;
        allRows.clear();
        for (SearchEntry entry : snapshot.entries) allRows.add(new RowModel(entry));
        scrollCandidateLogged = false;
        ArrayList<Object> models = currentMatchModels();
        MaintainedLauncherSettingsHost.prepareQuickSearchMatchModelsAsync(models,
                tokenReadyListener);
        bindTopApps(snapshot.entries);
        scheduleIconRefreshIfNeeded(snapshot);
        if (historySnapshot != null) bindHistory(historySnapshot);
        requestFilter(query.getText() == null ? "" : query.getText().toString());
        final long begin = SystemClock.elapsedRealtime();
        searchBar.post(new Runnable() {
            @Override public void run() {
                if (destroyed) return;
                Log.i(TAG, "QS_ORIGINAL_UI_BOUND layoutName=qs_original_search_activity"
                        + " entryCount=" + allRows.size()
                        + " elapsedMs=" + (SystemClock.elapsedRealtime() - begin)
                        + " searchBar=" + bounds(searchBar)
                        + " topApps=" + bounds(topAppsLayout)
                        + " topIconDp=36 resultRowDp=60 resultIconDp=30");
                if (!formalBoundLogged && formalRequestUptime > 0L) {
                    formalBoundLogged = true;
                    Log.i(QUERY_TAG, "QS_FORMAL_ENTRY_BOUND target=ORIGINAL session="
                            + formalSession + " elapsedMs="
                            + (SystemClock.elapsedRealtime() - formalRequestUptime));
                }
            }
        });
    }

    private void scheduleIconRefreshIfNeeded(final SearchSnapshot snapshot) {
        final long sourceGeneration = SearchIconBackend.getSourceGeneration();
        if (hydratedIconSourceGeneration == sourceGeneration) return;
        hydratedIconSourceGeneration = sourceGeneration;
        Log.i(QUERY_TAG, "QS_ICON_REHYDRATE_REQUEST sourceGeneration=" + sourceGeneration
                + " entryCount=" + snapshot.entries.size());
        SearchIconBackend.scheduleHydration(this, snapshot,
                new SearchIconBackend.HydrationCallback() {
                    @Override public void onHydrationFinished(long completedGeneration) {
                        if (destroyed || completedGeneration != SearchIconBackend.getSourceGeneration()
                                || completedGeneration != hydratedIconSourceGeneration) return;
                        bindTopApps(snapshot.entries);
                        adapterGeneration++;
                        adapter.notifyDataSetChanged();
                        Log.i(QUERY_TAG, "QS_ICON_REHYDRATE_APPLIED sourceGeneration="
                                + completedGeneration);
                    }
                });
    }

    private void bindTopApps(List<SearchEntry> entries) {
        boolean enabled = MaintainedLauncherSettingsHost.shouldShowQuickSearchTopApps(this);
        topAppsLayout.setVisibility(enabled ? View.VISIBLE : View.GONE);
        if (!enabled) {
            for (TextView view : topApps) clearTopApp(view);
            Log.i(QUERY_TAG, "QS_ORIGINAL_TOP_APPS enabled=false count=0");
            return;
        }
        ArrayList<SearchEntry> sorted = new ArrayList<SearchEntry>(entries);
        Collections.sort(sorted, new Comparator<SearchEntry>() {
            @Override public int compare(SearchEntry left, SearchEntry right) {
                long l = SearchIconBackend.getUsageForegroundTime(left.packageName);
                long r = SearchIconBackend.getUsageForegroundTime(right.packageName);
                if (l != r) return l < r ? 1 : -1;
                return left.label.compareToIgnoreCase(right.label);
            }
        });
        HashSet<String> packages = new HashSet<String>();
        int slot = 0;
        for (SearchEntry entry : sorted) {
            if (entry.shortcutId != null && entry.shortcutId.length() > 0) continue;
            if (!packages.add(entry.packageName)) continue;
            bindTopApp(topApps[slot], entry);
            if (++slot == topApps.length) break;
        }
        int count = slot;
        while (slot < topApps.length) clearTopApp(topApps[slot++]);
        Log.i(QUERY_TAG, "QS_ORIGINAL_TOP_APPS enabled=true count=" + count);
    }

    private void bindTopApp(final TextView view, final SearchEntry entry) {
        final long expectedTopGeneration = topAppsGeneration;
        final long expectedSourceGeneration = SearchIconBackend.getSourceGeneration();
        view.setVisibility(View.VISIBLE);
        view.setText(entry.label);
        view.setTag(entry.entryKey);
        view.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View clicked) {
                launchEntry(entry, "TOP_APP");
            }
        });
        Bitmap bitmap = SearchIconBackend.getDecoded(entry);
        if (bitmap != null) {
            setTopIcon(view, bitmap);
            return;
        }
        view.setCompoundDrawables(null, null, null, null);
        SearchIconBackend.IconRequest request = SearchIconBackend.requestDecoded(this, entry,
                new SearchIconBackend.IconCallback() {
                    @Override public void onIconReady(String iconKey, long generation,
                            Bitmap ready) {
                        if (!destroyed && ready != null
                                && expectedTopGeneration == topAppsGeneration
                                && generation == expectedSourceGeneration
                                && entry.entryKey.equals(view.getTag())) setTopIcon(view, ready);
                    }
                });
        if (request != null) iconRequests.add(request);
    }

    private void clearTopApp(TextView view) {
        view.setVisibility(View.INVISIBLE);
        view.setText(null);
        view.setTag(null);
        view.setOnClickListener(null);
        view.setCompoundDrawables(null, null, null, null);
    }

    private void launchEntry(SearchEntry entry, String surface) {
        if (!"HISTORY".equals(surface) && historyRepository != null) {
            historyRepository.recordApplication(entry.label, entry.packageName);
        }
        boolean started = MaintainedLauncherSettingsHost.launchQuickSearchSnapshotEntry(
                this, entry);
        Log.i(QUERY_TAG, "QS_ORIGINAL_LAUNCH surface=" + surface
                + " entryKey=" + entry.entryKey + " success=" + started);
        if (started) {
            pendingInitialImeShow = false;
            finishImmediately();
        }
    }

    private void bindHistory(SearchHistoryRepository.HistorySnapshot snapshot) {
        if (snapshot == null || historyLayout == null || historyTitle == null) return;
        historySnapshot = snapshot;
        historyLayout.removeAllViews();
        boolean visible = !snapshot.entries.isEmpty();
        historyTitle.setVisibility(visible ? View.VISIBLE : View.GONE);
        historyLayout.setVisibility(visible ? View.VISIBLE : View.GONE);
        if (!visible) {
            Log.i(QUERY_TAG, "QS_ORIGINAL_HISTORY_BOUND count=0 generation="
                    + snapshot.generation + " loaded=" + snapshot.persistentLoadComplete);
            return;
        }
        for (final SearchHistoryRepository.HistoryEntry history : snapshot.entries) {
            TextView tag = (TextView) uiInflater.inflate(
                    resource("layout", "qs_original_history_tag"), historyLayout, false);
            tag.setText(history.content);
            if (history.type == SearchHistoryRepository.TYPE_APPLICATION) {
                SearchEntry entry = findApplicationEntry(history.packageName);
                Bitmap cached = entry == null ? null : SearchIconBackend.getDecoded(entry);
                if (cached != null) {
                    Drawable icon = new BitmapDrawable(uiResources, cached);
                    int size = dimen("qs_original_history_icon_size");
                    icon.setBounds(0, 0, size, size);
                    tag.setCompoundDrawables(icon, null, null, null);
                    tag.setCompoundDrawablePadding(
                            dimen("qs_original_history_icon_padding"));
                }
            }
            tag.setOnClickListener(new View.OnClickListener() {
                @Override public void onClick(View view) {
                    onHistoryClicked(history);
                }
            });
            historyLayout.addView(tag);
        }
        Log.i(QUERY_TAG, "QS_ORIGINAL_HISTORY_BOUND count=" + snapshot.entries.size()
                + " generation=" + snapshot.generation
                + " loaded=" + snapshot.persistentLoadComplete);
    }

    private SearchEntry findApplicationEntry(String packageName) {
        if (packageName == null || packageName.length() == 0) return null;
        for (RowModel row : allRows) {
            if (packageName.equals(row.entry.packageName)
                    && (row.entry.shortcutId == null || row.entry.shortcutId.length() == 0)) {
                return row.entry;
            }
        }
        return null;
    }

    private void onHistoryClicked(SearchHistoryRepository.HistoryEntry history) {
        if (history.type == SearchHistoryRepository.TYPE_APPLICATION) {
            SearchEntry entry = findApplicationEntry(history.packageName);
            if (entry != null) {
                launchEntry(entry, "HISTORY");
                return;
            }
        }
        query.setText(history.content);
        query.setSelection(query.length());
        Log.i(QUERY_TAG, "QS_ORIGINAL_HISTORY_QUERY content=" + history.content
                + " type=" + history.type);
    }

    private void showClearHistoryConfirm() {
        OriginalMenuDialogCompat dialog = new OriginalMenuDialogCompat(resourceContext);
        dialog.setDialogTitle(uiResources.getString(
                resource("string", "qs_original_clear_history_confirm")));
        dialog.setPositive(uiResources.getString(
                resource("string", "qs_original_clear_history_button")),
                new View.OnClickListener() {
            @Override public void onClick(View view) {
                if (historyRepository != null) historyRepository.clear();
            }
        });
        dialog.show();
    }

    private void setTopIcon(TextView view, Bitmap bitmap) {
        Drawable drawable = new BitmapDrawable(uiResources, bitmap);
        int size = dimen("qs_original_top_icon_size");
        drawable.setBounds(0, 0, size, size);
        view.setCompoundDrawables(null, drawable, null, null);
    }

    private void requestFilter(final String rawQuery) {
        final String needle = rawQuery == null ? "" : rawQuery.trim().toLowerCase();
        final int version = filterVersion.incrementAndGet();
        currentQuery = needle;
        if (needle.length() == 0) {
            setQueryStateVisible(false);
            setApplicationHeaderVisible(false);
            visibleRows.clear();
            adapterGeneration++;
            adapter.notifyDataSetChanged();
            return;
        }
        // QUERY -> QUERY keeps the current header and rows on screen until the
        // latest immutable match set is ready.  This prevents old -> [] -> new.
        setQueryStateVisible(true);
        ArrayList<Object> models = currentMatchModels();
        boolean ready = MaintainedLauncherSettingsHost.areQuickSearchMatchModelsReady(models);
        boolean contactsEnabled = MaintainedLauncherSettingsHost.areSearchContactsEnabled(this);
        if (contactsEnabled) contactRepository.enable();
        ContactSearchSnapshot contactSnapshot = contactsEnabled
                ? contactRepository.snapshot() : ContactSearchSnapshot.EMPTY;
        Log.i(QUERY_TAG, "QS_ORIGINAL_QUERY_BEGIN queryLength=" + needle.length()
                + " generation=" + version + " entryCount=" + allRows.size()
                + " tokenState=" + (ready ? "READY" : "NOT_READY")
                + " contactsEnabled=" + contactsEnabled
                + " contactsPermission=" + contactRepository.hasPermission()
                + " contactsObserver=" + contactRepository.isObserverRegistered()
                + " contactsGeneration=" + contactSnapshot.generation
                + " contactsCount=" + contactSnapshot.entries.size());
        if (!ready) {
            Log.i(QUERY_TAG, "QS_ORIGINAL_QUERY_DEFERRED queryLength=" + needle.length()
                    + " generation=" + version + " reason=PINYIN_TOKEN_NOT_READY");
        }
        executeFilter(needle, version, false, models);
    }

    private void executeFilter(final String needle, final int version, final boolean replay,
            final ArrayList<Object> models) {
        final long begin = SystemClock.elapsedRealtime();
        final ArrayList<RowModel> source = new ArrayList<RowModel>(allRows);
        final List<ContactSearchEntry> contacts =
                MaintainedLauncherSettingsHost.areSearchContactsEnabled(this)
                        ? contactRepository.snapshot().entries : Collections.<ContactSearchEntry>emptyList();
        matcherExecutor.execute(new Runnable() {
            @Override public void run() {
                final ArrayList<RowModel> apps = new ArrayList<RowModel>();
                final ArrayList<RowModel> contactMatches = new ArrayList<RowModel>();
                for (RowModel row : source) {
                    if (Thread.currentThread().isInterrupted()) return;
                    int score = MaintainedLauncherSettingsHost.scorePreparedQuickSearchMatch(
                            needle, row.matchModel);
                    if (score >= 0) {
                        row.score = score;
                        apps.add(row);
                    }
                }
                for (ContactSearchEntry contact : contacts) {
                    RowModel row = new RowModel(contact);
                    int score = MaintainedLauncherSettingsHost.scorePreparedQuickSearchMatch(
                            needle, row.matchModel);
                    if (score >= 0 || contact.hasPhonePrefix(needle)) { row.score = score; contactMatches.add(row); }
                }
                Comparator<RowModel> rowOrder = new Comparator<RowModel>() {
                    @Override public int compare(RowModel left, RowModel right) {
                        if (left.score != right.score) return left.score - right.score;
                        return left.label().compareToIgnoreCase(right.label());
                    }
                };
                Collections.sort(apps, rowOrder);
                Collections.sort(contactMatches, rowOrder);
                final ArrayList<RowModel> matches = new ArrayList<RowModel>(apps.size() + contactMatches.size() + 2);
                if (!apps.isEmpty()) { matches.add(RowModel.header(uiResources.getString(resource("string", "qs_original_application_header")))); matches.addAll(apps); }
                if (!contactMatches.isEmpty()) { matches.add(RowModel.header(uiResources.getString(resource("string", "qs_original_contacts_header")))); matches.addAll(contactMatches); }
                runOnUiThread(new Runnable() {
                    @Override public void run() {
                        if (destroyed || version != filterVersion.get()
                                || !needle.equals(currentQuery)) return;
                        // This is the only dataset mutation for a non-empty
                        // generation.  Older generations never clear the ListView.
                        visibleRows.clear();
                        visibleRows.addAll(matches);
                        activeResultQuery = needle;
                        activeResultCount = matches.size();
                        setApplicationHeaderVisible(false);
                        recycledBindCount = 0;
                        scrollFirstBefore = -1;
                        scrollSampleLogged = false;
                        adapterGeneration++;
                        adapter.notifyDataSetChanged();
                        boolean ready = MaintainedLauncherSettingsHost
                                .areQuickSearchMatchModelsReady(models);
                        Log.i(QUERY_TAG, "QS_ORIGINAL_QUERY_RESULT queryLength=" + needle.length()
                                + " generation=" + version + " resultCount=" + matches.size()
                                + " appCount=" + apps.size()
                                + " contactCount=" + contactMatches.size()
                                + " fullPinyinReady=" + ready + " elapsedMs="
                                + (SystemClock.elapsedRealtime() - begin));
                        if (replay) {
                            Log.i(QUERY_TAG, "QS_ORIGINAL_QUERY_REPLAY queryLength=" + needle.length()
                                    + " generation=" + version + " resultCount="
                                    + matches.size());
                        }
                    }
                });
            }
        });
    }

    private ArrayList<Object> currentMatchModels() {
        ArrayList<Object> models = new ArrayList<Object>(allRows.size());
        for (RowModel row : allRows) models.add(row.matchModel);
        return models;
    }

    private void findScrollCandidate(final ArrayList<Object> models) {
        if (scrollCandidateLogged) return;
        scrollCandidateLogged = true;
        matcherExecutor.execute(new Runnable() {
            @Override public void run() {
                final String sample = MaintainedLauncherSettingsHost
                        .findQuickSearchScrollSample(models);
                if (sample.length() == 0 || destroyed) return;
                String[] fields = sample.split("\\t", 2);
                if (fields.length != 2) return;
                Log.i(QUERY_TAG, "QS_ORIGINAL_SCROLL_SAMPLE query=" + fields[0]
                        + " resultCount=" + fields[1]
                        + " firstBefore=-1 firstAfter=-1 recycledBindCount=0");
            }
        });
    }

    /** One retained adapter with pristine header/application/contact view types. */
    private final class SectionedSearchAdapter extends BaseAdapter {
        private static final int TYPE_HEADER = 0;
        private static final int TYPE_APPLICATION = 1;
        private static final int TYPE_CONTACT = 2;
        @Override public int getCount() {
            return visibleRows.size();
        }

        @Override public RowModel getItem(int position) {
            return visibleRows.get(position);
        }

        @Override public long getItemId(int position) {
            return getItem(position).stableKey().hashCode();
        }

        @Override public boolean hasStableIds() {
            return true;
        }

        @Override public int getViewTypeCount() { return 3; }

        @Override public int getItemViewType(int position) {
            RowModel item = getItem(position);
            return item.isHeader() ? TYPE_HEADER : (item.isContact() ? TYPE_CONTACT : TYPE_APPLICATION);
        }

        @Override public View getView(int position, View convertView, ViewGroup parent) {
            final RowModel model = getItem(position);
            int type = getItemViewType(position);
            if (type == TYPE_HEADER) {
                if (convertView == null) convertView = uiInflater.inflate(
                        resource("layout", "header"), parent, false);
                ((TextView) convertView.findViewById(resource("id", "sortkey"))).setText(model.sectionTitle);
                convertView.setOnClickListener(null);
                return convertView;
            }
            RowHolder holder;
            if (convertView == null) {
                int layout = resource("layout", type == TYPE_CONTACT
                        ? "contact_suggestion" : "application_suggestion");
                convertView = uiInflater.inflate(layout, parent, false);
                holder = new RowHolder(
                        (ImageView) convertView.findViewById(
                                resource("id", "icon1")),
                        (TextView) convertView.findViewById(
                                resource("id", "text1")),
                        (TextView) convertView.findViewById(
                                resource("id", "text2")));
                convertView.setTag(holder);
            } else {
                holder = (RowHolder) convertView.getTag();
                recycledBindCount++;
            }
            final RowHolder target = holder;
            final long expectedAdapterGeneration = adapterGeneration;
            final long expectedSourceGeneration = SearchIconBackend.getSourceGeneration();
            final String expectedEntryKey = model.stableKey();
            final String expectedIconKey = model.isContact() ? "" : model.entry.iconKey;
            holder.bindKey = expectedEntryKey;
            holder.bindGeneration = expectedAdapterGeneration;
            holder.title.setText(highlightLiteralQuery(model.label(), currentQuery));
            holder.subtitle.setText(model.isContact() ? model.contact.primaryDisplayPhone : "");
            holder.subtitle.setVisibility(model.isContact() && model.contact.primaryDisplayPhone.length() > 0
                    ? View.VISIBLE : View.GONE);
            if (model.isContact()) {
                bindContactAvatar(holder, model.contact);
                convertView.setOnClickListener(new View.OnClickListener() { @Override public void onClick(View view) {
                    try { Intent intent = new Intent(Intent.ACTION_VIEW,
                            android.provider.ContactsContract.Contacts.getLookupUri(
                                    model.contact.contactId, model.contact.lookupKey)); startActivity(intent);
                        Log.i("QS_CONTACT", "CONTACT_CLICK keyHash=" + model.contact.stableKey.hashCode());
                    } catch (Throwable ignored) { Log.i("QS_CONTACT", "CONTACT_CLICK_FAILED"); }
                }});
                return convertView;
            }
            Bitmap bitmap = SearchIconBackend.getDecoded(model.entry);
            boolean sameEntry = expectedEntryKey.equals(holder.renderedEntryKey);
            if (bitmap != null) {
                holder.icon.setImageBitmap(bitmap);
            } else if (!sameEntry) {
                // A recycled row must not temporarily show another app's icon;
                // a retained row keeps its already-decoded icon while re-filtered.
                holder.icon.setImageDrawable(null);
            }
            holder.renderedEntryKey = expectedEntryKey;
            if (bitmap == null) {
                SearchIconBackend.IconRequest request = SearchIconBackend.requestDecoded(
                        OriginalQuickSearchActivity.this, model.entry,
                        new SearchIconBackend.IconCallback() {
                            @Override public void onIconReady(String iconKey, long generation,
                                    Bitmap ready) {
                                if (!destroyed && ready != null
                                        && expectedAdapterGeneration == adapterGeneration
                                        && target.bindGeneration == expectedAdapterGeneration
                                        && expectedEntryKey.equals(target.bindKey)
                                        && expectedIconKey.equals(iconKey)
                                        && generation == expectedSourceGeneration) {
                                    target.icon.setImageBitmap(ready);
                                }
                            }
                        });
                if (request != null) iconRequests.add(request);
            }
            convertView.setOnClickListener(new View.OnClickListener() {
                @Override public void onClick(View view) {
                    if (expectedAdapterGeneration == adapterGeneration
                            && expectedEntryKey.equals(target.bindKey)) {
                        launchEntry(model.entry, "SUGGESTION");
                    }
                }
            });
            return convertView;
        }
    }

    private void bindContactAvatar(final RowHolder holder, final ContactSearchEntry contact) {
        final String key = contact.stableKey;
        Bitmap cached = contactAvatarCache.get(key);
        if (cached != null) { holder.icon.setImageBitmap(cached); holder.renderedEntryKey = key; return; }
        bindContactsApplicationIcon(holder, key);
        holder.renderedEntryKey = key;
        if (contact.photoUri.length() == 0) return;
        contactAvatarExecutor.execute(new Runnable() { @Override public void run() {
            Bitmap bitmap = null; InputStream stream = null;
            long begin = SystemClock.elapsedRealtime();
            try { stream = getContentResolver().openInputStream(Uri.parse(contact.photoUri));
                bitmap = android.graphics.BitmapFactory.decodeStream(stream); }
            catch (Throwable ignored) { }
            finally { if (stream != null) try { stream.close(); } catch (Exception ignored) { } }
            if (bitmap != null) contactAvatarCache.put(key, bitmap);
            final Bitmap ready = bitmap;
            Log.i("QS_CONTACT", "CONTACT_AVATAR_DECODE elapsedMs=" + (SystemClock.elapsedRealtime() - begin));
            runOnUiThread(new Runnable() { @Override public void run() {
                if (!destroyed && ready != null && key.equals(holder.bindKey)) holder.icon.setImageBitmap(ready);
            }});
        }});
    }

    /**
     * A contact without a provider thumbnail belongs to the Contacts source, not to the
     * platform's generic Android-app placeholder. Reuse the indexed Contacts activity so
     * icon packs, themes and launcher redirects stay identical to the desktop tile.
     */
    private void bindContactsApplicationIcon(final RowHolder holder, final String contactKey) {
        final SearchEntry contactsEntry = findContactsApplicationEntry();
        if (contactsEntry == null) {
            holder.icon.setImageResource(android.R.drawable.sym_def_app_icon);
            return;
        }
        final long expectedSourceGeneration = SearchIconBackend.getSourceGeneration();
        Bitmap cached = SearchIconBackend.getDecoded(contactsEntry);
        if (cached != null) {
            holder.icon.setImageBitmap(cached);
            return;
        }
        holder.icon.setImageDrawable(null);
        SearchIconBackend.IconRequest request = SearchIconBackend.requestDecoded(this, contactsEntry,
                new SearchIconBackend.IconCallback() {
                    @Override public void onIconReady(String iconKey, long generation, Bitmap ready) {
                        if (!destroyed && ready != null && generation == expectedSourceGeneration
                                && contactKey.equals(holder.bindKey)) {
                            holder.icon.setImageBitmap(ready);
                        }
                    }
                });
        if (request != null) iconRequests.add(request);
    }

    private SearchEntry findContactsApplicationEntry() {
        SearchEntry packageCandidate = null;
        for (RowModel row : allRows) {
            if (row.entry == null) continue;
            String packageName = row.entry.packageName == null ? "" : row.entry.packageName;
            String label = row.entry.label == null ? "" : row.entry.label;
            if ("com.android.contacts".equals(packageName)) {
                if ("联系人".equals(label) || "contacts".equalsIgnoreCase(label)
                        || "people".equalsIgnoreCase(label)) return row.entry;
                if (packageCandidate == null) packageCandidate = row.entry;
            }
        }
        return packageCandidate;
    }

    private CharSequence highlightLiteralQuery(String label, String needle) {
        if (label == null || needle == null || needle.length() == 0) return label;
        String lowerLabel = label.toLowerCase(java.util.Locale.ROOT);
        String lowerNeedle = needle.toLowerCase(java.util.Locale.ROOT);
        SpannableString highlighted = new SpannableString(label);
        int from = 0;
        boolean found = false;
        int color = uiResources.getColor(resource("color", "qs_original_search_highlight"));
        while ((from = lowerLabel.indexOf(lowerNeedle, from)) >= 0) {
            highlighted.setSpan(new ForegroundColorSpan(color), from,
                    from + lowerNeedle.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
            found = true;
            from += lowerNeedle.length();
        }
        return found ? highlighted : label;
    }

    private void setApplicationHeaderVisible(boolean visible) {
        if (applicationHeader == null) return;
        int target = visible ? View.VISIBLE : View.GONE;
        if (applicationHeader.getVisibility() != target) applicationHeader.setVisibility(target);
    }

    private void setQueryStateVisible(boolean visible) {
        if (queryStateVisible == visible) return;
        queryStateVisible = visible;
        if (emptyLayout != null) emptyLayout.setVisibility(visible ? View.GONE : View.VISIBLE);
        if (suggestionsContainer != null) {
            suggestionsContainer.setVisibility(visible ? View.VISIBLE : View.GONE);
        }
        if (suggestions != null) suggestions.setVisibility(visible ? View.VISIBLE : View.GONE);
    }

    private static final class RowModel {
        final SearchEntry entry;
        final ContactSearchEntry contact;
        final Object matchModel;
        final String sectionTitle;
        int score;

        RowModel(SearchEntry entry) {
            this.entry = entry;
            this.contact = null;
            this.sectionTitle = null;
            this.matchModel = MaintainedLauncherSettingsHost.getQuickSearchMatchModel(
                    entry.label, entry.packageName);
        }
        RowModel(ContactSearchEntry contact) { this.entry = null; this.contact = contact; this.sectionTitle = null; this.matchModel = MaintainedLauncherSettingsHost.getQuickSearchMatchModel(contact.displayName, ""); }
        private RowModel(String sectionTitle) { this.entry = null; this.contact = null; this.sectionTitle = sectionTitle; this.matchModel = null; }
        static RowModel header(String title) { return new RowModel(title); }
        boolean isHeader() { return sectionTitle != null; }
        boolean isContact() { return contact != null; }
        String stableKey() { return isHeader() ? "header:" + sectionTitle : (isContact() ? contact.stableKey : "app:" + entry.entryKey); }
        String label() { return isContact() ? contact.displayName : entry.label; }
    }

    private static final class RowHolder {
        final ImageView icon;
        final TextView title;
        final TextView subtitle;
        String bindKey;
        String renderedEntryKey;
        long bindGeneration;

        RowHolder(ImageView icon, TextView title, TextView subtitle) {
            this.icon = icon;
            this.title = title;
            this.subtitle = subtitle;
        }
    }

    private int resource(String type, String name) {
        return uiResources.getIdentifier(name, type, RESOURCE_PACKAGE);
    }

    private int dimen(String name) {
        int id = resource("dimen", name);
        return id == 0 ? 0 : uiResources.getDimensionPixelSize(id);
    }

    private Context createResourceContext() {
        try {
            File apk = copyResourceAsset();
            AssetManager assets = AssetManager.class.newInstance();
            Method addAssetPath = AssetManager.class.getMethod("addAssetPath", String.class);
            int cookie = ((Integer) addAssetPath.invoke(assets, apk.getAbsolutePath())).intValue();
            if (cookie == 0) throw new IllegalStateException("Q6 resource path rejected");
            Resources base = getResources();
            Resources resources = new Resources(assets, base.getDisplayMetrics(),
                    base.getConfiguration());
            return new ResourceContext(this, assets, resources);
        } catch (Throwable error) {
            throw new IllegalStateException("Q6 resource load failed", error);
        }
    }

    private File copyResourceAsset() throws Exception {
        File directory = new File(getCacheDir(), "quicksearch_original_res");
        if (!directory.exists() && !directory.mkdirs()) {
            throw new IllegalStateException("Q6 resource cache unavailable");
        }
        File out = new File(directory, "original-quicksearch-res.apk");
        long updateTime = getPackageManager().getPackageInfo(getPackageName(), 0).lastUpdateTime;
        SharedPreferences prefs = getSharedPreferences("quicksearch_original_res",
                Context.MODE_PRIVATE);
        if (out.isFile() && out.length() > 0L
                && prefs.getLong("copied_last_update_time", -1L) == updateTime) return out;
        InputStream input = getAssets().open(RESOURCE_ASSET);
        FileOutputStream output = new FileOutputStream(out, false);
        try {
            byte[] buffer = new byte[16384];
            int read;
            while ((read = input.read(buffer)) != -1) output.write(buffer, 0, read);
            output.getFD().sync();
        } finally {
            try { input.close(); } catch (Throwable ignored) { }
            try { output.close(); } catch (Throwable ignored) { }
        }
        prefs.edit().putLong("copied_last_update_time", updateTime).apply();
        return out;
    }

    private static final class ResourceContext extends ContextWrapper {
        private final AssetManager assets;
        private final Resources resources;
        private final Resources.Theme theme;

        ResourceContext(Context base, AssetManager assets, Resources resources) {
            super(base);
            this.assets = assets;
            this.resources = resources;
            this.theme = resources.newTheme();
            this.theme.applyStyle(android.R.style.Theme_DeviceDefault_Light_NoActionBar, true);
        }

        @Override public AssetManager getAssets() {
            return assets;
        }

        @Override public Resources getResources() {
            return resources;
        }

        @Override public Resources.Theme getTheme() {
            return theme;
        }
    }

    private static String bounds(View view) {
        if (view == null) return "missing";
        return view.getLeft() + "," + view.getTop() + "," + view.getWidth() + ","
                + view.getHeight();
    }
}
