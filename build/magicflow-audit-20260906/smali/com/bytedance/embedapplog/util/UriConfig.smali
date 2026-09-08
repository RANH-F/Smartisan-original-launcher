.class public Lcom/bytedance/embedapplog/util/UriConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AMERICA:I = 0x2

.field public static final DEFAULT:I = 0x0

.field public static final SINGAPORE:I = 0x1

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "https://toblog.ctobsnssdk.com"

    const-string v1, "https://tobapplog.ctobsnssdk.com"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/util/UriConfig;->g:[Ljava/lang/String;

    const-string v0, "https://toblog.tobsnssdk.com"

    const-string v1, "https://tobapplog.tobsnssdk.com"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/util/UriConfig;->h:[Ljava/lang/String;

    const-string v0, "https://toblog.itobsnssdk.com"

    const-string v1, "https://tobapplog.itobsnssdk.com"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/util/UriConfig;->i:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/bytedance/embedapplog/util/UriConfig;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const-string v0, "https://toblog.ctobsnssdk.com/service/2/device_register_only/"

    .line 1
    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->a:Ljava/lang/String;

    const-string v0, "https://toblog.ctobsnssdk.com/service/2/app_alert_check/"

    .line 2
    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->b:Ljava/lang/String;

    const-string v0, "https://toblog.ctobsnssdk.com/service/2/log_settings/"

    .line 3
    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->c:Ljava/lang/String;

    const-string v0, "https://toblog.ctobsnssdk.com/service/2/abtest_config/"

    .line 4
    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->d:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/bytedance/embedapplog/util/UriConfig;->g:[Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->e:[Ljava/lang/String;

    const-string v0, "https://success.ctobsnssdk.com"

    .line 6
    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->f:Ljava/lang/String;

    return-void
.end method

.method private b()V
    .locals 1

    const-string v0, "https://toblog.tobsnssdk.com/service/2/device_register_only/"

    .line 1
    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->a:Ljava/lang/String;

    const-string v0, "https://toblog.tobsnssdk.com/service/2/app_alert_check/"

    .line 2
    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->b:Ljava/lang/String;

    const-string v0, "https://toblog.tobsnssdk.com/service/2/log_settings/"

    .line 3
    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->c:Ljava/lang/String;

    const-string v0, "https://toblog.tobsnssdk.com/service/2/abtest_config/"

    .line 4
    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->d:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/bytedance/embedapplog/util/UriConfig;->h:[Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->e:[Ljava/lang/String;

    const-string v0, "https://success.tobsnssdk.com"

    .line 6
    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->f:Ljava/lang/String;

    return-void
.end method

.method private c()V
    .locals 1

    const-string v0, "https://toblog.itobsnssdk.com/service/2/device_register_only/"

    .line 1
    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->a:Ljava/lang/String;

    const-string v0, "https://toblog.itobsnssdk.com/service/2/app_alert_check/"

    .line 2
    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->b:Ljava/lang/String;

    const-string v0, "https://toblog.itobsnssdk.com/service/2/log_settings/"

    .line 3
    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->c:Ljava/lang/String;

    const-string v0, "https://toblog.itobsnssdk.com/service/2/abtest_config/"

    .line 4
    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->d:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/bytedance/embedapplog/util/UriConfig;->i:[Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->e:[Ljava/lang/String;

    const-string v0, "https://success.itobsnssdk.com"

    .line 6
    iput-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->f:Ljava/lang/String;

    return-void
.end method

.method public static creatUriConfig(I)Lcom/bytedance/embedapplog/util/UriConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/embedapplog/util/UriConfig;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/util/UriConfig;-><init>()V

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 2
    invoke-direct {v0}, Lcom/bytedance/embedapplog/util/UriConfig;->a()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {v0}, Lcom/bytedance/embedapplog/util/UriConfig;->c()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {v0}, Lcom/bytedance/embedapplog/util/UriConfig;->b()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {v0}, Lcom/bytedance/embedapplog/util/UriConfig;->a()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getABConfigUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSendHeadersUris()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public getSettingUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccRateUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/util/UriConfig;->f:Ljava/lang/String;

    return-object v0
.end method
