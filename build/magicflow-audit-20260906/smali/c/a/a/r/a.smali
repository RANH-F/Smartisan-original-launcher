.class public final Lc/a/a/r/a;
.super Ljava/lang/Object;
.source "GenericRequest.java"

# interfaces
.implements Lc/a/a/r/b;
.implements Lc/a/a/r/h/h;
.implements Lc/a/a/r/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/r/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/a/a/r/b;",
        "Lc/a/a/r/h/h;",
        "Lc/a/a/r/e;"
    }
.end annotation


# static fields
.field private static final D:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lc/a/a/r/a<",
            "****>;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lc/a/a/o/i/c$c;

.field private B:J

.field private C:Lc/a/a/r/a$a;

.field private final a:Ljava/lang/String;

.field private b:Lc/a/a/o/c;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/content/Context;

.field private h:Lc/a/a/o/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/g<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private i:Lc/a/a/q/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/q/f<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private j:Lc/a/a/r/c;

.field private k:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Lc/a/a/j;

.field private o:Lc/a/a/r/h/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/r/h/j<",
            "TR;>;"
        }
    .end annotation
.end field

.field private p:Lc/a/a/r/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/r/d<",
            "-TA;TR;>;"
        }
    .end annotation
.end field

.field private q:F

.field private r:Lc/a/a/o/i/c;

.field private s:Lc/a/a/r/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/r/g/d<",
            "TR;>;"
        }
    .end annotation
.end field

.field private t:I

.field private u:I

.field private v:Lc/a/a/o/i/b;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Z

