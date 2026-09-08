.class public enum Lc/a/a/o/i/o/a$d;
.super Ljava/lang/Enum;
.source "FifoPriorityThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/i/o/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/a/a/o/i/o/a$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/a/a/o/i/o/a$d;

.field public static final enum b:Lc/a/a/o/i/o/a$d;

.field public static final enum c:Lc/a/a/o/i/o/a$d;

.field private static final synthetic d:[Lc/a/a/o/i/o/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lc/a/a/o/i/o/a$d;

    const/4 v1, 0x0

    const-string v2, "IGNORE"

    invoke-direct {v0, v2, v1}, Lc/a/a/o/i/o/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/o/i/o/a$d;->a:Lc/a/a/o/i/o/a$d;

    .line 2
    new-instance v0, Lc/a/a/o/i/o/a$d$a;

    const/4 v2, 0x1

    const-string v3, "LOG"

    invoke-direct {v0, v3, v2}, Lc/a/a/o/i/o/a$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/o/i/o/a$d;->b:Lc/a/a/o/i/o/a$d;

    .line 3
    new-instance v0, Lc/a/a/o/i/o/a$d$b;

    const/4 v3, 0x2

    const-string v4, "THROW"

    invoke-direct {v0, v4, v3}, Lc/a/a/o/i/o/a$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/o/i/o/a$d;->c:Lc/a/a/o/i/o/a$d;

    const/4 v0, 0x3

    new-array v0, v0, [Lc/a/a/o/i/o/a$d;

    .line 4
    sget-object v4, Lc/a/a/o/i/o/a$d;->a:Lc/a/a/o/i/o/a$d;

    aput-object v4, v0, v1

    sget-object v1, Lc/a/a/o/i/o/a$d;->b:Lc/a/a/o/i/o/a$d;

    aput-object v1, v0, v2

    sget-object v1, Lc/a/a/o/i/o/a$d;->c:Lc/a/a/o/i/o/a$d;

    aput-object v1, v0, v3

    sput-object v0, Lc/a/a/o/i/o/a$d;->d:[Lc/a/a/o/i/o/a$d;

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

.method synthetic constructor <init>(Ljava/lang/String;ILc/a/a/o/i/o/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lc/a/a/o/i/o/a$d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/a/a/o/i/o/a$d;
    .locals 1

    .line 1
    const-class v0, Lc/a/a/o/i/o/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/a/a/o/i/o/a$d;

    return-object p0
.end method

.method public static values()[Lc/a/a/o/i/o/a$d;
    .locals 1

    .line 1
    sget-object v0, Lc/a/a/o/i/o/a$d;->d:[Lc/a/a/o/i/o/a$d;

    invoke-virtual {v0}, [Lc/a/a/o/i/o/a$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/a/o/i/o/a$d;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
