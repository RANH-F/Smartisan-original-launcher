.class public Lcom/smartisanos/magicflow/g/a;
.super Ljava/lang/Object;
.source "Anim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/g/a$a;,
        Lcom/smartisanos/magicflow/g/a$b;
    }
.end annotation


# static fields
.field private static final j:Lcom/smartisanos/magicflow/LOG;

.field public static final k:Lcom/smartisanos/magicflow/g/c0;


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/smartisanos/magicflow/g/c0;

.field private f:Lcom/smartisanos/magicflow/g/c0;

.field private g:Lcom/smartisanos/magicflow/g/b0;

.field private h:Landroid/animation/AnimatorSet;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/g/a;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/g/a;->j:Lcom/smartisanos/magicflow/LOG;

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/g/c0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/magicflow/g/c0;-><init>(FFF)V

    sput-object v0, Lcom/smartisanos/magicflow/g/a;->k:Lcom/smartisanos/magicflow/g/c0;

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/g/c0;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/smartisanos/magicflow/g/c0;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIIILcom/smartisanos/magicflow/g/c0;Lcom/smartisanos/magicflow/g/c0;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p4, "]"

    const/16 v0, 0x3e9

    if-eq p2, v0, :cond_1

    const/16 v0, 0x3ea

    if-eq p2, v0, :cond_1

    const/16 v0, 0x3eb

    if-eq p2, v0, :cond_1

    const/16 v0, 0x3ec

    if-eq p2, v0, :cond_1

    const/16 v0, 0x3ed

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "error anim type ["

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p6, :cond_3

    if-eqz p7, :cond_3

    .line 4
    iput-object p1, p0, Lcom/smartisanos/magicflow/g/a;->a:Landroid/view/View;

    .line 5
    iput p2, p0, Lcom/smartisanos/magicflow/g/a;->b:I

    .line 6
    iput p3, p0, Lcom/smartisanos/magicflow/g/a;->c:I

    .line 7
    iput p5, p0, Lcom/smartisanos/magicflow/g/a;->d:I

    .line 8
    iput-object p6, p0, Lcom/smartisanos/magicflow/g/a;->e:Lcom/smartisanos/magicflow/g/c0;

    .line 9
    iput-object p7, p0, Lcom/smartisanos/magicflow/g/a;->f:Lcom/smartisanos/magicflow/g/c0;

    if-eqz p6, :cond_2

    if-eqz p7, :cond_2

    .line 10
    invoke-direct {p0, p6, p7}, Lcom/smartisanos/magicflow/g/a;->a(Lcom/smartisanos/magicflow/g/c0;Lcom/smartisanos/magicflow/g/c0;)V

    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "something is null ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "]["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "lose from or to"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/view/View;IIILcom/smartisanos/magicflow/g/c0;Lcom/smartisanos/magicflow/g/c0;)V
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/magicflow/g/a;-><init>(Landroid/view/View;IIIILcom/smartisanos/magicflow/g/c0;Lcom/smartisanos/magicflow/g/c0;)V

    return-void
.end method

.method private a(Lcom/smartisanos/magicflow/g/c0;Lcom/smartisanos/magicflow/g/c0;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/g/a;->i:Ljava/util/List;

    .line 2
    iget v0, p0, Lcom/smartisanos/magicflow/g/a;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->a()F

    move-result v0

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->a()F

    move-result v5

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/g/a;->a:Landroid/view/View;

    new-array v5, v4, [F

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->a()F

    move-result v6

    aput v6, v5, v3

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->a()F

    move-result v6

    aput v6, v5, v2

    const-string v6, "translationX"

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5
    iget-object v5, p0, Lcom/smartisanos/magicflow/g/a;->i:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->b()F

    move-result v0

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->b()F

    move-result v5

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_6

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/g/a;->a:Landroid/view/View;

    new-array v4, v4, [F

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->b()F

    move-result p1

    aput p1, v4, v3

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->b()F

    move-result p1

    aput p1, v4, v2

    const-string p1, "translationY"

    invoke-static {v0, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/smartisanos/magicflow/g/a;->i:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 9
    :pswitch_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/g/a;->e:Lcom/smartisanos/magicflow/g/c0;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->c()F

    move-result p1

    iget-object p2, p0, Lcom/smartisanos/magicflow/g/a;->f:Lcom/smartisanos/magicflow/g/c0;

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->c()F

    move-result p2

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_6

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/g/a;->a:Landroid/view/View;

    new-array p2, v4, [F

    iget-object v0, p0, Lcom/smartisanos/magicflow/g/a;->e:Lcom/smartisanos/magicflow/g/c0;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/g/c0;->c()F

    move-result v0

    aput v0, p2, v3

    iget-object v0, p0, Lcom/smartisanos/magicflow/g/a;->f:Lcom/smartisanos/magicflow/g/c0;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/g/c0;->c()F

    move-result v0

    aput v0, p2, v2

    const-string v0, "alpha"

    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/smartisanos/magicflow/g/a;->e:Lcom/smartisanos/magicflow/g/c0;

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->a()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p2, p0, Lcom/smartisanos/magicflow/g/a;->a:Landroid/view/View;

    invoke-virtual {p2, v4, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 13
    :goto_0
    iget-object p2, p0, Lcom/smartisanos/magicflow/g/a;->i:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 14
    :pswitch_2
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->a()F

    move-result v0

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->a()F

    move-result v5

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/smartisanos/magicflow/g/a;->a:Landroid/view/View;

    new-array v5, v4, [F

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->a()F

    move-result v6

    aput v6, v5, v3

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->a()F

    move-result v6

    aput v6, v5, v2

    const-string v6, "scaleX"

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 16
    iget-object v5, p0, Lcom/smartisanos/magicflow/g/a;->i:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->b()F

    move-result v0

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->b()F

    move-result v5

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_6

    .line 18
    iget-object v0, p0, Lcom/smartisanos/magicflow/g/a;->a:Landroid/view/View;

    new-array v4, v4, [F

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->b()F

    move-result p1

    aput p1, v4, v3

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->b()F

    move-result p1

    aput p1, v4, v2

    const-string p1, "scaleY"

    invoke-static {v0, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/smartisanos/magicflow/g/a;->i:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 20
    :pswitch_3
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->a()F

    move-result v0

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->a()F

    move-result v5

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/smartisanos/magicflow/g/a;->a:Landroid/view/View;

    new-array v5, v4, [F

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->a()F

    move-result v6

    aput v6, v5, v3

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->a()F

    move-result v6

    aput v6, v5, v2

    const-string v6, "rotationX"

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 22
    iget-object v5, p0, Lcom/smartisanos/magicflow/g/a;->i:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->b()F

    move-result v0

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->b()F

    move-result v5

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_4

    .line 24
    iget-object v0, p0, Lcom/smartisanos/magicflow/g/a;->a:Landroid/view/View;

    new-array v5, v4, [F

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->b()F

    move-result v6

    aput v6, v5, v3

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->b()F

    move-result v6

    aput v6, v5, v2

    const-string v6, "rotationY"

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 25
    iget-object v5, p0, Lcom/smartisanos/magicflow/g/a;->i:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->c()F

    move-result v0

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->c()F

    move-result v5

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_6

    .line 27
    iget-object v0, p0, Lcom/smartisanos/magicflow/g/a;->a:Landroid/view/View;

    new-array v4, v4, [F

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->c()F

    move-result p1

    aput p1, v4, v3

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->c()F

    move-result p1

    aput p1, v4, v2

    const-string p1, "rotation"

    invoke-static {v0, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/smartisanos/magicflow/g/a;->i:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 29
    :pswitch_4
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->a()F

    move-result v0

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->a()F

    move-result v5

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_5

    .line 30
    iget-object v0, p0, Lcom/smartisanos/magicflow/g/a;->a:Landroid/view/View;

    new-array v5, v4, [F

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->a()F

    move-result v6

    aput v6, v5, v3

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->a()F

    move-result v6

    aput v6, v5, v2

    const-string v6, "x"

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 31
    iget-object v5, p0, Lcom/smartisanos/magicflow/g/a;->i:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_5
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->b()F

    move-result v0

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->b()F

    move-result v5

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_6

    .line 33
    iget-object v0, p0, Lcom/smartisanos/magicflow/g/a;->a:Landroid/view/View;

    new-array v4, v4, [F

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/g/c0;->b()F

    move-result p1

    aput p1, v4, v3

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/g/c0;->b()F

    move-result p1

    aput p1, v4, v2

    const-string p1, "y"

    invoke-static {v0, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/smartisanos/magicflow/g/a;->i:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_6
    :goto_1
    iget p1, p0, Lcom/smartisanos/magicflow/g/a;->d:I

    if-eqz p1, :cond_7

    .line 36
    new-instance v1, Lcom/smartisanos/magicflow/g/o;

    invoke-direct {v1, p1}, Lcom/smartisanos/magicflow/g/o;-><init>(I)V

    .line 37
    :cond_7
    iget-object p1, p0, Lcom/smartisanos/magicflow/g/a;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator;

    .line 38
    iget v0, p0, Lcom/smartisanos/magicflow/g/a;->c:I

    int-to-long v2, v0

    invoke-virtual {p2, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    if-eqz v1, :cond_8

    .line 39
    invoke-virtual {p2, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/smartisanos/magicflow/g/b0;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/smartisanos/magicflow/g/a;->g:Lcom/smartisanos/magicflow/g/b0;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/smartisanos/magicflow/g/a;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/g/a;->i:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/g/a;->g:Lcom/smartisanos/magicflow/g/b0;

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 3
    iget-object v3, p0, Lcom/smartisanos/magicflow/g/a;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 4
    invoke-virtual {v4}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    add-long/2addr v5, v7

    cmp-long v7, v5, v0

    if-ltz v7, :cond_1

    move-object v2, v4

    move-wide v0, v5

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 5
    new-instance v0, Lcom/smartisanos/magicflow/g/a$a;

    iget-object v1, p0, Lcom/smartisanos/magicflow/g/a;->g:Lcom/smartisanos/magicflow/g/b0;

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/magicflow/g/a$a;-><init>(Lcom/smartisanos/magicflow/g/a;Lcom/smartisanos/magicflow/g/b0;)V

    .line 6
    new-instance v1, Lcom/smartisanos/magicflow/g/a$b;

    iget-object v3, p0, Lcom/smartisanos/magicflow/g/a;->g:Lcom/smartisanos/magicflow/g/b0;

    invoke-direct {v1, p0, v3}, Lcom/smartisanos/magicflow/g/a$b;-><init>(Lcom/smartisanos/magicflow/g/a;Lcom/smartisanos/magicflow/g/b0;)V

    .line 7
    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "set anim listener err !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/magicflow/g/a;->j:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "start failed by empty anim list"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/g/a;->b()V

    .line 4
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/g/a;->h:Landroid/animation/AnimatorSet;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/g/a;->h:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/smartisanos/magicflow/g/a;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/g/a;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x1

    return v0
.end method
