.class final Lcom/bytedance/embed_device_register/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embed_device_register/g$d;,
        Lcom/bytedance/embed_device_register/g$c;,
        Lcom/bytedance/embed_device_register/g$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/bytedance/embedapplog/IOaidObserver;

.field private static final d:Lcom/bytedance/embed_device_register/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/bytedance/embed_device_register/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embed_device_register/g;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/bytedance/embed_device_register/g;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Lcom/bytedance/embed_device_register/g$a;

    invoke-direct {v0}, Lcom/bytedance/embed_device_register/g$a;-><init>()V

    sput-object v0, Lcom/bytedance/embed_device_register/g;->d:Lcom/bytedance/embed_device_register/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/embed_device_register/g;->b:Ljava/util/Map;

    return-object p0
.end method

.method static a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/bytedance/embed_device_register/e;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 4
    invoke-static {p0, p1}, Lcom/bytedance/embed_device_register/i;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/embedapplog/IOaidObserver$Oaid;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/bytedance/embed_device_register/g;->b(Lcom/bytedance/embedapplog/IOaidObserver$Oaid;)V

    return-void
.end method

.method static a(Lcom/bytedance/embedapplog/IOaidObserver;)V
    .locals 2

    .line 5
    sput-object p0, Lcom/bytedance/embed_device_register/g;->c:Lcom/bytedance/embedapplog/IOaidObserver;

    .line 6
    sget-object p0, Lcom/bytedance/embed_device_register/g;->b:Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 7
    new-instance v0, Lcom/bytedance/embedapplog/IOaidObserver$Oaid;

    const-string v1, "id"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/bytedance/embedapplog/IOaidObserver$Oaid;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/embed_device_register/g;->b(Lcom/bytedance/embedapplog/IOaidObserver$Oaid;)V

    :cond_0
    return-void
.end method

.method static b(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/bytedance/embed_device_register/g;->d(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/i$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/embed_device_register/i$c;->b()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/bytedance/embed_device_register/g;->c(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/e$c;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/embed_device_register/e$c;->a()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 5
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Oaid#getOaid result="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrackerDr"

    invoke-static {v0, p1}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sput-object p0, Lcom/bytedance/embed_device_register/g;->b:Ljava/util/Map;

    return-object p0
.end method

.method private static b(Lcom/bytedance/embedapplog/IOaidObserver$Oaid;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 7
    sget-object v0, Lcom/bytedance/embed_device_register/g;->c:Lcom/bytedance/embedapplog/IOaidObserver;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p0}, Lcom/bytedance/embedapplog/IOaidObserver;->onOaidLoaded(Lcom/bytedance/embedapplog/IOaidObserver$Oaid;)V

    :cond_0
    return-void
.end method

.method private static c(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/e$c;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bytedance/embed_device_register/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getHuaweiOaid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrackerDr"

    invoke-static {v1, v0}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 2
    invoke-static {p0}, Lcom/bytedance/embed_device_register/e;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/bytedance/embed_device_register/e;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/e;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/embed_device_register/e;->a()Lcom/bytedance/embed_device_register/e$c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/bytedance/embed_device_register/g;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "getHuaweiOaid: return cache="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/embed_device_register/e$c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 7
    new-instance v2, Lcom/bytedance/embed_device_register/h;

    invoke-direct {v2}, Lcom/bytedance/embed_device_register/h;-><init>()V

    .line 8
    new-instance v3, Lcom/bytedance/embed_device_register/g$b;

    sget-object v4, Lcom/bytedance/embed_device_register/g;->d:Lcom/bytedance/embed_device_register/f;

    invoke-direct {v3, v2, p1, v4}, Lcom/bytedance/embed_device_register/g$b;-><init>(Lcom/bytedance/embed_device_register/h;Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/embed_device_register/f;)V

    invoke-virtual {p0, v3}, Lcom/bytedance/embed_device_register/e;->a(Lcom/bytedance/embed_device_register/g$c;)V

    const-wide/16 v3, 0x64

    .line 9
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 11
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/bytedance/embed_device_register/g;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "getHuaweiOaid: return waited="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    if-eqz p1, :cond_2

    check-cast p1, Lcom/bytedance/embed_device_register/e$c;

    invoke-virtual {p1}, Lcom/bytedance/embed_device_register/e$c;->b()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p0, v2, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/bytedance/embed_device_register/e$c;

    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static d(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/i$c;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bytedance/embed_device_register/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getXmOaid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrackerDr"

    invoke-static {v1, v0}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 2
    invoke-static {}, Lcom/bytedance/embed_device_register/i$b;->a()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/bytedance/embed_device_register/i;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/i;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/embed_device_register/i;->a()Lcom/bytedance/embed_device_register/i$c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/bytedance/embed_device_register/g;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "getXmOaid: return cache="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/embed_device_register/i$c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 7
    new-instance v2, Lcom/bytedance/embed_device_register/h;

    invoke-direct {v2}, Lcom/bytedance/embed_device_register/h;-><init>()V

    .line 8
    new-instance v3, Lcom/bytedance/embed_device_register/g$d;

    sget-object v4, Lcom/bytedance/embed_device_register/g;->d:Lcom/bytedance/embed_device_register/f;

    invoke-direct {v3, v2, p1, v4}, Lcom/bytedance/embed_device_register/g$d;-><init>(Lcom/bytedance/embed_device_register/h;Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/embed_device_register/f;)V

    invoke-virtual {p0, v3}, Lcom/bytedance/embed_device_register/i;->a(Lcom/bytedance/embed_device_register/g$c;)V

    const-wide/16 v3, 0x64

    .line 9
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 11
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/bytedance/embed_device_register/g;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "getHuaweiOaid: return waited="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    if-eqz p1, :cond_2

    check-cast p1, Lcom/bytedance/embed_device_register/i$c;

    .line 12
    invoke-virtual {p1}, Lcom/bytedance/embed_device_register/i$c;->a()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-static {v1, p0}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p0, v2, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/bytedance/embed_device_register/i$c;

    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method
