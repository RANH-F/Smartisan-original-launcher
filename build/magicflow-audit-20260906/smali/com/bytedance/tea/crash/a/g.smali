.class public Lcom/bytedance/tea/crash/a/g;
.super Ljava/lang/Object;
.source "LooperMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/crash/a/g$d;
    }
.end annotation


# static fields
.field private static a:Z = false

.field private static b:Z = true

.field private static c:I

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/tea/crash/a/g$d;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile e:Ljava/util/concurrent/atomic/AtomicLong;

.field private static f:J

.field private static g:J

.field private static h:Landroid/os/HandlerThread;

.field private static i:J

.field private static j:J

.field private static k:Landroid/os/Handler;

.field private static l:I

.field private static m:Z

.field private static volatile n:Ljava/lang/String;

.field private static volatile o:Z

.field private static p:I

.field public static q:J

.field public static r:J

.field private static s:I

.field private static t:Landroid/os/MessageQueue;

.field private static u:Ljava/lang/reflect/Field;

.field private static v:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/bytedance/tea/crash/a/g;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x64

    .line 2
    sput-wide v3, Lcom/bytedance/tea/crash/a/g;->f:J

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/bytedance/tea/crash/a/g;->n:Ljava/lang/String;

    const/4 v3, 0x0

    .line 4
    sput-boolean v3, Lcom/bytedance/tea/crash/a/g;->o:Z

    const/4 v3, -0x1

    .line 5
    sput v3, Lcom/bytedance/tea/crash/a/g;->p:I

    .line 6
    sput-wide v1, Lcom/bytedance/tea/crash/a/g;->q:J

    .line 7
    sput-wide v1, Lcom/bytedance/tea/crash/a/g;->r:J

    .line 8
    sput v3, Lcom/bytedance/tea/crash/a/g;->s:I

    .line 9
    sput-object v0, Lcom/bytedance/tea/crash/a/g;->t:Landroid/os/MessageQueue;

    .line 10
    sput-object v0, Lcom/bytedance/tea/crash/a/g;->u:Ljava/lang/reflect/Field;

    .line 11
    sput-object v0, Lcom/bytedance/tea/crash/a/g;->v:Ljava/lang/reflect/Field;

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .line 1
    sput p0, Lcom/bytedance/tea/crash/a/g;->p:I

    return p0
.end method

.method private static a(Landroid/os/Message;)Landroid/os/Message;
    .locals 4

    .line 53
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->v:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "android.os.Message"

    .line 54
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "next"

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/bytedance/tea/crash/a/g;->v:Ljava/lang/reflect/Field;

    .line 56
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->v:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->v:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Message;

    .line 58
    sget-boolean v0, Lcom/bytedance/tea/crash/a/g;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LooperMonitor"

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getNextMessage] success get next msg :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    return-object v1

    .line 60
    :cond_1
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Message;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    return-object v1
.end method

