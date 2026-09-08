.class final Lcom/bytedance/sdk/openadsdk/h/g$a;
.super Ljava/lang/Object;
.source "ProxyTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/h/a/a;

.field b:Lcom/bytedance/sdk/openadsdk/h/b/c;

.field c:Ljava/util/concurrent/ExecutorService;

.field d:Ljava/net/Socket;

.field e:Lcom/bytedance/sdk/openadsdk/h/g$c;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/bytedance/sdk/openadsdk/h/b/c;)Lcom/bytedance/sdk/openadsdk/h/g$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/g$a;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "db == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lcom/bytedance/sdk/openadsdk/h/g$c;)Lcom/bytedance/sdk/openadsdk/h/g$a;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/g$a;->e:Lcom/bytedance/sdk/openadsdk/h/g$c;

    return-object p0
.end method

.method a(Ljava/net/Socket;)Lcom/bytedance/sdk/openadsdk/h/g$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/g$a;->d:Ljava/net/Socket;

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/util/concurrent/ExecutorService;)Lcom/bytedance/sdk/openadsdk/h/g$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/g$a;->c:Ljava/util/concurrent/ExecutorService;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "executor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a()Lcom/bytedance/sdk/openadsdk/h/g;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$a;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$a;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$a;->d:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/g;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/g;-><init>(Lcom/bytedance/sdk/openadsdk/h/g$a;)V

    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
