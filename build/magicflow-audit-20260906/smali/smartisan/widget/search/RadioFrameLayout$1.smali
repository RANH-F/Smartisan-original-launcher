.class Lsmartisan/widget/search/RadioFrameLayout$1;
.super Ljava/lang/Object;
.source "RadioFrameLayout.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/search/RadioFrameLayout;->generateRadioGroup()Landroid/widget/RadioGroup;
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
    iput-object p1, p0, Lsmartisan/widget/search/RadioFrameLayout$1;->this$0:Lsmartisan/widget/search/RadioFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lsmartisan/widget/search/RadioFrameLayout$1;->this$0:Lsmartisan/widget/search/RadioFrameLayout;

    invoke-static {p2, p1}, Lsmartisan/widget/search/RadioFrameLayout;->access$100(Lsmartisan/widget/search/RadioFrameLayout;Landroid/widget/RadioButton;)I

    move-result v0

    invoke-static {p2, v0}, Lsmartisan/widget/search/RadioFrameLayout;->access$002(Lsmartisan/widget/search/RadioFrameLayout;I)I

    .line 4
    iget-object p2, p0, Lsmartisan/widget/search/RadioFrameLayout$1;->this$0:Lsmartisan/widget/search/RadioFrameLayout;

    invoke-static {p2}, Lsmartisan/widget/search/RadioFrameLayout;->access$300(Lsmartisan/widget/search/RadioFrameLayout;)Landroid/widget/ProgressBar;

    move-result-object p2

    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout$1;->this$0:Lsmartisan/widget/search/RadioFrameLayout;

    invoke-static {v0}, Lsmartisan/widget/search/RadioFrameLayout;->access$000(Lsmartisan/widget/search/RadioFrameLayout;)I

    move-result v1

    invoke-static {v0, v1}, Lsmartisan/widget/search/RadioFrameLayout;->access$200(Lsmartisan/widget/search/RadioFrameLayout;I)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setTranslationX(F)V

    .line 5
    iget-object p2, p0, Lsmartisan/widget/search/RadioFrameLayout$1;->this$0:Lsmartisan/widget/search/RadioFrameLayout;

    invoke-static {p2, p1}, Lsmartisan/widget/search/RadioFrameLayout;->access$400(Lsmartisan/widget/search/RadioFrameLayout;Landroid/widget/RadioButton;)V

    .line 6
    iget-object p2, p0, Lsmartisan/widget/search/RadioFrameLayout$1;->this$0:Lsmartisan/widget/search/RadioFrameLayout;

    invoke-static {p2}, Lsmartisan/widget/search/RadioFrameLayout;->access$500(Lsmartisan/widget/search/RadioFrameLayout;)Lsmartisan/widget/search/RadioFrameLayout$OnCheckedChangedListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p0, Lsmartisan/widget/search/RadioFrameLayout$1;->this$0:Lsmartisan/widget/search/RadioFrameLayout;

    invoke-static {p2}, Lsmartisan/widget/search/RadioFrameLayout;->access$500(Lsmartisan/widget/search/RadioFrameLayout;)Lsmartisan/widget/search/RadioFrameLayout$OnCheckedChangedListener;

    move-result-object p2

    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout$1;->this$0:Lsmartisan/widget/search/RadioFrameLayout;

    invoke-virtual {v0}, Lsmartisan/widget/search/RadioFrameLayout;->getSearchTypeData()Lsmartisan/widget/search/data/SearchConfigTypeData;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lsmartisan/widget/search/RadioFrameLayout$OnCheckedChangedListener;->onCheckedChanged(Landroid/widget/RadioButton;Lsmartisan/widget/search/data/SearchConfigTypeData;)V

    :cond_1
    :goto_0
    return-void
.end method
