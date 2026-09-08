.class Lsmartisan/widget/BottomMenuPopupAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BottomMenuPopupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/BottomMenuPopupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field mIcon:Landroid/widget/ImageView;

.field mTvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lsmartisan/widget/BottomMenuPopupAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget p2, Lsmartisan/widget/R$id;->menu_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lsmartisan/widget/BottomMenuPopupAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 3
    sget p2, Lsmartisan/widget/R$id;->menu_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lsmartisan/widget/BottomMenuPopupAdapter$ViewHolder;->mTvTitle:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
