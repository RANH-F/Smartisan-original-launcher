.class public Lc/d/a/a/a/d/e;
.super Ljava/lang/Object;
.source "DownloadShortInfo.java"


# instance fields
.field public a:J

.field public b:I

.field public c:J

.field public d:J

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lc/d/a/a/a/d/e;->a:J

    const/4 v2, -0x1

    .line 3
    iput v2, p0, Lc/d/a/a/a/d/e;->b:I

    .line 4
    iput-wide v0, p0, Lc/d/a/a/a/d/e;->c:J

    .line 5
    iput-wide v0, p0, Lc/d/a/a/a/d/e;->d:J

    return-void
.end method


# virtual methods
.method public a(Lc/d/a/b/a/f/c;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lc/d/a/a/a/d/e;->a:J

    .line 2
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    iput v0, p0, Lc/d/a/a/a/d/e;->b:I

    .line 3
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v0

    iput-wide v0, p0, Lc/d/a/a/a/d/e;->d:J

    .line 4
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v0

    iput-wide v0, p0, Lc/d/a/a/a/d/e;->c:J

    .line 5
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->x0()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/a/a/d/e;->e:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    instance-of v0, p1, Lc/d/a/a/a/d/e;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 2
    check-cast p1, Lc/d/a/a/a/d/e;

    .line 3
    iget-wide v0, p0, Lc/d/a/a/a/d/e;->a:J

    iget-wide v2, p1, Lc/d/a/a/a/d/e;->a:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 4
    :goto_0
    iget v3, p0, Lc/d/a/a/a/d/e;->b:I

    iget v4, p1, Lc/d/a/a/a/d/e;->b:I

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 5
    :goto_1
    iget-wide v4, p0, Lc/d/a/a/a/d/e;->c:J

    iget-wide v6, p1, Lc/d/a/a/a/d/e;->c:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 6
    :goto_2
    iget-object v5, p0, Lc/d/a/a/a/d/e;->e:Ljava/lang/String;

    .line 7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p1, Lc/d/a/a/a/d/e;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    iget-object v5, p0, Lc/d/a/a/a/d/e;->e:Ljava/lang/String;

    .line 8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p1, Lc/d/a/a/a/d/e;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lc/d/a/a/a/d/e;->e:Ljava/lang/String;

    iget-object p1, p1, Lc/d/a/a/a/d/e;->e:Ljava/lang/String;

    .line 9
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move p1, v1

    goto :goto_3

    :cond_5
    move p1, v2

    :goto_3
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    return v1

    .line 10
    :cond_7
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lc/d/a/a/a/d/e;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lc/d/a/a/a/d/e;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lc/d/a/a/a/d/e;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/d/a/a/a/d/e;->e:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
