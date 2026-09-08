.class Lsmartisan/widget/support/SmartisanPopupMenu$3;
.super Ljava/lang/Object;
.source "SmartisanPopupMenu.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/support/SmartisanPopupMenu;->setArrowLocOnLayout(Landroid/view/View;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/support/SmartisanPopupMenu;

.field final synthetic val$arrow:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lsmartisan/widget/support/SmartisanPopupMenu;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu$3;->this$0:Lsmartisan/widget/support/SmartisanPopupMenu;

    iput-object p2, p0, Lsmartisan/widget/support/SmartisanPopupMenu$3;->val$arrow:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu$3;->val$arrow:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getX()F

    move-result p2

    iget-object p3, p0, Lsmartisan/widget/support/SmartisanPopupMenu$3;->val$arrow:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setX(F)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu$3;->val$arrow:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
