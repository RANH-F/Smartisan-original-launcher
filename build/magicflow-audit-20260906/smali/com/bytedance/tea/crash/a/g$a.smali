.class final Lcom/bytedance/tea/crash/a/g$a;
.super Ljava/lang/Object;
.source "LooperMonitor.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/tea/crash/a/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 16

    .line 1
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/bytedance/tea/crash/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4
    invoke-static {v1}, Lcom/bytedance/tea/crash/a/g;->a(Z)Z

    .line 5
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/tea/crash/a/g;->a(I)I

    .line 6
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->h()V

    .line 7
    :cond_1
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->i()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sput-wide v2, Lcom/bytedance/tea/crash/a/g;->q:J

    .line 8
    sget-wide v2, Lcom/bytedance/tea/crash/a/g;->r:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    return-void

    .line 9
    :cond_2
    sget-wide v2, Lcom/bytedance/tea/crash/a/g;->q:J

    sget-wide v4, Lcom/bytedance/tea/crash/a/g;->r:J

    sub-long v11, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v11, v2

    if-gtz v0, :cond_3

    .line 10
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->j()I

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x1

    cmp-long v0, v11, v2

    if-nez v0, :cond_6

    .line 11
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v0

    if-le v0, v1, :cond_4

    const/4 v0, 0x7

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v0

    if-ne v0, v1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 13
    :cond_6
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v0

    if-le v0, v1, :cond_7

    const/4 v0, 0x5

    :goto_0
    move v13, v0

    goto :goto_1

    .line 14
    :cond_7
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v0

    if-ne v0, v1, :cond_8

    const/4 v0, 0x6

    goto :goto_0

    :cond_8
    move v13, v1

    .line 15
    :goto_1
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->l()J

    move-result-wide v2

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 17
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->m()Z

    move-result v0

    if-nez v0, :cond_9

    .line 18
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->n()Lcom/bytedance/tea/crash/a/g$d;

    move-result-object v6

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->o()J

    move-result-wide v7

    sub-long v7, v2, v7

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->p()J

    move-result-wide v9

    sub-long v9, v4, v9

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v14

    const/4 v15, 0x0

    invoke-static/range {v6 .. v15}, Lcom/bytedance/tea/crash/a/g;->a(Lcom/bytedance/tea/crash/a/g$d;JJJIILjava/lang/String;)V

    .line 19
    :cond_9
    invoke-static {v2, v3}, Lcom/bytedance/tea/crash/a/g;->b(J)J

    .line 20
    invoke-static {v4, v5}, Lcom/bytedance/tea/crash/a/g;->c(J)J

    .line 21
    invoke-static {v1}, Lcom/bytedance/tea/crash/a/g;->b(I)I

    :goto_2
    return-void
.end method
