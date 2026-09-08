.class public final enum Lc/b/a/a/e/d$b;
.super Ljava/lang/Enum;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/a/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/b/a/a/e/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/b/a/a/e/d$b;

.field public static final enum b:Lc/b/a/a/e/d$b;

.field public static final enum c:Lc/b/a/a/e/d$b;

.field public static final enum d:Lc/b/a/a/e/d$b;

.field private static final synthetic e:[Lc/b/a/a/e/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lc/b/a/a/e/d$b;

    const/4 v1, 0x0

    const-string v2, "DEBUG"

    invoke-direct {v0, v2, v1}, Lc/b/a/a/e/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/a/e/d$b;->a:Lc/b/a/a/e/d$b;

    .line 2
    new-instance v0, Lc/b/a/a/e/d$b;

    const/4 v2, 0x1

    const-string v3, "INFO"

    invoke-direct {v0, v3, v2}, Lc/b/a/a/e/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/a/e/d$b;->b:Lc/b/a/a/e/d$b;

    .line 3
    new-instance v0, Lc/b/a/a/e/d$b;

    const/4 v3, 0x2

    const-string v4, "ERROR"

    invoke-direct {v0, v4, v3}, Lc/b/a/a/e/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/a/e/d$b;->c:Lc/b/a/a/e/d$b;

    .line 4
    new-instance v0, Lc/b/a/a/e/d$b;

    const/4 v4, 0x3

    const-string v5, "OFF"

    invoke-direct {v0, v5, v4}, Lc/b/a/a/e/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/a/e/d$b;->d:Lc/b/a/a/e/d$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lc/b/a/a/e/d$b;

    .line 5
    sget-object v5, Lc/b/a/a/e/d$b;->a:Lc/b/a/a/e/d$b;

    aput-object v5, v0, v1

    sget-object v1, Lc/b/a/a/e/d$b;->b:Lc/b/a/a/e/d$b;

    aput-object v1, v0, v2

    sget-object v1, Lc/b/a/a/e/d$b;->c:Lc/b/a/a/e/d$b;

    aput-object v1, v0, v3

    sget-object v1, Lc/b/a/a/e/d$b;->d:Lc/b/a/a/e/d$b;

    aput-object v1, v0, v4

    sput-object v0, Lc/b/a/a/e/d$b;->e:[Lc/b/a/a/e/d$b;

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

.method public static valueOf(Ljava/lang/String;)Lc/b/a/a/e/d$b;
    .locals 1

    .line 1
    const-class v0, Lc/b/a/a/e/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/b/a/a/e/d$b;

    return-object p0
.end method

.method public static values()[Lc/b/a/a/e/d$b;
    .locals 1

    .line 1
    sget-object v0, Lc/b/a/a/e/d$b;->e:[Lc/b/a/a/e/d$b;

    invoke-virtual {v0}, [Lc/b/a/a/e/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/b/a/a/e/d$b;

    return-object v0
.end method
