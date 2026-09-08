.class Lsmartisan/widget/SmartisanBottomBar$1;
.super Lsmartisan/widget/ShadowComponent;
.source "SmartisanBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SmartisanBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/SmartisanBottomBar;


# direct methods
.method constructor <init>(Lsmartisan/widget/SmartisanBottomBar;Landroid/view/View;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanBottomBar$1;->this$0:Lsmartisan/widget/SmartisanBottomBar;

    invoke-direct {p0, p2, p3, p4}, Lsmartisan/widget/ShadowComponent;-><init>(Landroid/view/View;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method getDefaultShadowRes()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$drawable;->bottom_bar_shadow:I

    return v0
.end method

.method protected getShadowOrientation()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isShadowVisibleDefault()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
