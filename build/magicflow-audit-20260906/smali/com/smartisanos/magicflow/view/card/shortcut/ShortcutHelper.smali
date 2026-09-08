.class public Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;
.super Ljava/lang/Object;
.source "ShortcutHelper.java"


# static fields
.field private static final ALIPAY_PACKAGE:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field private static final APPSTORE_SEARCH_VIEW:Ljava/lang/String; = "com.smartisanos.appstore.ui.SearchDetailActivity"

.field public static final APP_STORE_PACKAGE:Ljava/lang/String; = "com.smartisanos.appstore"

.field private static final BROWSER_BOOKMARKS_HISTORY_VIEW:Ljava/lang/String; = "org.chromium.chrome.browser.smartisan.bookmarks.BookMarkAndHistoryActivity"

.field public static final BROWSER_PACKAGE:Ljava/lang/String; = "com.android.browser"

.field private static final CALCULATOR_PACKAGE:Ljava/lang/String; = "com.smartisanos.calculator"

.field private static final CALENDAR_EDIT_EVENT_VIEW:Ljava/lang/String; = "com.android.calendar.event.EditEventActivity"

.field private static final CALENDAR_PACKAGE:Ljava/lang/String; = "com.android.calendar"

.field private static final CLOCK_PACKAGE:Ljava/lang/String; = "com.smartisanos.clock"

.field private static final CREATE_CALCULATOR_VIEW:Ljava/lang/String; = "com.smartisanos.calculator.Calculator"

.field private static final CREATE_CLOCK_VIEW:Ljava/lang/String; = "com.smartisanos.clock.activity.ClockActivity"

.field public static final CREATE_NEW_CALENDAR_EVENT:Ljava/lang/String; = "create_new_calendar_event"

.field public static final CREATE_NEW_NOTES:Ljava/lang/String; = "create_new_notes"

.field private static final CREATE_NEW_NOTES_VIEW:Ljava/lang/String; = "com.smartisanos.notes.CreateNotesActivity"

.field public static final CREATE_NEW_RECORDER:Ljava/lang/String; = "create_new_recorder"

.field private static final CREATE_RECORDER_EVENT_VIEW:Ljava/lang/String; = "com.smartisanos.recorder.activity.RecorderActivity"

