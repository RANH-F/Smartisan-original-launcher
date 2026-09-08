.class public Luk/co/senab/photoview/d;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Luk/co/senab/photoview/c;
.implements Landroid/view/View$OnTouchListener;
.implements Luk/co/senab/photoview/e/e;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/senab/photoview/d$d;,
        Luk/co/senab/photoview/d$c;,
        Luk/co/senab/photoview/d$h;,
        Luk/co/senab/photoview/d$f;,
        Luk/co/senab/photoview/d$g;,
        Luk/co/senab/photoview/d$e;
    }
.end annotation


# static fields
.field private static final B:Z

.field static final C:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Landroid/widget/ImageView$ScaleType;

.field a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/view/GestureDetector;

.field private i:Luk/co/senab/photoview/e/d;

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Matrix;

.field private final l:Landroid/graphics/Matrix;

.field private final m:Landroid/graphics/RectF;

.field private final n:[F

.field private o:Luk/co/senab/photoview/d$e;

.field private p:Luk/co/senab/photoview/d$f;

.field private q:Luk/co/senab/photoview/d$h;

.field private r:Landroid/view/View$OnLongClickListener;

.field private s:Luk/co/senab/photoview/d$g;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Luk/co/senab/photoview/d$d;

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PhotoViewAttacher"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Luk/co/senab/photoview/d;->B:Z

    .line 2
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Luk/co/senab/photoview/d;->C:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Luk/co/senab/photoview/d;-><init>(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 3
    iput v0, p0, Luk/co/senab/photoview/d;->a:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Luk/co/senab/photoview/d;->b:F

    const/high16 v0, 0x3fe00000    # 1.75f

    .line 5
    iput v0, p0, Luk/co/senab/photoview/d;->c:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 6
    iput v0, p0, Luk/co/senab/photoview/d;->d:F

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Luk/co/senab/photoview/d;->e:Z

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Luk/co/senab/photoview/d;->f:Z

    .line 9
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/d;->j:Landroid/graphics/Matrix;

    .line 10
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/d;->k:Landroid/graphics/Matrix;

    .line 11
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/d;->l:Landroid/graphics/Matrix;

    .line 12
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/d;->m:Landroid/graphics/RectF;

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 13
    iput-object v1, p0, Luk/co/senab/photoview/d;->n:[F

    const/4 v1, 0x2

    .line 14
    iput v1, p0, Luk/co/senab/photoview/d;->y:I

    .line 15
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Luk/co/senab/photoview/d;->A:Landroid/widget/ImageView$ScaleType;

    .line 16
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Luk/co/senab/photoview/d;->g:Ljava/lang/ref/WeakReference;

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 18
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 19
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 21
    :cond_0
    invoke-static {p1}, Luk/co/senab/photoview/d;->d(Landroid/widget/ImageView;)V

    .line 22
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 23
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 24
    invoke-static {v0, p0}, Luk/co/senab/photoview/e/f;->a(Landroid/content/Context;Luk/co/senab/photoview/e/e;)Luk/co/senab/photoview/e/d;

    move-result-object v0

    iput-object v0, p0, Luk/co/senab/photoview/d;->i:Luk/co/senab/photoview/e/d;

    .line 25
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Luk/co/senab/photoview/d$a;

    invoke-direct {v1, p0}, Luk/co/senab/photoview/d$a;-><init>(Luk/co/senab/photoview/d;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Luk/co/senab/photoview/d;->h:Landroid/view/GestureDetector;

    .line 26
    iget-object p1, p0, Luk/co/senab/photoview/d;->h:Landroid/view/GestureDetector;

    new-instance v0, Luk/co/senab/photoview/b;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/b;-><init>(Luk/co/senab/photoview/d;)V

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 27
    invoke-virtual {p0, p2}, Luk/co/senab/photoview/d;->b(Z)V

    return-void
.end method

.method private a(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 79
    iget-object v0, p0, Luk/co/senab/photoview/d;->n:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 80
    iget-object p1, p0, Luk/co/senab/photoview/d;->n:[F

    aget p1, p1, p2

    return p1
.end method

.method private a(Landroid/widget/ImageView;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 71
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->e()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Luk/co/senab/photoview/d;->m:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 74
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 75
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 76
    iget-object v0, p0, Luk/co/senab/photoview/d;->m:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 77
    iget-object p1, p0, Luk/co/senab/photoview/d;->m:Landroid/graphics/RectF;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Luk/co/senab/photoview/d;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Luk/co/senab/photoview/d;->r:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    .line 81
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->e()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 82
    :cond_0
    invoke-direct {p0, v0}, Luk/co/senab/photoview/d;->b(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 83
    invoke-direct {p0, v0}, Luk/co/senab/photoview/d;->a(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 84
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 85
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 86
    iget-object v3, p0, Luk/co/senab/photoview/d;->j:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v1, v2

    int-to-float p1, p1

    div-float v4, v0, p1

    .line 87
    iget-object v5, p0, Luk/co/senab/photoview/d;->A:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    .line 88
    iget-object v3, p0, Luk/co/senab/photoview/d;->j:Landroid/graphics/Matrix;

    sub-float/2addr v1, v2

    div-float/2addr v1, v7

    sub-float/2addr v0, p1

    div-float/2addr v0, v7

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 89
    :cond_1
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_2

    .line 90
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 91
    iget-object v4, p0, Luk/co/senab/photoview/d;->j:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 92
    iget-object v4, p0, Luk/co/senab/photoview/d;->j:Landroid/graphics/Matrix;

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v7

    mul-float/2addr p1, v3

    sub-float/2addr v0, p1

    div-float/2addr v0, v7

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 93
    :cond_2
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 94
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 95
    iget-object v4, p0, Luk/co/senab/photoview/d;->j:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 96
    iget-object v4, p0, Luk/co/senab/photoview/d;->j:Landroid/graphics/Matrix;

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v7

    mul-float/2addr p1, v3

    sub-float/2addr v0, p1

    div-float/2addr v0, v7

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 97
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 98
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v4, v4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 99
    sget-object v0, Luk/co/senab/photoview/d$b;->a:[I

    iget-object v1, p0, Luk/co/senab/photoview/d;->A:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 100
    :cond_4
    iget-object v0, p0, Luk/co/senab/photoview/d;->j:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 101
    :cond_5
    iget-object v0, p0, Luk/co/senab/photoview/d;->j:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 102
    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 103
    :cond_6
    iget-object v0, p0, Luk/co/senab/photoview/d;->j:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 104
    :cond_7
    iget-object v0, p0, Luk/co/senab/photoview/d;->j:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 105
    :goto_0
    invoke-direct {p0}, Luk/co/senab/photoview/d;->t()V

    :cond_8
    :goto_1
    return-void
.end method

.method static synthetic a(Luk/co/senab/photoview/d;Landroid/graphics/Matrix;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Luk/co/senab/photoview/d;->b(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private b(Landroid/widget/ImageView;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method static synthetic b(Luk/co/senab/photoview/d;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Luk/co/senab/photoview/d;->l:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private static b(FFF)V
    .locals 0

    cmpl-float p0, p0, p1

    if-gez p0, :cond_1

    cmpl-float p0, p1, p2

    if-gez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MidZoom has to be less than MaxZoom"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MinZoom has to be less than MidZoom"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(Landroid/graphics/Matrix;)V
    .locals 1

    .line 11
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->e()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-direct {p0}, Luk/co/senab/photoview/d;->r()V

    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 14
    iget-object v0, p0, Luk/co/senab/photoview/d;->o:Luk/co/senab/photoview/d$e;

    if-eqz v0, :cond_0

    .line 15
    invoke-direct {p0, p1}, Luk/co/senab/photoview/d;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    iget-object v0, p0, Luk/co/senab/photoview/d;->o:Luk/co/senab/photoview/d$e;

    invoke-interface {v0, p1}, Luk/co/senab/photoview/d$e;->a(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method private static b(Landroid/widget/ImageView$ScaleType;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    sget-object v0, Luk/co/senab/photoview/d$b;->a:[I

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return v1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported in PhotoView"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(Landroid/widget/ImageView;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static d(Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    instance-of v0, p0, Luk/co/senab/photoview/c;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method static synthetic o()Z
    .locals 1

    .line 1
    sget-boolean v0, Luk/co/senab/photoview/d;->B:Z

    return v0
.end method

.method private p()V
    .locals 1

    .line 1
    iget-object v0, p0, Luk/co/senab/photoview/d;->x:Luk/co/senab/photoview/d$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Luk/co/senab/photoview/d$d;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Luk/co/senab/photoview/d;->x:Luk/co/senab/photoview/d$d;

    :cond_0
    return-void
.end method

.method private q()V
    .locals 1

    .line 1
    invoke-direct {p0}, Luk/co/senab/photoview/d;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/d;->b(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->e()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Luk/co/senab/photoview/c;

    if-nez v1, :cond_1

    .line 3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ImageView\'s ScaleType has been changed since attaching a PhotoViewAttacher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private s()Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->e()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->d()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-direct {p0, v2}, Luk/co/senab/photoview/d;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 4
    invoke-direct {p0, v0}, Luk/co/senab/photoview/d;->a(Landroid/widget/ImageView;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v6, v3, v5

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-gtz v6, :cond_4

    .line 5
    sget-object v6, Luk/co/senab/photoview/d$b;->a:[I

    iget-object v11, p0, Luk/co/senab/photoview/d;->A:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v11

    aget v6, v6, v11

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    sub-float/2addr v5, v3

    div-float/2addr v5, v7

    .line 6
    iget v3, v2, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float v3, v5, v3

    goto :goto_2

    :cond_2
    sub-float/2addr v5, v3

    .line 7
    iget v3, v2, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 8
    :cond_3
    iget v3, v2, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 9
    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v3, v10

    if-lez v6, :cond_5

    :goto_1
    neg-float v3, v3

    goto :goto_2

    .line 10
    :cond_5
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v6, v3, v5

    if-gez v6, :cond_6

    goto :goto_0

    :cond_6
    move v3, v10

    .line 11
    :goto_2
    invoke-direct {p0, v0}, Luk/co/senab/photoview/d;->b(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v5, v4, v0

    const/4 v6, 0x1

    if-gtz v5, :cond_9

    .line 12
    sget-object v1, Luk/co/senab/photoview/d$b;->a:[I

    iget-object v5, p0, Luk/co/senab/photoview/d;->A:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v9, :cond_8

    if-eq v1, v8, :cond_7

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    .line 13
    iget v1, v2, Landroid/graphics/RectF;->left:F

    :goto_3
    sub-float/2addr v0, v1

    :goto_4
    move v10, v0

    goto :goto_5

    :cond_7
    sub-float/2addr v0, v4

    .line 14
    iget v1, v2, Landroid/graphics/RectF;->left:F

    goto :goto_3

    .line 15
    :cond_8
    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_4

    .line 16
    :goto_5
    iput v9, p0, Luk/co/senab/photoview/d;->y:I

    goto :goto_6

    .line 17
    :cond_9
    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v4, v10

    if-lez v5, :cond_a

    .line 18
    iput v1, p0, Luk/co/senab/photoview/d;->y:I

    neg-float v10, v4

    goto :goto_6

    .line 19
    :cond_a
    iget v1, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v1, v0

    if-gez v2, :cond_b

    sub-float v10, v0, v1

    .line 20
    iput v6, p0, Luk/co/senab/photoview/d;->y:I

    goto :goto_6

    :cond_b
    const/4 v0, -0x1

    .line 21
    iput v0, p0, Luk/co/senab/photoview/d;->y:I

    .line 22
    :goto_6
    iget-object v0, p0, Luk/co/senab/photoview/d;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0, v10, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v6
.end method

.method private t()V
    .locals 1

    .line 1
    iget-object v0, p0, Luk/co/senab/photoview/d;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/d;->b(Landroid/graphics/Matrix;)V

    .line 3
    invoke-direct {p0}, Luk/co/senab/photoview/d;->s()Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 6
    iget-object v0, p0, Luk/co/senab/photoview/d;->g:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 11
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    invoke-direct {p0}, Luk/co/senab/photoview/d;->p()V

    .line 13
    :cond_2
    iget-object v0, p0, Luk/co/senab/photoview/d;->h:Landroid/view/GestureDetector;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 15
    :cond_3
    iput-object v1, p0, Luk/co/senab/photoview/d;->o:Luk/co/senab/photoview/d$e;

    .line 16
    iput-object v1, p0, Luk/co/senab/photoview/d;->p:Luk/co/senab/photoview/d$f;

    .line 17
    iput-object v1, p0, Luk/co/senab/photoview/d;->q:Luk/co/senab/photoview/d$h;

    .line 18
    iput-object v1, p0, Luk/co/senab/photoview/d;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(F)V
    .locals 2

    .line 51
    iget v0, p0, Luk/co/senab/photoview/d;->b:F

    iget v1, p0, Luk/co/senab/photoview/d;->c:F

    invoke-static {v0, v1, p1}, Luk/co/senab/photoview/d;->b(FFF)V

    .line 52
    iput p1, p0, Luk/co/senab/photoview/d;->d:F

    return-void
.end method

.method public a(FF)V
    .locals 6

    .line 19
    iget-object v0, p0, Luk/co/senab/photoview/d;->i:Luk/co/senab/photoview/e/d;

    invoke-interface {v0}, Luk/co/senab/photoview/e/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 20
    :cond_0
    sget-boolean v0, Luk/co/senab/photoview/d;->B:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 21
    invoke-static {}, Luk/co/senab/photoview/f/a;->a()Luk/co/senab/photoview/f/b;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "onDrag: dx: %.2f. dy: %.2f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PhotoViewAttacher"

    .line 23
    invoke-interface {v0, v5, v4}, Luk/co/senab/photoview/f/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_1
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->e()Landroid/widget/ImageView;

    move-result-object v0

    .line 25
    iget-object v4, p0, Luk/co/senab/photoview/d;->l:Landroid/graphics/Matrix;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 26
    invoke-direct {p0}, Luk/co/senab/photoview/d;->q()V

    .line 27
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 28
    iget-boolean v0, p0, Luk/co/senab/photoview/d;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Luk/co/senab/photoview/d;->i:Luk/co/senab/photoview/e/d;

    invoke-interface {v0}, Luk/co/senab/photoview/e/d;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Luk/co/senab/photoview/d;->f:Z

    if-nez v0, :cond_4

    .line 29
    iget v0, p0, Luk/co/senab/photoview/d;->y:I

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_3

    :cond_2
    iget v0, p0, Luk/co/senab/photoview/d;->y:I

    if-ne v0, v3, :cond_5

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_5

    :cond_3
    if-eqz p2, :cond_5

    .line 30
    invoke-interface {p2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 31
    invoke-interface {p2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(FFF)V
    .locals 4

    .line 40
    sget-boolean v0, Luk/co/senab/photoview/d;->B:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Luk/co/senab/photoview/f/a;->a()Luk/co/senab/photoview/f/b;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 42
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "onScale: scale: %.2f. fX: %.2f. fY: %.2f"

    .line 43
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhotoViewAttacher"

    .line 44
    invoke-interface {v0, v2, v1}, Luk/co/senab/photoview/f/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->k()F

    move-result v0

    iget v1, p0, Luk/co/senab/photoview/d;->d:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 46
    :cond_1
    iget-object v0, p0, Luk/co/senab/photoview/d;->s:Luk/co/senab/photoview/d$g;

    if-eqz v0, :cond_2

    .line 47
    invoke-interface {v0, p1, p2, p3}, Luk/co/senab/photoview/d$g;->a(FFF)V

    .line 48
    :cond_2
    iget-object v0, p0, Luk/co/senab/photoview/d;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 49
    invoke-direct {p0}, Luk/co/senab/photoview/d;->q()V

    :cond_3
    return-void
.end method

.method public a(FFFF)V
    .locals 3

    .line 32
    sget-boolean v0, Luk/co/senab/photoview/d;->B:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Luk/co/senab/photoview/f/a;->a()Luk/co/senab/photoview/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFling. sX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " sY: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " Vx: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " Vy: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PhotoViewAttacher"

    invoke-interface {v0, p2, p1}, Luk/co/senab/photoview/f/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->e()Landroid/widget/ImageView;

    move-result-object p1

    .line 35
    new-instance p2, Luk/co/senab/photoview/d$d;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Luk/co/senab/photoview/d$d;-><init>(Luk/co/senab/photoview/d;Landroid/content/Context;)V

    iput-object p2, p0, Luk/co/senab/photoview/d;->x:Luk/co/senab/photoview/d$d;

    .line 36
    iget-object p2, p0, Luk/co/senab/photoview/d;->x:Luk/co/senab/photoview/d$d;

    invoke-direct {p0, p1}, Luk/co/senab/photoview/d;->b(Landroid/widget/ImageView;)I

    move-result v0

    .line 37
    invoke-direct {p0, p1}, Luk/co/senab/photoview/d;->a(Landroid/widget/ImageView;)I

    move-result v1

    float-to-int p3, p3

    float-to-int p4, p4

    .line 38
    invoke-virtual {p2, v0, v1, p3, p4}, Luk/co/senab/photoview/d$d;->a(IIII)V

    .line 39
    iget-object p2, p0, Luk/co/senab/photoview/d;->x:Luk/co/senab/photoview/d$d;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(FFFZ)V
    .locals 8

    .line 61
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->e()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 62
    iget v1, p0, Luk/co/senab/photoview/d;->b:F

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_2

    iget v1, p0, Luk/co/senab/photoview/d;->d:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 63
    new-instance p4, Luk/co/senab/photoview/d$c;

    invoke-virtual {p0}, Luk/co/senab/photoview/d;->k()F

    move-result v4

    move-object v2, p4

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Luk/co/senab/photoview/d$c;-><init>(Luk/co/senab/photoview/d;FFFF)V

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 64
    :cond_1
    iget-object p4, p0, Luk/co/senab/photoview/d;->l:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 65
    invoke-direct {p0}, Luk/co/senab/photoview/d;->q()V

    goto :goto_1

    .line 66
    :cond_2
    :goto_0
    invoke-static {}, Luk/co/senab/photoview/f/a;->a()Luk/co/senab/photoview/f/b;

    move-result-object p1

    const-string p2, "PhotoViewAttacher"

    const-string p3, "Scale must be within the range of minScale and maxScale"

    .line 67
    invoke-interface {p1, p2, p3}, Luk/co/senab/photoview/f/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public a(FZ)V
    .locals 2

    .line 57
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->e()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 59
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 60
    invoke-virtual {p0, p1, v1, v0, p2}, Luk/co/senab/photoview/d;->a(FFFZ)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    if-gez p1, :cond_0

    const/16 p1, 0xc8

    .line 78
    :cond_0
    iput p1, p0, Luk/co/senab/photoview/d;->a:I

    return-void
.end method

.method public a(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Luk/co/senab/photoview/d;->h:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Luk/co/senab/photoview/d;->h:Landroid/view/GestureDetector;

    new-instance v0, Luk/co/senab/photoview/b;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/b;-><init>(Luk/co/senab/photoview/d;)V

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Luk/co/senab/photoview/d;->r:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public a(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 68
    invoke-static {p1}, Luk/co/senab/photoview/d;->b(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/d;->A:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 69
    iput-object p1, p0, Luk/co/senab/photoview/d;->A:Landroid/widget/ImageView$ScaleType;

    .line 70
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->n()V

    :cond_0
    return-void
.end method

.method public a(Luk/co/senab/photoview/d$e;)V
    .locals 0

    .line 54
    iput-object p1, p0, Luk/co/senab/photoview/d;->o:Luk/co/senab/photoview/d$e;

    return-void
.end method

.method public a(Luk/co/senab/photoview/d$f;)V
    .locals 0

    .line 55
    iput-object p1, p0, Luk/co/senab/photoview/d;->p:Luk/co/senab/photoview/d$f;

    return-void
.end method

.method public a(Luk/co/senab/photoview/d$g;)V
    .locals 0

    .line 5
    iput-object p1, p0, Luk/co/senab/photoview/d;->s:Luk/co/senab/photoview/d$g;

    return-void
.end method

.method public a(Luk/co/senab/photoview/d$h;)V
    .locals 0

    .line 56
    iput-object p1, p0, Luk/co/senab/photoview/d;->q:Luk/co/senab/photoview/d$h;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Luk/co/senab/photoview/d;->e:Z

    return-void
.end method

.method public b()Landroid/graphics/Matrix;
    .locals 2

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Luk/co/senab/photoview/d;->d()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public b(F)V
    .locals 2

    .line 6
    iget v0, p0, Luk/co/senab/photoview/d;->b:F

    iget v1, p0, Luk/co/senab/photoview/d;->d:F

    invoke-static {v0, p1, v1}, Luk/co/senab/photoview/d;->b(FFF)V

    .line 7
    iput p1, p0, Luk/co/senab/photoview/d;->c:F

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Luk/co/senab/photoview/d;->z:Z

    .line 9
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->n()V

    return-void
.end method

.method public c()Landroid/graphics/RectF;
    .locals 1

    .line 2
    invoke-direct {p0}, Luk/co/senab/photoview/d;->s()Z

    .line 3
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/d;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public c(F)V
    .locals 2

    .line 4
    iget v0, p0, Luk/co/senab/photoview/d;->c:F

    iget v1, p0, Luk/co/senab/photoview/d;->d:F

    invoke-static {p1, v0, v1}, Luk/co/senab/photoview/d;->b(FFF)V

    .line 5
    iput p1, p0, Luk/co/senab/photoview/d;->b:F

    return-void
.end method

.method public d()Landroid/graphics/Matrix;
    .locals 2

    .line 6
    iget-object v0, p0, Luk/co/senab/photoview/d;->k:Landroid/graphics/Matrix;

    iget-object v1, p0, Luk/co/senab/photoview/d;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 7
    iget-object v0, p0, Luk/co/senab/photoview/d;->k:Landroid/graphics/Matrix;

    iget-object v1, p0, Luk/co/senab/photoview/d;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 8
    iget-object v0, p0, Luk/co/senab/photoview/d;->k:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public d(F)V
    .locals 2

    .line 4
    iget-object v0, p0, Luk/co/senab/photoview/d;->l:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 5
    invoke-direct {p0}, Luk/co/senab/photoview/d;->q()V

    return-void
.end method

.method public e()Landroid/widget/ImageView;
    .locals 4

    .line 3
    iget-object v0, p0, Luk/co/senab/photoview/d;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->a()V

    .line 6
    invoke-static {}, Luk/co/senab/photoview/f/a;->a()Luk/co/senab/photoview/f/b;

    move-result-object v1

    const-string v2, "PhotoViewAttacher"

    const-string v3, "ImageView no longer exists. You should not use this PhotoViewAttacher any more."

    invoke-interface {v1, v2, v3}, Luk/co/senab/photoview/f/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public e(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Luk/co/senab/photoview/d;->l:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 2
    invoke-direct {p0}, Luk/co/senab/photoview/d;->q()V

    return-void
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Luk/co/senab/photoview/d;->d:F

    return v0
.end method

.method public f(F)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Luk/co/senab/photoview/d;->a(FZ)V

    return-void
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Luk/co/senab/photoview/d;->c:F

    return v0
.end method

.method public h()F
    .locals 1

    .line 1
    iget v0, p0, Luk/co/senab/photoview/d;->b:F

    return v0
.end method

.method public i()Luk/co/senab/photoview/d$f;
    .locals 1

    .line 1
    iget-object v0, p0, Luk/co/senab/photoview/d;->p:Luk/co/senab/photoview/d$f;

    return-object v0
.end method

.method public j()Luk/co/senab/photoview/d$h;
    .locals 1

    .line 1
    iget-object v0, p0, Luk/co/senab/photoview/d;->q:Luk/co/senab/photoview/d$h;

    return-object v0
.end method

.method public k()F
    .locals 6

    .line 1
    iget-object v0, p0, Luk/co/senab/photoview/d;->l:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Luk/co/senab/photoview/d;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Luk/co/senab/photoview/d;->l:Landroid/graphics/Matrix;

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Luk/co/senab/photoview/d;->a(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public l()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Luk/co/senab/photoview/d;->A:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public m()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->e()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public n()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->e()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Luk/co/senab/photoview/d;->z:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Luk/co/senab/photoview/d;->d(Landroid/widget/ImageView;)V

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/d;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Luk/co/senab/photoview/d;->t()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->e()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, p0, Luk/co/senab/photoview/d;->z:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    .line 6
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    .line 7
    iget v5, p0, Luk/co/senab/photoview/d;->t:I

    if-ne v1, v5, :cond_0

    iget v5, p0, Luk/co/senab/photoview/d;->v:I

    if-ne v3, v5, :cond_0

    iget v5, p0, Luk/co/senab/photoview/d;->w:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Luk/co/senab/photoview/d;->u:I

    if-eq v2, v5, :cond_2

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iput v1, p0, Luk/co/senab/photoview/d;->t:I

    .line 10
    iput v2, p0, Luk/co/senab/photoview/d;->u:I

    .line 11
    iput v3, p0, Luk/co/senab/photoview/d;->v:I

    .line 12
    iput v4, p0, Luk/co/senab/photoview/d;->w:I

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/d;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Luk/co/senab/photoview/d;->z:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Luk/co/senab/photoview/d;->c(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_2

    if-eq v3, v2, :cond_0

    const/4 v0, 0x3

    if-eq v3, v0, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->k()F

    move-result v0

    iget v3, p0, Luk/co/senab/photoview/d;->b:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->c()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    new-instance v9, Luk/co/senab/photoview/d$c;

    invoke-virtual {p0}, Luk/co/senab/photoview/d;->k()F

    move-result v5

    iget v6, p0, Luk/co/senab/photoview/d;->b:F

    .line 7
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Luk/co/senab/photoview/d$c;-><init>(Luk/co/senab/photoview/d;FFFF)V

    .line 8
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->k()F

    move-result v0

    iget v3, p0, Luk/co/senab/photoview/d;->d:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 10
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->c()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    new-instance v0, Luk/co/senab/photoview/d$c;

    invoke-virtual {p0}, Luk/co/senab/photoview/d;->k()F

    move-result v5

    iget v6, p0, Luk/co/senab/photoview/d;->d:F

    .line 12
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->e()Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {p0, v3}, Luk/co/senab/photoview/d;->b(Landroid/widget/ImageView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v7, v3

    invoke-virtual {p0}, Luk/co/senab/photoview/d;->e()Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {p0, v3}, Luk/co/senab/photoview/d;->a(Landroid/widget/ImageView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v8, v3

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Luk/co/senab/photoview/d$c;-><init>(Luk/co/senab/photoview/d;FFFF)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    move p1, v2

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    .line 14
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {}, Luk/co/senab/photoview/f/a;->a()Luk/co/senab/photoview/f/b;

    move-result-object p1

    const-string v0, "PhotoViewAttacher"

    const-string v3, "onTouch getParent() returned null"

    invoke-interface {p1, v0, v3}, Luk/co/senab/photoview/f/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :goto_1
    invoke-direct {p0}, Luk/co/senab/photoview/d;->p()V

    :cond_4
    :goto_2
    move p1, v1

    .line 17
    :goto_3
    iget-object v0, p0, Luk/co/senab/photoview/d;->i:Luk/co/senab/photoview/e/d;

    if-eqz v0, :cond_8

    .line 18
    invoke-interface {v0}, Luk/co/senab/photoview/e/d;->a()Z

    move-result p1

    .line 19
    iget-object v0, p0, Luk/co/senab/photoview/d;->i:Luk/co/senab/photoview/e/d;

    invoke-interface {v0}, Luk/co/senab/photoview/e/d;->b()Z

    move-result v0

    .line 20
    iget-object v3, p0, Luk/co/senab/photoview/d;->i:Luk/co/senab/photoview/e/d;

    invoke-interface {v3, p2}, Luk/co/senab/photoview/e/d;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez p1, :cond_5

    .line 21
    iget-object p1, p0, Luk/co/senab/photoview/d;->i:Luk/co/senab/photoview/e/d;

    invoke-interface {p1}, Luk/co/senab/photoview/e/d;->a()Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v2

    goto :goto_4

    :cond_5
    move p1, v1

    :goto_4
    if-nez v0, :cond_6

    .line 22
    iget-object v0, p0, Luk/co/senab/photoview/d;->i:Luk/co/senab/photoview/e/d;

    invoke-interface {v0}, Luk/co/senab/photoview/e/d;->b()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v1

    :goto_5
    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    move v1, v2

    .line 23
    :cond_7
    iput-boolean v1, p0, Luk/co/senab/photoview/d;->f:Z

    move v1, v3

    goto :goto_6

    :cond_8
    move v1, p1

    .line 24
    :goto_6
    iget-object p1, p0, Luk/co/senab/photoview/d;->h:Landroid/view/GestureDetector;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_9

    move v1, v2

    :cond_9
    return v1
.end method
