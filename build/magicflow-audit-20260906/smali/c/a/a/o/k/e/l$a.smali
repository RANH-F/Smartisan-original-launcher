.class public final enum Lc/a/a/o/k/e/l$a;
.super Ljava/lang/Enum;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/k/e/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/a/a/o/k/e/l$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lc/a/a/o/k/e/l$a;

.field public static final enum c:Lc/a/a/o/k/e/l$a;

.field public static final enum d:Lc/a/a/o/k/e/l$a;

.field public static final enum e:Lc/a/a/o/k/e/l$a;

.field public static final enum f:Lc/a/a/o/k/e/l$a;

.field private static final synthetic g:[Lc/a/a/o/k/e/l$a;


# instance fields
.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lc/a/a/o/k/e/l$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "GIF"

    invoke-direct {v0, v3, v2, v1}, Lc/a/a/o/k/e/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lc/a/a/o/k/e/l$a;->b:Lc/a/a/o/k/e/l$a;

    .line 2
    new-instance v0, Lc/a/a/o/k/e/l$a;

    const-string v3, "JPEG"

    invoke-direct {v0, v3, v1, v2}, Lc/a/a/o/k/e/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lc/a/a/o/k/e/l$a;->c:Lc/a/a/o/k/e/l$a;

    .line 3
    new-instance v0, Lc/a/a/o/k/e/l$a;

    const/4 v3, 0x2

    const-string v4, "PNG_A"

    invoke-direct {v0, v4, v3, v1}, Lc/a/a/o/k/e/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lc/a/a/o/k/e/l$a;->d:Lc/a/a/o/k/e/l$a;

    .line 4
    new-instance v0, Lc/a/a/o/k/e/l$a;

    const/4 v4, 0x3

    const-string v5, "PNG"

    invoke-direct {v0, v5, v4, v2}, Lc/a/a/o/k/e/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lc/a/a/o/k/e/l$a;->e:Lc/a/a/o/k/e/l$a;

    .line 5
    new-instance v0, Lc/a/a/o/k/e/l$a;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v6, v5, v2}, Lc/a/a/o/k/e/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lc/a/a/o/k/e/l$a;->f:Lc/a/a/o/k/e/l$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lc/a/a/o/k/e/l$a;

    .line 6
    sget-object v6, Lc/a/a/o/k/e/l$a;->b:Lc/a/a/o/k/e/l$a;

    aput-object v6, v0, v2

    sget-object v2, Lc/a/a/o/k/e/l$a;->c:Lc/a/a/o/k/e/l$a;

    aput-object v2, v0, v1

    sget-object v1, Lc/a/a/o/k/e/l$a;->d:Lc/a/a/o/k/e/l$a;

    aput-object v1, v0, v3

    sget-object v1, Lc/a/a/o/k/e/l$a;->e:Lc/a/a/o/k/e/l$a;

    aput-object v1, v0, v4

    sget-object v1, Lc/a/a/o/k/e/l$a;->f:Lc/a/a/o/k/e/l$a;

    aput-object v1, v0, v5

    sput-object v0, Lc/a/a/o/k/e/l$a;->g:[Lc/a/a/o/k/e/l$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lc/a/a/o/k/e/l$a;->a:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/a/a/o/k/e/l$a;
    .locals 1

    .line 1
    const-class v0, Lc/a/a/o/k/e/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/a/a/o/k/e/l$a;

    return-object p0
.end method

.method public static values()[Lc/a/a/o/k/e/l$a;
    .locals 1

    .line 1
    sget-object v0, Lc/a/a/o/k/e/l$a;->g:[Lc/a/a/o/k/e/l$a;

    invoke-virtual {v0}, [Lc/a/a/o/k/e/l$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/a/o/k/e/l$a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/a/a/o/k/e/l$a;->a:Z

    return v0
.end method
