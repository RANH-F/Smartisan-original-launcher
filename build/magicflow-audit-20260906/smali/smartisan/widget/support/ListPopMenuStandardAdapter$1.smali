.class Lsmartisan/widget/support/ListPopMenuStandardAdapter$1;
.super Ljava/lang/Object;
.source "ListPopMenuStandardAdapter.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/support/ListPopMenuStandardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/support/ListPopMenuStandardAdapter;


# direct methods
.method constructor <init>(Lsmartisan/widget/support/ListPopMenuStandardAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/support/ListPopMenuStandardAdapter$1;->this$0:Lsmartisan/widget/support/ListPopMenuStandardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_1

    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget p2, Lsmartisan/widget/R$drawable;->menu_list_item_normal:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 3
    :cond_1
    sget p2, Lsmartisan/widget/R$drawable;->revone_smartisan_list_popup_menu_pressed:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
