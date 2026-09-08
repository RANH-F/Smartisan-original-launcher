.class public Lcom/bytedance/sdk/openadsdk/core/video/c/d;
.super Ljava/lang/Object;
.source "SSMediaPlayerWrapper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;
.implements Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;
.implements Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;
.implements Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;
.implements Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;
.implements Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;
.implements Lcom/bytedance/sdk/openadsdk/core/video/c/c$g;
.implements Lcom/bytedance/sdk/openadsdk/utils/ak$a;


# static fields
.field private static m:Z = false

.field private static final o:Landroid/util/SparseIntArray;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:J

.field private final h:Landroid/os/Handler;

.field private i:Landroid/os/Handler;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private n:Ljava/lang/String;

.field private p:Z

.field private final q:Ljava/lang/Object;

.field private r:Ljava/lang/StringBuilder;

.field private s:Z

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->o:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;-><init>(Landroid/os/Handler;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "unused"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b:Z

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->c:Z

    const/16 v1, 0xc9

    .line 6
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const-wide/16 v1, -0x1

    .line 7
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g:J

    .line 8
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k:I

    const-string v1, "0"

    .line 9
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->n:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->q:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->r:Ljava/lang/StringBuilder;

    .line 12
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->s:Z

    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t:J

    .line 14
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    .line 15
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->v:J

    .line 16
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->w:J

    .line 17
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->x:Z

    .line 18
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k:I

    .line 19
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    .line 20
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "VideoManager"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 22
    new-instance p2, Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/ak$a;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    .line 23
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->x:Z

    .line 24
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->q()V

    return-void
.end method

.method private A()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private B()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->m:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->l:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(IZ)V

    .line 3
    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->m:Z

    :cond_0
    return-void
.end method

.method private C()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    :cond_0
    return-void
.end method

.method private D()V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t:J

    .line 3
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/c/d;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)Landroid/os/Handler;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    return-object p0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0x135

    if-ne p1, v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->B()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method private a(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->A()I

    move-result p2

    if-eq p2, p1, :cond_0

    const/4 v0, 0x1

    .line 151
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->m:Z

    .line 152
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->l:I

    .line 153
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p2

    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 154
    invoke-virtual {p2, v0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 118
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Ljava/io/FileDescriptor;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method private a(II)Z
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnError - Error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Extra code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSMediaPlayeWrapper"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3f2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ef

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ec

    if-eq p1, v0, :cond_0

    const/16 v0, -0x6e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eq p2, v1, :cond_1

    const/16 v0, 0x2bc

    if-eq p2, v0, :cond_1

    const/16 v0, 0x320

    if-eq p2, v0, :cond_1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/c/d;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->p:Z

    return p1
.end method

.method private b(II)V
    .locals 6

    const/16 p2, 0x2bd

    if-ne p1, p2, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->D()V

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->v:J

    goto :goto_0

    :cond_0
    const/16 p2, 0x2be

    const-wide/16 v0, 0x0

    if-ne p1, p2, :cond_2

    .line 14
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    .line 16
    :cond_1
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->v:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_3

    .line 17
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->w:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->v:J

    sub-long/2addr v2, v4

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->w:J

    .line 18
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->v:J

    goto :goto_0

    .line 19
    :cond_2
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->x:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 20
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_3

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->q()V

    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 30
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->e:Z

    if-nez v0, :cond_1

    .line 31
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 32
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 33
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v0, 0xc9

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->q:Ljava/lang/Object;

    monitor-enter p1

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->r:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->r:Ljava/lang/StringBuilder;

    .line 38
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)Lcom/bytedance/sdk/openadsdk/core/video/c/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    return-object p0
.end method

.method private q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-nez v0, :cond_0

    const-string v0, "SSMediaPlayeWrapper"

    const-string v1, "SSMediaPlayerWrapper use System Mediaplayer"

    .line 2
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    const-string v1, "0"

    .line 4
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->n:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;)V

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;)V

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;)V

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;)V

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;)V

    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;)V

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$g;)V

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b:Z

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "setLooping error: "

    .line 13
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->c:Z

    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    const-string v0, "tag_video_play"

    const-string v1, "[video] MediaPlayerProxy#start first play prepare invoke !"

    .line 1
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private s()V
    .locals 3

    const-string v0, "SSMediaPlayeWrapper"

    .line 1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "releaseMediaplayer error1: "

    .line 3
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;)V

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$g;)V

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;)V

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;)V

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;)V

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;)V

    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;)V

    .line 11
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    const-string v2, "releaseMediaplayer error2: "

    .line 12
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private t()V
    .locals 3

    const-string v0, "SSMediaPlayeWrapper"

    .line 1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "onDestory............"

    .line 2
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "onDestroy error: "

    .line 4
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private u()V
    .locals 4

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->o:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->o:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->o:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    return-void
.end method

