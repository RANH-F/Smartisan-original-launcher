.class Lcom/bytedance/embedapplog/a/b;
.super Lcom/bytedance/embedapplog/a/c;
.source "SourceFile"


# instance fields
.field private d:Z

.field private final e:Lcom/bytedance/embedapplog/b/i;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/a/c;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/bytedance/embedapplog/a/b;->e:Lcom/bytedance/embedapplog/b/i;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method b()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/a/b;->d:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method c()[J
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/a/i;->f:[J

    return-object v0
.end method

.method d()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/b;->e:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->o()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/b;->e:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/b;->e:Lcom/bytedance/embedapplog/b/i;

    .line 4
    invoke-virtual {v2}, Lcom/bytedance/embedapplog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/embedapplog/c/a;->a()Lcom/bytedance/embedapplog/util/UriConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/util/UriConfig;->getActiveUri()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getIAppParam()Lcom/bytedance/embedapplog/IAppParam;

    move-result-object v5

    .line 5
    invoke-static {v1, v2, v3, v4, v5}, Lcom/bytedance/embedapplog/c/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/embedapplog/IAppParam;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/c/a;->b(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/a/b;->d:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 7
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/a/b;->d:Z

    return v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    const-string v0, "ac"

    return-object v0
.end method
