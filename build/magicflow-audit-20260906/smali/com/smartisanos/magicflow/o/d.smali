.class public abstract Lcom/smartisanos/magicflow/o/d;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field private static final log:Lcom/smartisanos/magicflow/LOG;

.field private static final mWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/o/d;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/o/d;->log:Lcom/smartisanos/magicflow/LOG;

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EventHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/magicflow/o/d;->sWorkerThread:Landroid/os/HandlerThread;

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/o/d;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Lcom/smartisanos/magicflow/o/d$a;

    sget-object v1, Lcom/smartisanos/magicflow/o/d;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartisanos/magicflow/o/d$a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/smartisanos/magicflow/o/d;->mWorker:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/o/d;->mWorker:Landroid/os/Handler;

    return-object v0
.end method

.method public static hasCallbacks(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/o/d;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/o/d;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postDelay(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/o/d;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/o/d;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public abstract run()V
.end method

.method public send()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/o/d;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/o/d;->mWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
