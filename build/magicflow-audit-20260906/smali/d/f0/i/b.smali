.class public final enum Ld/f0/i/b;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld/f0/i/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Ld/f0/i/b;

.field public static final enum c:Ld/f0/i/b;

.field public static final enum d:Ld/f0/i/b;

.field public static final enum e:Ld/f0/i/b;

.field public static final enum f:Ld/f0/i/b;

.field public static final enum g:Ld/f0/i/b;

.field private static final synthetic h:[Ld/f0/i/b;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ld/f0/i/b;

    const/4 v1, 0x0

    const-string v2, "NO_ERROR"

    invoke-direct {v0, v2, v1, v1}, Ld/f0/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ld/f0/i/b;->b:Ld/f0/i/b;

    .line 2
    new-instance v0, Ld/f0/i/b;

    const/4 v2, 0x1

    const-string v3, "PROTOCOL_ERROR"

    invoke-direct {v0, v3, v2, v2}, Ld/f0/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ld/f0/i/b;->c:Ld/f0/i/b;

    .line 3
    new-instance v0, Ld/f0/i/b;

    const/4 v3, 0x2

    const-string v4, "INTERNAL_ERROR"

    invoke-direct {v0, v4, v3, v3}, Ld/f0/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ld/f0/i/b;->d:Ld/f0/i/b;

    .line 4
    new-instance v0, Ld/f0/i/b;

    const/4 v4, 0x3

    const-string v5, "FLOW_CONTROL_ERROR"

    invoke-direct {v0, v5, v4, v4}, Ld/f0/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ld/f0/i/b;->e:Ld/f0/i/b;

    .line 5
    new-instance v0, Ld/f0/i/b;

    const/4 v5, 0x4

    const-string v6, "REFUSED_STREAM"

    const/4 v7, 0x7

    invoke-direct {v0, v6, v5, v7}, Ld/f0/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ld/f0/i/b;->f:Ld/f0/i/b;

    .line 6
    new-instance v0, Ld/f0/i/b;

    const/4 v6, 0x5

    const-string v7, "CANCEL"

    const/16 v8, 0x8

    invoke-direct {v0, v7, v6, v8}, Ld/f0/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ld/f0/i/b;->g:Ld/f0/i/b;

    const/4 v0, 0x6

    new-array v0, v0, [Ld/f0/i/b;

    .line 7
    sget-object v7, Ld/f0/i/b;->b:Ld/f0/i/b;

    aput-object v7, v0, v1

    sget-object v1, Ld/f0/i/b;->c:Ld/f0/i/b;

    aput-object v1, v0, v2

    sget-object v1, Ld/f0/i/b;->d:Ld/f0/i/b;

    aput-object v1, v0, v3

    sget-object v1, Ld/f0/i/b;->e:Ld/f0/i/b;

    aput-object v1, v0, v4

    sget-object v1, Ld/f0/i/b;->f:Ld/f0/i/b;

    aput-object v1, v0, v5

    sget-object v1, Ld/f0/i/b;->g:Ld/f0/i/b;

    aput-object v1, v0, v6

    sput-object v0, Ld/f0/i/b;->h:[Ld/f0/i/b;

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

    .line 2
    iput p3, p0, Ld/f0/i/b;->a:I

    return-void
.end method

.method public static a(I)Ld/f0/i/b;
    .locals 5

    .line 1
    invoke-static {}, Ld/f0/i/b;->values()[Ld/f0/i/b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Ld/f0/i/b;->a:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ld/f0/i/b;
    .locals 1

    .line 1
    const-class v0, Ld/f0/i/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld/f0/i/b;

    return-object p0
.end method

.method public static values()[Ld/f0/i/b;
    .locals 1

    .line 1
    sget-object v0, Ld/f0/i/b;->h:[Ld/f0/i/b;

    invoke-virtual {v0}, [Ld/f0/i/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/f0/i/b;

    return-object v0
.end method
