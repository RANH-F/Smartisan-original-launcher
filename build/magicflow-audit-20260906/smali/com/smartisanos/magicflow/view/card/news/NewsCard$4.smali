.class Lcom/smartisanos/magicflow/view/card/news/NewsCard$4;
.super Ljava/lang/Object;
.source "NewsCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/news/NewsCard;->onReadyToLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCard;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/news/NewsCard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard$4;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p1

    const-string v0, "A350080"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard$4;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->access$200(Lcom/smartisanos/magicflow/view/card/news/NewsCard;)Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard$4;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->access$200(Lcom/smartisanos/magicflow/view/card/news/NewsCard;)Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->refreshListData(Z)V

    :cond_1
    return-void
.end method
