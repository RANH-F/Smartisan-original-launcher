.class Lcom/smartisanos/smengine/Qa;
.super Ljava/lang/Object;
.source "World.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/smengine/Ra;


# direct methods
.method private constructor <init>(Lcom/smartisanos/smengine/Ra;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/Qa;->this$0:Lcom/smartisanos/smengine/Ra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/Ra;Lcom/smartisanos/smengine/Ka;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Qa;-><init>(Lcom/smartisanos/smengine/Ra;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ub;->Rc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    :cond_0
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/smartisanos/smengine/Ra;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "some status error. updateZ run"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ub;->Sc()V

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/smengine/Qa;->this$0:Lcom/smartisanos/smengine/Ra;

    invoke-static {v0}, Lcom/smartisanos/smengine/Ra;->c(Lcom/smartisanos/smengine/Ra;)Lcom/smartisanos/smengine/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/Qa;->this$0:Lcom/smartisanos/smengine/Ra;

    invoke-static {v1}, Lcom/smartisanos/smengine/Ra;->a(Lcom/smartisanos/smengine/Ra;)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/smengine/Qa;->this$0:Lcom/smartisanos/smengine/Ra;

    invoke-static {v2}, Lcom/smartisanos/smengine/Ra;->b(Lcom/smartisanos/smengine/Ra;)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    # Ra.b is the shared GU direction. Copy it before releasing the writer monitor.
    monitor-enter v2
    :sensor_copy_start
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/a/c;->b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V
    monitor-exit v2
    :sensor_copy_end
    .catchall {:sensor_copy_start .. :sensor_copy_end} :sensor_copy_failed

    .line 9
    iget-object v0, p0, Lcom/smartisanos/smengine/Qa;->this$0:Lcom/smartisanos/smengine/Ra;

    invoke-static {v0}, Lcom/smartisanos/smengine/Ra;->e(Lcom/smartisanos/smengine/Ra;)Lcom/smartisanos/smengine/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/Qa;->this$0:Lcom/smartisanos/smengine/Ra;

    invoke-static {v1}, Lcom/smartisanos/smengine/Ra;->c(Lcom/smartisanos/smengine/Ra;)Lcom/smartisanos/smengine/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/c;->getDirection()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iget-object p0, p0, Lcom/smartisanos/smengine/Qa;->this$0:Lcom/smartisanos/smengine/Ra;

    invoke-static {p0}, Lcom/smartisanos/smengine/Ra;->d(Lcom/smartisanos/smengine/Ra;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/smartisanos/smengine/a/d;->c(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateNeedDisplay()V

    .line 11
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    return-void

    :sensor_copy_failed
    move-exception v3
    :sensor_copy_unlock_start
    monitor-exit v2
    :sensor_copy_unlock_end
    .catchall {:sensor_copy_unlock_start .. :sensor_copy_unlock_end} :sensor_copy_failed
    throw v3
.end method
