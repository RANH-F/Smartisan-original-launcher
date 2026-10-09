.class Lcom/smartisanos/launcher/H;
.super Ljava/lang/Object;
.source "ActivityProxy.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/J;


# direct methods
.method private constructor <init>(Lcom/smartisanos/launcher/J;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/H;->this$0:Lcom/smartisanos/launcher/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/launcher/J;Lcom/smartisanos/launcher/p;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/H;-><init>(Lcom/smartisanos/launcher/J;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J
    invoke-static {p0, v0, v1}, Lcom/smartisanos/launcher/theme/IconIlluminationCompat;->acceptsSensorEvent(Landroid/hardware/SensorEventListener;J)Z
    move-result v0
    if-nez v0, :current_sensor_event
    return-void
    :current_sensor_event
    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :rotation_vector

    const/16 v1, 0x14
    if-eq v0, v1, :rotation_vector

    const/16 v1, 0xf
    if-ne v0, v1, :cond_1

    :rotation_vector

    .line 2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/H;->this$0:Lcom/smartisanos/launcher/J;

    invoke-static {v0}, Lcom/smartisanos/launcher/J;->i(Lcom/smartisanos/launcher/J;)[F

    move-result-object v0

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getQuaternionFromVector([F[F)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/H;->this$0:Lcom/smartisanos/launcher/J;

    iget-object v0, v0, Lcom/smartisanos/launcher/J;->rg:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/H;->this$0:Lcom/smartisanos/launcher/J;

    iget-object v0, p1, Lcom/smartisanos/launcher/J;->tg:Lcom/smartisanos/smengine/a/f;

    iget-object p1, p1, Lcom/smartisanos/launcher/J;->rg:[F

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/smartisanos/smengine/a/f;->b([FZ)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/H;->this$0:Lcom/smartisanos/launcher/J;

    iget-object v0, p1, Lcom/smartisanos/launcher/J;->tg:Lcom/smartisanos/smengine/a/f;

    iget-object p1, p1, Lcom/smartisanos/launcher/J;->vg:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/a/f;->b(Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;

    .line 7
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    iget-object p1, p0, Lcom/smartisanos/launcher/H;->this$0:Lcom/smartisanos/launcher/J;

    invoke-static {p1}, Lcom/smartisanos/launcher/J;->j(Lcom/smartisanos/launcher/J;)I

    move-result p1

    iget-object v0, p0, Lcom/smartisanos/launcher/H;->this$0:Lcom/smartisanos/launcher/J;

    invoke-static {v0}, Lcom/smartisanos/launcher/J;->b(Lcom/smartisanos/launcher/J;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/smartisanos/smengine/Ra;->H(II)Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/H;->this$0:Lcom/smartisanos/launcher/J;

    iget-object v0, v0, Lcom/smartisanos/launcher/J;->sg:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 9
    iget-object p1, p0, Lcom/smartisanos/launcher/H;->this$0:Lcom/smartisanos/launcher/J;

    iget-object p1, p1, Lcom/smartisanos/launcher/J;->sg:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/j;->zt()Lcom/smartisanos/smengine/a/j;

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/H;->this$0:Lcom/smartisanos/launcher/J;

    iget-object v0, p1, Lcom/smartisanos/launcher/J;->vg:Lcom/smartisanos/smengine/a/f;

    iget-object v1, p1, Lcom/smartisanos/launcher/J;->sg:Lcom/smartisanos/smengine/a/j;

    iget-object p1, p1, Lcom/smartisanos/launcher/J;->wg:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/smengine/a/f;->d(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/H;->this$0:Lcom/smartisanos/launcher/J;

    iget-object p1, p1, Lcom/smartisanos/launcher/J;->wg:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/j;->zt()Lcom/smartisanos/smengine/a/j;

    .line 12
    sget-boolean p1, Lcom/smartisanos/smengine/Ra;->dV:Z

    if-eqz p1, :cond_0

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/J;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "z = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/launcher/H;->this$0:Lcom/smartisanos/launcher/J;

    iget-object v1, v1, Lcom/smartisanos/launcher/J;->wg:Lcom/smartisanos/smengine/a/j;

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/H;->this$0:Lcom/smartisanos/launcher/J;

    iget-object v2, v2, Lcom/smartisanos/launcher/J;->wg:Lcom/smartisanos/smengine/a/j;

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/launcher/H;->this$0:Lcom/smartisanos/launcher/J;

    iget-object v1, v1, Lcom/smartisanos/launcher/J;->wg:Lcom/smartisanos/smengine/a/j;

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RotationVector"

    invoke-virtual {p1, v1, v0}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/launcher/H;->this$0:Lcom/smartisanos/launcher/J;

    iget-object p0, p0, Lcom/smartisanos/launcher/J;->wg:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/Ra;->k(Lcom/smartisanos/smengine/a/j;)V

    :cond_1
    return-void
.end method
