package com.smartisanos.home.settings.icons;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.smartisanos.launcher.quicksearch.ui.OriginalQuickSearchResources;
import com.smartisanos.launcher.quicksearch.ui.OriginalSearchBarCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/** Settings-hosted, recyclable metadata browser. It has no pack scanning or persistence owner. */
public final class IconLibrarySearchPage extends LinearLayout {
    public interface Host {
        Drawable cellBackground();
        Drawable selectedMarker();
        View categoryRow(String title, View convertView, ViewGroup parent);
        void apply(IconLibrarySearchIndex.Entry entry);
        void openCategory(String category, int firstVisible, int top);
        void back();
        void hideKeyboard(View view);
    }
    private static final String[] CATEGORIES = {"", "__packs__", "system", "social", "media", "browser", "shopping", "tools", "games", "news", "lifestyle", "travel", "productivity", "education", "finance", "personalization", "parenting", "reading", "other"};
    private static final String[] CATEGORY_LABELS = {"全部", "图标包", "系统", "社交", "影音", "浏览器", "购物", "工具", "游戏", "新闻资讯", "生活实用", "交通出行", "商务办公", "学习教育", "金融理财", "铃声壁纸", "儿童母婴", "书刊阅读", "其他"};
    private final Activity activity;
    private final Host host;
    private final IconPreviewRepository repository;
    private IconPreviewRepository.RequestSession session;
    private final String targetPackage, targetComponent;
    private String selectedSource;
    private final long user;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final GridView grid;
    private final ListView categories;
    private final TextView message;
    private final TextView resultCount;
    private final OriginalSearchBarCompat search;
    private final ResultAdapter adapter = new ResultAdapter();
    private final java.util.Set<Binding> bindings = Collections.newSetFromMap(
            new java.util.WeakHashMap<Binding, Boolean>());
    private volatile long generation;
    private volatile boolean closed;
    private String category;
    private boolean showingResults;
    private final boolean categoryPage;
    private boolean bindPosted;
    private int lastPrefetchFirst = -1;
    private long lastPrefetchGeneration = -1;
    private final Runnable bindFrame = new Runnable() { public void run() {
        bindPosted = false;
        bindVisible();
    }};
    private long selectGeneration;
    private IconPreviewRepository.IconRenderKey selectKey;
    private IconPreviewRepository.Callback selectCallback;
    private IconChoiceCell selectingCell;
    private Runnable filter;
    private final com.smartisanos.launcher.reload.OriginalLoadingContentFactory.Content loading;
    private volatile boolean directoryReady;
    private android.os.CancellationSignal queryCancel;
    private IconPackManager.SearchSnapshot packed;
    private final android.util.LruCache<Integer,List<IconLibrarySearchIndex.Entry>> packedPages =
            new android.util.LruCache<Integer,List<IconLibrarySearchIndex.Entry>>(4);
    private final java.util.Set<Integer> loadingPages = new java.util.HashSet<Integer>();
    private boolean paused;
    private long directoryGeneration;

    private int oldSoftInputMode;

