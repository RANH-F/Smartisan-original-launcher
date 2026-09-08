.class public final enum Lc/d/a/b/a/d/h;
.super Ljava/lang/Enum;
.source "RetryCheckStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/d/a/b/a/d/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/d/a/b/a/d/h;

.field public static final enum b:Lc/d/a/b/a/d/h;

.field private static final synthetic c:[Lc/d/a/b/a/d/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lc/d/a/b/a/d/h;

    const/4 v1, 0x0

    const-string v2, "RETURN"

    invoke-direct {v0, v2, v1}, Lc/d/a/b/a/d/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/a/d/h;->a:Lc/d/a/b/a/d/h;

    .line 2
    new-instance v0, Lc/d/a/b/a/d/h;

    const/4 v2, 0x1

    const-string v3, "CONTINUE"

    invoke-direct {v0, v3, v2}, Lc/d/a/b/a/d/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/a/d/h;->b:Lc/d/a/b/a/d/h;

    const/4 v0, 0x2

    new-array v0, v0, [Lc/d/a/b/a/d/h;

    .line 3
    sget-object v3, Lc/d/a/b/a/d/h;->a:Lc/d/a/b/a/d/h;

    aput-object v3, v0, v1

    sget-object v1, Lc/d/a/b/a/d/h;->b:Lc/d/a/b/a/d/h;

    aput-object v1, v0, v2

    sput-object v0, Lc/d/a/b/a/d/h;->c:[Lc/d/a/b/a/d/h;

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

.method public static valueOf(Ljava/lang/String;)Lc/d/a/b/a/d/h;
    .locals 1

    .line 1
    const-class v0, Lc/d/a/b/a/d/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/d/a/b/a/d/h;

    return-object p0
.end method

.method public static values()[Lc/d/a/b/a/d/h;
    .locals 1

    .line 1
    sget-object v0, Lc/d/a/b/a/d/h;->c:[Lc/d/a/b/a/d/h;

    invoke-virtual {v0}, [Lc/d/a/b/a/d/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/d/a/b/a/d/h;

    return-object v0
.end method
