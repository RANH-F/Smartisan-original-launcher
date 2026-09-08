.class public Lc/a/a/f;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:I

.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TModelType;>;"
        }
    .end annotation
.end field

.field protected final b:Landroid/content/Context;

.field protected final c:Lc/a/a/h;

.field protected final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final e:Lcom/bumptech/glide/manager/l;

.field protected final f:Lcom/bumptech/glide/manager/g;

.field private g:Lc/a/a/q/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/q/a<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field private i:Lc/a/a/o/c;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Lc/a/a/r/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/r/d<",
            "-TModelType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Float;

.field private o:Lc/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/f<",
            "***TTranscodeType;>;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Float;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Lc/a/a/j;

.field private t:Z

.field private u:Lc/a/a/r/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/r/g/d<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private v:I

.field private w:I

.field private x:Lc/a/a/o/i/b;

.field private y:Lc/a/a/o/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/g<",
            "TResourceType;>;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lc/a/a/q/f;Ljava/lang/Class;Lc/a/a/h;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lc/a/a/q/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lc/a/a/h;",
            "Lcom/bumptech/glide/manager/l;",
            "Lcom/bumptech/glide/manager/g;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Lc/a/a/s/a;->a()Lc/a/a/s/a;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/f;->i:Lc/a/a/o/c;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/f;->p:Ljava/lang/Float;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lc/a/a/f;->s:Lc/a/a/j;

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lc/a/a/f;->t:Z

    .line 12
    invoke-static {}, Lc/a/a/r/g/e;->c()Lc/a/a/r/g/d;

    move-result-object v1

    iput-object v1, p0, Lc/a/a/f;->u:Lc/a/a/r/g/d;

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Lc/a/a/f;->v:I

    .line 14
    iput v1, p0, Lc/a/a/f;->w:I

    .line 15
    sget-object v1, Lc/a/a/o/i/b;->f:Lc/a/a/o/i/b;

    iput-object v1, p0, Lc/a/a/f;->x:Lc/a/a/o/i/b;

    .line 16
    invoke-static {}, Lc/a/a/o/k/d;->a()Lc/a/a/o/k/d;

    move-result-object v1

    iput-object v1, p0, Lc/a/a/f;->y:Lc/a/a/o/g;

    .line 17
    iput-object p1, p0, Lc/a/a/f;->b:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lc/a/a/f;->a:Ljava/lang/Class;

    .line 19
    iput-object p4, p0, Lc/a/a/f;->d:Ljava/lang/Class;

    .line 20
    iput-object p5, p0, Lc/a/a/f;->c:Lc/a/a/h;

    .line 21
    iput-object p6, p0, Lc/a/a/f;->e:Lcom/bumptech/glide/manager/l;

    .line 22
    iput-object p7, p0, Lc/a/a/f;->f:Lcom/bumptech/glide/manager/g;

    if-eqz p3, :cond_0

    .line 23
    new-instance v0, Lc/a/a/q/a;

    invoke-direct {v0, p3}, Lc/a/a/q/a;-><init>(Lc/a/a/q/f;)V

    :cond_0
    iput-object v0, p0, Lc/a/a/f;->g:Lc/a/a/q/a;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "LoadProvider must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void

    .line 25
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lc/a/a/q/f;Ljava/lang/Class;Lc/a/a/f;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/q/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lc/a/a/f<",
            "TModelType;***>;)V"
        }
    .end annotation

    .line 1
    iget-object v1, p3, Lc/a/a/f;->b:Landroid/content/Context;

    iget-object v2, p3, Lc/a/a/f;->a:Ljava/lang/Class;

    iget-object v5, p3, Lc/a/a/f;->c:Lc/a/a/h;

    iget-object v6, p3, Lc/a/a/f;->e:Lcom/bumptech/glide/manager/l;

    iget-object v7, p3, Lc/a/a/f;->f:Lcom/bumptech/glide/manager/g;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lc/a/a/f;-><init>(Landroid/content/Context;Ljava/lang/Class;Lc/a/a/q/f;Ljava/lang/Class;Lc/a/a/h;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/g;)V

    .line 2
    iget-object p1, p3, Lc/a/a/f;->h:Ljava/lang/Object;

    iput-object p1, p0, Lc/a/a/f;->h:Ljava/lang/Object;

    .line 3
    iget-boolean p1, p3, Lc/a/a/f;->j:Z

    iput-boolean p1, p0, Lc/a/a/f;->j:Z

    .line 4
    iget-object p1, p3, Lc/a/a/f;->i:Lc/a/a/o/c;

    iput-object p1, p0, Lc/a/a/f;->i:Lc/a/a/o/c;

    .line 5
    iget-object p1, p3, Lc/a/a/f;->x:Lc/a/a/o/i/b;

    iput-object p1, p0, Lc/a/a/f;->x:Lc/a/a/o/i/b;

    .line 6
    iget-boolean p1, p3, Lc/a/a/f;->t:Z

    iput-boolean p1, p0, Lc/a/a/f;->t:Z

    return-void
