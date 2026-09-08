.class public interface abstract Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnPullEventListener;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPullEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onPullEvent(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase<",
            "TV;>;",
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;",
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;",
            ")V"
        }
    .end annotation
.end method
