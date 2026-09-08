.class Lcom/smartisanos/magicflow/view/PictureView$2;
.super Lc/a/a/r/h/g;
.source "PictureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/PictureView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/r/h/g<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/PictureView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/PictureView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/PictureView$2;->this$0:Lcom/smartisanos/magicflow/view/PictureView;

    invoke-direct {p0}, Lc/a/a/r/h/g;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Ljava/io/File;Lc/a/a/r/g/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lc/a/a/r/g/c<",
            "-",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/PictureView$2;->this$0:Lcom/smartisanos/magicflow/view/PictureView;

    iget-object p2, p2, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/smartisanos/magicflow/o/n;->j(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lc/a/a/r/g/c;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/view/PictureView$2;->onResourceReady(Ljava/io/File;Lc/a/a/r/g/c;)V

    return-void
.end method