.end method

.method private a(Lc/a/a/r/h/j;FLc/a/a/j;Lc/a/a/r/c;)Lc/a/a/r/b;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/h/j<",
            "TTranscodeType;>;F",
            "Lc/a/a/j;",
            "Lc/a/a/r/c;",
            ")",
            "Lc/a/a/r/b;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v5, p3

    move-object/from16 v15, p4

    .line 63
    iget-object v1, v0, Lc/a/a/f;->g:Lc/a/a/q/a;

    iget-object v2, v0, Lc/a/a/f;->h:Ljava/lang/Object;

    iget-object v3, v0, Lc/a/a/f;->i:Lc/a/a/o/c;

    iget-object v4, v0, Lc/a/a/f;->b:Landroid/content/Context;

    iget-object v8, v0, Lc/a/a/f;->q:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Lc/a/a/f;->k:I

    iget-object v10, v0, Lc/a/a/f;->r:Landroid/graphics/drawable/Drawable;

    iget v11, v0, Lc/a/a/f;->l:I

    iget-object v12, v0, Lc/a/a/f;->B:Landroid/graphics/drawable/Drawable;

    iget v13, v0, Lc/a/a/f;->C:I

    iget-object v14, v0, Lc/a/a/f;->m:Lc/a/a/r/d;

    move-object/from16 p1, v1

    iget-object v1, v0, Lc/a/a/f;->c:Lc/a/a/h;

    invoke-virtual {v1}, Lc/a/a/h;->e()Lc/a/a/o/i/c;

    move-result-object v16

    iget-object v1, v0, Lc/a/a/f;->y:Lc/a/a/o/g;

    move-object/from16 v17, v1

    iget-object v1, v0, Lc/a/a/f;->d:Ljava/lang/Class;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lc/a/a/f;->t:Z

    move/from16 v19, v1

    iget-object v1, v0, Lc/a/a/f;->u:Lc/a/a/r/g/d;

    move-object/from16 v20, v1

    iget v1, v0, Lc/a/a/f;->w:I

    move/from16 v21, v1

    iget v1, v0, Lc/a/a/f;->v:I

    move/from16 v22, v1

    iget-object v1, v0, Lc/a/a/f;->x:Lc/a/a/o/i/b;

    move-object/from16 v23, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v23}, Lc/a/a/r/a;->b(Lc/a/a/q/f;Ljava/lang/Object;Lc/a/a/o/c;Landroid/content/Context;Lc/a/a/j;Lc/a/a/r/h/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILc/a/a/r/d;Lc/a/a/r/c;Lc/a/a/o/i/c;Lc/a/a/o/g;Ljava/lang/Class;ZLc/a/a/r/g/d;IILc/a/a/o/i/b;)Lc/a/a/r/a;

    move-result-object v1

    return-object v1
.end method

