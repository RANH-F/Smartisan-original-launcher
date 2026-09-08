.class Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1$1;
.super Ljava/lang/Object;
.source "PageViewAdapter.java"

# interfaces
.implements Luk/co/senab/photoview/d$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;->onResourceReady(Lc/a/a/o/k/f/b;Lc/a/a/r/g/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1$1;->this$1:Lcom/smartisanos/magicflow/view/pictureview/PageViewAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewTap(Landroid/view/View;FF)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    .line 2
    invoke-static {p1}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/b;->j()Lcom/smartisanos/magicflow/view/MagicFlowActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void
.end method
