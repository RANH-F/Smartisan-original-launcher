.class public abstract Lc/d/a/b/a/c/k;
.super Lc/d/a/b/a/c/i;
.source "AbsNotificationListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/d/a/b/a/c/i;-><init>()V

    return-void
.end method

.method private a(ILc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;Z)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p2}, Lc/d/a/b/a/f/c;->x()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {p2}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->d(I)Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lc/d/a/b/a/c/k;->a()Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v0

    .line 9
    :cond_2
    invoke-virtual {p2}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/notification/a;->b(J)V

    const/4 v1, -0x3

    if-ne p1, v1, :cond_3

    .line 10
    invoke-virtual {p2}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/notification/a;->a(J)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p2}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/notification/a;->a(J)V

    .line 12
    :goto_0
    invoke-virtual {v0, p1, p3, p4}, Lcom/ss/android/socialbase/downloader/notification/a;->a(ILc/d/a/b/a/d/a;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private j(Lc/d/a/b/a/f/c;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->x()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->d(I)Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lc/d/a/b/a/c/k;->a()Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->a(Lcom/ss/android/socialbase/downloader/notification/a;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lc/d/a/b/a/f/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private k(Lc/d/a/b/a/f/c;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->d(I)Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lc/d/a/b/a/c/k;->a()Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v1

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/notification/a;->a(JJ)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/ss/android/socialbase/downloader/notification/a;
.end method

.method public a(Lc/d/a/b/a/f/c;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lc/d/a/b/a/c/i;->a(Lc/d/a/b/a/f/c;)V

    .line 2
    invoke-direct {p0, p1}, Lc/d/a/b/a/c/k;->j(Lc/d/a/b/a/f/c;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, p1, v1, v0}, Lc/d/a/b/a/c/k;->a(ILc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;Z)V

    return-void
.end method

.method public a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V
    .locals 2

    .line 4
    invoke-super {p0, p1, p2}, Lc/d/a/b/a/c/i;->a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, p1, p2, v1}, Lc/d/a/b/a/c/k;->a(ILc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;Z)V

    return-void
.end method

.method public b(Lc/d/a/b/a/f/c;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lc/d/a/b/a/c/i;->b(Lc/d/a/b/a/f/c;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v1, v2}, Lc/d/a/b/a/c/k;->a(ILc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;Z)V

    return-void
.end method

.method public c(Lc/d/a/b/a/f/c;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lc/d/a/b/a/c/i;->c(Lc/d/a/b/a/f/c;)V

    .line 2
    invoke-direct {p0, p1}, Lc/d/a/b/a/c/k;->k(Lc/d/a/b/a/f/c;)V

    return-void
.end method

.method public g(Lc/d/a/b/a/f/c;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lc/d/a/b/a/c/i;->g(Lc/d/a/b/a/f/c;)V

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v1, v2}, Lc/d/a/b/a/c/k;->a(ILc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;Z)V

    return-void
.end method

.method public h(Lc/d/a/b/a/f/c;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lc/d/a/b/a/c/i;->h(Lc/d/a/b/a/f/c;)V

    const/4 v0, -0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v1, v2}, Lc/d/a/b/a/c/k;->a(ILc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;Z)V

    return-void
.end method
