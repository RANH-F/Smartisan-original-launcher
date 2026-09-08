.class public Lc/d/a/a/a/c/g;
.super Ljava/lang/Object;
.source "SimpleDownloadModel.java"

# interfaces
.implements Lc/d/a/a/a/c/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/a/a/c/g$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Lc/d/a/a/a/d/f;

.field private p:Z

.field private q:Lc/d/a/b/a/c/x;


# direct methods
.method private constructor <init>(Lc/d/a/a/a/c/g$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->a(Lc/d/a/a/a/c/g$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lc/d/a/a/a/c/g;->b:J

    .line 4
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->b(Lc/d/a/a/a/c/g$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lc/d/a/a/a/c/g;->c:J

    .line 5
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->c(Lc/d/a/a/a/c/g$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/c/g;->a:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->d(Lc/d/a/a/a/c/g$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/c/g;->d:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->e(Lc/d/a/a/a/c/g$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/c/g;->e:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->f(Lc/d/a/a/a/c/g$b;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/c/g;->f:Ljava/util/Map;

    .line 9
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->g(Lc/d/a/a/a/c/g$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/a/a/c/g;->g:Z

    .line 10
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->h(Lc/d/a/a/a/c/g$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/a/a/c/g;->h:Z

    .line 11
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->i(Lc/d/a/a/a/c/g$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/a/a/c/g;->i:Z

    .line 12
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->j(Lc/d/a/a/a/c/g$b;)Lorg/json/JSONObject;

    .line 13
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->k(Lc/d/a/a/a/c/g$b;)Z

    .line 14
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->l(Lc/d/a/a/a/c/g$b;)Z

    .line 15
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->m(Lc/d/a/a/a/c/g$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/c/g;->j:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->n(Lc/d/a/a/a/c/g$b;)Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->o(Lc/d/a/a/a/c/g$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/c/g;->k:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->p(Lc/d/a/a/a/c/g$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/a/a/c/g;->l:Z

    .line 19
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->q(Lc/d/a/a/a/c/g$b;)I

    move-result v0

    iput v0, p0, Lc/d/a/a/a/c/g;->m:I

    .line 20
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->r(Lc/d/a/a/a/c/g$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/c/g;->n:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->s(Lc/d/a/a/a/c/g$b;)Lc/d/a/a/a/d/f;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/c/g;->o:Lc/d/a/a/a/d/f;

    .line 22
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->t(Lc/d/a/a/a/c/g$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/a/a/c/g;->p:Z

    .line 23
    invoke-static {p1}, Lc/d/a/a/a/c/g$b;->u(Lc/d/a/a/a/c/g$b;)Lc/d/a/b/a/c/x;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/a/a/c/g;->q:Lc/d/a/b/a/c/x;

    return-void
.end method

.method synthetic constructor <init>(Lc/d/a/a/a/c/g$b;Lc/d/a/a/a/c/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/d/a/a/a/c/g;-><init>(Lc/d/a/a/a/c/g$b;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/a/a/c/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/d/a/a/a/c/g;->b:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/d/a/a/a/c/g;->c:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/a/a/c/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/a/a/c/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/d/a/a/a/c/g;->f:Ljava/util/Map;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/a/a/c/g;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/a/a/c/g;->h:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/a/a/c/g;->i:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/a/a/c/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/a/a/c/g;->l:Z

    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/a/a/c/g;->m:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/a/a/c/g;->n:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/a/a/c/g;->k:Ljava/lang/String;

    return-object v0
.end method

.method public q()Lc/d/a/a/a/d/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public u()Lc/d/a/a/a/d/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/a/a/c/g;->o:Lc/d/a/a/a/d/f;

    return-object v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/a/a/c/g;->p:Z

    return v0
.end method

.method public w()Lc/d/a/b/a/c/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/a/a/c/g;->q:Lc/d/a/b/a/c/x;

    return-object v0
.end method
