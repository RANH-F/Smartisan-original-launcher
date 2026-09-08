.class Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$1;
.super Ljava/lang/Object;
.source "AppRecommendCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$1;->this$1:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->info:Lcom/smartisanos/magicflow/h/a;

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->access$100(Landroid/content/Context;Lcom/smartisanos/magicflow/h/a;)V

    :cond_0
    return-void
.end method