.method private static a(Landroid/os/MessageQueue;)Landroid/os/Message;
    .locals 3

    .line 17
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->u:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "android.os.MessageQueue"

    .line 18
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mMessages"

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/bytedance/tea/crash/a/g;->u:Ljava/lang/reflect/Field;

    .line 20
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->u:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 21
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->u:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    .line 22
    :cond_0
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Message;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    return-object v1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    sput-object p0, Lcom/bytedance/tea/crash/a/g;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static a(IJ)Lorg/json/JSONArray;
    .locals 7

    .line 23
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->d()Landroid/os/MessageQueue;

    move-result-object v0

    .line 24
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    .line 25
    :cond_0
    monitor-enter v0

    .line 26
    :try_start_0
    invoke-static {v0}, Lcom/bytedance/tea/crash/a/g;->a(Landroid/os/MessageQueue;)Landroid/os/Message;

    move-result-object v2

    if-nez v2, :cond_1

    .line 27
    monitor-exit v0

    return-object v1

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-eqz v2, :cond_2

    if-ge v3, p0, :cond_2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 28
    invoke-static {v2, p1, p2}, Lcom/bytedance/tea/crash/a/g;->a(Landroid/os/Message;J)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v6, "id"

    .line 29
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :catch_0
    :try_start_2
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 31
    invoke-static {v2}, Lcom/bytedance/tea/crash/a/g;->a(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    goto :goto_0

    .line 32
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static a(J)Lorg/json/JSONObject;
    .locals 4

    .line 34
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p1, "message"

    .line 35
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->n:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "currentMessageCost"

    .line 36
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->e()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "currentMessageCpu"

    .line 37
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->v()J

    move-result-wide v0

    sget-wide v2, Lcom/bytedance/tea/crash/a/g;->i:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "currentTick"

    .line 38
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 39
    invoke-static {p1}, Lcom/bytedance/tea/crash/m/j;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method private static a(Landroid/os/Message;J)Lorg/json/JSONObject;
    .locals 4

    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "when"

    .line 41
    invoke-virtual {p0}, Landroid/os/Message;->getWhen()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {p0}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "callback"

    .line 43
    invoke-virtual {p0}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p1, "what"

    .line 44
    iget p2, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p1, "target"

    .line 46
    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const-string p1, "barrier"

    .line 47
    iget p2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    const-string p1, "arg1"

    .line 48
    iget p2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "arg2"

    .line 49
    iget p2, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_3

    const-string p1, "obj"

    .line 51
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static a()V
    .locals 2

    const-wide/16 v0, 0x4

    .line 11
    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/i/h;->a(J)V

    .line 12
    invoke-static {}, Lcom/bytedance/tea/crash/i/g;->b()Lcom/bytedance/tea/crash/i/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/i/g;->a()V

    .line 13
    invoke-static {}, Lcom/bytedance/tea/crash/i/g;->b()Lcom/bytedance/tea/crash/i/g;

    move-result-object v0

    new-instance v1, Lcom/bytedance/tea/crash/a/g$a;

    invoke-direct {v1}, Lcom/bytedance/tea/crash/a/g$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/i/g;->b(Landroid/util/Printer;)V

    .line 14
    invoke-static {}, Lcom/bytedance/tea/crash/i/g;->b()Lcom/bytedance/tea/crash/i/g;

    move-result-object v0

    new-instance v1, Lcom/bytedance/tea/crash/a/g$b;

    invoke-direct {v1}, Lcom/bytedance/tea/crash/a/g$b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/i/g;->a(Landroid/util/Printer;)V

    .line 15
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->v()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/tea/crash/a/g;->i:J

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/tea/crash/a/g;->j:J

    return-void
.end method

.method public static a(II)V
    .locals 1

    .line 5
    sget-boolean v0, Lcom/bytedance/tea/crash/a/g;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    if-le p0, v0, :cond_1

    .line 6
    sput p0, Lcom/bytedance/tea/crash/a/g;->c:I

    :cond_1
    if-le p1, v0, :cond_2

    int-to-long p0, p1

    .line 7
    sput-wide p0, Lcom/bytedance/tea/crash/a/g;->f:J

    .line 8
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/bytedance/tea/crash/a/g;->d:Ljava/util/List;

    .line 9
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->a()V

    .line 10
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->d()Landroid/os/MessageQueue;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/tea/crash/a/g;->a(Landroid/os/MessageQueue;)Landroid/os/Message;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/tea/crash/a/g$d;JJJIILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-static/range {p0 .. p9}, Lcom/bytedance/tea/crash/a/g;->b(Lcom/bytedance/tea/crash/a/g$d;JJJIILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 4
    sput-boolean p0, Lcom/bytedance/tea/crash/a/g;->m:Z

    return p0
.end method

.method static synthetic b(I)I
    .locals 0

    .line 1
    sput p0, Lcom/bytedance/tea/crash/a/g;->l:I

    return p0
.end method

.method static synthetic b(J)J
    .locals 0

    .line 2
    sput-wide p0, Lcom/bytedance/tea/crash/a/g;->i:J

    return-wide p0
.end method

.method public static b()Lorg/json/JSONArray;
    .locals 8

    .line 10
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 11
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->c()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/tea/crash/a/g$d;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 13
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "msg"

    .line 14
    iget-object v6, v3, Lcom/bytedance/tea/crash/a/g$d;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "cpuDuration"

    .line 15
    iget-wide v6, v3, Lcom/bytedance/tea/crash/a/g$d;->e:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "duration"

    .line 16
    iget-wide v6, v3, Lcom/bytedance/tea/crash/a/g$d;->d:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "tick"

    .line 17
    iget-wide v6, v3, Lcom/bytedance/tea/crash/a/g$d;->c:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "type"

    .line 18
    iget v6, v3, Lcom/bytedance/tea/crash/a/g$d;->b:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "count"

    .line 19
    iget v3, v3, Lcom/bytedance/tea/crash/a/g$d;->a:I

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "id"

    .line 20
    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 21
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 22
    :goto_1
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static b(Lcom/bytedance/tea/crash/a/g$d;JJJIILjava/lang/String;)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/bytedance/tea/crash/a/g$d;->e:J

    .line 4
    iput-wide p5, p0, Lcom/bytedance/tea/crash/a/g$d;->c:J

    .line 5
    iput-wide p3, p0, Lcom/bytedance/tea/crash/a/g$d;->d:J

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/bytedance/tea/crash/a/g$d;->f:Z

    .line 7
    iput p8, p0, Lcom/bytedance/tea/crash/a/g$d;->a:I

    if-eqz p9, :cond_0

    .line 8
    iput-object p9, p0, Lcom/bytedance/tea/crash/a/g$d;->g:Ljava/lang/String;

    .line 9
    :cond_0
    iput p7, p0, Lcom/bytedance/tea/crash/a/g$d;->b:I

    return-void
.end method

.method static synthetic c(J)J
    .locals 0

    .line 1
    sput-wide p0, Lcom/bytedance/tea/crash/a/g;->j:J

    return-wide p0
.end method

.method public static c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/tea/crash/a/g$d;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/bytedance/tea/crash/a/g;->o:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    sget-object v1, Lcom/bytedance/tea/crash/a/g;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/bytedance/tea/crash/a/g;->c:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 6
    sget v1, Lcom/bytedance/tea/crash/a/g;->s:I

    :goto_0
    sget-object v2, Lcom/bytedance/tea/crash/a/g;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7
    sget-object v2, Lcom/bytedance/tea/crash/a/g;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/tea/crash/a/g$d;

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 9
    :goto_1
    sget v2, Lcom/bytedance/tea/crash/a/g;->s:I

    if-ge v1, v2, :cond_3

    .line 10
    sget-object v2, Lcom/bytedance/tea/crash/a/g;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/tea/crash/a/g$d;

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_2
    sget-object v1, Lcom/bytedance/tea/crash/a/g;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_3
    sput-boolean v3, Lcom/bytedance/tea/crash/a/g;->o:Z

    return-object v0
.end method

.method public static d()Landroid/os/MessageQueue;
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->t:Landroid/os/MessageQueue;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    sput-object v0, Lcom/bytedance/tea/crash/a/g;->t:Landroid/os/MessageQueue;

    goto :goto_0

    .line 5
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    sput-object v0, Lcom/bytedance/tea/crash/a/g;->t:Landroid/os/MessageQueue;

    goto :goto_0

    .line 7
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mQueue"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue;

    sput-object v0, Lcom/bytedance/tea/crash/a/g;->t:Landroid/os/MessageQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :cond_2
    :goto_0
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->t:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public static e()J
    .locals 6

    .line 1
    sget-wide v0, Lcom/bytedance/tea/crash/a/g;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/bytedance/tea/crash/a/g;->g:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/bytedance/tea/crash/a/g;->r:J

    sget-wide v4, Lcom/bytedance/tea/crash/a/g;->f:J

    :goto_0
    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/bytedance/tea/crash/a/g;->g:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/bytedance/tea/crash/a/g;->q:J

    sget-wide v4, Lcom/bytedance/tea/crash/a/g;->f:J

    goto :goto_0
.end method

.method static synthetic f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/tea/crash/a/g;->b:Z

    return v0
.end method

.method static synthetic g()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/tea/crash/a/g;->m:Z

    return v0
.end method

.method static synthetic h()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->u()V

    return-void
.end method

.method static synthetic i()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->e:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic j()I
    .locals 2

    .line 1
    sget v0, Lcom/bytedance/tea/crash/a/g;->l:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/bytedance/tea/crash/a/g;->l:I

    return v0
.end method

.method static synthetic k()I
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/tea/crash/a/g;->l:I

    return v0
.end method

.method static synthetic l()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic m()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/tea/crash/a/g;->o:Z

    return v0
.end method

.method static synthetic n()Lcom/bytedance/tea/crash/a/g$d;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->t()Lcom/bytedance/tea/crash/a/g$d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/bytedance/tea/crash/a/g;->i:J

    return-wide v0
.end method

.method static synthetic p()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/bytedance/tea/crash/a/g;->j:J

    return-wide v0
.end method

.method static synthetic q()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/bytedance/tea/crash/a/g;->g:J

    return-wide v0
.end method

.method static synthetic r()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/bytedance/tea/crash/a/g;->f:J

    return-wide v0
.end method

.method static synthetic s()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private static t()Lcom/bytedance/tea/crash/a/g$d;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/bytedance/tea/crash/a/g;->c:I

    if-ne v0, v1, :cond_0

    .line 2
    sget v0, Lcom/bytedance/tea/crash/a/g;->s:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    sput v0, Lcom/bytedance/tea/crash/a/g;->s:I

    .line 3
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->d:Ljava/util/List;

    sget v1, Lcom/bytedance/tea/crash/a/g;->s:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/tea/crash/a/g$d;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/bytedance/tea/crash/a/g$d;

    invoke-direct {v0}, Lcom/bytedance/tea/crash/a/g$d;-><init>()V

    .line 5
    sget-object v1, Lcom/bytedance/tea/crash/a/g;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget v1, Lcom/bytedance/tea/crash/a/g;->s:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/bytedance/tea/crash/a/g;->s:I

    return-object v0
.end method

.method private static u()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/bytedance/tea/crash/i/i;->a()Landroid/os/HandlerThread;

    move-result-object v0

    sput-object v0, Lcom/bytedance/tea/crash/a/g;->h:Landroid/os/HandlerThread;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/tea/crash/a/g;->g:J

    .line 3
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/bytedance/tea/crash/a/g;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/bytedance/tea/crash/a/g;->k:Landroid/os/Handler;

    const-wide/16 v0, 0x8

    .line 4
    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/i/h;->a(J)V

    .line 5
    sget-object v0, Lcom/bytedance/tea/crash/a/g;->k:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/tea/crash/a/g$c;

    invoke-direct {v1}, Lcom/bytedance/tea/crash/a/g$c;-><init>()V

    sget-wide v2, Lcom/bytedance/tea/crash/a/g;->f:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static v()J
    .locals 2

    .line 1
    sget v0, Lcom/bytedance/tea/crash/a/g;->p:I

    invoke-static {v0}, Lcom/bytedance/tea/crash/i/d;->a(I)J

    move-result-wide v0

    return-wide v0
.end method
