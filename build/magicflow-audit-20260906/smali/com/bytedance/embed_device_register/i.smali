.class final Lcom/bytedance/embed_device_register/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embed_device_register/i$b;,
        Lcom/bytedance/embed_device_register/i$c;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static volatile d:Lcom/bytedance/embed_device_register/i;


# instance fields
.field private a:Lcom/bytedance/embed_device_register/i$c;

.field private b:Lcom/bytedance/embed_device_register/g$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/bytedance/embed_device_register/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embed_device_register/i;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/embed_device_register/i$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/bytedance/embed_device_register/h;

    invoke-direct {v0}, Lcom/bytedance/embed_device_register/h;-><init>()V

    .line 5
    new-instance v1, Lcom/bytedance/embed_device_register/i$a;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/bytedance/embed_device_register/i$a;-><init>(Lcom/bytedance/embed_device_register/i;Landroid/content/SharedPreferences;Lcom/bytedance/embed_device_register/h;Landroid/content/Context;)V

    .line 6
    invoke-static {v1}, Lcom/bytedance/embed_device_register/d;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/bytedance/embed_device_register/i;)Lcom/bytedance/embed_device_register/i$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/embed_device_register/i;->a:Lcom/bytedance/embed_device_register/i$c;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/embed_device_register/i;Lcom/bytedance/embed_device_register/i$c;)Lcom/bytedance/embed_device_register/i$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/embed_device_register/i;->a:Lcom/bytedance/embed_device_register/i$c;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bytedance/embed_device_register/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrackerDr"

    invoke-static {v1, v0}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1}, Lcom/bytedance/embed_device_register/i;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/i;

    return-void
.end method

.method static synthetic b(Lcom/bytedance/embed_device_register/i;)Lcom/bytedance/embed_device_register/g$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/embed_device_register/i;->b:Lcom/bytedance/embed_device_register/g$c;

    return-object p0
.end method

.method static b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/i;
    .locals 2

    .line 3
    sget-object v0, Lcom/bytedance/embed_device_register/i;->d:Lcom/bytedance/embed_device_register/i;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/bytedance/embed_device_register/i;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/bytedance/embed_device_register/i;->d:Lcom/bytedance/embed_device_register/i;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/bytedance/embed_device_register/i;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/embed_device_register/i;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sput-object v1, Lcom/bytedance/embed_device_register/i;->d:Lcom/bytedance/embed_device_register/i;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/embed_device_register/i;->d:Lcom/bytedance/embed_device_register/i;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/bytedance/embed_device_register/i;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a()Lcom/bytedance/embed_device_register/i$c;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bytedance/embed_device_register/i;->a:Lcom/bytedance/embed_device_register/i$c;

    return-object v0
.end method

.method a(Lcom/bytedance/embed_device_register/g$c;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/embed_device_register/i;->b:Lcom/bytedance/embed_device_register/g$c;

    return-void
.end method
