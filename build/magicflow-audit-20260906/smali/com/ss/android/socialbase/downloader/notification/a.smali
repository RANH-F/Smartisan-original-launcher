.class public abstract Lcom/ss/android/socialbase/downloader/notification/a;
.super Ljava/lang/Object;
.source "AbsNotificationItem.java"


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:I

.field private f:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->e:I

    .line 3
    iput p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->a:I

    .line 4
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/notification/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->a:I

    return v0
.end method

.method public a(ILc/d/a/b/a/d/a;Z)V
    .locals 1

    .line 5
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->e:I

    if-ne v0, p1, :cond_0

    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->e:I

    .line 7
    invoke-virtual {p0, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lc/d/a/b/a/d/a;Z)V

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->b:J

    return-void
.end method

.method public a(JJ)V
    .locals 0

    .line 8
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->b:J

    .line 9
    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/notification/a;->c:J

    const/4 p1, 0x4

    .line 10
    iput p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->e:I

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lc/d/a/b/a/d/a;Z)V

    return-void
.end method

.method public a(Landroid/app/Notification;)V
    .locals 3

    .line 12
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->a:I

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->a:I

    iget v2, p0, Lcom/ss/android/socialbase/downloader/notification/a;->e:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->a(IILandroid/app/Notification;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract a(Lc/d/a/b/a/d/a;Z)V
.end method

.method public a(Lc/d/a/b/a/f/c;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->a:I

    .line 2
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->s0()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->d:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->b:J

    return-wide v0
.end method

.method public b(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->c:J

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->c:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->e:I

    return v0
.end method

.method public f()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->f:J

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/a;->f:J

    return-wide v0
.end method
