.class public Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# instance fields
.field contentObserver:Landroid/database/ContentObserver;

.field currentSize:F

.field downloadId:J

.field packageName:Ljava/lang/String;

.field progress:I

.field reason:I

.field status:I

.field totalSize:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->downloadId:J

    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    iput v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->currentSize:F

    .line 4
    iput v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->totalSize:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->progress:I

    .line 6
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->contentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public setData(Ljava/lang/String;JIFFII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->packageName:Ljava/lang/String;

    .line 2
    iput-wide p2, p0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->downloadId:J

    .line 3
    iput p4, p0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->progress:I

    .line 4
    iput p5, p0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->currentSize:F

    .line 5
    iput p6, p0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->totalSize:F

    .line 6
    iput p7, p0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->status:I

    .line 7
    iput p8, p0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->reason:I

    return-void
.end method
