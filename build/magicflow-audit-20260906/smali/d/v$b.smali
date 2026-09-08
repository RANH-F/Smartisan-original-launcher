.class public final Ld/v$b;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field A:I

.field a:Ld/n;

.field b:Ljava/net/Proxy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/w;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/k;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/t;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/t;",
            ">;"
        }
    .end annotation
.end field

.field g:Ld/p$c;

.field h:Ljava/net/ProxySelector;

.field i:Ld/m;

.field j:Ld/c;

.field k:Ld/f0/e/d;

.field l:Ljavax/net/SocketFactory;

.field m:Ljavax/net/ssl/SSLSocketFactory;

.field n:Ld/f0/k/c;

.field o:Ljavax/net/ssl/HostnameVerifier;

.field p:Ld/g;

.field q:Ld/b;

.field r:Ld/b;

.field s:Ld/j;

.field t:Ld/o;

.field u:Z

.field v:Z

.field w:Z

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/v$b;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/v$b;->f:Ljava/util/List;

    .line 4
    new-instance v0, Ld/n;

    invoke-direct {v0}, Ld/n;-><init>()V

    iput-object v0, p0, Ld/v$b;->a:Ld/n;

    .line 5
    sget-object v0, Ld/v;->B:Ljava/util/List;

    iput-object v0, p0, Ld/v$b;->c:Ljava/util/List;

    .line 6
    sget-object v0, Ld/v;->C:Ljava/util/List;

    iput-object v0, p0, Ld/v$b;->d:Ljava/util/List;

    .line 7
    sget-object v0, Ld/p;->a:Ld/p;

    invoke-static {v0}, Ld/p;->a(Ld/p;)Ld/p$c;

    move-result-object v0

    iput-object v0, p0, Ld/v$b;->g:Ld/p$c;

    .line 8
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Ld/v$b;->h:Ljava/net/ProxySelector;

    .line 9
    sget-object v0, Ld/m;->a:Ld/m;

    iput-object v0, p0, Ld/v$b;->i:Ld/m;

    .line 10
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Ld/v$b;->l:Ljavax/net/SocketFactory;

    .line 11
    sget-object v0, Ld/f0/k/e;->a:Ld/f0/k/e;

    iput-object v0, p0, Ld/v$b;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 12
    sget-object v0, Ld/g;->c:Ld/g;

    iput-object v0, p0, Ld/v$b;->p:Ld/g;

    .line 13
    sget-object v0, Ld/b;->a:Ld/b;

    iput-object v0, p0, Ld/v$b;->q:Ld/b;

    .line 14
    iput-object v0, p0, Ld/v$b;->r:Ld/b;

    .line 15
    new-instance v0, Ld/j;

    invoke-direct {v0}, Ld/j;-><init>()V

    iput-object v0, p0, Ld/v$b;->s:Ld/j;

    .line 16
    sget-object v0, Ld/o;->a:Ld/o;

    iput-object v0, p0, Ld/v$b;->t:Ld/o;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Ld/v$b;->u:Z

    .line 18
    iput-boolean v0, p0, Ld/v$b;->v:Z

    .line 19
    iput-boolean v0, p0, Ld/v$b;->w:Z

    const/16 v0, 0x2710

    .line 20
    iput v0, p0, Ld/v$b;->x:I

    .line 21
    iput v0, p0, Ld/v$b;->y:I

    .line 22
    iput v0, p0, Ld/v$b;->z:I

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Ld/v$b;->A:I

    return-void
.end method

