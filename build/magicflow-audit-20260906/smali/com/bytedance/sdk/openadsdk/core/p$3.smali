.class Lcom/bytedance/sdk/openadsdk/core/p$3;
.super Lc/b/a/a/b/f;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/p;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p;ILjava/lang/String;Ljava/lang/String;Lc/b/a/a/d/p$a;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$3;->d:Lcom/bytedance/sdk/openadsdk/core/p;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/p$3;->c:Ljava/util/Map;

    invoke-direct {p0, p2, p3, p4, p5}, Lc/b/a/a/b/f;-><init>(ILjava/lang/String;Ljava/lang/String;Lc/b/a/a/d/p$a;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$3;->c:Ljava/util/Map;

    return-object v0
.end method
