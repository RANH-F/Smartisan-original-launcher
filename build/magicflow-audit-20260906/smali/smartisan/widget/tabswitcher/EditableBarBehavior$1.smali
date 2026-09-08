.class Lsmartisan/widget/tabswitcher/EditableBarBehavior$1;
.super Ljava/lang/Object;
.source "EditableBarBehavior.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/tabswitcher/EditableBarBehavior;-><init>(Landroid/view/ViewGroup;Lsmartisan/widget/tabswitcher/model/ITabManager;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/tabswitcher/EditableBarBehavior;


# direct methods
.method constructor <init>(Lsmartisan/widget/tabswitcher/EditableBarBehavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior$1;->this$0:Lsmartisan/widget/tabswitcher/EditableBarBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior$1;->this$0:Lsmartisan/widget/tabswitcher/EditableBarBehavior;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->access$002(Lsmartisan/widget/tabswitcher/EditableBarBehavior;Ljava/util/List;)Ljava/util/List;

    return-void
.end method
