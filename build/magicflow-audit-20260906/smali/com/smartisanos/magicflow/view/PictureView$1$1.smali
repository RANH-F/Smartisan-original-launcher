.class Lcom/smartisanos/magicflow/view/PictureView$1$1;
.super Ljava/lang/Object;
.source "PictureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/PictureView$1;->onResourceReady(Ljava/io/File;Lc/a/a/r/g/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/PictureView$1;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/PictureView$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/PictureView$1$1;->this$1:Lcom/smartisanos/magicflow/view/PictureView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PictureView$1$1;->this$1:Lcom/smartisanos/magicflow/view/PictureView$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/PictureView$1;->this$0:Lcom/smartisanos/magicflow/view/PictureView;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0231

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    return-void
.end method
