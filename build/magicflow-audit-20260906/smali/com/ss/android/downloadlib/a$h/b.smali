.class public Lcom/ss/android/downloadlib/a$h/b;
.super Ljava/lang/Object;
.source "DownloadEventInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/a$h/b$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/a$h/b$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-wide v0, p1, Lcom/ss/android/downloadlib/a$h/b$a;->a:J

    iput-wide v0, p0, Lcom/ss/android/downloadlib/a$h/b;->a:J

    .line 3
    iget-wide v0, p1, Lcom/ss/android/downloadlib/a$h/b$a;->b:J

    iput-wide v0, p0, Lcom/ss/android/downloadlib/a$h/b;->b:J

    .line 4
    iget-object v0, p1, Lcom/ss/android/downloadlib/a$h/b$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$h/b;->c:Ljava/lang/String;

    .line 5
    iget-boolean p1, p1, Lcom/ss/android/downloadlib/a$h/b$a;->d:Z

    iput-boolean p1, p0, Lcom/ss/android/downloadlib/a$h/b;->d:Z

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadlib/a$h/b;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/downloadlib/a$h/b;->b:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$h/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/a$h/b;->d:Z

    return v0
.end method
