.class public Lcom/ss/android/socialbase/appdownloader/f;
.super Ljava/lang/Object;
.source "AppTaskBuilder.java"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Lc/d/a/b/a/a/g;

.field private E:I

.field private F:I

.field private G:Z

.field private H:Lc/d/a/b/a/c/e0;

.field private I:Lc/d/a/b/a/c/s;

.field private J:Lcom/ss/android/socialbase/appdownloader/c$h;

.field private K:Lc/d/a/b/a/c/x;

.field private L:Lc/d/a/b/a/c/d;

.field private M:Z

.field private a:Landroid/app/Activity;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/e;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lc/d/a/b/a/c/d0;

.field private m:Lc/d/a/b/a/c/d0;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private r:Lcom/ss/android/socialbase/downloader/downloader/r;

.field private s:Lcom/ss/android/socialbase/downloader/notification/a;

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->h:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/f;->i:Z

    .line 4
    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->j:Z

    .line 5
    iput-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/f;->k:Z

    const-string v1, "application/vnd.android.package-archive"

    .line 6
    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/f;->o:Ljava/lang/String;

    .line 7
    sget-object v1, Lc/d/a/b/a/a/g;->a:Lc/d/a/b/a/a/g;

    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/f;->D:Lc/d/a/b/a/a/g;

    const/16 v1, 0x96

    .line 8
    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/f;->E:I

    .line 9
    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->G:Z

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->b:Landroid/content/Context;

    .line 11
    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->o:Ljava/lang/String;

    return-object v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->p:Z

    return v0
.end method

.method public C()Lcom/ss/android/socialbase/downloader/notification/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->s:Lcom/ss/android/socialbase/downloader/notification/a;

    return-object v0
.end method

.method public D()Lcom/ss/android/socialbase/downloader/downloader/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->q:Lcom/ss/android/socialbase/downloader/downloader/i;

    return-object v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->t:Z

    return v0
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->u:Z

    return v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->v:Ljava/lang/String;

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->w:Ljava/lang/String;

    return-object v0
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->y:Z

    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->z:Z

    return v0
.end method

.method public K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->A:Z

    return v0
.end method

.method public L()Lcom/ss/android/socialbase/downloader/downloader/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->r:Lcom/ss/android/socialbase/downloader/downloader/r;

    return-object v0
.end method

.method public M()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->E:I

    return v0
.end method

.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->F:I

    return v0
.end method

.method public a(I)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 7
    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->E:I

    return-object p0
.end method

.method public a(Lc/d/a/b/a/a/g;)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->D:Lc/d/a/b/a/a/g;

    return-object p0
.end method

.method public a(Lc/d/a/b/a/c/d0;)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->l:Lc/d/a/b/a/c/d0;

    return-object p0
.end method

.method public a(Lc/d/a/b/a/c/x;)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->K:Lc/d/a/b/a/c/x;

    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/i;)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->q:Lcom/ss/android/socialbase/downloader/downloader/i;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/e;",
            ">;)",
            "Lcom/ss/android/socialbase/appdownloader/f;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->g:Ljava/util/List;

    return-object p0
.end method

.method public a(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->h:Z

    return-object p0
.end method

.method public b(I)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 4
    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->F:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->i:Z

    return-object p0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->B:Z

    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->f:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->k:Z

    return-object p0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->C:Z

    return v0
.end method

.method public d(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->n:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->p:Z

    return-object p0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->G:Z

    return v0
.end method

.method public e()Lc/d/a/b/a/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->D:Lc/d/a/b/a/a/g;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->o:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->t:Z

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->v:Ljava/lang/String;

    return-object p0
.end method

.method public f(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->u:Z

    return-object p0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->x:Z

    return v0
.end method

.method public g(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->w:Ljava/lang/String;

    return-object p0
.end method

.method public g(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->y:Z

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lc/d/a/b/a/c/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->H:Lc/d/a/b/a/c/e0;

    return-object v0
.end method

.method public h(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->z:Z

    return-object p0
.end method

.method public i()Lc/d/a/b/a/c/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->I:Lc/d/a/b/a/c/s;

    return-object v0
.end method

.method public i(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->A:Z

    return-object p0
.end method

.method public j()Lcom/ss/android/socialbase/appdownloader/c$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->J:Lcom/ss/android/socialbase/appdownloader/c$h;

    return-object v0
.end method

.method public j(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->B:Z

    return-object p0
.end method

.method public k()Lc/d/a/b/a/c/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->K:Lc/d/a/b/a/c/x;

    return-object v0
.end method

.method public k(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->C:Z

    return-object p0
.end method

.method public l()Lc/d/a/b/a/c/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->L:Lc/d/a/b/a/c/d;

    return-object v0
.end method

.method public l(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->G:Z

    return-object p0
.end method

.method public m(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->x:Z

    return-object p0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->M:Z

    return v0
.end method

.method public n()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public o()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->b:Landroid/content/Context;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->g:Ljava/util/List;

    return-object v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->h:Z

    return v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->i:Z

    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->j:Z

    return v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->k:Z

    return v0
.end method

.method public x()Lc/d/a/b/a/c/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->l:Lc/d/a/b/a/c/d0;

    return-object v0
.end method

.method public y()Lc/d/a/b/a/c/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->m:Lc/d/a/b/a/c/d0;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->n:Ljava/lang/String;

    return-object v0
.end method
