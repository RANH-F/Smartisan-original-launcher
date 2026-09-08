.class public Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;
.super Ljava/lang/Object;
.source "AppDownloadHelper.java"


# static fields
.field private static final REQUEST_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static downloadChangeObserverHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/smartisanos/magicflow/view/card/recommend/DownloadChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static downloadsUri:Landroid/net/Uri;

.field private static final log:Lcom/smartisanos/magicflow/LOG;

.field private static mManager:Landroid/app/DownloadManager;

.field private static sDownloadInfoHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->log:Lcom/smartisanos/magicflow/LOG;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->sDownloadInfoHashMap:Ljava/util/HashMap;

    const-string v0, "content://downloads/my_downloads"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->downloadsUri:Landroid/net/Uri;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->downloadChangeObserverHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->log:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;JIFFII)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->notifyDownloadChange(Ljava/lang/String;JIFFII)V

    return-void
.end method

.method private static buildRequest(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 2
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-direct {v0, p0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 p0, 0x2

    .line 3
    invoke-virtual {v0, p0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    const-string p0, "application/vnd.android.package-archive"

    .line 4
    invoke-virtual {v0, p0}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 5
    invoke-virtual {v0}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    const/4 p0, 0x1

    .line 6
    invoke-virtual {v0, p0}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    return-object v0
.end method

.method public static containsDownloadInfo(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->sDownloadInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static downloadComplete(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->sDownloadInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->sDownloadInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;

    .line 3
    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->contentObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->sDownloadInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->unregisterDownloadChangeObserver(Ljava/lang/String;)V

    return-void
.end method

.method public static getBytesAndStatus(J)[I
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    .line 2
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [J

    const/4 v4, 0x0

    aput-wide p0, v3, v4

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object p0

    const/4 p1, 0x0

    .line 3
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->mManager:Landroid/app/DownloadManager;

    invoke-virtual {v1, p0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "bytes_so_far"

    .line 5
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    aput p0, v0, v4

    const-string p0, "total_size"

    .line 6
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    aput p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "status"

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v0, p0

    const/4 p0, 0x3

    const-string v1, "reason"

    .line 8
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 10
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    sget-object v1, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBytesAndStatus err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :goto_2
    if-eqz p1, :cond_2

    .line 12
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    :cond_2
    throw p0

    :array_0
    .array-data 4
        -0x1
        -0x1
        0x0
        0x0
    .end array-data
.end method

.method public static getDownloadId(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->getDownloadInfo(Ljava/lang/String;)Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;

    move-result-object p0

    .line 2
    iget-wide v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->downloadId:J

    return-wide v0
.end method

.method public static getDownloadInfo(Ljava/lang/String;)Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->sDownloadInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;

    return-object p0
.end method

.method private static notifyDownloadChange(Ljava/lang/String;JIFFII)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->updateDownloadInfoByPackageName(Ljava/lang/String;JIFFII)Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->downloadChangeObserverHashMap:Ljava/util/HashMap;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadChangeObserver;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0, p1}, Lcom/smartisanos/magicflow/view/card/recommend/DownloadChangeObserver;->onDownloadChanged(Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;)V

    :cond_0
    return-void
.end method

.method public static pauseDownloadById(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 1
    sget-object p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "pauseDownloadById return by downloadId < 0"

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->mManager:Landroid/app/DownloadManager;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lsmartisanos/api/DownloadManagerSmt;->getInstance()Lsmartisanos/api/DownloadManagerSmt;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->mManager:Landroid/app/DownloadManager;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lsmartisanos/api/DownloadManagerSmt;->pauseDownload(Landroid/app/DownloadManager;[J)V

    :cond_1
    return-void
.end method

.method public static registerDownloadChangeObserver(Ljava/lang/String;Lcom/smartisanos/magicflow/view/card/recommend/DownloadChangeObserver;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->downloadChangeObserverHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->downloadChangeObserverHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static registerDownloadsObserver(Ljava/lang/String;Landroid/content/Context;J)V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->sDownloadInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->contentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1;

    invoke-static {}, Lcom/smartisanos/magicflow/o/d;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p0}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1;-><init>(Landroid/os/Handler;JLjava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->downloadsUri:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4
    sget-object p1, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->sDownloadInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->setContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private static removeAllDownload()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->sDownloadInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;

    .line 2
    iget-object v1, v1, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->contentObserver:Landroid/database/ContentObserver;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->sDownloadInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->downloadChangeObserverHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static removeDownloadingApp(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->downloadChangeObserverHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/h/a;

    .line 5
    sget-object v3, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->sDownloadInfoHashMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/smartisanos/magicflow/h/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/smartisanos/magicflow/h/d;->A:[I

    aget v3, v3, v0

    add-int/lit8 v3, v3, -0x1

    if-le v1, v3, :cond_1

    .line 6
    iget-object v2, v2, Lcom/smartisanos/magicflow/h/a;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->downloadComplete(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 7
    :cond_3
    :goto_1
    invoke-static {}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->removeAllDownload()V

    return-void
.end method

.method public static resumeDownloadById(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 1
    sget-object p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "resumeDownloadById return by downloadId < 0"

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->mManager:Landroid/app/DownloadManager;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lsmartisanos/api/DownloadManagerSmt;->getInstance()Lsmartisanos/api/DownloadManagerSmt;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->mManager:Landroid/app/DownloadManager;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lsmartisanos/api/DownloadManagerSmt;->resumeDownload(Landroid/app/DownloadManager;[J)V

    :cond_1
    return-void
.end method

.method public static startDownload(Lcom/smartisanos/magicflow/h/a;)J
    .locals 6

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v2, "startDownload return by info null"

    invoke-virtual {p0, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-wide v0

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/a;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    sget-object p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v2, "startDownload return by url empty"

    invoke-virtual {p0, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-wide v0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/a;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    sget-object p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v2, "startDownload return by packageName empty"

    invoke-virtual {p0, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-wide v0

    .line 6
    :cond_2
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v2

    if-nez v2, :cond_3

    return-wide v0

    .line 7
    :cond_3
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->mManager:Landroid/app/DownloadManager;

    if-nez v0, :cond_4

    const-string v0, "download"

    .line 8
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    sput-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->mManager:Landroid/app/DownloadManager;

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->buildRequest(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->mManager:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_5

    .line 11
    sget-object v3, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->sDownloadInfoHashMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/smartisanos/magicflow/h/a;->f:Ljava/lang/String;

    new-instance v5, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;

    invoke-direct {v5, v4}, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p0, p0, Lcom/smartisanos/magicflow/h/a;->f:Ljava/lang/String;

    invoke-static {p0, v2, v0, v1}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->registerDownloadsObserver(Ljava/lang/String;Landroid/content/Context;J)V

    :cond_5
    return-wide v0
.end method

.method public static unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static unregisterDownloadChangeObserver(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->downloadChangeObserverHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->downloadChangeObserverHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static updateDownloadInfoByPackageName(Ljava/lang/String;JIFFII)Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;
    .locals 10

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->sDownloadInfoHashMap:Ljava/util/HashMap;

    move-object v2, p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;

    if-eqz v0, :cond_0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 2
    invoke-virtual/range {v1 .. v9}, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->setData(Ljava/lang/String;JIFFII)V

    :cond_0
    return-object v0
.end method
