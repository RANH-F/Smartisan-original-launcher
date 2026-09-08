.class public final Lc/a/a/k$c$a;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/k$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final c:Z

.field final synthetic d:Lc/a/a/k$c;


# direct methods
.method constructor <init>(Lc/a/a/k$c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/a/a/k$c$a;->d:Lc/a/a/k$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lc/a/a/k$c$a;->c:Z

    .line 3
    iput-object p2, p0, Lc/a/a/k$c$a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lc/a/a/k;->a(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/k$c$a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lc/a/a/g;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lc/a/a/g<",
            "TA;TT;TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/k$c$a;->d:Lc/a/a/k$c;

    iget-object v0, v0, Lc/a/a/k$c;->c:Lc/a/a/k;

    invoke-static {v0}, Lc/a/a/k;->e(Lc/a/a/k;)Lc/a/a/k$d;

    move-result-object v0

    new-instance v11, Lc/a/a/g;

    iget-object v1, p0, Lc/a/a/k$c$a;->d:Lc/a/a/k$c;

    iget-object v1, v1, Lc/a/a/k$c;->c:Lc/a/a/k;

    invoke-static {v1}, Lc/a/a/k;->a(Lc/a/a/k;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lc/a/a/k$c$a;->d:Lc/a/a/k$c;

    iget-object v1, v1, Lc/a/a/k$c;->c:Lc/a/a/k;

    invoke-static {v1}, Lc/a/a/k;->b(Lc/a/a/k;)Lc/a/a/h;

    move-result-object v3

    iget-object v4, p0, Lc/a/a/k$c$a;->b:Ljava/lang/Class;

    iget-object v1, p0, Lc/a/a/k$c$a;->d:Lc/a/a/k$c;

    invoke-static {v1}, Lc/a/a/k$c;->a(Lc/a/a/k$c;)Lc/a/a/o/j/l;

    move-result-object v5

    iget-object v1, p0, Lc/a/a/k$c$a;->d:Lc/a/a/k$c;

    invoke-static {v1}, Lc/a/a/k$c;->b(Lc/a/a/k$c;)Ljava/lang/Class;

    move-result-object v6

    iget-object v1, p0, Lc/a/a/k$c$a;->d:Lc/a/a/k$c;

    iget-object v1, v1, Lc/a/a/k$c;->c:Lc/a/a/k;

    invoke-static {v1}, Lc/a/a/k;->c(Lc/a/a/k;)Lcom/bumptech/glide/manager/l;

    move-result-object v8

    iget-object v1, p0, Lc/a/a/k$c$a;->d:Lc/a/a/k$c;

    iget-object v1, v1, Lc/a/a/k$c;->c:Lc/a/a/k;

    invoke-static {v1}, Lc/a/a/k;->d(Lc/a/a/k;)Lcom/bumptech/glide/manager/g;

    move-result-object v9

    iget-object v1, p0, Lc/a/a/k$c$a;->d:Lc/a/a/k$c;

    iget-object v1, v1, Lc/a/a/k$c;->c:Lc/a/a/k;

    invoke-static {v1}, Lc/a/a/k;->e(Lc/a/a/k;)Lc/a/a/k$d;

    move-result-object v10

    move-object v1, v11

    move-object v7, p1

    invoke-direct/range {v1 .. v10}, Lc/a/a/g;-><init>(Landroid/content/Context;Lc/a/a/h;Ljava/lang/Class;Lc/a/a/o/j/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/g;Lc/a/a/k$d;)V

    invoke-virtual {v0, v11}, Lc/a/a/k$d;->a(Lc/a/a/f;)Lc/a/a/f;

    check-cast v11, Lc/a/a/g;

    .line 2
    iget-boolean p1, p0, Lc/a/a/k$c$a;->c:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lc/a/a/k$c$a;->a:Ljava/lang/Object;

    invoke-virtual {v11, p1}, Lc/a/a/f;->a(Ljava/lang/Object;)Lc/a/a/f;

    :cond_0
    return-object v11
.end method
