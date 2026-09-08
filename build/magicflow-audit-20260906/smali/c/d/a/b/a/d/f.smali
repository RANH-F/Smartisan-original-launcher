.class public Lc/d/a/b/a/d/f;
.super Lc/d/a/b/a/d/g;
.source "DownloadRecommendSizeOverflowException.java"


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, v0, p4

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "space is not enough required space is : %s but recommendSize space is :%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x400

    invoke-direct {p0, p2, p1}, Lc/d/a/b/a/d/g;-><init>(ILjava/lang/String;)V

    return-void
.end method
