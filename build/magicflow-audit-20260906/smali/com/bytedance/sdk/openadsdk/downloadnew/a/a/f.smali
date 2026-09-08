.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;
.super Ljava/lang/Object;
.source "LibUIFactory.java"

# interfaces
.implements Lc/d/a/a/a/a/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->a:Ljava/lang/ref/WeakReference;

    const-string p1, "\u5df2\u5f00\u59cb\u4e0b\u8f7d\uff0c\u53ef\u5728\"\u6211\u7684\"\u91cc\u67e5\u770b\u7ba1\u7406"

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/app/Activity;Lc/d/a/a/a/d/c;)Landroid/app/AlertDialog;
    .locals 2

    .line 6
    iget v0, p2, Lc/d/a/a/a/d/c;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->b(Landroid/app/Activity;Lc/d/a/a/a/d/c;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-object p1

    .line 9
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const-string v0, "Theme.Dialog.TTDownload"

    goto :goto_0

    :cond_1
    const-string v0, "Theme.Dialog.TTDownloadOld"

    .line 10
    :goto_0
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 11
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object p1, p2, Lc/d/a/a/a/d/c;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p2, Lc/d/a/a/a/d/c;->c:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p2, Lc/d/a/a/a/d/c;->d:Ljava/lang/String;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$3;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$3;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;Lc/d/a/a/a/d/c;)V

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p2, Lc/d/a/a/a/d/c;->e:Ljava/lang/String;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$2;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$2;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;Lc/d/a/a/a/d/c;)V

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$1;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;Lc/d/a/a/a/d/c;)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 17
    iget-object p2, p2, Lc/d/a/a/a/d/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    .line 18
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 19
    :cond_2
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-object p1
.end method

.method private b(Landroid/app/Activity;Lc/d/a/a/a/d/c;)Landroid/app/AlertDialog;
    .locals 1

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;-><init>(Landroid/content/Context;)V

    iget-object p1, p2, Lc/d/a/a/a/d/c;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/b;

    move-result-object p1

    iget-object v0, p2, Lc/d/a/a/a/d/c;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/b;

    move-result-object p1

    iget-object v0, p2, Lc/d/a/a/a/d/c;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/b;

    move-result-object p1

    iget-object v0, p2, Lc/d/a/a/a/d/c;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/b;

    move-result-object p1

    iget-object v0, p2, Lc/d/a/a/a/d/c;->g:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/bytedance/sdk/openadsdk/core/widget/b;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$5;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$5;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;Lc/d/a/a/a/d/c;)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Lcom/bytedance/sdk/openadsdk/core/widget/b$a;)Lcom/bytedance/sdk/openadsdk/core/widget/b;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$4;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$4;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;Lc/d/a/a/a/d/c;)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/bytedance/sdk/openadsdk/core/widget/b;

    move-result-object p1

    return-object p1
.end method

.method private c(Lc/d/a/a/a/d/c;)V
    .locals 6

    .line 1
    new-instance v5, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;

    invoke-direct {v5, p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;Lc/d/a/a/a/d/c;)V

    .line 2
    iget v0, p1, Lc/d/a/a/a/d/c;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lc/d/a/a/a/d/c;->b:Ljava/lang/String;

    iget-object v2, p1, Lc/d/a/a/a/d/c;->c:Ljava/lang/String;

    iget-object v3, p1, Lc/d/a/a/a/d/c;->d:Ljava/lang/String;

    iget-object v4, p1, Lc/d/a/a/a/d/c;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lc/d/a/a/a/d/c;->b:Ljava/lang/String;

    iget-object p1, p1, Lc/d/a/a/a/d/c;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1, v5}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lc/d/a/a/a/d/c;)Landroid/app/AlertDialog;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p1, Lc/d/a/a/a/d/c;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Landroid/app/Activity;

    invoke-direct {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->a(Landroid/app/Activity;Lc/d/a/a/a/d/c;)Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->c(Lc/d/a/a/a/d/c;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->b:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->b:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p2, "\u5df2\u5f00\u59cb\u4e0b\u8f7d"

    :cond_0
    const/4 p3, 0x0

    .line 2
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic b(Lc/d/a/a/a/d/c;)Landroid/app/Dialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->a(Lc/d/a/a/a/d/c;)Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
