.class Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView$1;
.super Ljava/lang/Object;
.source "ExpressListView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/cache/DataChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;->updateListView()V

    return-void
.end method
