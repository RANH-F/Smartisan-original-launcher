.class public Lcom/ss/android/downloadad/a/a/a;
.super Ljava/lang/Object;
.source "AdDownloadController.java"

# interfaces
.implements Lc/d/a/a/a/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadad/a/a/a$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/ss/android/downloadad/a/a/a$b;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$b;->a(Lcom/ss/android/downloadad/a/a/a$b;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/a/a;->a:I

    .line 5
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$b;->b(Lcom/ss/android/downloadad/a/a/a$b;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/a/a;->b:I

    .line 6
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$b;->c(Lcom/ss/android/downloadad/a/a/a$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->c:Z

    .line 7
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$b;->d(Lcom/ss/android/downloadad/a/a/a$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->d:Z

    .line 8
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$b;->e(Lcom/ss/android/downloadad/a/a/a$b;)Z

    .line 9
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$b;->f(Lcom/ss/android/downloadad/a/a/a$b;)I

    .line 10
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$b;->g(Lcom/ss/android/downloadad/a/a/a$b;)Ljava/lang/Object;

    .line 11
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$b;->h(Lcom/ss/android/downloadad/a/a/a$b;)Z

    .line 12
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/a$b;->i(Lcom/ss/android/downloadad/a/a/a$b;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadad/a/a/a$b;Lcom/ss/android/downloadad/a/a/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/android/downloadad/a/a/a;-><init>(Lcom/ss/android/downloadad/a/a/a$b;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/a/a/a;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadad/a/a/a;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/a;->d:Z

    return v0
.end method
