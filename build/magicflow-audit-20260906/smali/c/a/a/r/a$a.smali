.class final enum Lc/a/a/r/a$a;
.super Ljava/lang/Enum;
.source "GenericRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/r/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/a/a/r/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/a/a/r/a$a;

.field public static final enum b:Lc/a/a/r/a$a;

.field public static final enum c:Lc/a/a/r/a$a;

.field public static final enum d:Lc/a/a/r/a$a;

.field public static final enum e:Lc/a/a/r/a$a;

.field public static final enum f:Lc/a/a/r/a$a;

.field public static final enum g:Lc/a/a/r/a$a;

.field public static final enum h:Lc/a/a/r/a$a;

.field private static final synthetic i:[Lc/a/a/r/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lc/a/a/r/a$a;

    const/4 v1, 0x0

    const-string v2, "PENDING"

    invoke-direct {v0, v2, v1}, Lc/a/a/r/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/r/a$a;->a:Lc/a/a/r/a$a;

    .line 2
    new-instance v0, Lc/a/a/r/a$a;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lc/a/a/r/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/r/a$a;->b:Lc/a/a/r/a$a;

    .line 3
    new-instance v0, Lc/a/a/r/a$a;

    const/4 v3, 0x2

    const-string v4, "WAITING_FOR_SIZE"

    invoke-direct {v0, v4, v3}, Lc/a/a/r/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/r/a$a;->c:Lc/a/a/r/a$a;

    .line 4
    new-instance v0, Lc/a/a/r/a$a;

    const/4 v4, 0x3

    const-string v5, "COMPLETE"

    invoke-direct {v0, v5, v4}, Lc/a/a/r/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/r/a$a;->d:Lc/a/a/r/a$a;

    .line 5
    new-instance v0, Lc/a/a/r/a$a;

    const/4 v5, 0x4

    const-string v6, "FAILED"

    invoke-direct {v0, v6, v5}, Lc/a/a/r/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/r/a$a;->e:Lc/a/a/r/a$a;

    .line 6
    new-instance v0, Lc/a/a/r/a$a;

    const/4 v6, 0x5

    const-string v7, "CANCELLED"

    invoke-direct {v0, v7, v6}, Lc/a/a/r/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/r/a$a;->f:Lc/a/a/r/a$a;

    .line 7
    new-instance v0, Lc/a/a/r/a$a;

    const/4 v7, 0x6

    const-string v8, "CLEARED"

    invoke-direct {v0, v8, v7}, Lc/a/a/r/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/r/a$a;->g:Lc/a/a/r/a$a;

    .line 8
    new-instance v0, Lc/a/a/r/a$a;

    const/4 v8, 0x7

    const-string v9, "PAUSED"

    invoke-direct {v0, v9, v8}, Lc/a/a/r/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/r/a$a;->h:Lc/a/a/r/a$a;

    const/16 v0, 0x8

    new-array v0, v0, [Lc/a/a/r/a$a;

    .line 9
    sget-object v9, Lc/a/a/r/a$a;->a:Lc/a/a/r/a$a;

    aput-object v9, v0, v1

    sget-object v1, Lc/a/a/r/a$a;->b:Lc/a/a/r/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lc/a/a/r/a$a;->c:Lc/a/a/r/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lc/a/a/r/a$a;->d:Lc/a/a/r/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lc/a/a/r/a$a;->e:Lc/a/a/r/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lc/a/a/r/a$a;->f:Lc/a/a/r/a$a;

    aput-object v1, v0, v6

    sget-object v1, Lc/a/a/r/a$a;->g:Lc/a/a/r/a$a;

    aput-object v1, v0, v7

    sget-object v1, Lc/a/a/r/a$a;->h:Lc/a/a/r/a$a;

    aput-object v1, v0, v8

    sput-object v0, Lc/a/a/r/a$a;->i:[Lc/a/a/r/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lc/a/a/r/a$a;
    .locals 1

    .line 1
    const-class v0, Lc/a/a/r/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/a/a/r/a$a;

    return-object p0
.end method

.method public static values()[Lc/a/a/r/a$a;
    .locals 1

    .line 1
    sget-object v0, Lc/a/a/r/a$a;->i:[Lc/a/a/r/a$a;

    invoke-virtual {v0}, [Lc/a/a/r/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/a/r/a$a;

    return-object v0
.end method
