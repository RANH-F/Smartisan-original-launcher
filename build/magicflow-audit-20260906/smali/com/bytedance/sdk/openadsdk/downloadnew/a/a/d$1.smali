.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;
.super Ljava/lang/Object;
.source "LibPermission.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;->a(Landroid/app/Activity;[Ljava/lang/String;Lc/d/a/a/a/a/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/a/a/a/l;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;Lc/d/a/a/a/a/l;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->c:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->a:Lc/d/a/a/a/a/l;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->a:Lc/d/a/a/a/a/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lc/d/a/a/a/a/l;->a()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Z[Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->a:Lc/d/a/a/a/a/l;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lc/d/a/a/a/a/l;->a(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Z[Ljava/lang/String;)V

    return-void
.end method
