.class public Lcom/smartisanos/magicflow/k/a;
.super Ljava/lang/Object;
.source "PedometerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/k/a$b;,
        Lcom/smartisanos/magicflow/k/a$c;
    }
.end annotation


# static fields
.field private static final o:Lcom/smartisanos/magicflow/LOG;

.field private static p:Lcom/smartisanos/magicflow/k/a;


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:J

.field private e:Landroid/hardware/SensorManager;

.field private f:Landroid/hardware/Sensor;

.field private g:Lcom/smartisanos/magicflow/k/a$c;

.field private h:Lcom/smartisanos/magicflow/k/b;

.field private i:Ljava/util/Calendar;

.field private j:I

.field private k:I

.field private l:I

.field public m:Ljava/lang/Runnable;

.field private n:Lcom/smartisanos/magicflow/k/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/k/a;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/k/a;->o:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/smartisanos/magicflow/k/a;->a:J

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Lcom/smartisanos/magicflow/k/a;->b:I

    .line 4
    iput v2, p0, Lcom/smartisanos/magicflow/k/a;->c:I

    .line 5
    iput-wide v0, p0, Lcom/smartisanos/magicflow/k/a;->d:J

    .line 6
    new-instance v0, Lcom/smartisanos/magicflow/k/a$a;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/k/a$a;-><init>(Lcom/smartisanos/magicflow/k/a;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/k/a;->m:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/magicflow/k/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/k/a;->e()V

    return-void
.end method

.method private a(J)Z
    .locals 4

    .line 3
    iput-wide p1, p0, Lcom/smartisanos/magicflow/k/a;->a:J

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/k/a;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object v1, Lcom/smartisanos/magicflow/k/a;->o:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDataEffective mCurrentStepNum = 0 currentTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/smartisanos/magicflow/k/a;->b:I

    iput v1, p0, Lcom/smartisanos/magicflow/k/a;->c:I

    const-wide/32 v1, 0x5265c00

    sub-long/2addr p1, v1

    .line 7
    iput-wide p1, p0, Lcom/smartisanos/magicflow/k/a;->d:J

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/smartisanos/magicflow/k/a;->b:I

    .line 9
    invoke-direct {p0}, Lcom/smartisanos/magicflow/k/a;->e()V

    .line 10
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p1

    iget p2, p0, Lcom/smartisanos/magicflow/k/a;->c:I

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/c;->l(I)V

    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/smartisanos/magicflow/k/a;J)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/k/a;->a(J)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/smartisanos/magicflow/k/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/k/a;->b:I

    return p0
.end method

.method private b(J)Z
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/smartisanos/magicflow/k/a;->i:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 21
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/k/a;->i:Ljava/util/Calendar;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/k/a;->i:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 23
    iget-object p1, p0, Lcom/smartisanos/magicflow/k/a;->i:Ljava/util/Calendar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 24
    iget-object v0, p0, Lcom/smartisanos/magicflow/k/a;->i:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/smartisanos/magicflow/k/a;->i:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 26
    iget v2, p0, Lcom/smartisanos/magicflow/k/a;->j:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Lcom/smartisanos/magicflow/k/a;->k:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/smartisanos/magicflow/k/a;->l:I

    if-ne v1, v2, :cond_1

    return p2

    .line 27
    :cond_1
    sget-object p2, Lcom/smartisanos/magicflow/k/a;->o:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "year="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/smartisanos/magicflow/k/a;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mouth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/smartisanos/magicflow/k/a;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",day="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/smartisanos/magicflow/k/a;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 28
    sget-object p2, Lcom/smartisanos/magicflow/k/a;->o:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentYear="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",currentMouth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",currentDay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 29
    iput p1, p0, Lcom/smartisanos/magicflow/k/a;->j:I

    .line 30
    iput v0, p0, Lcom/smartisanos/magicflow/k/a;->k:I

    .line 31
    iput v1, p0, Lcom/smartisanos/magicflow/k/a;->l:I

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcom/smartisanos/magicflow/k/a;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/k/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartisanos/magicflow/k/a;->b:I

    return v0
.end method

.method static synthetic d(Lcom/smartisanos/magicflow/k/a;)Lcom/smartisanos/magicflow/k/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/k/a;->n:Lcom/smartisanos/magicflow/k/a$b;

    return-object p0
.end method

.method public static d()Lcom/smartisanos/magicflow/k/a;
    .locals 1

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/k/a;->p:Lcom/smartisanos/magicflow/k/a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/k/a;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/k/a;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/k/a;->p:Lcom/smartisanos/magicflow/k/a;

    .line 4
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/k/a;->p:Lcom/smartisanos/magicflow/k/a;

    return-object v0
