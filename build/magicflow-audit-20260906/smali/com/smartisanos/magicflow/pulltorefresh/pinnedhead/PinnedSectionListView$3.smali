.class Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$3;
.super Ljava/lang/Object;
.source "PinnedSectionListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
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
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$3;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$3;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->recreatePinnedShadow()V

    return-void
.end method
