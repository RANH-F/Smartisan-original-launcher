.class public final Ld/f0/i/c;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final d:Le/f;

.field public static final e:Le/f;

.field public static final f:Le/f;

.field public static final g:Le/f;

.field public static final h:Le/f;

.field public static final i:Le/f;


# instance fields
.field public final a:Le/f;

.field public final b:Le/f;

.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":"

    .line 1
    invoke-static {v0}, Le/f;->c(Ljava/lang/String;)Le/f;

    move-result-object v0

    sput-object v0, Ld/f0/i/c;->d:Le/f;

    const-string v0, ":status"

    .line 2
    invoke-static {v0}, Le/f;->c(Ljava/lang/String;)Le/f;

    move-result-object v0

    sput-object v0, Ld/f0/i/c;->e:Le/f;

    const-string v0, ":method"

    .line 3
    invoke-static {v0}, Le/f;->c(Ljava/lang/String;)Le/f;

    move-result-object v0

    sput-object v0, Ld/f0/i/c;->f:Le/f;

    const-string v0, ":path"

    .line 4
    invoke-static {v0}, Le/f;->c(Ljava/lang/String;)Le/f;

    move-result-object v0

    sput-object v0, Ld/f0/i/c;->g:Le/f;

    const-string v0, ":scheme"

    .line 5
    invoke-static {v0}, Le/f;->c(Ljava/lang/String;)Le/f;

    move-result-object v0

    sput-object v0, Ld/f0/i/c;->h:Le/f;

    const-string v0, ":authority"

    .line 6
    invoke-static {v0}, Le/f;->c(Ljava/lang/String;)Le/f;

    move-result-object v0

    sput-object v0, Ld/f0/i/c;->i:Le/f;

    return-void
.end method

.method public constructor <init>(Le/f;Le/f;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ld/f0/i/c;->a:Le/f;

    .line 5
    iput-object p2, p0, Ld/f0/i/c;->b:Le/f;

    .line 6
    invoke-virtual {p1}, Le/f;->e()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Le/f;->e()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Ld/f0/i/c;->c:I

    return-void
.end method

.method public constructor <init>(Le/f;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p2}, Le/f;->c(Ljava/lang/String;)Le/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ld/f0/i/c;-><init>(Le/f;Le/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Le/f;->c(Ljava/lang/String;)Le/f;

    move-result-object p1

    invoke-static {p2}, Le/f;->c(Ljava/lang/String;)Le/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ld/f0/i/c;-><init>(Le/f;Le/f;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ld/f0/i/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ld/f0/i/c;

    .line 3
    iget-object v0, p0, Ld/f0/i/c;->a:Le/f;

    iget-object v2, p1, Ld/f0/i/c;->a:Le/f;

    invoke-virtual {v0, v2}, Le/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/f0/i/c;->b:Le/f;

    iget-object p1, p1, Ld/f0/i/c;->b:Le/f;

    .line 4
    invoke-virtual {v0, p1}, Le/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Ld/f0/i/c;->a:Le/f;

    invoke-virtual {v0}, Le/f;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v0, p0, Ld/f0/i/c;->b:Le/f;

    invoke-virtual {v0}, Le/f;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Ld/f0/i/c;->a:Le/f;

    invoke-virtual {v1}, Le/f;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ld/f0/i/c;->b:Le/f;

    invoke-virtual {v1}, Le/f;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Ld/f0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
