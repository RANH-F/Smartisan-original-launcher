.class Lcom/bytedance/tea/crash/i/a/f;
.super Lcom/bytedance/tea/crash/i/a/c;
.source "CustomJavaCrashAssembly.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/tea/crash/i/a/b;Lcom/bytedance/tea/crash/i/a/d;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/f;->i:Lcom/bytedance/tea/crash/f;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/bytedance/tea/crash/i/a/c;-><init>(Lcom/bytedance/tea/crash/f;Landroid/content/Context;Lcom/bytedance/tea/crash/i/a/b;Lcom/bytedance/tea/crash/i/a/d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/tea/crash/e/a;)Lcom/bytedance/tea/crash/e/a;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/bytedance/tea/crash/i/a/c;->a(Lcom/bytedance/tea/crash/e/a;)Lcom/bytedance/tea/crash/e/a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/bytedance/tea/crash/i/a/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/tea/crash/e/b;->a(Landroid/content/Context;)Lcom/bytedance/tea/crash/e/b;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/bytedance/tea/crash/o;->a()Lcom/bytedance/tea/crash/i/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/tea/crash/i/b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/e/b;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 4
    invoke-static {}, Lcom/bytedance/tea/crash/o;->c()Lcom/bytedance/tea/crash/i/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/tea/crash/i/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/e/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lcom/bytedance/tea/crash/i/a/c;->c:Lcom/bytedance/tea/crash/h;

    invoke-interface {v1}, Lcom/bytedance/tea/crash/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/e/b;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/e/a;->a(Lcom/bytedance/tea/crash/e/b;)Lcom/bytedance/tea/crash/e/a;

    return-object p1
.end method
