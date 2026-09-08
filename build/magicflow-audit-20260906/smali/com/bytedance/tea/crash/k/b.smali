.class public Lcom/bytedance/tea/crash/k/b;
.super Lcom/bytedance/tea/crash/k/a;
.source "DeviceIdTask.java"


# direct methods
.method constructor <init>(Landroid/os/Handler;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/tea/crash/k/a;-><init>(Landroid/os/Handler;JJ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/tea/crash/o;->a()Lcom/bytedance/tea/crash/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/i/b;->e()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/bytedance/tea/crash/o;->c()Lcom/bytedance/tea/crash/i/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/tea/crash/i/k;->a(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DeviceIdTask] did is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/tea/crash/m/j;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/tea/crash/k/a;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/tea/crash/k/a;->a(J)V

    const-string v0, "[DeviceIdTask] did is null, continue check."

    .line 6
    invoke-static {v0}, Lcom/bytedance/tea/crash/m/j;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