.method private a(Lc/a/a/r/h/j;Lc/a/a/r/f;)Lc/a/a/r/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/h/j<",
            "TTranscodeType;>;",
            "Lc/a/a/r/f;",
            ")",
            "Lc/a/a/r/b;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lc/a/a/f;->o:Lc/a/a/f;

    if-eqz v0, :cond_4

    .line 43
    iget-boolean v1, p0, Lc/a/a/f;->A:Z

    if-nez v1, :cond_3

    .line 44
    iget-object v0, v0, Lc/a/a/f;->u:Lc/a/a/r/g/d;

    invoke-static {}, Lc/a/a/r/g/e;->c()Lc/a/a/r/g/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lc/a/a/f;->o:Lc/a/a/f;

    iget-object v1, p0, Lc/a/a/f;->u:Lc/a/a/r/g/d;

    iput-object v1, v0, Lc/a/a/f;->u:Lc/a/a/r/g/d;

    .line 46
    :cond_0
    iget-object v0, p0, Lc/a/a/f;->o:Lc/a/a/f;

    iget-object v1, v0, Lc/a/a/f;->s:Lc/a/a/j;

    if-nez v1, :cond_1

    .line 47
    invoke-direct {p0}, Lc/a/a/f;->d()Lc/a/a/j;

    move-result-object v1

    iput-object v1, v0, Lc/a/a/f;->s:Lc/a/a/j;

    .line 48
    :cond_1
    iget v0, p0, Lc/a/a/f;->w:I

    iget v1, p0, Lc/a/a/f;->v:I

    invoke-static {v0, v1}, Lc/a/a/t/h;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/a/a/f;->o:Lc/a/a/f;

    iget v1, v0, Lc/a/a/f;->w:I

    iget v0, v0, Lc/a/a/f;->v:I

    invoke-static {v1, v0}, Lc/a/a/t/h;->a(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, Lc/a/a/f;->o:Lc/a/a/f;

    iget v1, p0, Lc/a/a/f;->w:I

    iget v2, p0, Lc/a/a/f;->v:I

    invoke-virtual {v0, v1, v2}, Lc/a/a/f;->a(II)Lc/a/a/f;

    .line 50
    :cond_2
    new-instance v0, Lc/a/a/r/f;

    invoke-direct {v0, p2}, Lc/a/a/r/f;-><init>(Lc/a/a/r/c;)V

    .line 51
    iget-object p2, p0, Lc/a/a/f;->p:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v1, p0, Lc/a/a/f;->s:Lc/a/a/j;

    invoke-direct {p0, p1, p2, v1, v0}, Lc/a/a/f;->a(Lc/a/a/r/h/j;FLc/a/a/j;Lc/a/a/r/c;)Lc/a/a/r/b;

    move-result-object p2

    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lc/a/a/f;->A:Z

    .line 53
    iget-object v1, p0, Lc/a/a/f;->o:Lc/a/a/f;

    invoke-direct {v1, p1, v0}, Lc/a/a/f;->a(Lc/a/a/r/h/j;Lc/a/a/r/f;)Lc/a/a/r/b;

    move-result-object p1

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lc/a/a/f;->A:Z

    .line 55
    invoke-virtual {v0, p2, p1}, Lc/a/a/r/f;->a(Lc/a/a/r/b;Lc/a/a/r/b;)V

    return-object v0

    .line 56
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_4
    iget-object v0, p0, Lc/a/a/f;->n:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 58
    new-instance v0, Lc/a/a/r/f;

    invoke-direct {v0, p2}, Lc/a/a/r/f;-><init>(Lc/a/a/r/c;)V

    .line 59
    iget-object p2, p0, Lc/a/a/f;->p:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v1, p0, Lc/a/a/f;->s:Lc/a/a/j;

    invoke-direct {p0, p1, p2, v1, v0}, Lc/a/a/f;->a(Lc/a/a/r/h/j;FLc/a/a/j;Lc/a/a/r/c;)Lc/a/a/r/b;

    move-result-object p2

    .line 60
    iget-object v1, p0, Lc/a/a/f;->n:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0}, Lc/a/a/f;->d()Lc/a/a/j;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lc/a/a/f;->a(Lc/a/a/r/h/j;FLc/a/a/j;Lc/a/a/r/c;)Lc/a/a/r/b;

    move-result-object p1

    .line 61
    invoke-virtual {v0, p2, p1}, Lc/a/a/r/f;->a(Lc/a/a/r/b;Lc/a/a/r/b;)V

    return-object v0

    .line 62
    :cond_5
    iget-object v0, p0, Lc/a/a/f;->p:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lc/a/a/f;->s:Lc/a/a/j;

    invoke-direct {p0, p1, v0, v1, p2}, Lc/a/a/f;->a(Lc/a/a/r/h/j;FLc/a/a/j;Lc/a/a/r/c;)Lc/a/a/r/b;

    move-result-object p1

    return-object p1
