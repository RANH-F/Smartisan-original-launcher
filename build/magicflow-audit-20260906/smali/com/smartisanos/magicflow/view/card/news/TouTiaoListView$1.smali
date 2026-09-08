.class Lcom/smartisanos/magicflow/view/card/news/TouTiaoListView$1;
.super Ljava/lang/Object;
.source "TouTiaoListView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/cache/NewsDataChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/news/TouTiaoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/news/TouTiaoListView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/news/TouTiaoListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/TouTiaoListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/news/TouTiaoListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged(Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    new-instance p1, Lcom/smartisanos/magicflow/view/card/news/TouTiaoListView$1$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/news/TouTiaoListView$1$1;-><init>(Lcom/smartisanos/magicflow/view/card/news/TouTiaoListView$1;)V

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
