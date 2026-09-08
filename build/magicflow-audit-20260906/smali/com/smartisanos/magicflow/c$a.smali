.class Lcom/smartisanos/magicflow/c$a;
.super Lcom/smartisanos/magicflow/o/d;
.source "MagicflowTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/o/d;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object v0

    invoke-virtual {v0}, Lsmartisanos/app/tracker/Agent;->onLaunch()V

    .line 2
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object v0

    invoke-virtual {v0}, Lsmartisanos/app/tracker/Agent;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/c;->g()Lcom/smartisanos/magicflow/LOG;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
