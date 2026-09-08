.class public Lcom/smartisanos/magicflow/k/a$c;
.super Ljava/lang/Object;
.source "PedometerHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/smartisanos/magicflow/k/a;


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/k/a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/k/a$c;->b:Lcom/smartisanos/magicflow/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/smartisanos/magicflow/k/a$c;->a:I

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget p1, p0, Lcom/smartisanos/magicflow/k/a$c;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/k/a$c;->b:Lcom/smartisanos/magicflow/k/a;

    invoke-static {p1, v0, v1}, Lcom/smartisanos/magicflow/k/a;->a(Lcom/smartisanos/magicflow/k/a;J)Z

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/k/a$c;->b:Lcom/smartisanos/magicflow/k/a;

    invoke-static {p1}, Lcom/smartisanos/magicflow/k/a;->c(Lcom/smartisanos/magicflow/k/a;)I

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/k/a$c;->b:Lcom/smartisanos/magicflow/k/a;

    invoke-static {p1}, Lcom/smartisanos/magicflow/k/a;->d(Lcom/smartisanos/magicflow/k/a;)Lcom/smartisanos/magicflow/k/a$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/k/a$c;->b:Lcom/smartisanos/magicflow/k/a;

    invoke-static {p1}, Lcom/smartisanos/magicflow/k/a;->d(Lcom/smartisanos/magicflow/k/a;)Lcom/smartisanos/magicflow/k/a$b;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/k/a$c;->b:Lcom/smartisanos/magicflow/k/a;

    invoke-static {v0}, Lcom/smartisanos/magicflow/k/a;->b(Lcom/smartisanos/magicflow/k/a;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/smartisanos/magicflow/k/a$b;->onStepChanged(I)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/k/a$c;->b:Lcom/smartisanos/magicflow/k/a;

    iget-object p1, p1, Lcom/smartisanos/magicflow/k/a;->m:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/m;->a(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/k/a$c;->b:Lcom/smartisanos/magicflow/k/a;

    iget-object p1, p1, Lcom/smartisanos/magicflow/k/a;->m:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-static {p1, v0, v1}, Lcom/smartisanos/magicflow/o/m;->a(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
