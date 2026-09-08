.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$3;
.super Ljava/lang/Object;
.source "LibUIFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->a(Landroid/app/Activity;Lc/d/a/a/a/d/c;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/a/a/d/c;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;Lc/d/a/a/a/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$3;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$3;->a:Lc/d/a/a/a/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$3;->a:Lc/d/a/a/a/d/c;

    iget-object p2, p2, Lc/d/a/a/a/d/c;->h:Lc/d/a/a/a/d/c$c;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lc/d/a/a/a/d/c$c;->c(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
