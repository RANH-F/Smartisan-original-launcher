.class public Lcom/ss/android/downloadlib/a$h/b$a;
.super Ljava/lang/Object;
.source "DownloadEventInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a$h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lcom/ss/android/downloadlib/a$h/b$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/android/downloadlib/a$h/b$a;->a:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/downloadlib/a$h/b$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$h/b$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/ss/android/downloadlib/a$h/b$a;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ss/android/downloadlib/a$h/b$a;->d:Z

    return-object p0
.end method

.method public a()Lcom/ss/android/downloadlib/a$h/b;
    .locals 1

    .line 4
    new-instance v0, Lcom/ss/android/downloadlib/a$h/b;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/a$h/b;-><init>(Lcom/ss/android/downloadlib/a$h/b$a;)V

    return-object v0
.end method

.method public b(J)Lcom/ss/android/downloadlib/a$h/b$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/android/downloadlib/a$h/b$a;->b:J

    return-object p0
.end method