.method private v()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->x:Z

    if-nez v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->d:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 5
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->d:Z

    return-void
.end method

.method private x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->w()V

    :cond_1
    :goto_0
    return-void
.end method

.method private y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->w()V

    return-void

    .line 3
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t()V

    return-void
.end method

.method private z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Landroid/media/MediaPlayer;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-eqz v0, :cond_0

    .line 5
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->e()Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->D()V

    .line 20
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_0

    const/16 v1, 0xce

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_1

    .line 21
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;J)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$5;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 25
    iget v2, v0, Landroid/os/Message;->what:I

    const-string v3, "tag_video_play"

    const-string v4, "[video]  execute , mCurrentState = "

    .line 26
    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    const/4 v6, 0x1

    if-eqz v4, :cond_15

    .line 28
    iget v7, v0, Landroid/os/Message;->what:I

    const/16 v8, 0xc9

    if-eq v7, v8, :cond_15

    const/16 v9, 0xcb

    const/16 v10, 0xca

    const-string v12, "NativeVideoController"

    const/16 v14, 0xd1

    const-wide/16 v15, 0x0

    const/16 v5, 0xcf

    const/16 v13, 0xce

    const-string v11, "SSMediaPlayeWrapper"

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_8

    .line 29
    :pswitch_0
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v3, v5, :cond_0

    .line 30
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 31
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-interface {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Landroid/view/Surface;)V

    .line 32
    :cond_0
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Z)V

    .line 33
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xa

    invoke-interface {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Landroid/content/Context;I)V

    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    const-string v3, "OP_SET_SURFACE error: "

    .line 35
    invoke-static {v11, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 36
    :pswitch_1
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceHolder;

    .line 37
    invoke-interface {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Landroid/view/SurfaceHolder;)V

    .line 38
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 39
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xa

    invoke-interface {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Landroid/content/Context;I)V

    .line 40
    :cond_1
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    const-string v3, "OP_SET_DISPLAY error: "

    .line 41
    invoke-static {v11, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 42
    :pswitch_2
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-eq v0, v13, :cond_2

    if-ne v0, v5, :cond_3

    .line 43
    :cond_2
    :try_start_2
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->i()J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    const-string v3, "OP_REQUEST_CUR_POSITION error: "

    .line 44
    invoke-static {v11, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move-wide v3, v15

    :goto_0
    cmp-long v0, v3, v15

    if-lez v0, :cond_15

    const/16 v0, 0x6d

    .line 45
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ILjava/lang/Object;)V

    goto/16 :goto_8

    .line 46
    :pswitch_3
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-eq v0, v13, :cond_4

    if-ne v0, v5, :cond_5

    .line 47
    :cond_4
    :try_start_3
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->j()J

    move-result-wide v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    const-string v3, "OP_REQUEST_DURATION error: "

    .line 48
    invoke-static {v11, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    const/16 v0, 0x6c

    .line 49
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ILjava/lang/Object;)V

    goto/16 :goto_8

    .line 50
    :pswitch_4
    iget v3, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-eq v3, v8, :cond_6

    if-ne v3, v9, :cond_10

    .line 51
    :cond_6
    :try_start_4
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;

    .line 52
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const-string v4, "/"

    if-eqz v3, :cond_7

    .line 53
    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    :goto_2
    if-eqz v3, :cond_8

    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_8
    iget v7, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->c:I

    if-ne v7, v6, :cond_b

    .line 55
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v3, :cond_a

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 56
    invoke-direct {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 57
    :cond_a
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 58
    :cond_b
    new-instance v3, Lcom/bytedance/sdk/openadsdk/h/f/b;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/h/f/b;-><init>()V

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a:Ljava/lang/String;

    .line 59
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/h/f/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/f/b;

    move-result-object v3

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->d:Ljava/lang/String;

    .line 60
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/h/f/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/f/b;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/f/a;->a()Lcom/bytedance/sdk/openadsdk/h/f/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/h/f/a;->b(Lcom/bytedance/sdk/openadsdk/h/f/b;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "cache009"

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4f7f\u7528Video\u7f13\u5b58-OP_SET_DATASOURCE-proxyurl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_c

    const-string v3, "file"

    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v5, v6

    goto :goto_3

    :cond_c
    const/4 v5, 0x0

    :goto_3
    if-eqz v0, :cond_d

    .line 64
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "file"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 65
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "cache010"

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4f7f\u7528uri parse ="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 68
    :cond_d
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Ljava/lang/String;)V

    .line 69
    :goto_4
    iput v10, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    .line 70
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_15

    .line 71
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    const/16 v3, 0x13a

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/16 :goto_8

    :catchall_4
    move-exception v0

    const-string v3, "OP_SET_DATASOURCE error: "

    .line 72
    invoke-static {v11, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 73
    :pswitch_5
    iget v3, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-eq v3, v13, :cond_e

    if-eq v3, v5, :cond_e

    if-ne v3, v14, :cond_10

    .line 74
    :cond_e
    :try_start_6
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto/16 :goto_8

    :catchall_5
    move-exception v0

    const-string v3, "OP_SEEKTO error: "

    .line 75
    invoke-static {v11, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 76
    :pswitch_6
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v3, 0xcd

    if-eq v0, v3, :cond_f

    if-eq v0, v13, :cond_f

    const/16 v3, 0xd0

    if-eq v0, v3, :cond_f

    if-eq v0, v5, :cond_f

    if-ne v0, v14, :cond_10

    .line 77
    :cond_f
    :try_start_7
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->g()V

    const/16 v0, 0xd0

    .line 78
    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto/16 :goto_8

    :catchall_6
    move-exception v0

    const-string v3, "OP_STOP error: "

    .line 79
    invoke-static {v11, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 80
    :pswitch_7
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-eq v0, v10, :cond_11

    const/16 v4, 0xd0

    if-ne v0, v4, :cond_10

    goto :goto_5

    :cond_10
    move v4, v6

    goto/16 :goto_9

    .line 81
    :cond_11
    :goto_5
    :try_start_8
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->e()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const-string v0, "[video] OP_PREPARE_ASYNC execute , mMediaPlayer real prepareAsync !"

    .line 82
    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_15

    .line 84
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    const/16 v3, 0x138

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto/16 :goto_8

    :catchall_7
    move-exception v0

    const-string v3, "OP_PREPARE_ASYNC error: "

    .line 85
    invoke-static {v12, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 86
    :pswitch_8
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->s()V

    const-string v0, "[video] OP_RELEASE execute , releaseMediaplayer !"

    .line 87
    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_6

    :catchall_8
    move-exception v0

    const-string v3, "OP_RELEASE error: "

    .line 88
    invoke-static {v12, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    const/4 v3, 0x0

    .line 89
    iput-boolean v3, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->e:Z

    const/16 v0, 0x135

    const/4 v3, 0x0

    .line 90
    invoke-direct {v1, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ILjava/lang/Object;)V

    .line 91
    iput v9, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/4 v0, 0x0

    .line 92
    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    .line 93
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->y()V

    goto/16 :goto_8

    .line 94
    :pswitch_9
    :try_start_a
    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->l()V

    const-string v0, "[video] OP_RELEASE execute , releaseMediaplayer !"

    .line 95
    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iput v8, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    goto/16 :goto_8

    :catchall_9
    move-exception v0

    const-string v3, "OP_RESET error: "

    .line 97
    invoke-static {v11, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 98
    :pswitch_a
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-eq v0, v13, :cond_12

    if-eq v0, v5, :cond_12

    if-ne v0, v14, :cond_10

    .line 99
    :cond_12
    :try_start_b
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->h()V

    .line 100
    iput v5, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    const/4 v4, 0x0

    .line 101
    :try_start_c
    iput-boolean v4, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->p:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    goto :goto_9

    :catchall_a
    move-exception v0

    goto :goto_7

    :catchall_b
    move-exception v0

    const/4 v4, 0x0

    :goto_7
    const-string v3, "OP_PAUSE error: "

    .line 102
    invoke-static {v12, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :pswitch_b
    const/4 v4, 0x0

    .line 103
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v7, 0xcd

    if-eq v0, v7, :cond_13

    if-eq v0, v13, :cond_13

    if-eq v0, v5, :cond_13

    if-ne v0, v14, :cond_10

    .line 104
    :cond_13
    :try_start_d
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->f()V

    const-string v0, "[video] OP_START execute , mMediaPlayer real start !"

    .line 105
    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iput v13, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    .line 107
    iget-wide v7, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g:J

    cmp-long v0, v7, v15

    if-ltz v0, :cond_14

    .line 108
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    iget-wide v7, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g:J

    invoke-interface {v0, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(J)V

    const-wide/16 v7, -0x1

    .line 109
    iput-wide v7, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g:J

    .line 110
    :cond_14
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_16

    .line 111
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    const/16 v5, 0x138

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    const/16 v5, 0x139

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    goto :goto_9

    :catchall_c
    move-exception v0

    const-string v5, "OP_START error: "

    .line 113
    invoke-static {v3, v5, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_15
    :goto_8
    const/4 v4, 0x0

    :cond_16
    :goto_9
    if-eqz v4, :cond_17

    const/16 v0, 0xc8

    .line 114
    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    .line 115
    iget-boolean v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->c:Z

    if-nez v0, :cond_17

    const/16 v0, 0x134

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ILjava/lang/Object;)V

    .line 117
    iput-boolean v6, v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->c:Z

    :cond_17
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 23
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$6;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;Landroid/view/SurfaceHolder;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/a;)V
    .locals 1

    .line 24
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$7;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;Lcom/bytedance/sdk/openadsdk/core/video/a/a;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/c/c;)V
    .locals 1

    .line 127
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b:Z

    if-nez p1, :cond_0

    const/16 p1, 0xd1

    goto :goto_0

    :cond_0
    const/16 p1, 0xce

    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    .line 128
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->o:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k:I

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 129
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 v0, 0x12e

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    const-string p1, "completion"

    .line 131
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->D()V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/c/c;I)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-eq v0, p1, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 v0, 0x12d

    .line 126
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/c/c;IIII)V
    .locals 0

    .line 158
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 p4, 0x137

    .line 159
    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 155
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(FF)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SSMediaPlayeWrapper"

    const-string v1, "setQuietPlay error: "

    .line 157
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(ZJZ)V
    .locals 4

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[video] MediaPlayerProxy#start firstSeekToPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",firstPlay :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isPauseOtherMusicVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag_video_play"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->p:Z

    if-nez p4, :cond_0

    .line 8
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    .line 9
    invoke-virtual {p0, p4}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Z)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-eqz p4, :cond_1

    .line 11
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Z)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 12
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->r()V

    .line 13
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g:J

    goto :goto_3

    .line 14
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->C()V

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-eqz p1, :cond_4

    .line 16
    :try_start_0
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->i()J

    move-result-wide v2

    cmp-long p1, p2, v2

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->i()J

    move-result-wide p2

    :goto_1
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[video] MediaPlayerProxy#start  error: getCurrentPosition :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_4
    :goto_2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/video/c/d$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/c/c;II)Z
    .locals 2

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "what="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "extra="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SSMediaPlayeWrapper"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u()V

    const/16 p1, 0xc8

    .line 135
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    .line 136
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v0, 0x12f

    .line 137
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 v0, 0x6c

    .line 139
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/16 v0, 0x6d

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->c:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    const/16 p1, 0x134

    .line 142
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ILjava/lang/Object;)V

    .line 143
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->c:Z

    .line 144
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 145
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t()V

    :cond_3
    return v0
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->p:Z

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->D()V

    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/c/c;)V
    .locals 2

    const/16 p1, 0xcd

    .line 22
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    .line 23
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->p:Z

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/16 v0, 0x64

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 26
    :goto_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->o:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k:I

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 v0, 0x131

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->v()V

    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/c/c;II)Z
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "what,extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSMediaPlayeWrapper"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 v0, 0x130

    .line 9
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/16 p1, -0x3ec

    if-ne p3, p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    const/16 v0, 0x12f

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 11
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(II)V

    return v1
.end method

.method public c()V
    .locals 3

    const/16 v0, 0xcb

    .line 2
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->D()V

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->z()V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "release"

    .line 6
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->e:Z

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t()V

    const-string v1, "SSMediaPlayeWrapper"

    const-string v2, "release error: "

    .line 12
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/core/video/c/c;)V
    .locals 1

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v0, 0x132

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x6d

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->p:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public i()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->p:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t:J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    return-void
.end method

.method public n()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->w:J

    return-wide v0
.end method

.method public o()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->D()V

    .line 2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t:J

    return-wide v0
.end method

.method public p()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t:J

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t:J

    return-wide v0
.end method
