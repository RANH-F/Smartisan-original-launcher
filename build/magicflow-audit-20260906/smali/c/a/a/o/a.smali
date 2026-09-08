.class public final enum Lc/a/a/o/a;
.super Ljava/lang/Enum;
.source "DecodeFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/a/a/o/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/a/a/o/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum b:Lc/a/a/o/a;

.field public static final enum c:Lc/a/a/o/a;

.field public static final d:Lc/a/a/o/a;

.field private static final synthetic e:[Lc/a/a/o/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lc/a/a/o/a;

    const/4 v1, 0x0

    const-string v2, "ALWAYS_ARGB_8888"

    invoke-direct {v0, v2, v1}, Lc/a/a/o/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/o/a;->a:Lc/a/a/o/a;

    .line 2
    new-instance v0, Lc/a/a/o/a;

    const/4 v2, 0x1

    const-string v3, "PREFER_ARGB_8888"

    invoke-direct {v0, v3, v2}, Lc/a/a/o/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/o/a;->b:Lc/a/a/o/a;

    .line 3
    new-instance v0, Lc/a/a/o/a;

    const/4 v3, 0x2

    const-string v4, "PREFER_RGB_565"

    invoke-direct {v0, v4, v3}, Lc/a/a/o/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/o/a;->c:Lc/a/a/o/a;

    const/4 v0, 0x3

    new-array v0, v0, [Lc/a/a/o/a;

    .line 4
    sget-object v4, Lc/a/a/o/a;->a:Lc/a/a/o/a;

    aput-object v4, v0, v1

    sget-object v1, Lc/a/a/o/a;->b:Lc/a/a/o/a;

    aput-object v1, v0, v2

    sget-object v1, Lc/a/a/o/a;->c:Lc/a/a/o/a;

    aput-object v1, v0, v3

    sput-object v0, Lc/a/a/o/a;->e:[Lc/a/a/o/a;

    .line 5
    sput-object v1, Lc/a/a/o/a;->d:Lc/a/a/o/a;

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

.method public static valueOf(Ljava/lang/String;)Lc/a/a/o/a;
    .locals 1

    .line 1
    const-class v0, Lc/a/a/o/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/a/a/o/a;

    return-object p0
.end method

.method public static values()[Lc/a/a/o/a;
    .locals 1

    .line 1
    sget-object v0, Lc/a/a/o/a;->e:[Lc/a/a/o/a;

    invoke-virtual {v0}, [Lc/a/a/o/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/a/o/a;

    return-object v0
.end method
