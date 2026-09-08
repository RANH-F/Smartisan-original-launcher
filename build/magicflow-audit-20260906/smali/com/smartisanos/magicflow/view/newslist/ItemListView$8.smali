.class Lcom/smartisanos/magicflow/view/newslist/ItemListView$8;
.super Ljava/lang/Object;
.source "ItemListView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/cache/FailedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemListView;->loadSyncData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

.field final synthetic val$pullDownRefresh:Z


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$8;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    iput-boolean p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$8;->val$pullDownRefresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedCallback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$8;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$8;->val$pullDownRefresh:Z

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$900(Lcom/smartisanos/magicflow/view/newslist/ItemListView;Z)V

    return-void
.end method
