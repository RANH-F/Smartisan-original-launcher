.class public Lc/d/a/b/a/d/e;
.super Lc/d/a/b/a/d/a;
.source "DownloadOutOfSpaceException.java"


# instance fields
.field private final c:J

.field private final d:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "space is not enough required space is : %s but available space is :%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ee

    invoke-direct {p0, v1, v0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    .line 2
    iput-wide p1, p0, Lc/d/a/b/a/d/e;->c:J

    .line 3
    iput-wide p3, p0, Lc/d/a/b/a/d/e;->d:J

    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/d/a/b/a/d/e;->c:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/d/a/b/a/d/e;->d:J

    return-wide v0
.end method