.field public static final DEF_SHORTCUT_ORDER:[Ljava/lang/String;

.field public static final DEF_TEENS_SHORTCUT_ORDER:[Ljava/lang/String;

.field public static final MAX_SHORTCUT_TOOL_COUNT:I = 0x6

.field private static final NOTE_PACKAGE:Ljava/lang/String; = "com.smartisanos.notes"

.field public static final OPEN_AILPAY_BUS_CODE:Ljava/lang/String; = "open_ailpay_bus_code"

.field public static final OPEN_AILPAY_CITY_SERVICE:Ljava/lang/String; = "open_ailpay_city_service"

.field public static final OPEN_AILPAY_PAY_QR:Ljava/lang/String; = "open_ailpay_pay_qr"

.field public static final OPEN_AILPAY_PAY_SCAN:Ljava/lang/String; = "open_ailpay_pay_scan"

.field public static final OPEN_APPSTORE_SEARCH:Ljava/lang/String; = "open_appstore_search"

.field public static final OPEN_BROWSER_BOOKMARK:Ljava/lang/String; = "open_browser_bookmark"

.field public static final OPEN_BROWSER_BOOKMARK_ACTION:Ljava/lang/String; = "com.android.browser.action.SHOW_BOOKMARK_OR_HISTORY"

.field public static final OPEN_BROWSER_SEARCH:Ljava/lang/String; = "open_browser_search"

.field public static final OPEN_BROWSER_SEARCH_ACTION:Ljava/lang/String; = "com.android.browser.action.ACTIVE_SEARCH_BAR"

.field public static final OPEN_CALCULATOR:Ljava/lang/String; = "open_calculator"

.field public static final OPEN_CHINESE_DICTIONARY:Ljava/lang/String; = "open_chinese_dictionary"

.field public static final OPEN_CLOCK:Ljava/lang/String; = "open_clock"

.field public static final OPEN_COMPOSITION_MATERIAL:Ljava/lang/String; = "open_composition_material"

.field public static final OPEN_ENGLISH_LISTENING:Ljava/lang/String; = "open_english_listening"

.field public static final OPEN_HOMEWORK_CORRECTION:Ljava/lang/String; = "open_homework_correction"

.field public static final OPEN_SECURITY_CLEANER:Ljava/lang/String; = "open_security_cleaner"

.field public static final OPEN_SECURITY_CLEARMEMORY:Ljava/lang/String; = "open_security_clearmemory"

.field protected static final RECORDER_PACKAGE:Ljava/lang/String; = "com.smartisanos.recorder"

.field public static final RECORDING_BY_HARD_KEY:Ljava/lang/String; = "com.smartisanos.recorder.START_RESUME_RECORDING_BY_HARD_KEY"

.field private static final SECURITY_CLEARMEMORY_VIEW:Ljava/lang/String; = "com.smartisanos.clearmemory.ManagerApplicationsRunningActivity"

.field private static final SECURITY_CLEAR_VIEW:Ljava/lang/String; = "com.smartisanos.cleaner.CleanerActivity"

.field protected static final SECURITY_PACKAGE:Ljava/lang/String; = "com.smartisanos.security"

.field private static final log:Lcom/smartisanos/magicflow/LOG;

.field private static sDisabledInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "create_new_notes"

    const-string v2, "create_new_calendar_event"

    const-string v3, "create_new_recorder"

    const-string v4, "open_calculator"

    const-string v5, "open_security_clearmemory"

    const-string v6, "open_clock"

    const-string v7, "open_security_cleaner"

    const-string v8, "open_browser_search"

    const-string v9, "open_browser_bookmark"

    const-string v10, "open_appstore_search"

    const-string v11, "open_ailpay_bus_code"

    const-string v12, "open_ailpay_city_service"

    .line 2
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;->DEF_SHORTCUT_ORDER:[Ljava/lang/String;

    const-string v1, "open_chinese_dictionary"

    const-string v2, "open_composition_material"

    const-string v3, "open_homework_correction"

    const-string v4, "open_english_listening"

    const-string v5, "create_new_notes"

    const-string v6, "open_calculator"

    const-string v7, "open_ailpay_pay_scan"

    const-string v8, "open_ailpay_pay_qr"

    const-string v9, "open_security_clearmemory"

    const-string v10, "open_security_cleaner"

    const-string v11, "open_ailpay_bus_code"

    const-string v12, "open_ailpay_city_service"

    .line 3
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;->DEF_TEENS_SHORTCUT_ORDER:[Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;->sDisabledInfoList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefShortcutToolOrder()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    sget-object v1, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;->DEF_SHORTCUT_ORDER:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 4
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 6
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShortcutChangedOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;->getDefShortcutToolOrder()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;->DEF_SHORTCUT_ORDER:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ";"

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 6
    array-length v2, p0

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    .line 7
    aget-object v5, p0, v4

    .line 8
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v0, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/util/List;Ljava/lang/StringBuffer;)V

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getToolShortcutInfoByName(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "getToolShortcutInfoByName return null by name is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "getToolShortcutInfoByName return null by context is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "create_new_notes"

    .line 5
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    new-instance v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    const-string v3, "com.smartisanos.notes"

    const-string v4, "com.smartisanos.notes.CreateNotesActivity"

    invoke-direct {v2, v3, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0d0104

    .line 7
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070270

    .line 8
    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f070387

    .line 9
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    const-string v2, "create_new_calendar_event"

    .line 10
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    new-instance v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    const-string v3, "com.android.calendar"

    const-string v4, "com.android.calendar.event.EditEventActivity"

    invoke-direct {v2, v3, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0d0103

    .line 12
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0700e8

    .line 13
    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f070382

    .line 14
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_3
    const-string v2, "create_new_recorder"

    .line 15
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    new-instance v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    const-string v3, "com.smartisanos.recorder"

    const-string v4, "com.smartisanos.recorder.activity.RecorderActivity"

    invoke-direct {v2, v3, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0d0105

    .line 17
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0703be

    .line 18
    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f070388

    .line 19
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_4
    const-string v2, "open_calculator"

    .line 20
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 21
    new-instance v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    const-string v3, "com.smartisanos.calculator"

    const-string v4, "com.smartisanos.calculator.Calculator"

    invoke-direct {v2, v3, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0d008d

    .line 22
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0700e6

    .line 23
    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f070381

    .line 24
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_5
    const-string v2, "open_clock"

    .line 25
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 26
    new-instance v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    const-string v3, "com.smartisanos.clock"

    const-string v4, "com.smartisanos.clock.activity.ClockActivity"

    invoke-direct {v2, v3, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0d00da

    .line 27
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f07013a

    .line 28
    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f070386

    .line 29
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_6
    const-string v2, "open_browser_bookmark"

    .line 30
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "com.android.browser"

    if-eqz v2, :cond_7

    .line 31
    new-instance v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    const-string v4, "org.chromium.chrome.browser.smartisan.bookmarks.BookMarkAndHistoryActivity"

    invoke-direct {v2, v3, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0d0084

    .line 32
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0700d3

    .line 33
    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f07037e

    .line 34
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    const-string v2, "open_browser_search"

    .line 35
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, ""

    if-eqz v2, :cond_8

    .line 36
    new-instance v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    invoke-direct {v2, v3, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0d0085

    .line 37
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0700d7

    .line 38
    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f07037f

    .line 39
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_8
    const-string v2, "open_security_cleaner"

    .line 40
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "com.smartisanos.security"

    if-eqz v2, :cond_9

    .line 41
    new-instance v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    const-string v4, "com.smartisanos.cleaner.CleanerActivity"

    invoke-direct {v2, v3, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0d00d7

    .line 42
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070136

    .line 43
    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f070384

    .line 44
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_9
    const-string v2, "open_security_clearmemory"

    .line 45
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 46
    new-instance v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    const-string v4, "com.smartisanos.clearmemory.ManagerApplicationsRunningActivity"

    invoke-direct {v2, v3, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0d00d8

    .line 47
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070138

    .line 48
    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f070385

    .line 49
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    :cond_a
    const-string v2, "open_appstore_search"

    .line 50
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f07037d

    const v5, 0x7f070081

    if-eqz v2, :cond_b

    .line 51
    new-instance v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    const-string v6, "com.smartisanos.appstore"

    invoke-direct {v2, v6, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x7f0d003f

    .line 52
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 54
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_1

    :cond_b
    const-string v2, "open_chinese_dictionary"

    .line 55
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 56
    new-instance v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    invoke-direct {v2, v4, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x7f0d00d0

    .line 57
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 59
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_c
    const-string v2, "open_composition_material"

    .line 60
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 61
    new-instance v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    invoke-direct {v2, v4, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x7f0d00e4

    .line 62
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 64
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_d
    const-string v2, "open_homework_correction"

    .line 65
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 66
    new-instance v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    invoke-direct {v2, v4, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x7f0d0180

    .line 67
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 69
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_e
    const-string v2, "open_english_listening"

    .line 70
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 71
    new-instance v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    invoke-direct {v2, v4, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x7f0d0130

    .line 72
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 74
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_f
    const-string v2, "open_ailpay_pay_scan"

    .line 75
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v6, "com.eg.android.AlipayGphone"

    if-eqz v2, :cond_10

    .line 76
    new-instance v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    invoke-direct {v2, v6, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x7f0d0033

    .line 77
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 79
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    :cond_10
    const-string v2, "open_ailpay_pay_qr"

    .line 80
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 81
    new-instance v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    invoke-direct {v2, v6, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x7f0d0032

    .line 82
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 84
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    :cond_11
    const-string v2, "open_ailpay_bus_code"

    .line 85
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 86
    new-instance v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    invoke-direct {v2, v6, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0d0030

    .line 87
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0700df

    .line 88
    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f070380

    .line 89
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_12
    const-string v2, "open_ailpay_city_service"

    .line 90
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 91
    new-instance v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    invoke-direct {v2, v6, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0d0031

    .line 92
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070135

    .line 93
    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f070383

    .line 94
    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_13
    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :goto_1
    if-eqz v2, :cond_14

    .line 95
    invoke-virtual {v2, p1}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->setCategory(Ljava/lang/String;)V

    .line 96
    iget-object p1, v2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/o/n;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->setInstalled(Z)V

    .line 97
    invoke-virtual {v2, v3}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->setName(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2, v4}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 99
    invoke-virtual {v2, v1}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->setSettingIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    return-object v2
.end method

.method public static isEnabledItem(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "com.android.browser"

    .line 1
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/o/n;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x50

    if-lt p0, p1, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    const-string v0, "com.smartisanos.appstore"

    .line 3
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/o/n;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x3c

    if-lt p0, p1, :cond_2

    move v2, v3

    :cond_2
    return v2

    :cond_3
    return v3
.end method

.method public static startAppActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "smartisanos.intent.extra.ANIM_RESOURCE_ID"

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const v2, 0x2030001

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string p1, "com.smartisanos.recorder"

    .line 4
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "com.smartisanos.recorder.START_RESUME_RECORDING_BY_HARD_KEY"

    .line 5
    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p0, 0x10200000

    .line 6
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "com.smartisanos.security"

    .line 7
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p0, 0x10000000

    .line 8
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1
    :goto_0
    const p0, 0x7f01000d

    const p1, 0x7f01000e

    .line 9
    invoke-static {p2, p0, p1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 10
    invoke-static {v0, p2, p0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/app/ActivityOptions;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static startAppStoreSearch(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "smartisan://appstore/search"

    .line 2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "from_package"

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f01000d

    const v2, 0x7f01000e

    .line 4
    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 5
    invoke-static {v0, p0, v1}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/app/ActivityOptions;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static startBrowserBookMark(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.browser.action.SHOW_BOOKMARK_OR_HISTORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "show_mode"

    const-string v2, "bookmark"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "source_from"

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f01000d

    const v2, 0x7f01000e

    .line 4
    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 5
    invoke-static {v0, p0, v1}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/app/ActivityOptions;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static startBrowserSearch(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.browser.action.ACTIVE_SEARCH_BAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "source_from"

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f01000d

    const v2, 0x7f01000e

    .line 3
    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 4
    invoke-static {v0, p0, v1}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/app/ActivityOptions;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
