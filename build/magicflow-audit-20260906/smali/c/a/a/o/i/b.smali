.class public final enum Lc/a/a/o/i/b;
.super Ljava/lang/Enum;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/a/a/o/i/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lc/a/a/o/i/b;

.field public static final enum d:Lc/a/a/o/i/b;

.field public static final enum e:Lc/a/a/o/i/b;

.field public static final enum f:Lc/a/a/o/i/b;

.field private static final synthetic g:[Lc/a/a/o/i/b;


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lc/a/a/o/i/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "ALL"

    invoke-direct {v0, v3, v2, v1, v1}, Lc/a/a/o/i/b;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lc/a/a/o/i/b;->c:Lc/a/a/o/i/b;

    .line 2
    new-instance v0, Lc/a/a/o/i/b;

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2, v2}, Lc/a/a/o/i/b;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lc/a/a/o/i/b;->d:Lc/a/a/o/i/b;

    .line 3
    new-instance v0, Lc/a/a/o/i/b;

    const/4 v3, 0x2

    const-string v4, "SOURCE"

    invoke-direct {v0, v4, v3, v1, v2}, Lc/a/a/o/i/b;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lc/a/a/o/i/b;->e:Lc/a/a/o/i/b;

    .line 4
    new-instance v0, Lc/a/a/o/i/b;

    const/4 v4, 0x3

    const-string v5, "RESULT"

    invoke-direct {v0, v5, v4, v2, v1}, Lc/a/a/o/i/b;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lc/a/a/o/i/b;->f:Lc/a/a/o/i/b;

    const/4 v0, 0x4

    new-array v0, v0, [Lc/a/a/o/i/b;

    .line 5
    sget-object v5, Lc/a/a/o/i/b;->c:Lc/a/a/o/i/b;

    aput-object v5, v0, v2

    sget-object v2, Lc/a/a/o/i/b;->d:Lc/a/a/o/i/b;

    aput-object v2, v0, v1

    sget-object v1, Lc/a/a/o/i/b;->e:Lc/a/a/o/i/b;

    aput-object v1, v0, v3

    sget-object v1, Lc/a/a/o/i/b;->f:Lc/a/a/o/i/b;

    aput-object v1, v0, v4

    sput-object v0, Lc/a/a/o/i/b;->g:[Lc/a/a/o/i/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lc/a/a/o/i/b;->a:Z

    .line 3
    iput-boolean p4, p0, Lc/a/a/o/i/b;->b:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/a/a/o/i/b;
    .locals 1

    .line 1
    const-class v0, Lc/a/a/o/i/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/a/a/o/i/b;

    return-object p0
.end method

.method public static values()[Lc/a/a/o/i/b;
    .locals 1

    .line 1
    sget-object v0, Lc/a/a/o/i/b;->g:[Lc/a/a/o/i/b;

    invoke-virtual {v0}, [Lc/a/a/o/i/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/a/o/i/b;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/a/a/o/i/b;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/a/a/o/i/b;->a:Z

    return v0
.end method
