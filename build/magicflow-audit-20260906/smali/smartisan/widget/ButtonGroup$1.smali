.class Lsmartisan/widget/ButtonGroup$1;
.super Lsmartisan/widget/ShadowComponent;
.source "ButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/ButtonGroup;->initShadowView(Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/ButtonGroup;


# direct methods
.method constructor <init>(Lsmartisan/widget/ButtonGroup;Landroid/view/View;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/ButtonGroup$1;->this$0:Lsmartisan/widget/ButtonGroup;

    invoke-direct {p0, p2, p3, p4}, Lsmartisan/widget/ShadowComponent;-><init>(Landroid/view/View;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method getDefaultShadowRes()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$drawable;->smartisan_secondary_bar_shadow:I

    return v0
.end method

.method isShadowVisibleDefault()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onShadowLayout()V
    .locals 0

    .line 1
    invoke-super {p0}, Lsmartisan/widget/ShadowComponent;->onShadowLayout()V

    return-void
.end method