.field private z:Lc/a/a/o/i/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/i/k<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lc/a/a/t/h;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lc/a/a/r/a;->D:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/r/a;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Lc/a/a/o/i/k;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/k<",
            "*>;TR;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lc/a/a/r/a;->l()Z

    move-result v6

    .line 81
    sget-object v0, Lc/a/a/r/a$a;->d:Lc/a/a/r/a$a;

    iput-object v0, p0, Lc/a/a/r/a;->C:Lc/a/a/r/a$a;

    .line 82
    iput-object p1, p0, Lc/a/a/r/a;->z:Lc/a/a/o/i/k;

    .line 83
    iget-object v0, p0, Lc/a/a/r/a;->p:Lc/a/a/r/d;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lc/a/a/r/a;->k:Ljava/lang/Object;

    iget-object v3, p0, Lc/a/a/r/a;->o:Lc/a/a/r/h/j;

    iget-boolean v4, p0, Lc/a/a/r/a;->y:Z

    move-object v1, p2

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lc/a/a/r/d;->a(Ljava/lang/Object;Ljava/lang/Object;Lc/a/a/r/h/j;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    iget-object v0, p0, Lc/a/a/r/a;->s:Lc/a/a/r/g/d;

    iget-boolean v1, p0, Lc/a/a/r/a;->y:Z

    invoke-interface {v0, v1, v6}, Lc/a/a/r/g/d;->a(ZZ)Lc/a/a/r/g/c;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lc/a/a/r/a;->o:Lc/a/a/r/h/j;

    invoke-interface {v1, p2, v0}, Lc/a/a/r/h/j;->onResourceReady(Ljava/lang/Object;Lc/a/a/r/g/c;)V

    .line 86
    :cond_1
    invoke-direct {p0}, Lc/a/a/r/a;->m()V

    const/4 p2, 0x2

    const-string v0, "GenericRequest"

    .line 87
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resource ready in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lc/a/a/r/a;->B:J

    invoke-static {v0, v1}, Lc/a/a/t/d;->a(J)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lc/a/a/o/i/k;->b()I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x3eb0000000000000L    # 9.5367431640625E-7

    mul-double/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " fromCache: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lc/a/a/r/a;->y:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/a/a/r/a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private a(Lc/a/a/q/f;Ljava/lang/Object;Lc/a/a/o/c;Landroid/content/Context;Lc/a/a/j;Lc/a/a/r/h/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILc/a/a/r/d;Lc/a/a/r/c;Lc/a/a/o/i/c;Lc/a/a/o/g;Ljava/lang/Class;ZLc/a/a/r/g/d;IILc/a/a/o/i/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/q/f<",
            "TA;TT;TZ;TR;>;TA;",
            "Lc/a/a/o/c;",
            "Landroid/content/Context;",
            "Lc/a/a/j;",
            "Lc/a/a/r/h/j<",
            "TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lc/a/a/r/d<",
            "-TA;TR;>;",
            "Lc/a/a/r/c;",
            "Lc/a/a/o/i/c;",
            "Lc/a/a/o/g<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;Z",
            "Lc/a/a/r/g/d<",
            "TR;>;II",
            "Lc/a/a/o/i/b;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p17

    move-object v3, p1

    .line 15
    iput-object v3, v0, Lc/a/a/r/a;->i:Lc/a/a/q/f;

    .line 16
    iput-object v1, v0, Lc/a/a/r/a;->k:Ljava/lang/Object;

    move-object v4, p3

    .line 17
    iput-object v4, v0, Lc/a/a/r/a;->b:Lc/a/a/o/c;

    move-object/from16 v4, p12

    .line 18
    iput-object v4, v0, Lc/a/a/r/a;->c:Landroid/graphics/drawable/Drawable;

    move/from16 v4, p13

    .line 19
    iput v4, v0, Lc/a/a/r/a;->d:I

    .line 20
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v0, Lc/a/a/r/a;->g:Landroid/content/Context;

    move-object v4, p5

    .line 21
    iput-object v4, v0, Lc/a/a/r/a;->n:Lc/a/a/j;

    move-object v4, p6

    .line 22
    iput-object v4, v0, Lc/a/a/r/a;->o:Lc/a/a/r/h/j;

    move v4, p7

    .line 23
    iput v4, v0, Lc/a/a/r/a;->q:F

    move-object v4, p8

    .line 24
    iput-object v4, v0, Lc/a/a/r/a;->w:Landroid/graphics/drawable/Drawable;

    move/from16 v4, p9

    .line 25
    iput v4, v0, Lc/a/a/r/a;->e:I

    move-object/from16 v4, p10

    .line 26
    iput-object v4, v0, Lc/a/a/r/a;->x:Landroid/graphics/drawable/Drawable;

    move/from16 v4, p11

    .line 27
    iput v4, v0, Lc/a/a/r/a;->f:I

    move-object/from16 v4, p14

    .line 28
    iput-object v4, v0, Lc/a/a/r/a;->p:Lc/a/a/r/d;

    move-object/from16 v4, p15

    .line 29
    iput-object v4, v0, Lc/a/a/r/a;->j:Lc/a/a/r/c;

    move-object/from16 v4, p16

    .line 30
    iput-object v4, v0, Lc/a/a/r/a;->r:Lc/a/a/o/i/c;

    .line 31
    iput-object v2, v0, Lc/a/a/r/a;->h:Lc/a/a/o/g;

    move-object/from16 v4, p18

    .line 32
    iput-object v4, v0, Lc/a/a/r/a;->l:Ljava/lang/Class;

    move/from16 v4, p19

    .line 33
    iput-boolean v4, v0, Lc/a/a/r/a;->m:Z

    move-object/from16 v4, p20

    .line 34
    iput-object v4, v0, Lc/a/a/r/a;->s:Lc/a/a/r/g/d;

    move/from16 v4, p21

    .line 35
    iput v4, v0, Lc/a/a/r/a;->t:I

    move/from16 v4, p22

    .line 36
    iput v4, v0, Lc/a/a/r/a;->u:I

    move-object/from16 v4, p23

    .line 37
    iput-object v4, v0, Lc/a/a/r/a;->v:Lc/a/a/o/i/b;

    .line 38
    sget-object v5, Lc/a/a/r/a$a;->a:Lc/a/a/r/a$a;

    iput-object v5, v0, Lc/a/a/r/a;->C:Lc/a/a/r/a$a;

    if-eqz v1, :cond_3

    .line 39
    invoke-interface {p1}, Lc/a/a/q/f;->d()Lc/a/a/o/j/l;

    move-result-object v1

    const-string v5, "ModelLoader"

    const-string v6, "try .using(ModelLoader)"

    invoke-static {v5, v1, v6}, Lc/a/a/r/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {p1}, Lc/a/a/q/f;->c()Lc/a/a/o/k/j/c;

    move-result-object v1

    const-string v5, "Transcoder"

    const-string v6, "try .as*(Class).transcode(ResourceTranscoder)"

    invoke-static {v5, v1, v6}, Lc/a/a/r/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Transformation"

    const-string v5, "try .transform(UnitTransformation.get())"

    .line 41
    invoke-static {v1, v2, v5}, Lc/a/a/r/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual/range {p23 .. p23}, Lc/a/a/o/i/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-interface {p1}, Lc/a/a/q/b;->b()Lc/a/a/o/b;

    move-result-object v1

    const-string v2, "SourceEncoder"

    const-string v5, "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)"

    invoke-static {v2, v1, v5}, Lc/a/a/r/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {p1}, Lc/a/a/q/b;->f()Lc/a/a/o/e;

    move-result-object v1

    const-string v2, "SourceDecoder"

    const-string v5, "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)"

    invoke-static {v2, v1, v5}, Lc/a/a/r/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    :goto_0
    invoke-virtual/range {p23 .. p23}, Lc/a/a/o/i/b;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p23 .. p23}, Lc/a/a/o/i/b;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    :cond_1
    invoke-interface {p1}, Lc/a/a/q/b;->a()Lc/a/a/o/e;

    move-result-object v1

    const-string v2, "CacheDecoder"

    const-string v5, "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)"

    invoke-static {v2, v1, v5}, Lc/a/a/r/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    :cond_2
    invoke-virtual/range {p23 .. p23}, Lc/a/a/o/i/b;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    invoke-interface {p1}, Lc/a/a/q/b;->e()Lc/a/a/o/f;

    move-result-object v1

    const-string v2, "Encoder"

    const-string v3, "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)"

    invoke-static {v2, v1, v3}, Lc/a/a/r/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lc/a/a/r/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GenericRequest"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_1

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " must not be null"

    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p0, ", "

    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static b(Lc/a/a/q/f;Ljava/lang/Object;Lc/a/a/o/c;Landroid/content/Context;Lc/a/a/j;Lc/a/a/r/h/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILc/a/a/r/d;Lc/a/a/r/c;Lc/a/a/o/i/c;Lc/a/a/o/g;Ljava/lang/Class;ZLc/a/a/r/g/d;IILc/a/a/o/i/b;)Lc/a/a/r/a;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a/a/q/f<",
            "TA;TT;TZ;TR;>;TA;",
            "Lc/a/a/o/c;",
            "Landroid/content/Context;",
            "Lc/a/a/j;",
            "Lc/a/a/r/h/j<",
            "TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lc/a/a/r/d<",
            "-TA;TR;>;",
            "Lc/a/a/r/c;",
            "Lc/a/a/o/i/c;",
            "Lc/a/a/o/g<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;Z",
            "Lc/a/a/r/g/d<",
            "TR;>;II",
            "Lc/a/a/o/i/b;",
            ")",
            "Lc/a/a/r/a<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/a/a/r/a;->D:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/r/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lc/a/a/r/a;

    invoke-direct {v0}, Lc/a/a/r/a;-><init>()V

    :cond_0
    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move/from16 v20, p18

    move-object/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move-object/from16 v24, p22

    .line 3
    invoke-direct/range {v1 .. v24}, Lc/a/a/r/a;->a(Lc/a/a/q/f;Ljava/lang/Object;Lc/a/a/o/c;Landroid/content/Context;Lc/a/a/j;Lc/a/a/r/h/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILc/a/a/r/d;Lc/a/a/r/c;Lc/a/a/o/i/c;Lc/a/a/o/g;Ljava/lang/Class;ZLc/a/a/r/g/d;IILc/a/a/o/i/b;)V

    return-object v0
