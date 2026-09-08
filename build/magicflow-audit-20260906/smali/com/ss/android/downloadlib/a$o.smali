.class Lcom/ss/android/downloadlib/a$o;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/ss/android/downloadlib/e/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/a$o$f;,
        Lcom/ss/android/downloadlib/a$o$e;
    }
.end annotation


# instance fields
.field private a:Lc/d/a/a/a/c/d;

.field private b:Lc/d/a/a/a/c/c;

.field private c:Lc/d/a/a/a/c/b;

.field private d:Lc/d/a/a/a/d/b;

.field private e:I

.field private f:Z

.field private final g:Lcom/ss/android/downloadlib/e/i;

.field private h:Lcom/ss/android/downloadlib/a$o$f;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/downloadlib/a$o;->f:Z

    .line 3
    new-instance v0, Lcom/ss/android/downloadlib/e/i;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/downloadlib/e/i;-><init>(Landroid/os/Looper;Lcom/ss/android/downloadlib/e/i$a;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$o;->g:Lcom/ss/android/downloadlib/e/i;

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a$o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$o;->q()V

    return-void
.end method

.method private a(I)Z
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/h;->a(Lc/d/a/a/a/c/d;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->c:Lc/d/a/a/a/c/b;

    invoke-interface {v0}, Lc/d/a/a/a/c/b;->b()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    if-ne p1, v3, :cond_1

    return v2

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o;->c:Lc/d/a/a/a/c/b;

    invoke-interface {p1}, Lc/d/a/a/a/c/b;->b()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private a(Landroid/content/Context;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 28
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->d:Lc/d/a/a/a/d/b;

    if-nez v1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v1}, Lc/d/a/a/a/d/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 31
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v2}, Lc/d/a/a/a/c/d;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/ss/android/downloadlib/e/h;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/ss/android/downloadlib/a$g$c; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    :catch_0
    move-exception v1

    .line 32
    invoke-virtual {v1}, Lcom/ss/android/downloadlib/a$g$c;->a()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a$o;->j()V

    .line 34
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->c()Lc/d/a/a/a/a/b;

    move-result-object v4

    iget-object v6, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    iget-object v7, p0, Lcom/ss/android/downloadlib/a$o;->c:Lc/d/a/a/a/c/b;

    iget-object v8, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/a$g$c;->c()Ljava/lang/String;

    move-result-object v9

    move-object v5, p1

    invoke-interface/range {v4 .. v9}, Lc/d/a/a/a/a/b;->a(Landroid/content/Context;Lc/d/a/a/a/c/d;Lc/d/a/a/a/c/b;Lc/d/a/a/a/c/c;Ljava/lang/String;)V

    return v3

    :cond_3
    :goto_0
    return v0
.end method

.method private a(Landroid/content/Context;I)Z
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const/4 v10, 0x0

    if-nez v9, :cond_0

    return v10

    .line 14
    :cond_0
    iget-object v0, v8, Lcom/ss/android/downloadlib/a$o;->d:Lc/d/a/a/a/d/b;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lc/d/a/a/a/d/b;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move/from16 v1, p2

    .line 15
    :try_start_0
    invoke-direct {v8, v1}, Lcom/ss/android/downloadlib/a$o;->a(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v8, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v1}, Lc/d/a/a/a/c/d;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 16
    iget-object v0, v8, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/ss/android/downloadlib/e/h;->e(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/ss/android/downloadlib/a$g$c; {:try_start_0 .. :try_end_0} :catch_0

    throw v2

    .line 17
    :cond_2
    :try_start_1
    iget-object v1, v8, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-static {v9, v0, v1}, Lcom/ss/android/downloadlib/e/h;->a(Landroid/content/Context;Ljava/lang/String;Lc/d/a/a/a/c/d;)V
    :try_end_1
    .catch Lcom/ss/android/downloadlib/a$g$c; {:try_start_1 .. :try_end_1} :catch_0

    throw v2

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a$g$c;->a()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v11, 0x1

    if-eq v1, v11, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a$g$c;->b()I

    move-result v1

    int-to-long v3, v1

    iget-object v1, v8, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v1}, Lc/d/a/a/a/c/d;->c()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a$g$c;->c()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/downloadlib/a$o;->a(ZJJLjava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-wide/16 v1, 0x2

    .line 20
    invoke-virtual {v8, v1, v2}, Lcom/ss/android/downloadlib/a$o;->a(J)V

    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a$g$c;->b()I

    move-result v1

    int-to-long v3, v1

    iget-object v1, v8, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v1}, Lc/d/a/a/a/c/d;->c()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a$g$c;->c()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/downloadlib/a$o;->a(ZJJLjava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->c()Lc/d/a/a/a/a/b;

    move-result-object v1

    iget-object v3, v8, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    iget-object v4, v8, Lcom/ss/android/downloadlib/a$o;->c:Lc/d/a/a/a/c/b;

    iget-object v5, v8, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a$g$c;->c()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Lc/d/a/a/a/a/b;->a(Landroid/content/Context;Lc/d/a/a/a/c/d;Lc/d/a/a/a/c/b;Lc/d/a/a/a/c/c;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/ss/android/downloadlib/a$f;->a()Lcom/ss/android/downloadlib/a$f;

    move-result-object v12

    iget-object v0, v8, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide v13

    iget-object v0, v8, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->c()J

    move-result-wide v15

    iget-object v0, v8, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->o()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v8, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->d()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v8, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->p()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v12 .. v19}, Lcom/ss/android/downloadlib/a$f;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 24
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/downloadlib/a$o;->h()V

    .line 25
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->c()Lc/d/a/a/a/a/b;

    move-result-object v1

    iget-object v3, v8, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    iget-object v4, v8, Lcom/ss/android/downloadlib/a$o;->c:Lc/d/a/a/a/c/b;

    iget-object v5, v8, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a$g$c;->c()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Lc/d/a/a/a/a/b;->a(Landroid/content/Context;Lc/d/a/a/a/c/d;Lc/d/a/a/a/c/b;Lc/d/a/a/a/c/c;Ljava/lang/String;)V

    return v11

    .line 26
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/downloadlib/a$o;->j()V

    .line 27
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->c()Lc/d/a/a/a/a/b;

    move-result-object v1

    iget-object v3, v8, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    iget-object v4, v8, Lcom/ss/android/downloadlib/a$o;->c:Lc/d/a/a/a/c/b;

    iget-object v5, v8, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a$g$c;->c()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Lc/d/a/a/a/a/b;->a(Landroid/content/Context;Lc/d/a/a/a/c/d;Lc/d/a/a/a/c/b;Lc/d/a/a/a/c/c;Ljava/lang/String;)V

    return v11

    :cond_7
    :goto_1
    return v10
.end method

.method static synthetic b(Lcom/ss/android/downloadlib/a$o;)Lc/d/a/a/a/c/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    return-object p0
.end method

.method private b(Lc/d/a/a/a/a/l;)V
    .locals 5

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 12
    invoke-static {v0}, Lcom/ss/android/downloadlib/e/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 13
    invoke-interface {p1}, Lc/d/a/a/a/a/l;->a()V

    :cond_0
    return-void

    .line 14
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/a$g;->b()Lcom/ss/android/downloadlib/a$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/a$g;->a()Lcom/ss/android/downloadlib/a$g$b;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v2}, Lc/d/a/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    iget-object v4, p0, Lcom/ss/android/downloadlib/a$o;->c:Lc/d/a/a/a/c/b;

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/downloadlib/a$g$b;->a(Ljava/lang/String;Lc/d/a/a/a/c/c;Lc/d/a/a/a/c/b;)V

    .line 15
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/a$o$b;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/a$o$b;-><init>(Lcom/ss/android/downloadlib/a$o;Lc/d/a/a/a/a/l;)V

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/e/e;->a([Ljava/lang/String;Lcom/ss/android/downloadlib/e/e$a;)V

    return-void
.end method

.method static synthetic c(Lcom/ss/android/downloadlib/a$o;)Lc/d/a/a/a/c/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    return-object p0
.end method

.method private d(Lc/d/a/b/a/f/c;)Z
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$o;->f(Lc/d/a/b/a/f/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    if-eqz p1, :cond_0

    .line 10
    invoke-static {p1}, Lcom/ss/android/downloadlib/e/h;->a(Lc/d/a/a/a/c/d;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private e(Lc/d/a/b/a/f/c;)Z
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$o;->f(Lc/d/a/b/a/f/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/ss/android/downloadlib/a$o;->e:I

    .line 10
    invoke-static {p1}, Lcom/ss/android/downloadlib/a$p;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private f(Lc/d/a/b/a/f/c;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result p1

    const/4 v0, -0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private n()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$o;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$o;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lc/d/a/a/a/c/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 3
    invoke-interface {v0}, Lc/d/a/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->c:Lc/d/a/a/a/c/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lc/d/a/a/a/c/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/a$g;->b()Lcom/ss/android/downloadlib/a$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/a$g;->a()Lcom/ss/android/downloadlib/a$g$b;

    move-result-object v1

    iget-object v1, v1, Lcom/ss/android/downloadlib/a$g$b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/a$g;->b()Lcom/ss/android/downloadlib/a$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a$g;->a()Lcom/ss/android/downloadlib/a$g$b;

    move-result-object v0

    iget-object v0, v0, Lcom/ss/android/downloadlib/a$g$b;->b:Lc/d/a/a/a/c/c;

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/a$o;->a(Lc/d/a/a/a/c/c;)V

    .line 3
    invoke-static {}, Lcom/ss/android/downloadlib/a$g;->b()Lcom/ss/android/downloadlib/a$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a$g;->a()Lcom/ss/android/downloadlib/a$g$b;

    move-result-object v0

    iget-object v0, v0, Lcom/ss/android/downloadlib/a$g$b;->c:Lc/d/a/a/a/c/b;

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/a$o;->a(Lc/d/a/a/a/c/b;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/a$g;->b()Lcom/ss/android/downloadlib/a$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a$g;->a()Lcom/ss/android/downloadlib/a$g$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a$g$b;->a()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lc/d/a/b/a/c/d0;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 119
    :cond_0
    iget-object v3, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v3}, Lc/d/a/a/a/c/d;->f()Ljava/util/Map;

    move-result-object v3

    .line 120
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_2

    .line 121
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    if-eqz v5, :cond_1

    .line 122
    new-instance v6, Lc/d/a/b/a/f/e;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Lc/d/a/b/a/f/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_2
    iget-object v3, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v3}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iget-object v3, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 124
    invoke-interface {v3}, Lc/d/a/a/a/c/d;->c()J

    move-result-wide v8

    const/4 v10, 0x0

    iget-object v3, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 125
    invoke-interface {v3}, Lc/d/a/a/a/c/d;->o()Ljava/lang/String;

    move-result-object v11

    iget-object v3, v0, Lcom/ss/android/downloadlib/a$o;->c:Lc/d/a/a/a/c/b;

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 126
    invoke-interface {v3}, Lc/d/a/a/a/c/b;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    move v12, v5

    goto :goto_1

    :cond_3
    move v12, v2

    :goto_1
    iget-object v3, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 127
    invoke-interface {v3}, Lc/d/a/a/a/c/d;->s()Lorg/json/JSONObject;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 128
    invoke-static/range {v7 .. v15}, Lcom/ss/android/downloadlib/e/c;->a(Ljava/lang/String;JILjava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 129
    new-instance v6, Lcom/ss/android/socialbase/appdownloader/f;

    iget-object v7, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v7}, Lc/d/a/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lcom/ss/android/socialbase/appdownloader/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 130
    invoke-interface {v1}, Lc/d/a/a/a/c/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/ss/android/socialbase/appdownloader/f;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    .line 131
    invoke-virtual {v6, v3}, Lcom/ss/android/socialbase/appdownloader/f;->d(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    iget-object v1, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 132
    invoke-interface {v1}, Lc/d/a/a/a/c/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/ss/android/socialbase/appdownloader/f;->e(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    .line 133
    invoke-virtual {v6, v4}, Lcom/ss/android/socialbase/appdownloader/f;->a(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/f;

    iget-object v1, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 134
    invoke-interface {v1}, Lc/d/a/a/a/c/d;->h()Z

    move-result v1

    invoke-virtual {v6, v1}, Lcom/ss/android/socialbase/appdownloader/f;->a(Z)Lcom/ss/android/socialbase/appdownloader/f;

    iget-object v1, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 135
    invoke-interface {v1}, Lc/d/a/a/a/c/d;->i()Z

    move-result v1

    invoke-virtual {v6, v1}, Lcom/ss/android/socialbase/appdownloader/f;->c(Z)Lcom/ss/android/socialbase/appdownloader/f;

    iget-object v1, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 136
    invoke-interface {v1}, Lc/d/a/a/a/c/d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/ss/android/socialbase/appdownloader/f;->c(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    move-object/from16 v1, p2

    .line 137
    invoke-virtual {v6, v1}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lc/d/a/b/a/c/d0;)Lcom/ss/android/socialbase/appdownloader/f;

    const-string v1, "application/vnd.android.package-archive"

    .line 138
    invoke-virtual {v6, v1}, Lcom/ss/android/socialbase/appdownloader/f;->e(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    iget-object v1, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 139
    invoke-interface {v1}, Lc/d/a/a/a/c/d;->k()Z

    move-result v1

    invoke-virtual {v6, v1}, Lcom/ss/android/socialbase/appdownloader/f;->k(Z)Lcom/ss/android/socialbase/appdownloader/f;

    iget-object v1, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 140
    invoke-interface {v1}, Lc/d/a/a/a/c/d;->w()Lc/d/a/b/a/c/x;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lc/d/a/b/a/c/x;)Lcom/ss/android/socialbase/appdownloader/f;

    iget-object v1, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 141
    invoke-interface {v1}, Lc/d/a/a/a/c/d;->v()Z

    move-result v1

    invoke-virtual {v6, v1}, Lcom/ss/android/socialbase/appdownloader/f;->b(Z)Lcom/ss/android/socialbase/appdownloader/f;

    iget-object v1, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 142
    invoke-interface {v1}, Lc/d/a/a/a/c/d;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/ss/android/socialbase/appdownloader/f;->f(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    const/16 v1, 0x3e8

    .line 143
    invoke-virtual {v6, v1}, Lcom/ss/android/socialbase/appdownloader/f;->a(I)Lcom/ss/android/socialbase/appdownloader/f;

    const/16 v1, 0x64

    .line 144
    invoke-virtual {v6, v1}, Lcom/ss/android/socialbase/appdownloader/f;->b(I)Lcom/ss/android/socialbase/appdownloader/f;

    .line 145
    invoke-virtual {v6, v5}, Lcom/ss/android/socialbase/appdownloader/f;->h(Z)Lcom/ss/android/socialbase/appdownloader/f;

    .line 146
    invoke-virtual {v6, v5}, Lcom/ss/android/socialbase/appdownloader/f;->i(Z)Lcom/ss/android/socialbase/appdownloader/f;

    .line 147
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->h()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "need_retry_delay"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_4

    move v1, v5

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-virtual {v6, v1}, Lcom/ss/android/socialbase/appdownloader/f;->g(Z)Lcom/ss/android/socialbase/appdownloader/f;

    .line 148
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->h()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "need_reuse_runnable"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_5

    move v2, v5

    :cond_5
    invoke-virtual {v6, v2}, Lcom/ss/android/socialbase/appdownloader/f;->j(Z)Lcom/ss/android/socialbase/appdownloader/f;

    new-instance v1, Lcom/ss/android/downloadlib/a$o$d;

    invoke-direct {v1, v0}, Lcom/ss/android/downloadlib/a$o$d;-><init>(Lcom/ss/android/downloadlib/a$o;)V

    .line 149
    invoke-virtual {v6, v1}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)Lcom/ss/android/socialbase/appdownloader/f;

    .line 150
    iget-object v1, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v1}, Lc/d/a/a/a/c/d;->g()Z

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/ss/android/downloadlib/a$o;->n()Z

    move-result v2

    iget-object v3, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v3}, Lc/d/a/a/a/c/d;->s()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v1, v2, v3, v6}, Lcom/ss/android/downloadlib/a$p;->a(ZZLorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/f;)I

    move-result v1

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/downloadlib/a$o;->l()V

    return v1
.end method

.method public a(Z)I
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a$o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method a(J)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->l()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "click"

    :goto_0
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    iget-object v2, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;JLc/d/a/a/a/c/d;Lc/d/a/a/a/c/c;)V

    :cond_1
    return-void
.end method

.method a(Landroid/content/Context;Landroid/os/Message;Lc/d/a/a/a/d/e;Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Message;",
            "Lc/d/a/a/a/d/e;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lc/d/a/a/a/c/e;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_c

    if-eqz p4, :cond_c

    .line 45
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 46
    :cond_0
    iget v3, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    return-void

    .line 47
    :cond_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lc/d/a/b/a/f/c;

    .line 48
    invoke-virtual {v2, v1}, Lc/d/a/a/a/d/e;->a(Lc/d/a/b/a/f/c;)V

    .line 49
    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->A0()I

    move-result v3

    invoke-static {v3}, Lcom/ss/android/socialbase/appdownloader/b;->a(I)I

    move-result v3

    const/4 v5, 0x0

    .line 50
    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    const/4 v7, 0x1

    if-lez v6, :cond_2

    .line 51
    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v5

    const-wide/16 v8, 0x64

    mul-long/2addr v5, v8

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v8

    div-long/2addr v5, v8

    long-to-int v5, v5

    if-ne v3, v7, :cond_2

    .line 52
    iget-object v6, v0, Lcom/ss/android/downloadlib/a$o;->h:Lcom/ss/android/downloadlib/a$o$f;

    if-eqz v6, :cond_2

    .line 53
    invoke-interface {v6, v1}, Lcom/ss/android/downloadlib/a$o$f;->a(Lc/d/a/b/a/f/c;)V

    const/4 v6, 0x0

    .line 54
    iput-object v6, v0, Lcom/ss/android/downloadlib/a$o;->h:Lcom/ss/android/downloadlib/a$o$f;

    .line 55
    :cond_2
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/d/a/a/a/c/e;

    if-eq v3, v7, :cond_b

    const/4 v9, 0x2

    if-eq v3, v9, :cond_a

    if-eq v3, v4, :cond_4

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    return-void

    .line 56
    :cond_5
    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->A0()I

    move-result v9

    const/4 v10, -0x4

    if-ne v9, v10, :cond_6

    .line 57
    invoke-interface {v8}, Lc/d/a/a/a/c/e;->a()V

    goto :goto_0

    .line 58
    :cond_6
    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->A0()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_7

    .line 59
    invoke-interface {v8, v2}, Lc/d/a/a/a/c/e;->a(Lc/d/a/a/a/d/e;)V

    goto :goto_0

    .line 60
    :cond_7
    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->A0()I

    move-result v9

    const/4 v10, -0x3

    if-ne v9, v10, :cond_3

    .line 61
    iget-object v9, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-static {v9}, Lcom/ss/android/downloadlib/e/h;->a(Lc/d/a/a/a/c/d;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 62
    invoke-interface {v8, v2}, Lc/d/a/a/a/c/e;->b(Lc/d/a/a/a/d/e;)V

    goto :goto_0

    .line 63
    :cond_8
    iget-object v9, v0, Lcom/ss/android/downloadlib/a$o;->c:Lc/d/a/a/a/c/b;

    if-eqz v9, :cond_9

    invoke-interface {v9}, Lc/d/a/a/a/c/b;->c()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 64
    invoke-static {}, Lcom/ss/android/downloadlib/a$e/a;->a()Lcom/ss/android/downloadlib/a$e/a;

    move-result-object v10

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v9

    int-to-long v11, v9

    iget-object v9, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v9}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide v13

    iget-object v9, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v9}, Lc/d/a/a/a/c/d;->c()J

    move-result-wide v15

    iget-object v9, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 65
    invoke-interface {v9}, Lc/d/a/a/a/c/d;->p()Ljava/lang/String;

    move-result-object v17

    iget-object v9, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v9}, Lc/d/a/a/a/c/d;->d()Ljava/lang/String;

    move-result-object v18

    iget-object v9, v0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v9}, Lc/d/a/a/a/c/d;->o()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->x0()Ljava/lang/String;

    move-result-object v20

    .line 66
    invoke-virtual/range {v10 .. v20}, Lcom/ss/android/downloadlib/a$e/a;->a(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_9
    invoke-interface {v8, v2}, Lc/d/a/a/a/c/e;->c(Lc/d/a/a/a/d/e;)V

    goto :goto_0

    .line 68
    :cond_a
    invoke-interface {v8, v2, v5}, Lc/d/a/a/a/c/e;->b(Lc/d/a/a/a/d/e;I)V

    goto :goto_0

    .line 69
    :cond_b
    invoke-interface {v8, v2, v5}, Lc/d/a/a/a/c/e;->a(Lc/d/a/a/a/d/e;I)V

    goto/16 :goto_0

    :cond_c
    :goto_1
    return-void
.end method

.method a(Landroid/content/Context;Lc/d/a/b/a/f/c;Lc/d/a/a/a/d/e;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/d/a/b/a/f/c;",
            "Lc/d/a/a/a/d/e;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lc/d/a/a/a/c/e;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_7

    if-nez p3, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 p1, 0x0

    .line 153
    :try_start_0
    invoke-virtual {p2}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 154
    invoke-virtual {p2}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    invoke-virtual {p2}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v2

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, p1

    :goto_0
    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    move p1, v0

    .line 156
    :goto_1
    invoke-virtual {p3, p2}, Lc/d/a/a/a/d/e;->a(Lc/d/a/b/a/f/c;)V

    .line 157
    invoke-interface {p4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/a/a/c/e;

    .line 158
    invoke-virtual {p2}, Lc/d/a/b/a/f/c;->A0()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 159
    :pswitch_1
    invoke-interface {v0, p3, p1}, Lc/d/a/a/a/c/e;->a(Lc/d/a/a/a/d/e;I)V

    goto :goto_2

    .line 160
    :pswitch_2
    invoke-interface {v0, p3}, Lc/d/a/a/a/c/e;->a(Lc/d/a/a/a/d/e;)V

    goto :goto_2

    .line 161
    :pswitch_3
    invoke-interface {v0, p3, p1}, Lc/d/a/a/a/c/e;->b(Lc/d/a/a/a/d/e;I)V

    goto :goto_2

    .line 162
    :pswitch_4
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-static {v1}, Lcom/ss/android/downloadlib/e/h;->a(Lc/d/a/a/a/c/d;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    invoke-interface {v0, p3}, Lc/d/a/a/a/c/e;->b(Lc/d/a/a/a/d/e;)V

    goto :goto_2

    .line 164
    :cond_4
    invoke-interface {v0, p3}, Lc/d/a/a/a/c/e;->c(Lc/d/a/a/a/d/e;)V

    goto :goto_2

    .line 165
    :pswitch_5
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-static {v1}, Lcom/ss/android/downloadlib/e/h;->a(Lc/d/a/a/a/c/d;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, -0x3

    .line 166
    iput v1, p3, Lc/d/a/a/a/d/e;->b:I

    .line 167
    invoke-interface {v0, p3}, Lc/d/a/a/a/c/e;->b(Lc/d/a/a/a/d/e;)V

    goto :goto_2

    .line 168
    :cond_5
    invoke-interface {v0}, Lc/d/a/a/a/c/e;->a()V

    goto :goto_2

    :cond_6
    return-void

    .line 169
    :cond_7
    :goto_3
    invoke-interface {p4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/d/a/a/a/c/e;

    .line 170
    invoke-interface {p2}, Lc/d/a/a/a/c/e;->a()V

    goto :goto_4

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/os/Message;)V
    .locals 2

    .line 171
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lc/d/a/a/a/c/c;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 173
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->j()Lc/d/a/a/a/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 174
    invoke-interface {p1}, Lc/d/a/a/a/a/a;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 175
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadlib/a;->a(Lc/d/a/a/a/c/c;Lc/d/a/a/a/c/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method a(Lc/d/a/a/a/a/l;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->j()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {p1}, Lc/d/a/a/a/a/l;->a()V

    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/ss/android/downloadlib/a$o$a;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/downloadlib/a$o$a;-><init>(Lcom/ss/android/downloadlib/a$o;Lc/d/a/a/a/a/l;)V

    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/a$o;->b(Lc/d/a/a/a/a/l;)V

    return-void
.end method

.method a(Lc/d/a/a/a/c/b;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$o;->c:Lc/d/a/a/a/c/b;

    .line 6
    invoke-interface {p1}, Lc/d/a/a/a/c/b;->a()I

    move-result p1

    iput p1, p0, Lcom/ss/android/downloadlib/a$o;->e:I

    return-void
.end method

.method a(Lc/d/a/a/a/c/c;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    return-void
.end method

.method a(Lc/d/a/a/a/c/d;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 3
    invoke-interface {p1}, Lc/d/a/a/a/c/d;->q()Lc/d/a/a/a/d/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/downloadlib/a$o;->d:Lc/d/a/a/a/d/b;

    return-void
.end method

.method a(Lc/d/a/a/a/d/e;)V
    .locals 12

    .line 70
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$p;->a(Lc/d/a/a/a/c/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/a$o;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 72
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->m()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 73
    invoke-interface {v0}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide v5

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->o()Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_0

    iget-object p1, p1, Lc/d/a/a/a/d/e;->e:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/ss/android/downloadlib/e/h;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v8, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x2

    :goto_0
    const/4 v10, 0x2

    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    .line 75
    invoke-interface {p1}, Lc/d/a/a/a/c/c;->A()Z

    move-result v11

    const-string v3, "file_status"

    .line 76
    invoke-static/range {v2 .. v11}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JIZ)V

    .line 77
    iput-boolean v1, p0, Lcom/ss/android/downloadlib/a$o;->f:Z

    .line 78
    :cond_1
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 79
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "ext_value"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "force_update"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_2
    return-void
.end method

.method a(Lc/d/a/b/a/f/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/ss/android/downloadlib/a$o;->f:Z

    .line 8
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->h:Lcom/ss/android/downloadlib/a$o$f;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/a$o$f;->a(Lc/d/a/b/a/f/c;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$o;->h:Lcom/ss/android/downloadlib/a$o$f;

    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;Z)V
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->x()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {p1}, Lc/d/a/a/a/c/c;->e()Ljava/lang/String;

    move-result-object p1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->m()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 90
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 91
    new-instance v2, Lc/d/a/a/a/d/d$a;

    invoke-direct {v2}, Lc/d/a/a/a/d/d$a;-><init>()V

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {p1}, Lc/d/a/a/a/c/c;->a()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v2, p1}, Lc/d/a/a/a/d/d$a;->b(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "click_start"

    :goto_1
    invoke-virtual {v2, v0}, Lc/d/a/a/a/d/d$a;->c(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 94
    invoke-interface {p1}, Lc/d/a/a/a/c/d;->n()Z

    move-result p1

    invoke-virtual {v2, p1}, Lc/d/a/a/a/d/d$a;->b(Z)Lc/d/a/a/a/d/d$a;

    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 95
    invoke-interface {p1}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lc/d/a/a/a/d/d$a;->a(J)Lc/d/a/a/a/d/d$a;

    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 96
    invoke-interface {p1}, Lc/d/a/a/a/c/d;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lc/d/a/a/a/d/d$a;->d(Ljava/lang/String;)Lc/d/a/a/a/d/d$a;

    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 97
    invoke-interface {p1}, Lc/d/a/a/a/c/d;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lc/d/a/a/a/d/d$a;->b(J)Lc/d/a/a/a/d/d$a;

    .line 98
    invoke-virtual {v2, v1}, Lc/d/a/a/a/d/d$a;->a(Lorg/json/JSONObject;)Lc/d/a/a/a/d/d$a;

    const/4 p1, 0x1

    .line 99
    invoke-virtual {v2, p1}, Lc/d/a/a/a/d/d$a;->a(I)Lc/d/a/a/a/d/d$a;

    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    .line 100
    invoke-interface {p1}, Lc/d/a/a/a/c/c;->u()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Lc/d/a/a/a/d/d$a;->a(Ljava/lang/Object;)Lc/d/a/a/a/d/d$a;

    .line 101
    invoke-virtual {v2, p2}, Lc/d/a/a/a/d/d$a;->a(Z)Lc/d/a/a/a/d/d$a;

    .line 102
    invoke-virtual {v2}, Lc/d/a/a/a/d/d$a;->a()Lc/d/a/a/a/d/d;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 103
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object p2

    invoke-interface {p2, p1}, Lc/d/a/a/a/a/d;->a(Lc/d/a/a/a/d/d;)V

    goto :goto_2

    .line 104
    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->b()Lc/d/a/a/a/a/d;

    move-result-object p2

    invoke-interface {p2, p1}, Lc/d/a/a/a/a/d;->b(Lc/d/a/a/a/d/d;)V

    :cond_4
    :goto_2
    return-void
.end method

.method a(ZJJLjava/lang/String;)V
    .locals 13

    move-object v1, p0

    .line 105
    iget-object v0, v1, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    :try_start_0
    iget-object v0, v1, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->s()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v2}, Lc/d/a/a/a/c/d;->s()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    move-object v10, v0

    .line 110
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    const-string v0, "app_package"

    move-object/from16 v2, p6

    .line 111
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "status"

    move-wide v2, p2

    .line 112
    invoke-virtual {v10, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 113
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 114
    :cond_1
    :goto_1
    iget-object v0, v1, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    const-string v0, "click_open_market_success"

    goto :goto_2

    :cond_2
    const-string v0, "click_open_market_failed"

    :goto_2
    move-object v3, v0

    const/4 v4, 0x1

    iget-object v0, v1, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 115
    invoke-interface {v0}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide v5

    iget-object v0, v1, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 116
    invoke-interface {v0}, Lc/d/a/a/a/c/d;->o()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    iget-object v0, v1, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    .line 117
    invoke-interface {v0}, Lc/d/a/a/a/c/c;->A()Z

    move-result v12

    move-wide/from16 v8, p4

    .line 118
    invoke-static/range {v2 .. v12}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JLorg/json/JSONObject;IZ)V

    :cond_3
    return-void
.end method

.method a()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/h;->a(Lc/d/a/a/a/c/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ss/android/downloadlib/a$o;->e:I

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$p;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method a(Landroid/content/Context;IZ)Z
    .locals 1

    .line 11
    iget v0, p0, Lcom/ss/android/downloadlib/a$o;->e:I

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$p;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/a$o;->a(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    if-nez p3, :cond_2

    iget p2, p0, Lcom/ss/android/downloadlib/a$o;->e:I

    .line 13
    invoke-static {p2}, Lcom/ss/android/downloadlib/a$p;->c(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$o;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method b()V
    .locals 3

    .line 2
    iget v0, p0, Lcom/ss/android/downloadlib/a$o;->e:I

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$p;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->d:Lc/d/a/a/a/d/b;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lc/d/a/a/a/d/b;

    invoke-direct {v0}, Lc/d/a/a/a/d/b;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v1}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/d/a/a/a/d/b;->a(J)V

    .line 5
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v1}, Lc/d/a/a/a/c/d;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/d/a/a/a/d/b;->b(J)V

    .line 6
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->d:Lc/d/a/a/a/d/b;

    invoke-virtual {v1}, Lc/d/a/a/a/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/d/a/a/a/d/b;->b(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v1}, Lc/d/a/a/a/c/d;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/d/a/a/a/d/b;->d(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/ss/android/downloadlib/a$f;->a()Lcom/ss/android/downloadlib/a$f;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v2}, Lc/d/a/a/a/c/d;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/ss/android/downloadlib/a$f;->a(Ljava/lang/String;Lc/d/a/a/a/d/b;)V

    .line 9
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a$o;->m()V

    :cond_0
    return-void
.end method

.method b(Lc/d/a/b/a/f/c;)Z
    .locals 1

    .line 16
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$o;->d(Lc/d/a/b/a/f/c;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$o;->e(Lc/d/a/b/a/f/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method b(Z)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o;->c:Lc/d/a/a/a/c/b;

    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p1}, Lc/d/a/a/a/c/b;->b()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method c()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$p;->a(Lc/d/a/a/a/c/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/h;->a(Lc/d/a/a/a/c/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/ss/android/downloadlib/a$g;->b()Lcom/ss/android/downloadlib/a$g;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v1}, Lc/d/a/a/a/c/d;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v2}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/a$g;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method c(Lc/d/a/b/a/f/c;)V
    .locals 7

    .line 6
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a$o;->d()V

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a$o;->e()V

    goto :goto_1

    .line 10
    :pswitch_3
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-static {p1}, Lcom/ss/android/downloadlib/e/h;->a(Lc/d/a/a/a/c/d;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a$o;->h()V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a$o;->f()V

    .line 13
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a$o;->g()V

    goto :goto_1

    .line 14
    :pswitch_4
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a$p;->b(Lc/d/a/a/a/c/d;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 15
    iget-object v2, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v2}, Lc/d/a/a/a/c/c;->A()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ss/android/downloadlib/a$o;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v1}, Lc/d/a/a/a/c/c;->A()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/downloadlib/a$o;->c(Z)V

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lc/d/a/a/a/c/c;->z()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v1

    new-instance v2, Lcom/ss/android/downloadad/a/c/a;

    iget-object v3, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    iget-object v4, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v4}, Lc/d/a/a/a/c/c;->A()Z

    move-result v4

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result p1

    int-to-long v5, p1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/ss/android/downloadad/a/c/a;-><init>(Lc/d/a/a/a/c/d;ZJ)V

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadad/a/c/a;)V

    :cond_3
    :goto_1
    const/4 p1, -0x1

    const-wide/16 v1, 0x2

    if-eq v0, p1, :cond_5

    const/4 p1, -0x4

    if-ne v0, p1, :cond_4

    goto :goto_2

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-static {p1}, Lcom/ss/android/downloadlib/a$p;->a(Lc/d/a/a/a/c/d;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p0, v1, v2}, Lcom/ss/android/downloadlib/a$o;->a(J)V

    goto :goto_3

    .line 21
    :cond_5
    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/ss/android/downloadlib/a$o;->a(J)V

    :cond_6
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method c(Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->h:Lcom/ss/android/downloadlib/a$o$f;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/ss/android/downloadlib/a$o$c;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/downloadlib/a$o$c;-><init>(Lcom/ss/android/downloadlib/a$o;Z)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$o;->h:Lcom/ss/android/downloadlib/a$o$f;

    :cond_0
    return-void
.end method

.method d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->f()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v1}, Lc/d/a/a/a/c/c;->n()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "click_pause"

    :goto_1
    iget-object v2, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    .line 6
    invoke-interface {v2}, Lc/d/a/a/a/c/c;->u()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    .line 7
    invoke-interface {v3}, Lc/d/a/a/a/c/c;->A()Z

    move-result v3

    iget-object v4, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 8
    invoke-static {v0, v1, v2, v3, v4}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLc/d/a/a/a/c/d;)V

    :cond_2
    return-void
.end method

.method e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->g()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v1}, Lc/d/a/a/a/c/c;->o()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "click_continue"

    :goto_1
    iget-object v2, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    .line 6
    invoke-interface {v2}, Lc/d/a/a/a/c/c;->u()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    .line 7
    invoke-interface {v3}, Lc/d/a/a/a/c/c;->A()Z

    move-result v3

    iget-object v4, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 8
    invoke-static {v0, v1, v2, v3, v4}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLc/d/a/a/a/c/d;)V

    :cond_2
    return-void
.end method

.method f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->h()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v1}, Lc/d/a/a/a/c/c;->p()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "click_install"

    :goto_1
    iget-object v2, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    .line 6
    invoke-interface {v2}, Lc/d/a/a/a/c/c;->u()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    .line 7
    invoke-interface {v3}, Lc/d/a/a/a/c/c;->A()Z

    move-result v3

    iget-object v4, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 8
    invoke-static {v0, v1, v2, v3, v4}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLc/d/a/a/a/c/d;)V

    :cond_2
    return-void
.end method

.method g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->g:Lcom/ss/android/downloadlib/e/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x4b0

    .line 2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    .line 3
    iput v3, v2, Landroid/os/Message;->what:I

    .line 4
    iget-object v3, p0, Lcom/ss/android/downloadlib/a$o;->g:Lcom/ss/android/downloadlib/e/i;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method h()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->i()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v1}, Lc/d/a/a/a/c/c;->q()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "click_open"

    :goto_1
    iget-object v2, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    .line 6
    invoke-interface {v2}, Lc/d/a/a/a/c/c;->u()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    .line 7
    invoke-interface {v3}, Lc/d/a/a/a/c/c;->A()Z

    move-result v3

    iget-object v4, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 8
    invoke-static {v0, v1, v2, v3, v4}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLc/d/a/a/a/c/d;)V

    :cond_2
    return-void
.end method

.method i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v1}, Lc/d/a/a/a/c/c;->t()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "embeded_ad"

    .line 5
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "download_failed"

    :goto_1
    iget-object v2, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    .line 6
    invoke-interface {v2}, Lc/d/a/a/a/c/c;->u()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    .line 7
    invoke-interface {v3}, Lc/d/a/a/a/c/c;->A()Z

    move-result v3

    iget-object v4, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 8
    invoke-static {v0, v1, v2, v3, v4}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLc/d/a/a/a/c/d;)V

    :cond_2
    return-void
.end method

.method j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->j()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v1}, Lc/d/a/a/a/c/c;->r()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "open"

    :goto_1
    iget-object v2, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    .line 6
    invoke-interface {v2}, Lc/d/a/a/a/c/c;->u()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    .line 7
    invoke-interface {v3}, Lc/d/a/a/a/c/c;->A()Z

    move-result v3

    iget-object v4, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 8
    invoke-static {v0, v1, v2, v3, v4}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLc/d/a/a/a/c/d;)V

    :cond_2
    return-void
.end method

.method k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->k()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v1}, Lc/d/a/a/a/c/c;->s()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "storage_deny"

    :goto_1
    iget-object v2, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    .line 6
    invoke-interface {v2}, Lc/d/a/a/a/c/c;->u()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    .line 7
    invoke-interface {v3}, Lc/d/a/a/a/c/c;->A()Z

    move-result v3

    iget-object v4, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 8
    invoke-static {v0, v1, v2, v3, v4}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLc/d/a/a/a/c/d;)V

    :cond_2
    return-void
.end method

.method l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/a$p;->a(Lc/d/a/a/a/c/d;Lc/d/a/a/a/c/c;)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    invoke-interface {v0}, Lc/d/a/a/a/c/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deeplink_url_true"

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    .line 3
    invoke-interface {v0}, Lc/d/a/a/a/c/d;->n()Z

    move-result v3

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide v4

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->o()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->a:Lc/d/a/a/a/c/d;

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->c()J

    move-result-wide v7

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o;->b:Lc/d/a/a/a/c/c;

    .line 4
    invoke-interface {v0}, Lc/d/a/a/a/c/c;->A()Z

    move-result v10

    .line 5
    invoke-static/range {v1 .. v10}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
