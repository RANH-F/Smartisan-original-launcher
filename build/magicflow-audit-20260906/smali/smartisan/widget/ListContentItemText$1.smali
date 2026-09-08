.class Lsmartisan/widget/ListContentItemText$1;
.super Ljava/lang/Object;
.source "ListContentItemText.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/ListContentItemText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/ListContentItemText;


# direct methods
.method constructor <init>(Lsmartisan/widget/ListContentItemText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/ListContentItemText$1;->this$0:Lsmartisan/widget/ListContentItemText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItemText$1;->this$0:Lsmartisan/widget/ListContentItemText;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/ListContentItemText$1;->this$0:Lsmartisan/widget/ListContentItemText;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItemText;->limitContainerWidth()V

    const/4 v0, 0x0

    return v0
.end method
