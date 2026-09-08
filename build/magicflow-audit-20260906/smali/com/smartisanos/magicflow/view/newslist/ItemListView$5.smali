.class Lcom/smartisanos/magicflow/view/newslist/ItemListView$5;
.super Ljava/lang/Object;
.source "ItemListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemListView;->removeData(Lcom/smartisanos/magicflow/h/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

.field final synthetic val$info:Lcom/smartisanos/magicflow/h/l;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView;Lcom/smartisanos/magicflow/h/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$5;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$5;->val$info:Lcom/smartisanos/magicflow/h/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$5;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$200(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$5;->val$info:Lcom/smartisanos/magicflow/h/l;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/i/d;->a(Ljava/lang/String;Lcom/smartisanos/magicflow/h/l;)V

    return-void
.end method
