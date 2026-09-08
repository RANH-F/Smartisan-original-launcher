.class public Lsmartisan/widget/SnackbarWithButton;
.super Landroid/widget/LinearLayout;
.source "SnackbarWithButton.java"


# instance fields
.field private mActionButton:Landroid/widget/TextView;

.field private mActionListener:Landroid/view/View$OnClickListener;

.field private mMessageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SnackbarWithButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SnackbarWithButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$layout;->snackbar_with_btn_layout:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x10

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 6
    sget p2, Lsmartisan/widget/R$id;->action_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lsmartisan/widget/SnackbarWithButton;->mActionButton:Landroid/widget/TextView;

    .line 7
    sget p2, Lsmartisan/widget/R$id;->message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lsmartisan/widget/SnackbarWithButton;->mMessageView:Landroid/widget/TextView;

    .line 8
    iget-object p1, p0, Lsmartisan/widget/SnackbarWithButton;->mActionButton:Landroid/widget/TextView;

    new-instance p2, Lsmartisan/widget/SnackbarWithButton$1;

    invoke-direct {p2, p0}, Lsmartisan/widget/SnackbarWithButton$1;-><init>(Lsmartisan/widget/SnackbarWithButton;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/SnackbarWithButton;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SnackbarWithButton;->mActionListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public setActionListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SnackbarWithButton;->mActionListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setActionText(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SnackbarWithButton;->mActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setActionText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SnackbarWithButton;->mActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SnackbarWithButton;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SnackbarWithButton;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
