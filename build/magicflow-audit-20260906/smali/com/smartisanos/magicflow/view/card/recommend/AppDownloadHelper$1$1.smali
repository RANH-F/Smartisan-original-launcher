.class Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1$1;
.super Ljava/lang/Object;
.source "AppDownloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1;

.field final synthetic val$currentSize:F

.field final synthetic val$progress:F

.field final synthetic val$reason:I

.field final synthetic val$status:I

.field final synthetic val$totalSize:F


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1;FFFII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1$1;->this$0:Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1;

    iput p2, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1$1;->val$progress:F

    iput p3, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1$1;->val$currentSize:F

    iput p4, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1$1;->val$totalSize:F

    iput p5, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1$1;->val$status:I

    iput p6, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1$1;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1$1;->this$0:Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1;

    iget-object v1, v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1;->val$packageName:Ljava/lang/String;

    iget-wide v2, v0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1;->val$downloadId:J

    iget v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1$1;->val$progress:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v0, v4

    float-to-int v4, v0

    iget v5, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1$1;->val$currentSize:F

    iget v6, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1$1;->val$totalSize:F

    iget v7, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1$1;->val$status:I

    iget v8, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper$1$1;->val$reason:I

    invoke-static/range {v1 .. v8}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->access$100(Ljava/lang/String;JIFFII)V

    return-void
.end method
