.class public Luk/co/senab/photoview/e/a;
.super Ljava/lang/Object;
.source "CupcakeGestureDetector.java"

# interfaces
.implements Luk/co/senab/photoview/e/d;


# instance fields
.field protected a:Luk/co/senab/photoview/e/e;

.field b:F

.field c:F

.field final d:F

.field final e:F

.field private f:Landroid/view/VelocityTracker;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Luk/co/senab/photoview/e/a;->e:F

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Luk/co/senab/photoview/e/a;->d:F

    return-void
.end method


# virtual methods
.method a(Landroid/view/MotionEvent;)F
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method public a(Luk/co/senab/photoview/e/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luk/co/senab/photoview/e/a;->a:Luk/co/senab/photoview/e/e;

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method b(Landroid/view/MotionEvent;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Luk/co/senab/photoview/e/a;->g:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Luk/co/senab/photoview/e/a;->f:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    .line 3
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 4
    iput-object v3, p0, Luk/co/senab/photoview/e/a;->f:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/e/a;->a(Landroid/view/MotionEvent;)F

    move-result v0

    .line 6
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/e/a;->b(Landroid/view/MotionEvent;)F

    move-result v3

    .line 7
    iget v4, p0, Luk/co/senab/photoview/e/a;->b:F

    sub-float v4, v0, v4

    iget v5, p0, Luk/co/senab/photoview/e/a;->c:F

    sub-float v5, v3, v5

    .line 8
    iget-boolean v6, p0, Luk/co/senab/photoview/e/a;->g:Z

    if-nez v6, :cond_3

    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    .line 9
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget v8, p0, Luk/co/senab/photoview/e/a;->d:F

    float-to-double v8, v8

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Luk/co/senab/photoview/e/a;->g:Z

    .line 10
    :cond_3
    iget-boolean v1, p0, Luk/co/senab/photoview/e/a;->g:Z

    if-eqz v1, :cond_8

    .line 11
    iget-object v1, p0, Luk/co/senab/photoview/e/a;->a:Luk/co/senab/photoview/e/e;

    invoke-interface {v1, v4, v5}, Luk/co/senab/photoview/e/e;->a(FF)V

    .line 12
    iput v0, p0, Luk/co/senab/photoview/e/a;->b:F

    .line 13
    iput v3, p0, Luk/co/senab/photoview/e/a;->c:F

    .line 14
    iget-object v0, p0, Luk/co/senab/photoview/e/a;->f:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_8

    .line 15
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 16
    :cond_4
    iget-boolean v0, p0, Luk/co/senab/photoview/e/a;->g:Z

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Luk/co/senab/photoview/e/a;->f:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/e/a;->a(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Luk/co/senab/photoview/e/a;->b:F

    .line 19
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/e/a;->b(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Luk/co/senab/photoview/e/a;->c:F

    .line 20
    iget-object v0, p0, Luk/co/senab/photoview/e/a;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 21
    iget-object p1, p0, Luk/co/senab/photoview/e/a;->f:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 22
    iget-object p1, p0, Luk/co/senab/photoview/e/a;->f:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    iget-object v0, p0, Luk/co/senab/photoview/e/a;->f:Landroid/view/VelocityTracker;

    .line 23
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 24
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, p0, Luk/co/senab/photoview/e/a;->e:F

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_5

    .line 25
    iget-object v1, p0, Luk/co/senab/photoview/e/a;->a:Luk/co/senab/photoview/e/e;

    iget v4, p0, Luk/co/senab/photoview/e/a;->b:F

    iget v5, p0, Luk/co/senab/photoview/e/a;->c:F

    neg-float p1, p1

    neg-float v0, v0

    invoke-interface {v1, v4, v5, p1, v0}, Luk/co/senab/photoview/e/e;->a(FFFF)V

    .line 26
    :cond_5
    iget-object p1, p0, Luk/co/senab/photoview/e/a;->f:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    .line 27
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 28
    iput-object v3, p0, Luk/co/senab/photoview/e/a;->f:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 29
    :cond_6
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Luk/co/senab/photoview/e/a;->f:Landroid/view/VelocityTracker;

    .line 30
    iget-object v0, p0, Luk/co/senab/photoview/e/a;->f:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 31
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 32
    :cond_7
    invoke-static {}, Luk/co/senab/photoview/f/a;->a()Luk/co/senab/photoview/f/b;

    move-result-object v0

    const-string v3, "CupcakeGestureDetector"

    const-string v4, "Velocity tracker is null"

    invoke-interface {v0, v3, v4}, Luk/co/senab/photoview/f/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_0
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/e/a;->a(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Luk/co/senab/photoview/e/a;->b:F

    .line 34
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/e/a;->b(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Luk/co/senab/photoview/e/a;->c:F

    .line 35
    iput-boolean v1, p0, Luk/co/senab/photoview/e/a;->g:Z

    :cond_8
    :goto_1
    return v2
.end method
