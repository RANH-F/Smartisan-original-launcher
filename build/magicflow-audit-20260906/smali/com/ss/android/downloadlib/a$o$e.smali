.class Lcom/ss/android/downloadlib/a$o$e;
.super Lc/d/a/b/a/c/i;
.source "DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a$o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private b:Lcom/ss/android/downloadlib/e/i;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/e/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/d/a/b/a/c/i;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$o$e;->b:Lcom/ss/android/downloadlib/e/i;

    return-void
.end method

.method private j(Lc/d/a/b/a/f/c;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o$e;->b:Lcom/ss/android/downloadlib/e/i;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public a(Lc/d/a/b/a/f/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$o$e;->j(Lc/d/a/b/a/f/c;)V

    return-void
.end method

.method public a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$o$e;->j(Lc/d/a/b/a/f/c;)V

    return-void
.end method

.method public b(Lc/d/a/b/a/f/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$o$e;->j(Lc/d/a/b/a/f/c;)V

    return-void
.end method

.method public c(Lc/d/a/b/a/f/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$o$e;->j(Lc/d/a/b/a/f/c;)V

    return-void
.end method

.method public d(Lc/d/a/b/a/f/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$o$e;->j(Lc/d/a/b/a/f/c;)V

    return-void
.end method

.method public g(Lc/d/a/b/a/f/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$o$e;->j(Lc/d/a/b/a/f/c;)V

    return-void
.end method

.method public h(Lc/d/a/b/a/f/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$o$e;->j(Lc/d/a/b/a/f/c;)V

    return-void
.end method
