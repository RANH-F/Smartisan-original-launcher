.class Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter$1;
.super Ljava/lang/Object;
.source "ItemListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->onBindViewHolder(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

.field final synthetic val$baseNews:Lcom/smartisanos/magicflow/h/l;

.field final synthetic val$holder:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;Lcom/smartisanos/magicflow/h/l;Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter$1;->val$baseNews:Lcom/smartisanos/magicflow/h/l;

    iput-object p3, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter$1;->val$holder:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;

    iput p4, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/l/a;->d()Lcom/smartisanos/magicflow/l/a;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter$1;->val$baseNews:Lcom/smartisanos/magicflow/h/l;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/l/a;->a(Lcom/smartisanos/magicflow/h/l;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter$1;->val$holder:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter$1;->val$baseNews:Lcom/smartisanos/magicflow/h/l;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->markAsRead(Lcom/smartisanos/magicflow/h/l;Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mOnItemClickListener:Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter$1;->val$baseNews:Lcom/smartisanos/magicflow/h/l;

    iget v2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter$1;->val$pos:I

    invoke-interface {v0, p1, v1, v2}, Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnItemClickListener;->onClick(Landroid/view/View;Lcom/smartisanos/magicflow/h/l;I)V

    :cond_0
    return-void
.end method
