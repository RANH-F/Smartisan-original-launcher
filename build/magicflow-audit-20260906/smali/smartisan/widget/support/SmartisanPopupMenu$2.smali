.class Lsmartisan/widget/support/SmartisanPopupMenu$2;
.super Ljava/lang/Object;
.source "SmartisanPopupMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/support/SmartisanPopupMenu;->createContentViewWithArrow(III)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/support/SmartisanPopupMenu;


# direct methods
.method constructor <init>(Lsmartisan/widget/support/SmartisanPopupMenu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu$2;->this$0:Lsmartisan/widget/support/SmartisanPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/support/SmartisanPopupMenu$2;->this$0:Lsmartisan/widget/support/SmartisanPopupMenu;

    invoke-virtual {p1}, Lsmartisan/widget/support/SmartisanPopupMenu;->dismiss()V

    return-void
.end method
