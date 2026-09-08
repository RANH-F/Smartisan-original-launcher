.class Lcom/bytedance/sdk/openadsdk/g/a/b$d;
.super Ljava/lang/Object;
.source "GifLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/g/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/g/a/c;

.field b:Lc/b/a/a/d/p;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/g/a/b$b;",
            ">;"
        }
    .end annotation
.end field

.field d:Lc/b/a/a/f/a;

.field e:[B


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/g/a/c;Lcom/bytedance/sdk/openadsdk/g/a/b$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->c:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->a:Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 4
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->a(Lcom/bytedance/sdk/openadsdk/g/a/b$b;)V

    return-void
.end method


# virtual methods
.method a(Lcom/bytedance/sdk/openadsdk/g/a/b$b;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method a()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->d:Lc/b/a/a/f/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->e:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