.end method

.method private b(Lc/a/a/o/i/k;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lc/a/a/r/a;->r:Lc/a/a/o/i/c;

    invoke-virtual {v0, p1}, Lc/a/a/o/i/c;->b(Lc/a/a/o/i/k;)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lc/a/a/r/a;->z:Lc/a/a/o/i/k;

    return-void
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Lc/a/a/r/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lc/a/a/r/a;->k:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lc/a/a/r/a;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 19
    invoke-direct {p0}, Lc/a/a/r/a;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 20
    invoke-direct {p0}, Lc/a/a/r/a;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 21
    :cond_3
    iget-object v1, p0, Lc/a/a/r/a;->o:Lc/a/a/r/h/j;

    invoke-interface {v1, p1, v0}, Lc/a/a/r/h/j;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/r/a;->j:Lc/a/a/r/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lc/a/a/r/c;->a(Lc/a/a/r/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/r/a;->j:Lc/a/a/r/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lc/a/a/r/c;->b(Lc/a/a/r/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private i()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/r/a;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lc/a/a/r/a;->f:I

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/a/a/r/a;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lc/a/a/r/a;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/r/a;->x:Landroid/graphics/drawable/Drawable;

    .line 3
    :cond_0
    iget-object v0, p0, Lc/a/a/r/a;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private j()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/r/a;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lc/a/a/r/a;->d:I

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/a/a/r/a;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lc/a/a/r/a;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/r/a;->c:Landroid/graphics/drawable/Drawable;

    .line 3
    :cond_0
    iget-object v0, p0, Lc/a/a/r/a;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private k()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/r/a;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lc/a/a/r/a;->e:I

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/a/a/r/a;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lc/a/a/r/a;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/r/a;->w:Landroid/graphics/drawable/Drawable;

    .line 3
    :cond_0
    iget-object v0, p0, Lc/a/a/r/a;->w:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/r/a;->j:Lc/a/a/r/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lc/a/a/r/c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/r/a;->j:Lc/a/a/r/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lc/a/a/r/c;->c(Lc/a/a/r/b;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lc/a/a/r/a;->i:Lc/a/a/q/f;

    .line 2
    iput-object v0, p0, Lc/a/a/r/a;->k:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lc/a/a/r/a;->g:Landroid/content/Context;

    .line 4
    iput-object v0, p0, Lc/a/a/r/a;->o:Lc/a/a/r/h/j;

    .line 5
    iput-object v0, p0, Lc/a/a/r/a;->w:Landroid/graphics/drawable/Drawable;

    .line 6
    iput-object v0, p0, Lc/a/a/r/a;->x:Landroid/graphics/drawable/Drawable;

    .line 7
    iput-object v0, p0, Lc/a/a/r/a;->c:Landroid/graphics/drawable/Drawable;

    .line 8
    iput-object v0, p0, Lc/a/a/r/a;->p:Lc/a/a/r/d;

    .line 9
    iput-object v0, p0, Lc/a/a/r/a;->j:Lc/a/a/r/c;

    .line 10
    iput-object v0, p0, Lc/a/a/r/a;->h:Lc/a/a/o/g;

    .line 11
    iput-object v0, p0, Lc/a/a/r/a;->s:Lc/a/a/r/g/d;

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lc/a/a/r/a;->y:Z

    .line 13
    iput-object v0, p0, Lc/a/a/r/a;->A:Lc/a/a/o/i/c$c;

    .line 14
    sget-object v0, Lc/a/a/r/a;->D:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(II)V
    .locals 16

    move-object/from16 v12, p0

    const/4 v13, 0x2

    const-string v14, "GenericRequest"

    .line 54
    invoke-static {v14, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v12, Lc/a/a/r/a;->B:J

    invoke-static {v1, v2}, Lc/a/a/t/d;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lc/a/a/r/a;->a(Ljava/lang/String;)V

    .line 56
    :cond_0
    iget-object v0, v12, Lc/a/a/r/a;->C:Lc/a/a/r/a$a;

    sget-object v1, Lc/a/a/r/a$a;->c:Lc/a/a/r/a$a;

    if-eq v0, v1, :cond_1

    return-void

    .line 57
    :cond_1
    sget-object v0, Lc/a/a/r/a$a;->b:Lc/a/a/r/a$a;

    iput-object v0, v12, Lc/a/a/r/a;->C:Lc/a/a/r/a$a;

    .line 58
    iget v0, v12, Lc/a/a/r/a;->q:F

    move/from16 v1, p1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 59
    iget v0, v12, Lc/a/a/r/a;->q:F

    move/from16 v1, p2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 60
    iget-object v0, v12, Lc/a/a/r/a;->i:Lc/a/a/q/f;

    invoke-interface {v0}, Lc/a/a/q/f;->d()Lc/a/a/o/j/l;

    move-result-object v0

    .line 61
    iget-object v1, v12, Lc/a/a/r/a;->k:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lc/a/a/o/j/l;->a(Ljava/lang/Object;II)Lc/a/a/o/h/c;

    move-result-object v4

    if-nez v4, :cond_2

    .line 62
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load model: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lc/a/a/r/a;->k:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Lc/a/a/r/a;->a(Ljava/lang/Exception;)V

    return-void

    .line 63
    :cond_2
    iget-object v0, v12, Lc/a/a/r/a;->i:Lc/a/a/q/f;

    invoke-interface {v0}, Lc/a/a/q/f;->c()Lc/a/a/o/k/j/c;

    move-result-object v7

    .line 64
    invoke-static {v14, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished setup for calling load in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v12, Lc/a/a/r/a;->B:J

    invoke-static {v5, v6}, Lc/a/a/t/d;->a(J)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lc/a/a/r/a;->a(Ljava/lang/String;)V

    :cond_3
    const/4 v15, 0x1

    .line 66
    iput-boolean v15, v12, Lc/a/a/r/a;->y:Z

    .line 67
    iget-object v0, v12, Lc/a/a/r/a;->r:Lc/a/a/o/i/c;

    iget-object v1, v12, Lc/a/a/r/a;->b:Lc/a/a/o/c;

    iget-object v5, v12, Lc/a/a/r/a;->i:Lc/a/a/q/f;

    iget-object v6, v12, Lc/a/a/r/a;->h:Lc/a/a/o/g;

    iget-object v8, v12, Lc/a/a/r/a;->n:Lc/a/a/j;

    iget-boolean v9, v12, Lc/a/a/r/a;->m:Z

    iget-object v10, v12, Lc/a/a/r/a;->v:Lc/a/a/o/i/b;

    move-object/from16 v11, p0

    invoke-virtual/range {v0 .. v11}, Lc/a/a/o/i/c;->a(Lc/a/a/o/c;IILc/a/a/o/h/c;Lc/a/a/q/b;Lc/a/a/o/g;Lc/a/a/o/k/j/c;Lc/a/a/j;ZLc/a/a/o/i/b;Lc/a/a/r/e;)Lc/a/a/o/i/c$c;

    move-result-object v0

    iput-object v0, v12, Lc/a/a/r/a;->A:Lc/a/a/o/i/c$c;

    .line 68
    iget-object v0, v12, Lc/a/a/r/a;->z:Lc/a/a/o/i/k;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v15, 0x0

    :goto_0
    iput-boolean v15, v12, Lc/a/a/r/a;->y:Z

    .line 69
    invoke-static {v14, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v12, Lc/a/a/r/a;->B:J

    invoke-static {v1, v2}, Lc/a/a/t/d;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lc/a/a/r/a;->a(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public a(Lc/a/a/o/i/k;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/k<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 71
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/a/r/a;->l:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " inside, but instead got null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lc/a/a/r/a;->a(Ljava/lang/Exception;)V

    return-void

    .line 72
    :cond_0
    invoke-interface {p1}, Lc/a/a/o/i/k;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 73
    iget-object v1, p0, Lc/a/a/r/a;->l:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0}, Lc/a/a/r/a;->h()Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    invoke-direct {p0, p1}, Lc/a/a/r/a;->b(Lc/a/a/o/i/k;)V

    .line 76
    sget-object p1, Lc/a/a/r/a$a;->d:Lc/a/a/r/a$a;

    iput-object p1, p0, Lc/a/a/r/a;->C:Lc/a/a/r/a$a;

    return-void

    .line 77
    :cond_2
    invoke-direct {p0, p1, v0}, Lc/a/a/r/a;->a(Lc/a/a/o/i/k;Ljava/lang/Object;)V

    return-void

    .line 78
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lc/a/a/r/a;->b(Lc/a/a/o/i/k;)V

    .line 79
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive an object of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc/a/a/r/a;->l:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but instead got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " inside Resource{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "}."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const-string v3, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lc/a/a/r/a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "GenericRequest"

    const/4 v1, 0x3

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "load failed"

    .line 90
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :cond_0
    sget-object v0, Lc/a/a/r/a$a;->e:Lc/a/a/r/a$a;

    iput-object v0, p0, Lc/a/a/r/a;->C:Lc/a/a/r/a$a;

    .line 92
    iget-object v0, p0, Lc/a/a/r/a;->p:Lc/a/a/r/d;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lc/a/a/r/a;->k:Ljava/lang/Object;

    iget-object v2, p0, Lc/a/a/r/a;->o:Lc/a/a/r/h/j;

    invoke-direct {p0}, Lc/a/a/r/a;->l()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lc/a/a/r/d;->a(Ljava/lang/Exception;Ljava/lang/Object;Lc/a/a/r/h/j;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    :cond_1
    invoke-direct {p0, p1}, Lc/a/a/r/a;->b(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 3

    .line 4
    invoke-static {}, Lc/a/a/t/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lc/a/a/r/a;->B:J

    .line 5
    iget-object v0, p0, Lc/a/a/r/a;->k:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lc/a/a/r/a;->a(Ljava/lang/Exception;)V

    return-void

    .line 7
    :cond_0
    sget-object v0, Lc/a/a/r/a$a;->c:Lc/a/a/r/a$a;

    iput-object v0, p0, Lc/a/a/r/a;->C:Lc/a/a/r/a$a;

    .line 8
    iget v0, p0, Lc/a/a/r/a;->t:I

    iget v1, p0, Lc/a/a/r/a;->u:I

    invoke-static {v0, v1}, Lc/a/a/t/h;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget v0, p0, Lc/a/a/r/a;->t:I

    iget v1, p0, Lc/a/a/r/a;->u:I

    invoke-virtual {p0, v0, v1}, Lc/a/a/r/a;->a(II)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lc/a/a/r/a;->o:Lc/a/a/r/h/j;

    invoke-interface {v0, p0}, Lc/a/a/r/h/j;->getSize(Lc/a/a/r/h/h;)V

    .line 11
    :goto_0
    invoke-virtual {p0}, Lc/a/a/r/a;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lc/a/a/r/a;->f()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lc/a/a/r/a;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lc/a/a/r/a;->o:Lc/a/a/r/h/j;

    invoke-direct {p0}, Lc/a/a/r/a;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/a/a/r/h/j;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 v0, 0x2

    const-string v1, "GenericRequest"

    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/a/a/r/a;->B:J

    invoke-static {v1, v2}, Lc/a/a/t/d;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/a/a/r/a;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/a/a/r/a;->d()Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    .line 1
    invoke-static {}, Lc/a/a/t/h;->a()V

    .line 2
    iget-object v0, p0, Lc/a/a/r/a;->C:Lc/a/a/r/a$a;

    sget-object v1, Lc/a/a/r/a$a;->g:Lc/a/a/r/a$a;

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lc/a/a/r/a;->e()V

    .line 4
    iget-object v0, p0, Lc/a/a/r/a;->z:Lc/a/a/o/i/k;

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lc/a/a/r/a;->b(Lc/a/a/o/i/k;)V

    .line 6
    :cond_1
    invoke-direct {p0}, Lc/a/a/r/a;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lc/a/a/r/a;->o:Lc/a/a/r/h/j;

    invoke-direct {p0}, Lc/a/a/r/a;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/a/a/r/h/j;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_2
    sget-object v0, Lc/a/a/r/a$a;->g:Lc/a/a/r/a$a;

    iput-object v0, p0, Lc/a/a/r/a;->C:Lc/a/a/r/a$a;

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/r/a;->C:Lc/a/a/r/a$a;

    sget-object v1, Lc/a/a/r/a$a;->d:Lc/a/a/r/a$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method e()V
    .locals 1

    .line 1
    sget-object v0, Lc/a/a/r/a$a;->f:Lc/a/a/r/a$a;

    iput-object v0, p0, Lc/a/a/r/a;->C:Lc/a/a/r/a$a;

    .line 2
    iget-object v0, p0, Lc/a/a/r/a;->A:Lc/a/a/o/i/c$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lc/a/a/o/i/c$c;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lc/a/a/r/a;->A:Lc/a/a/o/i/c$c;

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/r/a;->C:Lc/a/a/r/a$a;

    sget-object v1, Lc/a/a/r/a$a;->e:Lc/a/a/r/a$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCancelled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/r/a;->C:Lc/a/a/r/a$a;

    sget-object v1, Lc/a/a/r/a$a;->f:Lc/a/a/r/a$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lc/a/a/r/a$a;->g:Lc/a/a/r/a$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/r/a;->C:Lc/a/a/r/a$a;

    sget-object v1, Lc/a/a/r/a$a;->b:Lc/a/a/r/a$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lc/a/a/r/a$a;->c:Lc/a/a/r/a$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public pause()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/a/a/r/a;->clear()V

    .line 2
    sget-object v0, Lc/a/a/r/a$a;->h:Lc/a/a/r/a$a;

    iput-object v0, p0, Lc/a/a/r/a;->C:Lc/a/a/r/a$a;

    return-void
.end method
