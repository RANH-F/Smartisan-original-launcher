.class public final enum Lc/d/a/b/a/a/k;
.super Ljava/lang/Enum;
.source "RunStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/d/a/b/a/a/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/d/a/b/a/a/k;

.field public static final enum b:Lc/d/a/b/a/a/k;

.field public static final enum c:Lc/d/a/b/a/a/k;

.field public static final enum d:Lc/d/a/b/a/a/k;

.field public static final enum e:Lc/d/a/b/a/a/k;

.field public static final enum f:Lc/d/a/b/a/a/k;

.field public static final enum g:Lc/d/a/b/a/a/k;

.field public static final enum h:Lc/d/a/b/a/a/k;

.field public static final enum i:Lc/d/a/b/a/a/k;

.field private static final synthetic j:[Lc/d/a/b/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lc/d/a/b/a/a/k;

    const/4 v1, 0x0

    const-string v2, "RUN_STATUS_NONE"

    invoke-direct {v0, v2, v1}, Lc/d/a/b/a/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/a/a/k;->a:Lc/d/a/b/a/a/k;

    .line 2
    new-instance v0, Lc/d/a/b/a/a/k;

    const/4 v2, 0x1

    const-string v3, "RUN_STATUS_PAUSE"

    invoke-direct {v0, v3, v2}, Lc/d/a/b/a/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/a/a/k;->b:Lc/d/a/b/a/a/k;

    .line 3
    new-instance v0, Lc/d/a/b/a/a/k;

    const/4 v3, 0x2

    const-string v4, "RUN_STATUS_CANCELED"

    invoke-direct {v0, v4, v3}, Lc/d/a/b/a/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/a/a/k;->c:Lc/d/a/b/a/a/k;

    .line 4
    new-instance v0, Lc/d/a/b/a/a/k;

    const/4 v4, 0x3

    const-string v5, "RUN_STATUS_ERROR"

    invoke-direct {v0, v5, v4}, Lc/d/a/b/a/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/a/a/k;->d:Lc/d/a/b/a/a/k;

    .line 5
    new-instance v0, Lc/d/a/b/a/a/k;

    const/4 v5, 0x4

    const-string v6, "RUN_STATUS_END_RIGHT_NOW"

    invoke-direct {v0, v6, v5}, Lc/d/a/b/a/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/a/a/k;->e:Lc/d/a/b/a/a/k;

    .line 6
    new-instance v0, Lc/d/a/b/a/a/k;

    const/4 v6, 0x5

    const-string v7, "RUN_STATUS_RETRY_DELAY"

    invoke-direct {v0, v7, v6}, Lc/d/a/b/a/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/a/a/k;->f:Lc/d/a/b/a/a/k;

    .line 7
    new-instance v0, Lc/d/a/b/a/a/k;

    const/4 v7, 0x6

    const-string v8, "RUN_STATUS_WAITING_ASYNC_HANDLER"

    invoke-direct {v0, v8, v7}, Lc/d/a/b/a/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/a/a/k;->g:Lc/d/a/b/a/a/k;

    .line 8
    new-instance v0, Lc/d/a/b/a/a/k;

    const/4 v8, 0x7

    const-string v9, "RUN_STATUS_END_FOR_FILE_EXIST"

    invoke-direct {v0, v9, v8}, Lc/d/a/b/a/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/a/a/k;->h:Lc/d/a/b/a/a/k;

    .line 9
    new-instance v0, Lc/d/a/b/a/a/k;

    const/16 v9, 0x8

    const-string v10, "RUN_STATUS_ALL_CHUNK_RETRY_WITH_RESET"

    invoke-direct {v0, v10, v9}, Lc/d/a/b/a/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/a/a/k;->i:Lc/d/a/b/a/a/k;

    const/16 v0, 0x9

    new-array v0, v0, [Lc/d/a/b/a/a/k;

    .line 10
    sget-object v10, Lc/d/a/b/a/a/k;->a:Lc/d/a/b/a/a/k;

    aput-object v10, v0, v1

    sget-object v1, Lc/d/a/b/a/a/k;->b:Lc/d/a/b/a/a/k;

    aput-object v1, v0, v2

    sget-object v1, Lc/d/a/b/a/a/k;->c:Lc/d/a/b/a/a/k;

    aput-object v1, v0, v3

    sget-object v1, Lc/d/a/b/a/a/k;->d:Lc/d/a/b/a/a/k;

    aput-object v1, v0, v4

    sget-object v1, Lc/d/a/b/a/a/k;->e:Lc/d/a/b/a/a/k;

    aput-object v1, v0, v5

    sget-object v1, Lc/d/a/b/a/a/k;->f:Lc/d/a/b/a/a/k;

    aput-object v1, v0, v6

    sget-object v1, Lc/d/a/b/a/a/k;->g:Lc/d/a/b/a/a/k;

    aput-object v1, v0, v7

    sget-object v1, Lc/d/a/b/a/a/k;->h:Lc/d/a/b/a/a/k;

    aput-object v1, v0, v8

    sget-object v1, Lc/d/a/b/a/a/k;->i:Lc/d/a/b/a/a/k;

    aput-object v1, v0, v9

    sput-object v0, Lc/d/a/b/a/a/k;->j:[Lc/d/a/b/a/a/k;

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

.method public static valueOf(Ljava/lang/String;)Lc/d/a/b/a/a/k;
    .locals 1

    .line 1
    const-class v0, Lc/d/a/b/a/a/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/d/a/b/a/a/k;

    return-object p0
.end method

.method public static values()[Lc/d/a/b/a/a/k;
    .locals 1

    .line 1
    sget-object v0, Lc/d/a/b/a/a/k;->j:[Lc/d/a/b/a/a/k;

    invoke-virtual {v0}, [Lc/d/a/b/a/a/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/d/a/b/a/a/k;

    return-object v0
.end method