.end method

.method private b(Lc/a/a/r/h/j;)Lc/a/a/r/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/h/j<",
            "TTranscodeType;>;)",
            "Lc/a/a/r/b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/f;->s:Lc/a/a/j;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lc/a/a/j;->c:Lc/a/a/j;

    iput-object v0, p0, Lc/a/a/f;->s:Lc/a/a/j;

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lc/a/a/f;->a(Lc/a/a/r/h/j;Lc/a/a/r/f;)Lc/a/a/r/b;

    move-result-object p1

    return-object p1
.end method

.method private d()Lc/a/a/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/f;->s:Lc/a/a/j;

    sget-object v1, Lc/a/a/j;->d:Lc/a/a/j;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lc/a/a/j;->c:Lc/a/a/j;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lc/a/a/j;->c:Lc/a/a/j;

    if-ne v0, v1, :cond_1

    .line 4
    sget-object v0, Lc/a/a/j;->b:Lc/a/a/j;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lc/a/a/j;->a:Lc/a/a/j;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(I)Lc/a/a/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc/a/a/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 13
    iput p1, p0, Lc/a/a/f;->k:I

    return-object p0
.end method

.method public a(II)Lc/a/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lc/a/a/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 15
    invoke-static {p1, p2}, Lc/a/a/t/h;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iput p1, p0, Lc/a/a/f;->w:I

    .line 17
    iput p2, p0, Lc/a/a/f;->v:I

    return-object p0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and height must be Target#SIZE_ORIGINAL or > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lc/a/a/j;)Lc/a/a/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/j;",
            ")",
            "Lc/a/a/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lc/a/a/f;->s:Lc/a/a/j;

    return-object p0
.end method

.method public a(Lc/a/a/o/b;)Lc/a/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/b<",
            "TDataType;>;)",
            "Lc/a/a/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lc/a/a/f;->g:Lc/a/a/q/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lc/a/a/q/a;->a(Lc/a/a/o/b;)V

    :cond_0
    return-object p0
.end method

.method public a(Lc/a/a/o/c;)Lc/a/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/c;",
            ")",
            "Lc/a/a/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 19
    iput-object p1, p0, Lc/a/a/f;->i:Lc/a/a/o/c;

    return-object p0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Signature must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lc/a/a/o/e;)Lc/a/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/e<",
            "TDataType;TResourceType;>;)",
            "Lc/a/a/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/f;->g:Lc/a/a/q/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lc/a/a/q/a;->a(Lc/a/a/o/e;)V

    :cond_0
    return-object p0
.end method

.method public a(Lc/a/a/o/i/b;)Lc/a/a/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/b;",
            ")",
            "Lc/a/a/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lc/a/a/f;->x:Lc/a/a/o/i/b;

    return-object p0
.end method

.method a(Lc/a/a/r/g/d;)Lc/a/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/g/d<",
            "TTranscodeType;>;)",
            "Lc/a/a/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 11
    iput-object p1, p0, Lc/a/a/f;->u:Lc/a/a/r/g/d;

    return-object p0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Animation factory must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Object;)Lc/a/a/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lc/a/a/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lc/a/a/f;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lc/a/a/f;->j:Z

    return-object p0
.end method

.method public a(Z)Lc/a/a/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lc/a/a/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    .line 14
    iput-boolean p1, p0, Lc/a/a/f;->t:Z

    return-object p0
