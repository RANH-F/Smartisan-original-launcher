.class public Lcom/bytedance/embedapplog/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embedapplog/a/k$b;
    }
.end annotation


# static fields
.field private static n:J

.field private static o:Lcom/bytedance/embedapplog/a/k$b;


# instance fields
.field private final a:Lcom/bytedance/embedapplog/b/h;

.field private final b:Lcom/bytedance/embedapplog/b/i;

.field private c:Lcom/bytedance/embedapplog/d/h;

.field private d:Lcom/bytedance/embedapplog/d/h;

.field e:Ljava/lang/String;

.field private f:J

.field private g:I

.field private h:J

.field private volatile i:Z

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Lcom/bytedance/embedapplog/d/f;


# direct methods
.method constructor <init>(Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/b/h;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/bytedance/embedapplog/a/k;->h:J

    .line 3
    iput-object p1, p0, Lcom/bytedance/embedapplog/a/k;->b:Lcom/bytedance/embedapplog/b/i;

    .line 4
    iput-object p2, p0, Lcom/bytedance/embedapplog/a/k;->a:Lcom/bytedance/embedapplog/b/h;

    return-void
.end method

.method public static a(Lcom/bytedance/embedapplog/b/h;)J
    .locals 8

    .line 81
    sget-wide v0, Lcom/bytedance/embedapplog/a/k;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/bytedance/embedapplog/a/k;->n:J

    .line 82
    sget-wide v0, Lcom/bytedance/embedapplog/a/k;->n:J

    const-wide/16 v2, 0x3e8

    rem-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    add-long/2addr v0, v2

    .line 83
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/embedapplog/b/h;->a(J)V

    .line 84
    :cond_0
    sget-wide v0, Lcom/bytedance/embedapplog/a/k;->n:J

    return-wide v0
.end method

.method private declared-synchronized a(Lcom/bytedance/embedapplog/d/a;Ljava/util/ArrayList;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embedapplog/d/a;",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/d/a;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 10
    :try_start_0
    instance-of v0, p1, Lcom/bytedance/embedapplog/a/k$b;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-wide v3, p1, Lcom/bytedance/embedapplog/d/a;->a:J

    .line 11
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/a/k;->e:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->f()J

    move-result-wide v5

    sput-wide v5, Lcom/bytedance/embedapplog/a/k;->n:J

    .line 13
    iput-wide v3, p0, Lcom/bytedance/embedapplog/a/k;->h:J

    .line 14
    iput-boolean p3, p0, Lcom/bytedance/embedapplog/a/k;->i:Z

    const-wide/16 v5, 0x0

    .line 15
    iput-wide v5, p0, Lcom/bytedance/embedapplog/a/k;->j:J

    .line 16
    sget-boolean v0, Lcom/bytedance/embedapplog/util/h;->a:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startSession, "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/bytedance/embedapplog/a/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", hadUi:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " data:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    if-eqz p3, :cond_4

    .line 18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/a/k;->l:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->w()I

    move-result v0

    iput v0, p0, Lcom/bytedance/embedapplog/a/k;->k:I

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 24
    iput-object p1, p0, Lcom/bytedance/embedapplog/a/k;->l:Ljava/lang/String;

    .line 25
    iput v6, p0, Lcom/bytedance/embedapplog/a/k;->k:I

    goto :goto_1

    .line 26
    :cond_3
    iget v0, p0, Lcom/bytedance/embedapplog/a/k;->k:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/bytedance/embedapplog/a/k;->k:I

    .line 27
    :goto_1
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->a:Lcom/bytedance/embedapplog/b/h;

    iget v6, p0, Lcom/bytedance/embedapplog/a/k;->k:I

    invoke-virtual {v0, p1, v6}, Lcom/bytedance/embedapplog/b/h;->a(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/bytedance/embedapplog/a/k;->g:I

    :cond_4
    cmp-long p1, v3, v1

    if-eqz p1, :cond_6

    .line 29
    new-instance p1, Lcom/bytedance/embedapplog/d/f;

    invoke-direct {p1}, Lcom/bytedance/embedapplog/d/f;-><init>()V

    .line 30
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->e:Ljava/lang/String;

    iput-object v0, p1, Lcom/bytedance/embedapplog/d/a;->c:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-static {v0}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/b/h;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/embedapplog/d/a;->b:J

    .line 32
    iget-wide v0, p0, Lcom/bytedance/embedapplog/a/k;->h:J

    iput-wide v0, p1, Lcom/bytedance/embedapplog/d/a;->a:J

    .line 33
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->b:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/d/f;->j:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->b:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->c()I

    move-result v0

    iput v0, p1, Lcom/bytedance/embedapplog/d/f;->i:I

    .line 35
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->S()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 36
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getAbConfigVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/d/a;->e:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getAbSDKVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/d/a;->f:Ljava/lang/String;

    .line 38
    :cond_5
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iput-object p1, p0, Lcom/bytedance/embedapplog/a/k;->m:Lcom/bytedance/embedapplog/d/f;

    .line 40
    sget-boolean p2, Lcom/bytedance/embedapplog/util/h;->a:Z

    if-eqz p2, :cond_6

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gen launch, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/bytedance/embedapplog/d/a;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", hadUi:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static b(Lcom/bytedance/embedapplog/d/a;)Z
    .locals 1

    .line 2
    instance-of v0, p0, Lcom/bytedance/embedapplog/d/h;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/bytedance/embedapplog/d/h;

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/d/h;->i()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static d()Lcom/bytedance/embedapplog/a/k$b;
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/a/k;->o:Lcom/bytedance/embedapplog/a/k$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/embedapplog/a/k$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/embedapplog/a/k$b;-><init>(Lcom/bytedance/embedapplog/a/k$a;)V

    sput-object v0, Lcom/bytedance/embedapplog/a/k;->o:Lcom/bytedance/embedapplog/a/k$b;

    .line 3
    :cond_0
    sget-object v0, Lcom/bytedance/embedapplog/a/k;->o:Lcom/bytedance/embedapplog/a/k$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/embedapplog/d/a;->a:J

    .line 4
    sget-object v0, Lcom/bytedance/embedapplog/a/k;->o:Lcom/bytedance/embedapplog/a/k$b;

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(JJ)Landroid/os/Bundle;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/k;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/b/h;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a/k;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/bytedance/embedapplog/a/k;->f:J

    sub-long v1, p1, v1

    cmp-long p3, v1, p3

    if-lez p3, :cond_0

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string p3, "session_no"

    .line 4
    iget p4, p0, Lcom/bytedance/embedapplog/a/k;->k:I

    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "send_times"

    .line 5
    iget p4, p0, Lcom/bytedance/embedapplog/a/k;->g:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/bytedance/embedapplog/a/k;->g:I

    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "current_duration"

    .line 6
    iget-wide v1, p0, Lcom/bytedance/embedapplog/a/k;->f:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, p3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "session_start_time"

    .line 7
    iget-wide v1, p0, Lcom/bytedance/embedapplog/a/k;->h:J

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/d/a;->a(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iput-wide p1, p0, Lcom/bytedance/embedapplog/a/k;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a()Lcom/bytedance/embedapplog/d/f;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->m:Lcom/bytedance/embedapplog/d/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/bytedance/embedapplog/d/a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->b:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/d/a;->d:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->e:Ljava/lang/String;

    iput-object v0, p1, Lcom/bytedance/embedapplog/d/a;->c:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-static {v0}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/b/h;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/embedapplog/d/a;->b:J

    .line 78
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/k;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getAbConfigVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/d/a;->e:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getAbSDKVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/d/a;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method a(Lcom/bytedance/embedapplog/d/a;Ljava/util/ArrayList;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embedapplog/d/a;",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/d/a;",
            ">;)Z"
        }
    .end annotation

    .line 43
    instance-of v0, p1, Lcom/bytedance/embedapplog/d/h;

    .line 44
    invoke-static {p1}, Lcom/bytedance/embedapplog/a/k;->b(Lcom/bytedance/embedapplog/d/a;)Z

    move-result v1

    .line 45
    iget-wide v2, p0, Lcom/bytedance/embedapplog/a/k;->h:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-nez v2, :cond_0

    .line 46
    invoke-static {p1}, Lcom/bytedance/embedapplog/a/k;->b(Lcom/bytedance/embedapplog/d/a;)Z

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/d/a;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 47
    :cond_0
    iget-boolean v2, p0, Lcom/bytedance/embedapplog/a/k;->i:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 48
    invoke-direct {p0, p1, p2, v3}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/d/a;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 49
    :cond_1
    iget-wide v6, p0, Lcom/bytedance/embedapplog/a/k;->j:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_2

    iget-wide v8, p1, Lcom/bytedance/embedapplog/d/a;->a:J

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/k;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/b/h;->a()J

    move-result-wide v10

    add-long/2addr v6, v10

    cmp-long v2, v8, v6

    if-lez v2, :cond_2

    .line 50
    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/d/a;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 51
    :cond_2
    iget-wide v6, p0, Lcom/bytedance/embedapplog/a/k;->h:J

    iget-wide v8, p1, Lcom/bytedance/embedapplog/d/a;->a:J

    const-wide/32 v10, 0x6ddd00

    add-long/2addr v8, v10

    cmp-long v2, v6, v8

    if-lez v2, :cond_3

    .line 52
    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/d/a;Ljava/util/ArrayList;Z)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_8

    .line 53
    move-object v0, p1

    check-cast v0, Lcom/bytedance/embedapplog/d/h;

    .line 54
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/d/h;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 55
    iget-wide v1, p1, Lcom/bytedance/embedapplog/d/a;->a:J

    iput-wide v1, p0, Lcom/bytedance/embedapplog/a/k;->f:J

    .line 56
    iput-wide v4, p0, Lcom/bytedance/embedapplog/a/k;->j:J

    .line 57
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p2, v0, Lcom/bytedance/embedapplog/d/h;->j:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 59
    iget-object p2, p0, Lcom/bytedance/embedapplog/a/k;->d:Lcom/bytedance/embedapplog/d/h;

    const-wide/16 v1, 0x1f4

    if-eqz p2, :cond_4

    iget-wide v4, v0, Lcom/bytedance/embedapplog/d/a;->a:J

    iget-wide v6, p2, Lcom/bytedance/embedapplog/d/a;->a:J

    sub-long/2addr v4, v6

    iget-wide v6, p2, Lcom/bytedance/embedapplog/d/h;->i:J

    sub-long/2addr v4, v6

    cmp-long v4, v4, v1

    if-gez v4, :cond_4

    .line 60
    iget-object p2, p2, Lcom/bytedance/embedapplog/d/h;->k:Ljava/lang/String;

    iput-object p2, v0, Lcom/bytedance/embedapplog/d/h;->j:Ljava/lang/String;

    goto :goto_1

    .line 61
    :cond_4
    iget-object p2, p0, Lcom/bytedance/embedapplog/a/k;->c:Lcom/bytedance/embedapplog/d/h;

    if-eqz p2, :cond_9

    iget-wide v4, v0, Lcom/bytedance/embedapplog/d/a;->a:J

    iget-wide v6, p2, Lcom/bytedance/embedapplog/d/a;->a:J

    sub-long/2addr v4, v6

    iget-wide v6, p2, Lcom/bytedance/embedapplog/d/h;->i:J

    sub-long/2addr v4, v6

    cmp-long v1, v4, v1

    if-gez v1, :cond_9

    .line 62
    iget-object p2, p2, Lcom/bytedance/embedapplog/d/h;->k:Ljava/lang/String;

    iput-object p2, v0, Lcom/bytedance/embedapplog/d/h;->j:Ljava/lang/String;

    goto :goto_1

    .line 63
    :cond_5
    iget-wide v1, p1, Lcom/bytedance/embedapplog/d/a;->a:J

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/bytedance/embedapplog/a/k;->a(JJ)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "play_session"

    .line 64
    invoke-static {v2, v1}, Lcom/bytedance/embedapplog/AppLog;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 65
    :cond_6
    iput-wide v4, p0, Lcom/bytedance/embedapplog/a/k;->f:J

    .line 66
    iget-wide v1, v0, Lcom/bytedance/embedapplog/d/a;->a:J

    iput-wide v1, p0, Lcom/bytedance/embedapplog/a/k;->j:J

    .line 67
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/d/h;->l()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 69
    iput-object v0, p0, Lcom/bytedance/embedapplog/a/k;->c:Lcom/bytedance/embedapplog/d/h;

    goto :goto_1

    .line 70
    :cond_7
    iput-object v0, p0, Lcom/bytedance/embedapplog/a/k;->d:Lcom/bytedance/embedapplog/d/h;

    const/4 p2, 0x0

    .line 71
    iput-object p2, p0, Lcom/bytedance/embedapplog/a/k;->c:Lcom/bytedance/embedapplog/d/h;

    goto :goto_1

    .line 72
    :cond_8
    instance-of v0, p1, Lcom/bytedance/embedapplog/a/k$b;

    if-nez v0, :cond_9

    .line 73
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_9
    :goto_1
    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/d/a;)V

    return v3
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/a/k;->i:Z

    return v0
.end method

.method c()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/bytedance/embedapplog/a/k;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