    public IconLibrarySearchPage(Activity activity, IconPreviewRepository.RequestSession session,
            String pkg, String component, long user, String selectedSource, Drawable searchBackground, Host host,
            String browseCategory, int categoryFirst, int categoryTop) {
        super(activity);
        this.activity = activity; this.session = session; this.host = host;
        categoryPage = browseCategory != null;
        category = browseCategory == null || browseCategory.length() == 0 ? null : browseCategory;
        showingResults = categoryPage;
        targetPackage = pkg; targetComponent = component; this.user = user; this.selectedSource = selectedSource;
        repository = IconPreviewRepository.get(activity);
        oldSoftInputMode = activity.getWindow().getAttributes().softInputMode;
        activity.getWindow().setSoftInputMode(android.view.WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE);
        setOrientation(VERTICAL);
        setFocusableInTouchMode(true);
        search = new OriginalSearchBarCompat(OriginalQuickSearchResources.create(activity));
        search.setSettingsPresentation(searchBackground);
        search.getEditText().setHint("搜索图标、应用或包名");
        search.getEditText().setContentDescription("搜索图标、应用或包名");
        // Match APP_ICON_LIST exactly: a 64dp host with a centered 56dp shared bar.
        // The original NinePatch/search field already owns the horizontal inset.
        FrameLayout searchHost = search.createSettingsHost(activity);
        addView(searchHost, new LayoutParams(-1, dp(64)));
        message = new TextView(activity);
        message.setTextSize(14); message.setTextColor(0xff9d9fa6);
        LinearLayout resultHeader = new LinearLayout(activity);
        resultHeader.setOrientation(HORIZONTAL);
        resultHeader.setGravity(android.view.Gravity.CENTER_VERTICAL);
        resultHeader.setPadding(dp(30), dp(8), dp(30), dp(8));
        resultHeader.addView(message, new LayoutParams(0, -2, 1));
        resultCount = new TextView(activity);
        resultCount.setTextSize(android.util.TypedValue.COMPLEX_UNIT_PX, message.getTextSize());
        resultCount.setTypeface(message.getTypeface());
        resultCount.setTextColor(message.getCurrentTextColor());
        resultCount.setIncludeFontPadding(message.getIncludeFontPadding());
        resultCount.setTextScaleX(message.getTextScaleX());
        resultCount.setLetterSpacing(message.getLetterSpacing());
        resultCount.setGravity(android.view.Gravity.RIGHT);
        resultCount.setVisibility(GONE);
        resultHeader.addView(resultCount, new LayoutParams(-2, -2));
        addView(resultHeader, new LayoutParams(-1, -2));
        FrameLayout results = new FrameLayout(activity);
        addView(results, new LayoutParams(-1, 0, 1));
        categories = new ListView(activity);
        categories.setDivider(null); categories.setVerticalScrollBarEnabled(false);
        categories.setAdapter(new BaseAdapter() {
            public int getCount() { return CATEGORIES.length; }
            public Object getItem(int position) { return CATEGORIES[position]; }
            public long getItemId(int position) { return position; }
            public View getView(int position, View convertView, ViewGroup parent) {
                return IconLibrarySearchPage.this.host.categoryRow(CATEGORY_LABELS[position], convertView, parent);
            }
        });
        categories.setSelectionFromTop(categoryFirst, categoryTop);
        categories.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
            public void onItemClick(android.widget.AdapterView<?> parent, View view, int position, long id) {
                View first = categories.getChildAt(0);
                IconLibrarySearchPage.this.host.openCategory(CATEGORIES[position],
                        categories.getFirstVisiblePosition(), first == null ? 0 : first.getTop());
            }
        });
        results.addView(categories, new FrameLayout.LayoutParams(-1, -1));
        grid = new GridView(activity);
        grid.setNumColumns(3);
        grid.setStretchMode(GridView.STRETCH_COLUMN_WIDTH);
        grid.setPadding(dp(18), 0, dp(18), dp(18));
        grid.setClipToPadding(false); grid.setVerticalScrollBarEnabled(false);
        grid.setSelector(android.R.color.transparent);
        grid.setAdapter(adapter);
        grid.setRecyclerListener(new AbsListView.RecyclerListener() {
            public void onMovedToScrapHeap(View view) {
                if (view.getTag() instanceof Binding) ((Binding) view.getTag()).release();
            }
        });
        grid.setOnScrollListener(new AbsListView.OnScrollListener() {
            public void onScrollStateChanged(AbsListView view, int state) {
                scheduleVisibleBind();
                if (state == SCROLL_STATE_IDLE && active()) {
                    repository.logPipelineState("library-idle views=" + grid.getChildCount() + " bindings=" + bindings.size());
                }
            }
            public void onScroll(AbsListView view, int first, int count, int total) { scheduleVisibleBind(); }
        });
        results.addView(grid, new FrameLayout.LayoutParams(-1, -1));
        search.getEditText().addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence text, int start, int count, int after) { }
            public void onTextChanged(CharSequence text, int start, int before, int count) { scheduleFilter(false, true); }
            public void afterTextChanged(Editable value) { }
        });
        search.setBackListener(new com.smartisanos.launcher.quicksearch.ui.OriginalSearchEditTextCompat.BackListener() {
            public void onSearchBack() { IconLibrarySearchPage.this.host.back(); }
        });
        addOnAttachStateChangeListener(new OnAttachStateChangeListener() {
            public void onViewAttachedToWindow(View view) { }
            public void onViewDetachedFromWindow(View view) { close(); }
        });
        int progressId = activity.getResources().getIdentifier("loading_progress", "drawable", activity.getPackageName());
        loading = com.smartisanos.launcher.reload.OriginalLoadingContentFactory.create(activity,
                progressId == 0 ? null : activity.getResources().getDrawable(progressId), "正在加载所有图标");
        loading.message.setText("正在加载所有图标"); loading.message.setVisibility(GONE);
        results.addView(loading.root,new FrameLayout.LayoutParams(-1,-1));
        initializeDirectory();
        requestFocus();
    }

    public static String categoryTitle(String category) {
        for (int i = 0; i < CATEGORIES.length; i++) if (CATEGORIES[i].equals(category)) return CATEGORY_LABELS[i];
        return "搜索图标";
    }

    private int dp(int value) { return Math.round(value * getResources().getDisplayMetrics().density); }
    private boolean active() { return !closed && !paused && repository.isSessionActive(session); }
    private void showCategories() {
        showingResults = false;
        resultCount.setVisibility(GONE);
        message.setText("图标分类"); categories.setVisibility(VISIBLE); grid.setVisibility(GONE);
        releaseBindings(); packed = null; packedPages.evictAll(); loadingPages.clear(); adapter.rows = Collections.emptyList(); adapter.notifyDataSetChanged();
    }

    /** Consume one browser level; the settings host exits only from the category home. */
    public boolean handleBack() {
        if (closed || categoryPage || !showingResults) return false;
        ++generation;
        if (filter != null) main.removeCallbacks(filter);
        if (queryCancel != null) queryCancel.cancel();
        cancelSelection(); releaseBindings();
        category = null;
        showingResults = false;
        host.hideKeyboard(search);
        search.getEditText().setText("");
        search.getEditText().clearFocus();
        requestFocus();
        if (directoryReady) showCategories();
        else initializeDirectory();
        return true;
    }
    public void refreshDirectory() {
        if (!closed && !paused) initializeDirectory();
    }
    private void initializeDirectory() {
        final long token = ++generation;
        directoryReady = false;
        if (queryCancel != null) queryCancel.cancel();
        if (filter != null) main.removeCallbacks(filter);
        cancelSelection(); releaseBindings(); packed=null; packedPages.evictAll(); loadingPages.clear();
        search.setInputEnabled(false); categories.setVisibility(GONE); grid.setVisibility(GONE);
        message.setText(""); loading.root.setVisibility(VISIBLE); loading.progress.setVisibility(VISIBLE);
        resultCount.setVisibility(GONE);
        loading.message.setText("正在加载所有图标"); loading.message.setVisibility(GONE); loading.root.setOnClickListener(null);
        final IconPreviewRepository.RequestSession owner = session;
        boolean queued = repository.scheduleIo(owner, new Runnable() { public void run() {
            long started = android.os.SystemClock.uptimeMillis();
            try {
                IconLibraryCatalog catalog = IconLibraryCatalog.load(activity.getApplicationContext());
                IconPackManager.prepareSearchIndex(activity.getApplicationContext(), owner, catalog);
                main.post(new Runnable() { public void run() {
                    if (!active() || generation != token || owner != session) return;
                    directoryReady = true; directoryGeneration=IconPackManager.searchGeneration(); loading.root.setVisibility(GONE); search.setInputEnabled(true);
                    if (search.getEditText().getText().length() == 0 && category == null && !showingResults) showCategories();
                    else scheduleFilter(true,false);
                    android.util.Log.i("SmartisanPerf","ICON_DIRECTORY_READY durationMs="+(android.os.SystemClock.uptimeMillis()-started));
                }});
            } catch (Exception error) {
                android.util.Log.w("SmartisanPerf","ICON_DIRECTORY_LOAD_FAILED",error);
                main.post(new Runnable() { public void run() {
                    if(active() && generation==token) showDirectoryError();
                }});
            }
        }});
        if (!queued) showDirectoryError();
    }
    private void showDirectoryError() {
        loading.progress.setVisibility(GONE); loading.message.setText("加载失败，点击重试");
        loading.root.setOnClickListener(new OnClickListener() { public void onClick(View view) { initializeDirectory(); }});
    }
    private void scheduleFilter(boolean browse, boolean debounce) {
        if (!directoryReady || !active()) return;
        final long token = ++generation;
        cancelSelection();
        if (filter != null) main.removeCallbacks(filter);
        releaseBindings();
        if (queryCancel != null) queryCancel.cancel();
        queryCancel = new android.os.CancellationSignal();
        final android.os.CancellationSignal cancel = queryCancel;
        loadingPages.clear(); packedPages.evictAll();
        final String query = search.getEditText().getText().toString();
        if (!browse && !categoryPage && IconLibrarySearchIndex.normalize(query).length() == 0) {
            category = null; showCategories(); return;
        }
        final String filterCategory = category;
        showingResults = true;
        categories.setVisibility(GONE); grid.setVisibility(VISIBLE);
        message.setText("搜索结果");
        resultCount.setVisibility(GONE);
        filter = new Runnable() { public void run() {
            if (!active() || generation != token) return;
            repository.schedule(session, IconPreviewRepository.Priority.P0_VISIBLE, new Runnable() {
                public void run() {
                    if (!active() || generation != token) return;
                    final List<IconLibrarySearchIndex.Entry> found;
                    final IconPackManager.SearchSnapshot packResult;
                    long started = android.os.SystemClock.uptimeMillis();
                    try {
                        IconLibraryCatalog catalog = IconLibraryCatalog.load(activity.getApplicationContext());
                        found = "__packs__".equals(filterCategory) ? Collections.<IconLibrarySearchIndex.Entry>emptyList() : IconLibrarySearchIndex.search(catalog.entries, query, filterCategory,
                                new IconLibrarySearchIndex.Current() { public boolean isCurrent() {
                                    return active() && generation == token;
                                }});
                        if (found == null || !active() || generation != token) return;
                        packResult = IconPackManager.searchDirectory(activity.getApplicationContext(),query,
                                "__packs__".equals(filterCategory) ? null : filterCategory,cancel);
                    } catch (Exception error) {
                        android.util.Log.w("SmartisanPerf", "ICON_LIBRARY_SEARCH_FAILED", error);
                        main.post(new Runnable() { public void run() {
                            if (active() && generation == token) message.setText("图标目录暂时无法读取");
                        }});
                        return;
                    }
                    if (found == null) return;
                    final long duration = android.os.SystemClock.uptimeMillis() - started;
                    main.post(new Runnable() { public void run() {
                        if (!active() || generation != token) return;
                        releaseBindings(); packed=packResult; packedPages.evictAll(); loadingPages.clear(); adapter.rows = found; adapter.notifyDataSetChanged(); grid.setSelection(0);
                        message.setText(found.isEmpty() && packResult.size()==0 ? "未找到相关图标" : "搜索结果");
                        resultCount.setText("共 " + (found.size()+packResult.size()) + " 个");
                        resultCount.setVisibility(VISIBLE);
                        android.util.Log.i("SmartisanPerf", "ICON_LIBRARY_SEARCH count=" + (found.size()+packResult.size()) + " durationMs=" + duration);
                        repository.logPipelineState("library-results");
                        grid.post(new Runnable() { public void run() { if (active()) bindVisible(); }});
                    }});
                }
            });
        }};
        main.postDelayed(filter, debounce ? 120L : 0L);
    }

    public void updateSelectedSource(String selected) {
        if (!active()) return;
        selectedSource = selected == null ? "" : selected;
        for (Binding binding : bindings) {
            binding.cell.check.setVisibility(binding.loaded && binding.entry != null
                    && binding.entry.stableKey().equals(selectedSource) ? VISIBLE : GONE);
        }
    }

    private void scheduleVisibleBind() {
        if (!active() || bindPosted) return;
        bindPosted = true;
        grid.postOnAnimation(bindFrame);
    }

    private void bindVisible() {
        if (!active() || grid.getVisibility() != VISIBLE) return;
        for (int i = 0; i < grid.getChildCount(); i++) {
            View cell = grid.getChildAt(i);
            if (cell.getTag() instanceof Binding) {
                Binding binding = (Binding) cell.getTag();
                IconLibrarySearchIndex.Entry value = entryAt(grid.getFirstVisiblePosition()+i);
                if(binding.entry != value || binding.token != generation) binding.bind(value);
                binding.load();
            }
        }
        // Two adjacent rows, local artwork only. Cold HTTP stays owned by visible cells.
        int first = grid.getFirstVisiblePosition();
        if (first != lastPrefetchFirst || generation != lastPrefetchGeneration) {
            boolean backwards = first < lastPrefetchFirst && generation == lastPrefetchGeneration;
            lastPrefetchFirst = first; lastPrefetchGeneration = generation;
            int start = backwards ? Math.max(0, first - 6) : first + grid.getChildCount();
            int end = Math.min(adapter.getCount(), backwards ? first : start + 6);
            for (int position = start; position < end; position++) {
                final IconLibrarySearchIndex.Entry value = entryAt(position);
                if (value == null) continue;
                final IconPreviewRepository.IconRenderKey key = repository.candidateRenderKey(
                        targetPackage, targetComponent, user, candidateFor(value));
                if (repository.cachedDrawable(key) != null) continue;
                repository.prefetchLocal(session, key,
                        new IconPreviewRepository.DrawableLoader() { public Drawable load() {
                            return loadArtwork(value, key.targetPixelSize, true);
                        }});
            }
        }
    }
    private void releaseBindings() { for (Binding binding : bindings) binding.release(); }

    private final class Binding {
        final IconChoiceCell cell;
        IconLibrarySearchIndex.Entry entry;
        IconPreviewRepository.IconRenderKey key;
        IconPreviewRepository.Callback callback;
        long token;
        boolean loaded;
        boolean attempted;
        Binding(IconChoiceCell cell) { this.cell = cell; bindings.add(this); }
        void release() {
            if (key != null && callback != null) repository.cancelRequest(session, key, callback);
            callback = null; loaded = false; attempted = false;
            cell.icon.setImageDrawable(null); cell.check.setVisibility(GONE);
        }
        void bind(IconLibrarySearchIndex.Entry value) {
            release(); entry = value; token = generation;
            if(value==null) { key=null;cell.label.setText("");cell.setOnClickListener(null);cell.setClickable(false);return; }
            AppIconCandidate candidate = candidateFor(value);
            key = repository.candidateRenderKey(targetPackage, targetComponent, user, candidate);
            cell.label.setText(value.name);
            cell.setContentDescription(value.name + " " + value.sourceId);
            cell.setOnClickListener(new OnClickListener() { public void onClick(View view) { select(Binding.this); }});
        }
        void load() {
            if (!active() || entry==null || attempted || callback != null || token != generation) return;
            attempted = true;
            final IconLibrarySearchIndex.Entry value = entry;
            final String sourceId = value.sourceId;
            callback = new IconPreviewRepository.Callback() {
                public void onIconReady(String keyString, Bitmap bitmap) {
                    if (!active() || token != generation || callback != this || !key.toString().equals(keyString)) return;
                    callback = null; loaded = bitmap != null;
                    cell.icon.setImageBitmap(bitmap);
                    cell.check.setVisibility(loaded && entry.stableKey().equals(selectedSource) ? VISIBLE : GONE);
                }
            };
            repository.request(session, key, IconPreviewRepository.Priority.P0_VISIBLE,
                    new IconPreviewRepository.DrawableLoader() { public Drawable load() {
                        return loadArtwork(value,key.targetPixelSize);
                    }}, callback);
        }
    }
    private final class ResultAdapter extends BaseAdapter {
        List<IconLibrarySearchIndex.Entry> rows = Collections.emptyList();
        public int getCount() { return rows.size() + (packed==null ? 0 : packed.size()); }
        public Object getItem(int position) { return entryAt(position); }
        public long getItemId(int position) { return position; }
        public View getView(int position, View convertView, ViewGroup parent) {
            IconChoiceCell cell;
            Binding binding;
            if (convertView instanceof IconChoiceCell) { cell = (IconChoiceCell) convertView; binding = (Binding) cell.getTag(); }
            else {
                cell = new IconChoiceCell(activity, host.cellBackground(), host.selectedMarker());
                cell.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
                binding = new Binding(cell); cell.setTag(binding);
            }
            IconLibrarySearchIndex.Entry value=entryAt(position);
            if (binding.entry != value || binding.token != generation) binding.bind(value);
            // GridView may measure off-screen cells through getView. Only attached visible cells load.
            return cell;
        }
    }

    private void cancelSelection() {
        ++selectGeneration;
        if (selectKey != null && selectCallback != null) repository.cancelRequest(session, selectKey, selectCallback);
        if (selectingCell != null) selectingCell.progress.setVisibility(GONE);
        selectKey = null; selectCallback = null; selectingCell = null;
    }
    private void select(final Binding binding) {
        if (!active() || selectKey != null || binding.token != generation) return;
        if(binding.entry==null) return;
        final IconLibrarySearchIndex.Entry value=binding.entry;
        final String sourceId = value.sourceId;
        final long token = ++selectGeneration;
        selectingCell = binding.cell; selectingCell.progress.setVisibility(VISIBLE);
        // Fresh confirmation bypasses the preview cache: the persistent RAW must still be available.
        selectKey = new IconPreviewRepository.IconRenderKey(targetPackage, targetComponent, user,
                value.isPack() ? "PACK_CONFIRM" : "RESOURCE_CONFIRM", sourceId, token, dp(72), getResources().getDisplayMetrics().densityDpi, 1);
        selectCallback = new IconPreviewRepository.Callback() { public void onIconReady(String key, Bitmap bitmap) {
            if (!active() || selectGeneration != token) return;
            cancelSelection();
            if (bitmap == null) { Toast.makeText(activity, "图标加载失败，请重试", Toast.LENGTH_SHORT).show(); return; }
            host.hideKeyboard(search);
            host.apply(value);
        }};
        repository.request(session, selectKey, IconPreviewRepository.Priority.P0_VISIBLE,
                new IconPreviewRepository.DrawableLoader() { public Drawable load() {
                    return loadArtwork(value,dp(72));
                }}, selectCallback);
    }

    private AppIconCandidate candidateFor(IconLibrarySearchIndex.Entry entry) {
        return entry.isPack() ? new AppIconCandidate(AppIconCandidate.TYPE_PACKED,entry.packPackage,"",false,entry.drawableName,entry.packVersion,true)
                : new AppIconCandidate(AppIconCandidate.TYPE_LIBRARY,entry.sourceId,"",false);
    }
    private Drawable loadArtwork(IconLibrarySearchIndex.Entry entry,int size) {
        return loadArtwork(entry, size, false);
    }
    private Drawable loadArtwork(IconLibrarySearchIndex.Entry entry,int size, boolean cachedOnly) {
        return entry.isPack() ? IconPackManager.getPackedDrawable(activity,entry.packPackage,entry.drawableName)
                : com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost.loadLibraryIconForPreview(
                        activity, entry.sourceId, cachedOnly);
    }
    private IconLibrarySearchIndex.Entry entryAt(int position) {
        if (position < adapter.rows.size()) return adapter.rows.get(position);
        if (packed==null) return null;
        int offset=position-adapter.rows.size(),page=offset/60*60;
        List<IconLibrarySearchIndex.Entry> rows=packedPages.get(page);
        if(rows==null) { requestPackPage(page); return null; }
        return offset-page < rows.size() ? rows.get(offset-page) : null;
    }
    private void requestPackPage(final int offset) {
        if(!active() || packed==null || !loadingPages.add(offset)) return;
        final long token=generation; final IconPackManager.SearchSnapshot snapshot=packed;
        final android.os.CancellationSignal cancel=queryCancel;
        repository.schedule(session,IconPreviewRepository.Priority.P0_VISIBLE,new Runnable() { public void run() {
            if(!active() || token!=generation) return;
            try {
                final List<IconLibrarySearchIndex.Entry> rows=IconPackManager.readSearchPage(activity.getApplicationContext(),snapshot,offset,60,cancel);
                main.post(new Runnable() { public void run() {
                    if(!active() || token!=generation) return;
                    loadingPages.remove(offset);packedPages.put(offset,rows);bindVisible();
                }});
            } catch(Exception error) { main.post(new Runnable() { public void run() {
                if(active() && token==generation) {loadingPages.remove(offset); if(!IconPackManager.isSearchSnapshotCurrent(snapshot)) initializeDirectory();}
            }}); }
        }});
    }
    public void pause() {
        if(closed || paused) return;
        paused=true; ++generation; if(queryCancel!=null)queryCancel.cancel();
        grid.removeCallbacks(bindFrame); bindPosted = false;
        main.removeCallbacksAndMessages(null);cancelSelection();releaseBindings();repository.cancelSession(session);
    }
    public IconPreviewRepository.RequestSession resume() {
        if(!closed && paused) {
            paused=false;session=repository.openSession("ICON_LIBRARY");queryCancel=new android.os.CancellationSignal();
            if(directoryReady && directoryGeneration==IconPackManager.searchGeneration()) {
                loadingPages.clear();bindVisible();
            } else initializeDirectory();
        }
        return session;
    }
    public void close() {
        if (closed) return;
        closed = true; ++generation; cancelSelection(); main.removeCallbacksAndMessages(null);
        grid.removeCallbacks(bindFrame); bindPosted = false;
        if(queryCancel!=null)queryCancel.cancel();
        releaseBindings(); bindings.clear(); packed=null;packedPages.evictAll();loadingPages.clear();repository.cancelSession(session);
        grid.setAdapter(null);
        activity.getWindow().setSoftInputMode(oldSoftInputMode);
    }
}
