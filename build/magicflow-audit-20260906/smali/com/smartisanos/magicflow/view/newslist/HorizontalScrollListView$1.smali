.class Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$1;
.super Landroid/content/BroadcastReceiver;
.source "HorizontalScrollListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$1;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$1;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->restoreScrollState(Z)Z

    return-void
.end method
