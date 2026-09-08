.class public final Lcom/pgl/sys/ces/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static f:Lcom/pgl/sys/ces/b/a;


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:I

.field private c:I

.field private d:[F

.field private e:Ljava/text/DecimalFormat;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pgl/sys/ces/b/a;->a:Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/pgl/sys/ces/b/a;->c:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/pgl/sys/ces/b/a;->a:Landroid/hardware/SensorManager;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/pgl/sys/ces/b/a;
    .locals 2

    sget-object v0, Lcom/pgl/sys/ces/b/a;->f:Lcom/pgl/sys/ces/b/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/pgl/sys/ces/b/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pgl/sys/ces/b/a;->f:Lcom/pgl/sys/ces/b/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/pgl/sys/ces/b/a;

    invoke-direct {v1, p0}, Lcom/pgl/sys/ces/b/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/pgl/sys/ces/b/a;->f:Lcom/pgl/sys/ces/b/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/pgl/sys/ces/b/a;->f:Lcom/pgl/sys/ces/b/a;

    return-object p0
.end method

.method private declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pgl/sys/ces/b/a;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/pgl/sys/ces/b/a;->b:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pgl/sys/ces/b/a;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v2, p0, Lcom/pgl/sys/ces/b/a;->a:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, p0, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/pgl/sys/ces/b/a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pgl/sys/ces/b/a;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pgl/sys/ces/b/a;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pgl/sys/ces/b/a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pgl/sys/ces/b/a;->b:I

    iget v0, p0, Lcom/pgl/sys/ces/b/a;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pgl/sys/ces/b/a;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 8

    invoke-direct {p0}, Lcom/pgl/sys/ces/b/a;->b()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, v2

    :goto_0
    :try_start_1
    iget v4, p0, Lcom/pgl/sys/ces/b/a;->c:I

    if-nez v4, :cond_0

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v4, 0x64

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    iget-object v5, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    aget v5, v5, v2

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    iget-object v5, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    aget v1, v5, v1

    float-to-double v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    aget v0, v4, v0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    iget-object v5, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    aget v5, v5, v2

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    iget-object v5, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    aget v1, v5, v1

    float-to-double v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    aget v0, v4, v0

    :goto_1
    float-to-double v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/pgl/sys/ces/b/a;->c()V

    iput v2, p0, Lcom/pgl/sys/ces/b/a;->c:I

    return-object v0

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    iget-object v6, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    aget v6, v6, v2

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    iget-object v6, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    aget v1, v6, v1

    float-to-double v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pgl/sys/ces/b/a;->e:Ljava/text/DecimalFormat;

    iget-object v5, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    aget v0, v5, v0

    float-to-double v5, v0

    invoke-virtual {v1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lcom/pgl/sys/ces/b/a;->c()V

    iput v2, p0, Lcom/pgl/sys/ces/b/a;->c:I

    throw v3
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Lcom/pgl/sys/ces/b/a;->d:[F

    const/4 p1, 0x1

    iput p1, p0, Lcom/pgl/sys/ces/b/a;->c:I

    return-void
.end method
