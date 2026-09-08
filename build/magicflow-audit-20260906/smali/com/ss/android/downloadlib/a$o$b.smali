.class Lcom/ss/android/downloadlib/a$o$b;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/ss/android/downloadlib/e/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a$o;->b(Lc/d/a/a/a/a/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/a/a/a/l;

.field final synthetic b:Lcom/ss/android/downloadlib/a$o;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a$o;Lc/d/a/a/a/a/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$o$b;->b:Lcom/ss/android/downloadlib/a$o;

    iput-object p2, p0, Lcom/ss/android/downloadlib/a$o$b;->a:Lc/d/a/a/a/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o$b;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$o;->a(Lcom/ss/android/downloadlib/a$o;)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o$b;->a:Lc/d/a/a/a/a/l;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lc/d/a/a/a/a/l;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o$b;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$o;->a(Lcom/ss/android/downloadlib/a$o;)V

    .line 5
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o$b;->a:Lc/d/a/a/a/a/l;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lc/d/a/a/a/a/l;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
