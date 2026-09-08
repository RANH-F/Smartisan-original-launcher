.class public Lsmartisan/widget/SnackbarWithDrawable;
.super Landroid/widget/LinearLayout;
.source "SnackbarWithDrawable.java"


# instance fields
.field private mActionListener:Landroid/view/View$OnClickListener;

.field private mContent:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mMessageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SnackbarWithDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SnackbarWithDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$layout;->snackbar_with_drawable_layout:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    sget p2, Lsmartisan/widget/R$id;->message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lsmartisan/widget/SnackbarWithDrawable;->mMessageView:Landroid/widget/TextView;

    .line 6
    sget p2, Lsmartisan/widget/R$id;->content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lsmartisan/widget/SnackbarWithDrawable;->mContent:Landroid/view/View;

    .line 7
    sget p2, Lsmartisan/widget/R$id;->action_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lsmartisan/widget/SnackbarWithDrawable;->mImageView:Landroid/widget/ImageView;

    .line 8
    iget-object p2, p0, Lsmartisan/widget/SnackbarWithDrawable;->mImageView:Landroid/widget/ImageView;

    new-instance p3, Lsmartisan/widget/SnackbarWithDrawable$1;

    invoke-direct {p3, p0}, Lsmartisan/widget/SnackbarWithDrawable$1;-><init>(Lsmartisan/widget/SnackbarWithDrawable;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    sget p2, Lsmartisan/widget/R$id;->divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lsmartisan/widget/SnackbarWithDrawable;->mContent:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lsmartisan/widget/SnackbarWithDrawable$2;

    invoke-direct {p3, p0, p1}, Lsmartisan/widget/SnackbarWithDrawable$2;-><init>(Lsmartisan/widget/SnackbarWithDrawable;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/SnackbarWithDrawable;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SnackbarWithDrawable;->mActionListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lsmartisan/widget/SnackbarWithDrawable;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SnackbarWithDrawable;->mContent:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public setActionListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SnackbarWithDrawable;->mActionListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SnackbarWithDrawable;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SnackbarWithDrawable;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SnackbarWithDrawable;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SnackbarWithDrawable;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
