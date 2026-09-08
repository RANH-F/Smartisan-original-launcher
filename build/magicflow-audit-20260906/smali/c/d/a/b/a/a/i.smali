.class public final enum Lc/d/a/b/a/a/i;
.super Ljava/lang/Enum;
.source "Md5CheckStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/d/a/b/a/a/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/d/a/b/a/a/i;

.field public static final enum b:Lc/d/a/b/a/a/i;

.field public static final enum c:Lc/d/a/b/a/a/i;

.field public static final enum d:Lc/d/a/b/a/a/i;

.field private static final synthetic e:[Lc/d/a/b/a/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lc/d/a/b/a/a/i;

    const/4 v1, 0x0

    const-string v2, "VALID"

    invoke-direct {v0, v2, v1}, Lc/d/a/b/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/a/a/i;->a:Lc/d/a/b/a/a/i;

    .line 2
    new-instance v0, Lc/d/a/b/a/a/i;

    const/4 v2, 0x1

    const-string v3, "INVALID_FILE_NO_EXIST"

    invoke-direct {v0, v3, v2}, Lc/d/a/b/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/a/a/i;->b:Lc/d/a/b/a/a/i;

    .line 3
    new-instance v0, Lc/d/a/b/a/a/i;

    const/4 v3, 0x2

    const-string v4, "INVALID_FILE_MD5_EMPTY"

    invoke-direct {v0, v4, v3}, Lc/d/a/b/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/a/a/i;->c:Lc/d/a/b/a/a/i;

    .line 4
    new-instance v0, Lc/d/a/b/a/a/i;

    const/4 v4, 0x3

    const-string v5, "INVALID_MD5_NOT_EQUALS"

    invoke-direct {v0, v5, v4}, Lc/d/a/b/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/a/a/i;->d:Lc/d/a/b/a/a/i;

    const/4 v0, 0x4

    new-array v0, v0, [Lc/d/a/b/a/a/i;

    .line 5
    sget-object v5, Lc/d/a/b/a/a/i;->a:Lc/d/a/b/a/a/i;

    aput-object v5, v0, v1

    sget-object v1, Lc/d/a/b/a/a/i;->b:Lc/d/a/b/a/a/i;

    aput-object v1, v0, v2

    sget-object v1, Lc/d/a/b/a/a/i;->c:Lc/d/a/b/a/a/i;

    aput-object v1, v0, v3

    sget-object v1, Lc/d/a/b/a/a/i;->d:Lc/d/a/b/a/a/i;

    aput-object v1, v0, v4

    sput-object v0, Lc/d/a/b/a/a/i;->e:[Lc/d/a/b/a/a/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/d/a/b/a/a/i;
    .locals 1

    .line 1
    const-class v0, Lc/d/a/b/a/a/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/d/a/b/a/a/i;

    return-object p0
.end method

.method public static values()[Lc/d/a/b/a/a/i;
    .locals 1

    .line 1
    sget-object v0, Lc/d/a/b/a/a/i;->e:[Lc/d/a/b/a/a/i;

    invoke-virtual {v0}, [Lc/d/a/b/a/a/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/d/a/b/a/a/i;

    return-object v0
.end method