.end method

.method private e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/k/a;->h:Lcom/smartisanos/magicflow/k/b;

    iget-wide v1, p0, Lcom/smartisanos/magicflow/k/a;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/magicflow/k/b;->a(J)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/k/a;->h:Lcom/smartisanos/magicflow/k/b;

    iget v1, p0, Lcom/smartisanos/magicflow/k/a;->b:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/k/b;->a(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/k/a;->h:Lcom/smartisanos/magicflow/k/b;

    iget v1, p0, Lcom/smartisanos/magicflow/k/a;->c:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/k/b;->b(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/k/a;->h:Lcom/smartisanos/magicflow/k/b;

    iget-wide v1, p0, Lcom/smartisanos/magicflow/k/a;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/magicflow/k/b;->b(J)V

    .line 5
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/smartisanos/magicflow/k/a;->o:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toSavePedometerInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/magicflow/k/a;->h:Lcom/smartisanos/magicflow/k/b;

    invoke-virtual {v2}, Lcom/smartisanos/magicflow/k/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/k/a;->h:Lcom/smartisanos/magicflow/k/b;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/k/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/v;->b(Ljava/lang/String;)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/k/a;->e:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/k/a;->g:Lcom/smartisanos/magicflow/k/a$c;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/magicflow/k/a;->a(J)Z

    .line 18
    iget v0, p0, Lcom/smartisanos/magicflow/k/a;->b:I

    return v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/k/a;->e:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const-string v0, "sensor"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/smartisanos/magicflow/k/a;->e:Landroid/hardware/SensorManager;

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/k/a;->e:Landroid/hardware/SensorManager;

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/k/a;->f:Landroid/hardware/Sensor;

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/k/a;->g:Lcom/smartisanos/magicflow/k/a$c;

    if-nez p1, :cond_1

    .line 15
    new-instance p1, Lcom/smartisanos/magicflow/k/a$c;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/smartisanos/magicflow/k/a$c;-><init>(Lcom/smartisanos/magicflow/k/a;I)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/k/a;->g:Lcom/smartisanos/magicflow/k/a$c;

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/k/a;->e:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/smartisanos/magicflow/k/a;->g:Lcom/smartisanos/magicflow/k/a$c;

    iget-object v1, p0, Lcom/smartisanos/magicflow/k/a;->f:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public a(Lcom/smartisanos/magicflow/k/a$b;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/smartisanos/magicflow/k/a;->n:Lcom/smartisanos/magicflow/k/a$b;

    return-void
.end method

.method public b()V
    .locals 8

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getPedometerInfo()Lcom/smartisanos/magicflow/k/b;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/k/a;->h:Lcom/smartisanos/magicflow/k/b;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/k/a;->h:Lcom/smartisanos/magicflow/k/b;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/k/b;->a()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/k/a;->b:I

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/k/a;->h:Lcom/smartisanos/magicflow/k/b;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/k/b;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/magicflow/k/a;->a:J

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/k/a;->h:Lcom/smartisanos/magicflow/k/b;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/k/b;->c()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/k/a;->c:I

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/k/a;->h:Lcom/smartisanos/magicflow/k/b;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/k/b;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/magicflow/k/a;->d:J

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/smartisanos/magicflow/k/a;->j:I

    const/4 v2, 0x2

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/smartisanos/magicflow/k/a;->k:I

    const/4 v3, 0x5

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/smartisanos/magicflow/k/a;->l:I

    .line 11
    sget-object v4, Lcom/smartisanos/magicflow/k/a;->o:Lcom/smartisanos/magicflow/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initData year="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/smartisanos/magicflow/k/a;->j:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",mouth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/smartisanos/magicflow/k/a;->k:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",day="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/smartisanos/magicflow/k/a;->l:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",PedometerInfo ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/smartisanos/magicflow/k/a;->h:Lcom/smartisanos/magicflow/k/b;

    .line 12
    invoke-virtual {v6}, Lcom/smartisanos/magicflow/k/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v4, v5}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 14
    iget-wide v4, p0, Lcom/smartisanos/magicflow/k/a;->a:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 15
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget v4, p0, Lcom/smartisanos/magicflow/k/a;->j:I

    if-ne v1, v4, :cond_0

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget v2, p0, Lcom/smartisanos/magicflow/k/a;->k:I

    if-ne v1, v2, :cond_0

    .line 18
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/smartisanos/magicflow/k/a;->l:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/smartisanos/magicflow/k/a;->b:I

    :cond_1
    return-void
.end method

.method public c()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/k/a;->f()V

    return-void
.end method
