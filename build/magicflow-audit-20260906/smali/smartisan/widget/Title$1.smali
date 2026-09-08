.class Lsmartisan/widget/Title$1;
.super Lsmartisan/widget/ShadowComponent;
.source "Title.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/Title;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/Title;


# direct methods
.method constructor <init>(Lsmartisan/widget/Title;Landroid/view/View;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/Title$1;->this$0:Lsmartisan/widget/Title;

    invoke-direct {p0, p2, p3, p4}, Lsmartisan/widget/ShadowComponent;-><init>(Landroid/view/View;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method getDefaultShadowRes()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$drawable;->title_bar_shadow:I

    return v0
.end method

.method isShadowVisibleDefault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onShadowLayout()V
    .locals 1

    .line 1
    invoke-super {p0}, Lsmartisan/widget/ShadowComponent;->onShadowLayout()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/Title$1;->this$0:Lsmartisan/widget/Title;

    invoke-static {v0}, Lsmartisan/widget/Title;->access$000(Lsmartisan/widget/Title;)V

    return-void
.end method
