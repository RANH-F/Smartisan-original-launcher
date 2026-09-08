.class public abstract Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HeaderRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractChildAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "TV;>;"
    }
.end annotation


# instance fields
.field protected mHolderAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mVelocityX:I

.field private mVelocityY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;->mVelocityX:I

    .line 3
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;->mVelocityY:I

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;->setVelocity(II)V

    return-void
.end method

.method private setVelocity(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;->mVelocityX:I

    .line 2
    iput p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;->mVelocityY:I

    return-void
.end method


# virtual methods
.method public getVelocityX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;->mVelocityX:I

    return v0
.end method

.method public getVelocityY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;->mVelocityY:I

    return v0
.end method

.method public resetVelocity()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;->mVelocityX:I

    .line 2
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;->mVelocityY:I

    return-void
.end method

.method public setHolderAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;->mHolderAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-void
.end method
