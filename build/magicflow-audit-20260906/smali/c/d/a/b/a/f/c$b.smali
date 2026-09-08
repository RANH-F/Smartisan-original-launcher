.class public Lc/d/a/b/a/f/c$b;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/a/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Lc/d/a/b/a/a/g;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/e;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:[Ljava/lang/String;

.field private k:[I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/d/a/b/a/f/c$b;->n:Z

    .line 3
    sget-object v1, Lc/d/a/b/a/a/g;->a:Lc/d/a/b/a/a/g;

    iput-object v1, p0, Lc/d/a/b/a/f/c$b;->D:Lc/d/a/b/a/a/g;

    .line 4
    iput-boolean v0, p0, Lc/d/a/b/a/f/c$b;->G:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lc/d/a/b/a/f/c$b;->n:Z

    .line 7
    sget-object v1, Lc/d/a/b/a/a/g;->a:Lc/d/a/b/a/a/g;

    iput-object v1, p0, Lc/d/a/b/a/f/c$b;->D:Lc/d/a/b/a/a/g;

    .line 8
    iput-boolean v0, p0, Lc/d/a/b/a/f/c$b;->G:Z

    .line 9
    iput-object p1, p0, Lc/d/a/b/a/f/c$b;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lc/d/a/b/a/f/c$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/b/a/f/c$b;->s:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic B(Lc/d/a/b/a/f/c$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/b/a/f/c$b;->t:Z

    return p0
.end method

.method static synthetic C(Lc/d/a/b/a/f/c$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/b/a/f/c$b;->A:Z

    return p0
.end method

.method static synthetic D(Lc/d/a/b/a/f/c$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/b/a/f/c$b;->u:Z

    return p0
.end method

.method static synthetic E(Lc/d/a/b/a/f/c$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/b/a/f/c$b;->v:Z

    return p0
.end method

.method static synthetic F(Lc/d/a/b/a/f/c$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/b/a/f/c$b;->w:Z

    return p0
.end method

.method static synthetic G(Lc/d/a/b/a/f/c$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/b/a/f/c$b;->x:Z

    return p0
.end method

.method static synthetic H(Lc/d/a/b/a/f/c$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/b/a/f/c$b;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lc/d/a/b/a/f/c$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/b/a/f/c$b;->z:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lc/d/a/b/a/f/c$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/b/a/f/c$b;->B:Z

    return p0
.end method

.method static synthetic c(Lc/d/a/b/a/f/c$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/b/a/f/c$b;->C:Z

    return p0
.end method

.method static synthetic d(Lc/d/a/b/a/f/c$b;)Lc/d/a/b/a/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/b/a/f/c$b;->D:Lc/d/a/b/a/a/g;

    return-object p0
.end method

.method static synthetic e(Lc/d/a/b/a/f/c$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/b/a/f/c$b;->E:Z

    return p0
.end method

.method static synthetic f(Lc/d/a/b/a/f/c$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/b/a/f/c$b;->F:Z

    return p0
.end method

.method static synthetic g(Lc/d/a/b/a/f/c$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/b/a/f/c$b;->G:Z

    return p0
.end method

.method static synthetic h(Lc/d/a/b/a/f/c$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/b/a/f/c$b;->H:Z

    return p0
.end method

.method static synthetic i(Lc/d/a/b/a/f/c$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/b/a/f/c$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lc/d/a/b/a/f/c$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/b/a/f/c$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lc/d/a/b/a/f/c$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/b/a/f/c$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lc/d/a/b/a/f/c$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/b/a/f/c$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lc/d/a/b/a/f/c$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/b/a/f/c$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lc/d/a/b/a/f/c$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/b/a/f/c$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lc/d/a/b/a/f/c$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/b/a/f/c$b;->f:Z

    return p0
.end method

.method static synthetic p(Lc/d/a/b/a/f/c$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/b/a/f/c$b;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic q(Lc/d/a/b/a/f/c$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/d/a/b/a/f/c$b;->i:I

    return p0
.end method

.method static synthetic r(Lc/d/a/b/a/f/c$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/d/a/b/a/f/c$b;->l:I

    return p0
.end method

.method static synthetic s(Lc/d/a/b/a/f/c$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/b/a/f/c$b;->m:Z

    return p0
.end method

.method static synthetic t(Lc/d/a/b/a/f/c$b;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/b/a/f/c$b;->j:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic u(Lc/d/a/b/a/f/c$b;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/b/a/f/c$b;->k:[I

    return-object p0
.end method

.method static synthetic v(Lc/d/a/b/a/f/c$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/b/a/f/c$b;->n:Z

    return p0
.end method

.method static synthetic w(Lc/d/a/b/a/f/c$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/d/a/b/a/f/c$b;->o:I

    return p0
.end method

.method static synthetic x(Lc/d/a/b/a/f/c$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/d/a/b/a/f/c$b;->p:I

    return p0
.end method

.method static synthetic y(Lc/d/a/b/a/f/c$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/b/a/f/c$b;->q:Ljava/util/List;

    return-object p0
.end method

.method static synthetic z(Lc/d/a/b/a/f/c$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/d/a/b/a/f/c$b;->r:Z

    return p0
.end method


# virtual methods
.method public a(I)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 5
    iput p1, p0, Lc/d/a/b/a/f/c$b;->l:I

    return-object p0
.end method

.method public a(Lc/d/a/b/a/a/g;)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 6
    iput-object p1, p0, Lc/d/a/b/a/f/c$b;->D:Lc/d/a/b/a/a/g;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lc/d/a/b/a/f/c$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lc/d/a/b/a/f/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/e;",
            ">;)",
            "Lc/d/a/b/a/f/c$b;"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lc/d/a/b/a/f/c$b;->h:Ljava/util/List;

    return-object p0
.end method

.method public a(Z)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lc/d/a/b/a/f/c$b;->f:Z

    return-object p0
.end method

.method public a()Lc/d/a/b/a/f/c;
    .locals 2

    .line 7
    new-instance v0, Lc/d/a/b/a/f/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/d/a/b/a/f/c;-><init>(Lc/d/a/b/a/f/c$b;Lc/d/a/b/a/f/c$a;)V

    return-object v0
.end method

.method public b(I)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 4
    iput p1, p0, Lc/d/a/b/a/f/c$b;->o:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lc/d/a/b/a/f/c$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lc/d/a/b/a/f/c$b;->m:Z

    return-object p0
.end method

.method public c(I)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 3
    iput p1, p0, Lc/d/a/b/a/f/c$b;->p:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lc/d/a/b/a/f/c$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lc/d/a/b/a/f/c$b;->t:Z

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lc/d/a/b/a/f/c$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lc/d/a/b/a/f/c$b;->r:Z

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lc/d/a/b/a/f/c$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lc/d/a/b/a/f/c$b;->u:Z

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lc/d/a/b/a/f/c$b;->s:Ljava/lang/String;

    return-object p0
.end method

.method public f(Z)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lc/d/a/b/a/f/c$b;->v:Z

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 3
    iput-object p1, p0, Lc/d/a/b/a/f/c$b;->y:Ljava/lang/String;

    return-object p0
.end method

.method public g(Z)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lc/d/a/b/a/f/c$b;->w:Z

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 3
    iput-object p1, p0, Lc/d/a/b/a/f/c$b;->z:Ljava/lang/String;

    return-object p0
.end method

.method public h(Z)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lc/d/a/b/a/f/c$b;->x:Z

    return-object p0
.end method

.method public i(Z)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lc/d/a/b/a/f/c$b;->A:Z

    return-object p0
.end method

.method public j(Z)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lc/d/a/b/a/f/c$b;->B:Z

    return-object p0
.end method

.method public k(Z)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lc/d/a/b/a/f/c$b;->C:Z

    return-object p0
.end method

.method public l(Z)Lc/d/a/b/a/f/c$b;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lc/d/a/b/a/f/c$b;->E:Z

    return-object p0
.end method
