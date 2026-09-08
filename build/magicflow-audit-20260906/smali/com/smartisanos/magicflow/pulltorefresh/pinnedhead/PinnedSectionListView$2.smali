.class Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$2;
.super Landroid/database/DataSetObserver;
.source "PinnedSectionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->recreatePinnedShadow()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->recreatePinnedShadow()V

    return-void
.end method
