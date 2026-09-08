.class public final enum Lcom/bytedance/tea/crash/f;
.super Ljava/lang/Enum;
.source "CrashType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/tea/crash/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/bytedance/tea/crash/f;

.field public static final enum c:Lcom/bytedance/tea/crash/f;

.field public static final enum d:Lcom/bytedance/tea/crash/f;

.field public static final enum e:Lcom/bytedance/tea/crash/f;

.field public static final enum f:Lcom/bytedance/tea/crash/f;

.field public static final enum g:Lcom/bytedance/tea/crash/f;

.field public static final enum h:Lcom/bytedance/tea/crash/f;

.field public static final enum i:Lcom/bytedance/tea/crash/f;

.field public static final enum j:Lcom/bytedance/tea/crash/f;

.field private static final synthetic k:[Lcom/bytedance/tea/crash/f;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/bytedance/tea/crash/f;

    const/4 v1, 0x0

    const-string v2, "LAUNCH"

    const-string v3, "launch"

    invoke-direct {v0, v2, v1, v3}, Lcom/bytedance/tea/crash/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/f;->b:Lcom/bytedance/tea/crash/f;

    .line 2
    new-instance v0, Lcom/bytedance/tea/crash/f;

    const/4 v2, 0x1

    const-string v3, "JAVA"

    const-string v4, "java"

    invoke-direct {v0, v3, v2, v4}, Lcom/bytedance/tea/crash/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/f;->c:Lcom/bytedance/tea/crash/f;

    .line 3
    new-instance v0, Lcom/bytedance/tea/crash/f;

    const/4 v3, 0x2

    const-string v4, "NATIVE"

    const-string v5, "native"

    invoke-direct {v0, v4, v3, v5}, Lcom/bytedance/tea/crash/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/f;->d:Lcom/bytedance/tea/crash/f;

    .line 4
    new-instance v0, Lcom/bytedance/tea/crash/f;

    const/4 v4, 0x3

    const-string v5, "ANR"

    const-string v6, "anr"

    invoke-direct {v0, v5, v4, v6}, Lcom/bytedance/tea/crash/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/f;->e:Lcom/bytedance/tea/crash/f;

    .line 5
    new-instance v0, Lcom/bytedance/tea/crash/f;

    const/4 v5, 0x4

    const-string v6, "BLOCK"

    const-string v7, "block"

    invoke-direct {v0, v6, v5, v7}, Lcom/bytedance/tea/crash/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/f;->f:Lcom/bytedance/tea/crash/f;

    .line 6
    new-instance v0, Lcom/bytedance/tea/crash/f;

    const/4 v6, 0x5

    const-string v7, "ENSURE"

    const-string v8, "ensure"

    invoke-direct {v0, v7, v6, v8}, Lcom/bytedance/tea/crash/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/f;->g:Lcom/bytedance/tea/crash/f;

    .line 7
    new-instance v0, Lcom/bytedance/tea/crash/f;

    const/4 v7, 0x6

    const-string v8, "DART"

    const-string v9, "dart"

    invoke-direct {v0, v8, v7, v9}, Lcom/bytedance/tea/crash/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/f;->h:Lcom/bytedance/tea/crash/f;

    .line 8
    new-instance v0, Lcom/bytedance/tea/crash/f;

    const/4 v8, 0x7

    const-string v9, "CUSTOM_JAVA"

    const-string v10, "custom_java"

    invoke-direct {v0, v9, v8, v10}, Lcom/bytedance/tea/crash/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/f;->i:Lcom/bytedance/tea/crash/f;

    .line 9
    new-instance v0, Lcom/bytedance/tea/crash/f;

    const/16 v9, 0x8

    const-string v10, "ALL"

    const-string v11, "all"

    invoke-direct {v0, v10, v9, v11}, Lcom/bytedance/tea/crash/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/f;->j:Lcom/bytedance/tea/crash/f;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/bytedance/tea/crash/f;

    .line 10
    sget-object v10, Lcom/bytedance/tea/crash/f;->b:Lcom/bytedance/tea/crash/f;

    aput-object v10, v0, v1

    sget-object v1, Lcom/bytedance/tea/crash/f;->c:Lcom/bytedance/tea/crash/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/tea/crash/f;->d:Lcom/bytedance/tea/crash/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/tea/crash/f;->e:Lcom/bytedance/tea/crash/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/tea/crash/f;->f:Lcom/bytedance/tea/crash/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bytedance/tea/crash/f;->g:Lcom/bytedance/tea/crash/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bytedance/tea/crash/f;->h:Lcom/bytedance/tea/crash/f;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bytedance/tea/crash/f;->i:Lcom/bytedance/tea/crash/f;

    aput-object v1, v0, v8

    sget-object v1, Lcom/bytedance/tea/crash/f;->j:Lcom/bytedance/tea/crash/f;

    aput-object v1, v0, v9

    sput-object v0, Lcom/bytedance/tea/crash/f;->k:[Lcom/bytedance/tea/crash/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/bytedance/tea/crash/f;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/tea/crash/f;
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/tea/crash/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/tea/crash/f;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/tea/crash/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/f;->k:[Lcom/bytedance/tea/crash/f;

    invoke-virtual {v0}, [Lcom/bytedance/tea/crash/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/tea/crash/f;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/tea/crash/f;->a:Ljava/lang/String;

    return-object v0
.end method
