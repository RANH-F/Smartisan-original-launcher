.class final Lcom/bytedance/tea/crash/a/g$b;
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
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->i()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/tea/crash/a/g;->r:J

    .line 2
    sget-wide v0, Lcom/bytedance/tea/crash/a/g;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-wide v0, Lcom/bytedance/tea/crash/a/g;->r:J

    sget-wide v4, Lcom/bytedance/tea/crash/a/g;->q:J

    sub-long v11, v0, v4

    cmp-long v0, v11, v2

    if-gtz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->l()J

    move-result-wide v0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v4, v11, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    .line 6
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v7

    if-le v7, v6, :cond_2

    const/16 v4, 0x9

    :goto_0
    move v13, v4

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    .line 7
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v7

    if-ne v7, v6, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    if-lez v4, :cond_4

    .line 8
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v7

    if-le v7, v6, :cond_4

    const/4 v4, 0x4

    goto :goto_0

    :cond_4
    if-lez v4, :cond_5

    .line 9
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v4

    if-ne v4, v6, :cond_5

    const/16 v4, 0x8

    goto :goto_0

    :cond_5
    move v13, v5

    .line 10
    :goto_1
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->m()Z

    move-result v4

    if-nez v4, :cond_6

    .line 11
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->n()Lcom/bytedance/tea/crash/a/g$d;

    move-result-object v6

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->o()J

    move-result-wide v7

    sub-long v7, v0, v7

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->p()J

    move-result-wide v9

    sub-long v9, v2, v9

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->k()I

    move-result v14

    move-object/from16 v15, p1

    invoke-static/range {v6 .. v15}, Lcom/bytedance/tea/crash/a/g;->a(Lcom/bytedance/tea/crash/a/g$d;JJJIILjava/lang/String;)V

    .line 12
    :cond_6
    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/a/g;->b(J)J

    .line 13
    invoke-static {v2, v3}, Lcom/bytedance/tea/crash/a/g;->c(J)J

    .line 14
    invoke-static {v5}, Lcom/bytedance/tea/crash/a/g;->b(I)I

    const-wide/16 v0, -0x1

    .line 15
    sput-wide v0, Lcom/bytedance/tea/crash/a/g;->q:J

    return-void
.end method
