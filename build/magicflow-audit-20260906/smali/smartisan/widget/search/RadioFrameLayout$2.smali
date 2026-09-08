.class Lsmartisan/widget/search/RadioFrameLayout$2;
.super Ljava/lang/Object;
.source "RadioFrameLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/search/RadioFrameLayout;->generateSingleRadioButton(Lsmartisan/widget/search/data/SearchConfigType;)Landroid/widget/RadioButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/search/RadioFrameLayout;


# direct methods
.method constructor <init>(Lsmartisan/widget/search/RadioFrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/RadioFrameLayout$2;->this$0:Lsmartisan/widget/search/RadioFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout$2;->this$0:Lsmartisan/widget/search/RadioFrameLayout;

    check-cast p1, Landroid/widget/RadioButton;

    invoke-static {v0, p1}, Lsmartisan/widget/search/RadioFrameLayout;->access$600(Lsmartisan/widget/search/RadioFrameLayout;Landroid/widget/RadioButton;)V

    const/4 p1, 0x1

    return p1
.end method
