.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;
.super Ljava/lang/Object;
.source "LibUIFactory.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->c(Lc/d/a/a/a/d/c;)V
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
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->a:Lc/d/a/a/a/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->a:Lc/d/a/a/a/d/c;

    iget-object v0, v0, Lc/d/a/a/a/d/c;->h:Lc/d/a/a/a/d/c$c;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$a;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;)V

    invoke-interface {v0, v1}, Lc/d/a/a/a/d/c$c;->c(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->a:Lc/d/a/a/a/d/c;

    iget-object v0, v0, Lc/d/a/a/a/d/c;->h:Lc/d/a/a/a/d/c$c;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$a;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;)V

    invoke-interface {v0, v1}, Lc/d/a/a/a/d/c$c;->b(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->a:Lc/d/a/a/a/d/c;

    iget-object v0, v0, Lc/d/a/a/a/d/c;->h:Lc/d/a/a/a/d/c$c;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$a;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;)V

    invoke-interface {v0, v1}, Lc/d/a/a/a/d/c$c;->a(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
