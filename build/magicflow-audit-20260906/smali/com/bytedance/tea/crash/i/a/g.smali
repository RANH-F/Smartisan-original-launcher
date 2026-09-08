.class Lcom/bytedance/tea/crash/i/a/g;
.super Lcom/bytedance/tea/crash/i/a/c;
.source "JavaCrashAssembly.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/tea/crash/i/a/b;Lcom/bytedance/tea/crash/i/a/d;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/f;->c:Lcom/bytedance/tea/crash/f;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/bytedance/tea/crash/i/a/c;-><init>(Lcom/bytedance/tea/crash/f;Landroid/content/Context;Lcom/bytedance/tea/crash/i/a/b;Lcom/bytedance/tea/crash/i/a/d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/tea/crash/e/a;)Lcom/bytedance/tea/crash/e/a;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/bytedance/tea/crash/i/a/c;->a(Lcom/bytedance/tea/crash/e/a;)Lcom/bytedance/tea/crash/e/a;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "app_count"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "magic_tag"

    const-string v1, "ss_app_log"

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/bytedance/tea/crash/i/a/c;->c(Lcom/bytedance/tea/crash/e/a;)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/tea/crash/i/a/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/tea/crash/e/b;->a(Landroid/content/Context;)Lcom/bytedance/tea/crash/e/b;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/bytedance/tea/crash/o;->a()Lcom/bytedance/tea/crash/i/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/tea/crash/i/b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/e/b;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 7
    invoke-static {}, Lcom/bytedance/tea/crash/o;->c()Lcom/bytedance/tea/crash/i/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/tea/crash/i/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/e/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 8
    iget-object v1, p0, Lcom/bytedance/tea/crash/i/a/c;->c:Lcom/bytedance/tea/crash/h;

    invoke-interface {v1}, Lcom/bytedance/tea/crash/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/e/b;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/e/a;->a(Lcom/bytedance/tea/crash/e/b;)Lcom/bytedance/tea/crash/e/a;

    .line 10
    iget-object v1, p0, Lcom/bytedance/tea/crash/i/a/c;->a:Lcom/bytedance/tea/crash/f;

    invoke-static {p1, v0, v1}, Lcom/bytedance/tea/crash/m/k;->a(Lcom/bytedance/tea/crash/e/a;Lcom/bytedance/tea/crash/e/b;Lcom/bytedance/tea/crash/f;)V

    return-object p1
.end method
