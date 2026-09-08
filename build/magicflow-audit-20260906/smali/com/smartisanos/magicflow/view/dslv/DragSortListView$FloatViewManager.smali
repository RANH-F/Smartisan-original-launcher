.class public interface abstract Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;
.super Ljava/lang/Object;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FloatViewManager"
.end annotation


# virtual methods
.method public abstract getPaddingBottom()I
.end method

.method public abstract getPaddingTop()I
.end method

.method public abstract onCreateFloatView(I)Landroid/view/View;
.end method

.method public abstract onDestroyFloatView(Landroid/view/View;)V
.end method

.method public abstract onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
.end method
