.class public final enum Lcom/bytedance/tea/crash/upload/b$b;
.super Ljava/lang/Enum;
.source "CrashUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/tea/crash/upload/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/tea/crash/upload/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/tea/crash/upload/b$b;

.field public static final enum b:Lcom/bytedance/tea/crash/upload/b$b;

.field public static final enum c:Lcom/bytedance/tea/crash/upload/b$b;

.field public static final enum d:Lcom/bytedance/tea/crash/upload/b$b;

.field public static final enum e:Lcom/bytedance/tea/crash/upload/b$b;

.field public static final enum f:Lcom/bytedance/tea/crash/upload/b$b;

.field private static final synthetic g:[Lcom/bytedance/tea/crash/upload/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/bytedance/tea/crash/upload/b$b;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/bytedance/tea/crash/upload/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/tea/crash/upload/b$b;->a:Lcom/bytedance/tea/crash/upload/b$b;

    .line 2
    new-instance v0, Lcom/bytedance/tea/crash/upload/b$b;

    const/4 v2, 0x1

    const-string v3, "MOBILE"

    invoke-direct {v0, v3, v2, v2}, Lcom/bytedance/tea/crash/upload/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/tea/crash/upload/b$b;->b:Lcom/bytedance/tea/crash/upload/b$b;

    .line 3
    new-instance v0, Lcom/bytedance/tea/crash/upload/b$b;

    const/4 v3, 0x2

    const-string v4, "MOBILE_2G"

    invoke-direct {v0, v4, v3, v3}, Lcom/bytedance/tea/crash/upload/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/tea/crash/upload/b$b;->c:Lcom/bytedance/tea/crash/upload/b$b;

    .line 4
    new-instance v0, Lcom/bytedance/tea/crash/upload/b$b;

    const/4 v4, 0x3

    const-string v5, "MOBILE_3G"

    invoke-direct {v0, v5, v4, v4}, Lcom/bytedance/tea/crash/upload/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/tea/crash/upload/b$b;->d:Lcom/bytedance/tea/crash/upload/b$b;

    .line 5
    new-instance v0, Lcom/bytedance/tea/crash/upload/b$b;

    const/4 v5, 0x4

    const-string v6, "WIFI"

    invoke-direct {v0, v6, v5, v5}, Lcom/bytedance/tea/crash/upload/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/tea/crash/upload/b$b;->e:Lcom/bytedance/tea/crash/upload/b$b;

    .line 6
    new-instance v0, Lcom/bytedance/tea/crash/upload/b$b;

    const/4 v6, 0x5

    const-string v7, "MOBILE_4G"

    invoke-direct {v0, v7, v6, v6}, Lcom/bytedance/tea/crash/upload/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/tea/crash/upload/b$b;->f:Lcom/bytedance/tea/crash/upload/b$b;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/bytedance/tea/crash/upload/b$b;

    .line 7
    sget-object v7, Lcom/bytedance/tea/crash/upload/b$b;->a:Lcom/bytedance/tea/crash/upload/b$b;

    aput-object v7, v0, v1

    sget-object v1, Lcom/bytedance/tea/crash/upload/b$b;->b:Lcom/bytedance/tea/crash/upload/b$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/tea/crash/upload/b$b;->c:Lcom/bytedance/tea/crash/upload/b$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/tea/crash/upload/b$b;->d:Lcom/bytedance/tea/crash/upload/b$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/tea/crash/upload/b$b;->e:Lcom/bytedance/tea/crash/upload/b$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bytedance/tea/crash/upload/b$b;->f:Lcom/bytedance/tea/crash/upload/b$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/bytedance/tea/crash/upload/b$b;->g:[Lcom/bytedance/tea/crash/upload/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/b$b;
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/tea/crash/upload/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/tea/crash/upload/b$b;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/tea/crash/upload/b$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/upload/b$b;->g:[Lcom/bytedance/tea/crash/upload/b$b;

    invoke-virtual {v0}, [Lcom/bytedance/tea/crash/upload/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/tea/crash/upload/b$b;

    return-object v0
.end method
