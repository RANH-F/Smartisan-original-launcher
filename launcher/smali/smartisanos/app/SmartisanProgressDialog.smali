.class public Lsmartisanos/app/SmartisanProgressDialog;
.super Landroid/app/Dialog;
.source "SmartisanProgressDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mMessage:Ljava/lang/String;

.field private mMessageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lsmartisanos/app/SmartisanProgressDialog;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lsmartisanos/app/SmartisanProgressDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lsmartisanos/app/SmartisanProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lsmartisanos/app/SmartisanProgressDialog;->mMessage:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/reload/OriginalLoadingContentFactory;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/smartisanos/launcher/reload/OriginalLoadingContentFactory$Content;

    move-result-object v0

    iget-object v1, v0, Lcom/smartisanos/launcher/reload/OriginalLoadingContentFactory$Content;->progress:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lsmartisanos/app/SmartisanProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    iget-object v1, v0, Lcom/smartisanos/launcher/reload/OriginalLoadingContentFactory$Content;->message:Landroid/widget/TextView;

    iput-object v1, p0, Lsmartisanos/app/SmartisanProgressDialog;->mMessageView:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/smartisanos/launcher/reload/OriginalLoadingContentFactory$Content;->root:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lsmartisanos/app/SmartisanProgressDialog;->updateMessage()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_done

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setDimAmount(F)V

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_done
    return-void
.end method

.method private updateMessage()V
    .registers 2

    iget-object v0, p0, Lsmartisanos/app/SmartisanProgressDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :done

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :done
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsmartisanos/app/SmartisanProgressDialog;->mMessage:Ljava/lang/String;

    invoke-direct {p0}, Lsmartisanos/app/SmartisanProgressDialog;->updateMessage()V

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lsmartisanos/app/SmartisanProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_store

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_return

    :cond_store
    iput-object p1, p0, Lsmartisanos/app/SmartisanProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    :goto_return
    return-void
.end method

.method public setIndeterminateDrawableResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisanos/app/SmartisanProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
