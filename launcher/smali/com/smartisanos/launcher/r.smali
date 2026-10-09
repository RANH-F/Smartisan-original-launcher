.class Lcom/smartisanos/launcher/r;
.super Ljava/lang/Object;
.source "ActivityProxy.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile latestLux:F
.field private volatile queued:Z
.field private volatile deliveryEpoch:J
.field private appliedEpoch:J
.field final synthetic this$0:Lcom/smartisanos/launcher/J;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/J;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/r;->this$0:Lcom/smartisanos/launcher/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J
    invoke-static {p0, v0, v1}, Lcom/smartisanos/launcher/theme/IconIlluminationCompat;->acceptsSensorEvent(Landroid/hardware/SensorEventListener;J)Z
    move-result v0
    if-eqz v0, :done
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F
    const/4 v1, 0x0
    aget v0, v0, v1
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z
    move-result v2
    if-nez v2, :done
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z
    move-result v2
    if-nez v2, :done
    const/4 v2, 0x0
    cmpg-float v2, v0, v2
    if-ltz v2, :done
    iput v0, p0, Lcom/smartisanos/launcher/r;->latestLux:F
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/IconIlluminationCompat;->sensorEpoch(Landroid/hardware/SensorEventListener;)J
    move-result-wide v2
    iput-wide v2, p0, Lcom/smartisanos/launcher/r;->deliveryEpoch:J
    iget-boolean v0, p0, Lcom/smartisanos/launcher/r;->queued:Z
    if-nez v0, :done
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/r;->queued:Z
    invoke-static {}, Lcom/smartisanos/smengine/n;->obtain()Lcom/smartisanos/smengine/n;
    move-result-object v0
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->j(Ljava/lang/Runnable;)V
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->q(F)V
    :done
    return-void
.end method

.method public run()V
    .locals 5
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/smartisanos/launcher/r;->queued:Z
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/IconIlluminationCompat;->sensorActive(Landroid/hardware/SensorEventListener;)Z
    move-result v0
    if-nez v0, :active
    return-void
    :active
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/IconIlluminationCompat;->sensorEpoch(Landroid/hardware/SensorEventListener;)J
    move-result-wide v0
    iget-wide v2, p0, Lcom/smartisanos/launcher/r;->deliveryEpoch:J
    cmp-long v4, v0, v2
    if-eqz v4, :current_delivery
    return-void
    :current_delivery
    iget v2, p0, Lcom/smartisanos/launcher/r;->latestLux:F
    .line 2
    sget v0, Lcom/smartisanos/smengine/Ra;->eV:F

    cmpl-float v1, v2, v0

    if-lez v1, :cond_0

    move v2, v0

    .line 3
    :cond_0
    sget v0, Lcom/smartisanos/smengine/Ra;->fV:F

    cmpg-float v1, v2, v0

    if-gez v1, :cond_1

    move v2, v0

    .line 4
    :cond_1
    iget-wide v0, p0, Lcom/smartisanos/launcher/r;->deliveryEpoch:J
    iget-wide v3, p0, Lcom/smartisanos/launcher/r;->appliedEpoch:J
    cmp-long v0, v0, v3
    if-eqz v0, :steady_light_sample
    iget-wide v3, p0, Lcom/smartisanos/launcher/r;->deliveryEpoch:J
    iput-wide v3, p0, Lcom/smartisanos/launcher/r;->appliedEpoch:J
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;
    move-result-object v0
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/Ra;->restoreShadowLux(F)Z
    move-result v1
    if-eqz v1, :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/r;->this$0:Lcom/smartisanos/launcher/J;
    invoke-static {v0, v2}, Lcom/smartisanos/launcher/J;->a(Lcom/smartisanos/launcher/J;F)F
    return-void
    :steady_light_sample
    iget-object v0, p0, Lcom/smartisanos/launcher/r;->this$0:Lcom/smartisanos/launcher/J;

    invoke-static {v0}, Lcom/smartisanos/launcher/J;->c(Lcom/smartisanos/launcher/J;)F

    move-result v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/r;->this$0:Lcom/smartisanos/launcher/J;

    invoke-static {v1}, Lcom/smartisanos/launcher/J;->c(Lcom/smartisanos/launcher/J;)F

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/Ra;->w(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/r;->this$0:Lcom/smartisanos/launcher/J;

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/J;->a(Lcom/smartisanos/launcher/J;F)F

    :cond_2
    return-void
.end method
