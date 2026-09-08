.class final Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1;
.super Landroid/database/ContentObserver;
.source "AppDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->registerDownloadsObserver(Ljava/lang/String;Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadId:J

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Handler;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1;->val$downloadId:J

    iput-object p4, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1;->val$downloadId:J

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->getBytesAndStatus(J)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    int-to-float v4, v0

    const/4 v0, 0x1

    .line 3
    aget v0, p1, v0

    int-to-float v5, v0

    const/4 v0, 0x2

    .line 4
    aget v6, p1, v0

    const/4 v0, 0x3

    .line 5
    aget v7, p1, v0

    div-float v3, v4, v5

    .line 6
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->access$000()Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1;->val$downloadId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 8
    :cond_0
    new-instance p1, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1$1;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1$1;-><init>(Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1;FFFII)V

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
