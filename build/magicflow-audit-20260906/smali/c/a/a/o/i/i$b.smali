.class final enum Lc/a/a/o/i/i$b;
.super Ljava/lang/Enum;
.source "EngineRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/i/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/a/a/o/i/i$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/a/a/o/i/i$b;

.field public static final enum b:Lc/a/a/o/i/i$b;

.field private static final synthetic c:[Lc/a/a/o/i/i$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lc/a/a/o/i/i$b;

    const/4 v1, 0x0

    const-string v2, "CACHE"

    invoke-direct {v0, v2, v1}, Lc/a/a/o/i/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/o/i/i$b;->a:Lc/a/a/o/i/i$b;

    .line 2
    new-instance v0, Lc/a/a/o/i/i$b;

    const/4 v2, 0x1

    const-string v3, "SOURCE"

    invoke-direct {v0, v3, v2}, Lc/a/a/o/i/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/o/i/i$b;->b:Lc/a/a/o/i/i$b;

    const/4 v0, 0x2

    new-array v0, v0, [Lc/a/a/o/i/i$b;

    .line 3
    sget-object v3, Lc/a/a/o/i/i$b;->a:Lc/a/a/o/i/i$b;

    aput-object v3, v0, v1

    sget-object v1, Lc/a/a/o/i/i$b;->b:Lc/a/a/o/i/i$b;

    aput-object v1, v0, v2

    sput-object v0, Lc/a/a/o/i/i$b;->c:[Lc/a/a/o/i/i$b;

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

.method public static valueOf(Ljava/lang/String;)Lc/a/a/o/i/i$b;
    .locals 1

    .line 1
    const-class v0, Lc/a/a/o/i/i$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/a/a/o/i/i$b;

    return-object p0
.end method

.method public static values()[Lc/a/a/o/i/i$b;
    .locals 1

    .line 1
    sget-object v0, Lc/a/a/o/i/i$b;->c:[Lc/a/a/o/i/i$b;

    invoke-virtual {v0}, [Lc/a/a/o/i/i$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/a/o/i/i$b;

    return-object v0
.end method