.end method

.method public varargs a([Lc/a/a/o/g;)Lc/a/a/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lc/a/a/o/g<",
            "TResourceType;>;)",
            "Lc/a/a/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lc/a/a/f;->z:Z

    .line 8
    array-length v1, p1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 9
    aget-object p1, p1, v0

    iput-object p1, p0, Lc/a/a/f;->y:Lc/a/a/o/g;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lc/a/a/o/d;

    invoke-direct {v0, p1}, Lc/a/a/o/d;-><init>([Lc/a/a/o/g;)V

    iput-object v0, p0, Lc/a/a/f;->y:Lc/a/a/o/g;

    :goto_0
    return-object p0
.end method

.method public a(Landroid/widget/ImageView;)Lc/a/a/r/h/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lc/a/a/r/h/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 35
    invoke-static {}, Lc/a/a/t/h;->a()V

    if-eqz p1, :cond_3

    .line 36
    iget-boolean v0, p0, Lc/a/a/f;->z:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 37
    sget-object v0, Lc/a/a/f$a;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lc/a/a/f;->b()V

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Lc/a/a/f;->a()V

    .line 40
    :cond_2
    :goto_0
    iget-object v0, p0, Lc/a/a/f;->c:Lc/a/a/h;

    iget-object v1, p0, Lc/a/a/f;->d:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lc/a/a/h;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lc/a/a/r/h/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/a/a/f;->a(Lc/a/a/r/h/j;)Lc/a/a/r/h/j;

    return-object p1

    .line 41
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must pass in a non null View"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lc/a/a/r/h/j;)Lc/a/a/r/h/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lc/a/a/r/h/j<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .line 23
    invoke-static {}, Lc/a/a/t/h;->a()V

    if-eqz p1, :cond_2

    .line 24
    iget-boolean v0, p0, Lc/a/a/f;->j:Z

    if-eqz v0, :cond_1

    .line 25
    invoke-interface {p1}, Lc/a/a/r/h/j;->getRequest()Lc/a/a/r/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0}, Lc/a/a/r/b;->clear()V

    .line 27
    iget-object v1, p0, Lc/a/a/f;->e:Lcom/bumptech/glide/manager/l;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/manager/l;->a(Lc/a/a/r/b;)V

    .line 28
    invoke-interface {v0}, Lc/a/a/r/b;->a()V

    .line 29
    :cond_0
    invoke-direct {p0, p1}, Lc/a/a/f;->b(Lc/a/a/r/h/j;)Lc/a/a/r/b;

    move-result-object v0

    .line 30
    invoke-interface {p1, v0}, Lc/a/a/r/h/j;->setRequest(Lc/a/a/r/b;)V

    .line 31
    iget-object v1, p0, Lc/a/a/f;->f:Lcom/bumptech/glide/manager/g;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/manager/g;->a(Lcom/bumptech/glide/manager/h;)V

    .line 32
    iget-object v1, p0, Lc/a/a/f;->e:Lcom/bumptech/glide/manager/l;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/manager/l;->b(Lc/a/a/r/b;)V

    return-object p1

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must first set a model (try #load())"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must pass in a non null Target"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a()V
    .locals 0

    return-void
.end method

.method b()V
    .locals 0

    return-void
.end method

.method public c()Lc/a/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lc/a/a/r/g/e;->c()Lc/a/a/r/g/d;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lc/a/a/f;->a(Lc/a/a/r/g/d;)Lc/a/a/f;

    return-object p0
.end method

.method public clone()Lc/a/a/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/f;

    .line 3
    iget-object v1, p0, Lc/a/a/f;->g:Lc/a/a/q/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/a/a/f;->g:Lc/a/a/q/a;

    invoke-virtual {v1}, Lc/a/a/q/a;->clone()Lc/a/a/q/a;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lc/a/a/f;->g:Lc/a/a/q/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/a/a/f;->clone()Lc/a/a/f;

    move-result-object v0

    return-object v0
.end method