.method constructor <init>(Ld/v;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/v$b;->e:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/v$b;->f:Ljava/util/List;

    .line 27
    iget-object v0, p1, Ld/v;->a:Ld/n;

    iput-object v0, p0, Ld/v$b;->a:Ld/n;

    .line 28
    iget-object v0, p1, Ld/v;->b:Ljava/net/Proxy;

    iput-object v0, p0, Ld/v$b;->b:Ljava/net/Proxy;

    .line 29
    iget-object v0, p1, Ld/v;->c:Ljava/util/List;

    iput-object v0, p0, Ld/v$b;->c:Ljava/util/List;

    .line 30
    iget-object v0, p1, Ld/v;->d:Ljava/util/List;

    iput-object v0, p0, Ld/v$b;->d:Ljava/util/List;

    .line 31
    iget-object v0, p0, Ld/v$b;->e:Ljava/util/List;

    iget-object v1, p1, Ld/v;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    iget-object v0, p0, Ld/v$b;->f:Ljava/util/List;

    iget-object v1, p1, Ld/v;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    iget-object v0, p1, Ld/v;->g:Ld/p$c;

    iput-object v0, p0, Ld/v$b;->g:Ld/p$c;

    .line 34
    iget-object v0, p1, Ld/v;->h:Ljava/net/ProxySelector;

    iput-object v0, p0, Ld/v$b;->h:Ljava/net/ProxySelector;

    .line 35
    iget-object v0, p1, Ld/v;->i:Ld/m;

    iput-object v0, p0, Ld/v$b;->i:Ld/m;

    .line 36
    iget-object v0, p1, Ld/v;->k:Ld/f0/e/d;

    iput-object v0, p0, Ld/v$b;->k:Ld/f0/e/d;

    .line 37
    iget-object v0, p1, Ld/v;->j:Ld/c;

    iput-object v0, p0, Ld/v$b;->j:Ld/c;

    .line 38
    iget-object v0, p1, Ld/v;->l:Ljavax/net/SocketFactory;

    iput-object v0, p0, Ld/v$b;->l:Ljavax/net/SocketFactory;

    .line 39
    iget-object v0, p1, Ld/v;->m:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Ld/v$b;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 40
    iget-object v0, p1, Ld/v;->n:Ld/f0/k/c;

    iput-object v0, p0, Ld/v$b;->n:Ld/f0/k/c;

    .line 41
    iget-object v0, p1, Ld/v;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Ld/v$b;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 42
    iget-object v0, p1, Ld/v;->p:Ld/g;

    iput-object v0, p0, Ld/v$b;->p:Ld/g;

    .line 43
    iget-object v0, p1, Ld/v;->q:Ld/b;

    iput-object v0, p0, Ld/v$b;->q:Ld/b;

    .line 44
    iget-object v0, p1, Ld/v;->r:Ld/b;

    iput-object v0, p0, Ld/v$b;->r:Ld/b;

    .line 45
    iget-object v0, p1, Ld/v;->s:Ld/j;

    iput-object v0, p0, Ld/v$b;->s:Ld/j;

    .line 46
    iget-object v0, p1, Ld/v;->t:Ld/o;

    iput-object v0, p0, Ld/v$b;->t:Ld/o;

    .line 47
    iget-boolean v0, p1, Ld/v;->u:Z

    iput-boolean v0, p0, Ld/v$b;->u:Z

    .line 48
    iget-boolean v0, p1, Ld/v;->v:Z

    iput-boolean v0, p0, Ld/v$b;->v:Z

    .line 49
    iget-boolean v0, p1, Ld/v;->w:Z

    iput-boolean v0, p0, Ld/v$b;->w:Z

    .line 50
    iget v0, p1, Ld/v;->x:I

    iput v0, p0, Ld/v$b;->x:I

    .line 51
    iget v0, p1, Ld/v;->y:I

    iput v0, p0, Ld/v$b;->y:I

    .line 52
    iget v0, p1, Ld/v;->z:I

    iput v0, p0, Ld/v$b;->z:I

    .line 53
    iget p1, p1, Ld/v;->A:I

    iput p1, p0, Ld/v$b;->A:I

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Ld/v$b;
    .locals 1

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Ld/f0/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Ld/v$b;->x:I

    return-object p0
.end method

.method public a(Ld/n;)Ld/v$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Ld/v$b;->a:Ld/n;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dispatcher == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/util/List;)Ld/v$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld/w;",
            ">;)",
            "Ld/v$b;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    sget-object p1, Ld/w;->c:Ld/w;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    sget-object p1, Ld/w;->b:Ld/w;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    sget-object p1, Ld/w;->d:Ld/w;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ld/v$b;->c:Ljava/util/List;

    return-object p0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)Ld/v$b;
    .locals 0

    .line 2
    iput-boolean p1, p0, Ld/v$b;->v:Z

    return-object p0
.end method

.method public a()Ld/v;
    .locals 1

    .line 14
    new-instance v0, Ld/v;

    invoke-direct {v0, p0}, Ld/v;-><init>(Ld/v$b;)V

    return-object v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Ld/v$b;
    .locals 1

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Ld/f0/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Ld/v$b;->y:I

    return-object p0
.end method

.method public b(Z)Ld/v$b;
    .locals 0

    .line 2
    iput-boolean p1, p0, Ld/v$b;->w:Z

    return-object p0
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Ld/v$b;
    .locals 1

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Ld/f0/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Ld/v$b;->z:I

    return-object p0
.end method
