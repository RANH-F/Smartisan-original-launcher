.class public Lcom/bytedance/tea/crash/g/c;
.super Ljava/lang/Object;
.source "JavaCrash.java"

# interfaces
.implements Lcom/bytedance/tea/crash/g/b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/tea/crash/g/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/tea/crash/g/c;->a:Landroid/content/Context;

    invoke-static {p1, p2, v0, p3, p4}, Lcom/bytedance/tea/crash/e/a;->a(JLandroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Lcom/bytedance/tea/crash/e/a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/bytedance/tea/crash/g/c;->a:Landroid/content/Context;

    sget-object p3, Lcom/bytedance/tea/crash/f;->c:Lcom/bytedance/tea/crash/f;

    invoke-virtual {p3}, Lcom/bytedance/tea/crash/f;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/bytedance/tea/crash/m/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/bytedance/tea/crash/i/a/e;->a()Lcom/bytedance/tea/crash/i/a/e;

    move-result-object p2

    sget-object p3, Lcom/bytedance/tea/crash/f;->c:Lcom/bytedance/tea/crash/f;

    invoke-virtual {p2, p3, p1}, Lcom/bytedance/tea/crash/i/a/e;->a(Lcom/bytedance/tea/crash/f;Lcom/bytedance/tea/crash/e/a;)Lcom/bytedance/tea/crash/e/a;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/bytedance/tea/crash/upload/a;->a()Lcom/bytedance/tea/crash/upload/a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/tea/crash/e/a;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/tea/crash/upload/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
