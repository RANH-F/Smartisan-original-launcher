.class public Lcom/smartisanos/magicflow/g/o;
.super Landroid/view/animation/AccelerateInterpolator;
.source "AnimInterpolator.java"


# instance fields
.field private a:I

.field private b:Lcom/smartisanos/magicflow/g/l;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/magicflow/g/o;->a:I

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/g/o;->a:I

    .line 4
    iget p1, p0, Lcom/smartisanos/magicflow/g/o;->a:I

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/g/o;->a(IF)V

    return-void
.end method

.method private a(IF)V
    .locals 3

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    const v2, 0x3fd9cd60

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    new-instance p1, Lcom/smartisanos/magicflow/g/n;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/n;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto/16 :goto_0

    :pswitch_1
    cmpg-float p1, p2, v0

    if-gtz p1, :cond_0

    move p2, v2

    .line 2
    :cond_0
    new-instance p1, Lcom/smartisanos/magicflow/g/d;

    invoke-direct {p1, p2}, Lcom/smartisanos/magicflow/g/d;-><init>(F)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto/16 :goto_0

    :pswitch_2
    cmpg-float p1, p2, v0

    if-gtz p1, :cond_1

    move p2, v2

    .line 3
    :cond_1
    new-instance p1, Lcom/smartisanos/magicflow/g/e;

    invoke-direct {p1, p2}, Lcom/smartisanos/magicflow/g/e;-><init>(F)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto/16 :goto_0

    :pswitch_3
    cmpg-float p1, p2, v0

    if-gtz p1, :cond_2

    move p2, v2

    .line 4
    :cond_2
    new-instance p1, Lcom/smartisanos/magicflow/g/c;

    invoke-direct {p1, p2}, Lcom/smartisanos/magicflow/g/c;-><init>(F)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto/16 :goto_0

    .line 5
    :pswitch_4
    new-instance p1, Lcom/smartisanos/magicflow/g/z;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/z;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto/16 :goto_0

    .line 6
    :pswitch_5
    new-instance p1, Lcom/smartisanos/magicflow/g/a0;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/a0;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto/16 :goto_0

    .line 7
    :pswitch_6
    new-instance p1, Lcom/smartisanos/magicflow/g/y;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/y;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto/16 :goto_0

    .line 8
    :pswitch_7
    new-instance p1, Lcom/smartisanos/magicflow/g/w;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/w;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto/16 :goto_0

    .line 9
    :pswitch_8
    new-instance p1, Lcom/smartisanos/magicflow/g/x;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/x;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto/16 :goto_0

    .line 10
    :pswitch_9
    new-instance p1, Lcom/smartisanos/magicflow/g/v;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/v;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto/16 :goto_0

    .line 11
    :pswitch_a
    new-instance p1, Lcom/smartisanos/magicflow/g/t;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/t;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto :goto_0

    .line 12
    :pswitch_b
    new-instance p1, Lcom/smartisanos/magicflow/g/u;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/u;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto :goto_0

    .line 13
    :pswitch_c
    new-instance p1, Lcom/smartisanos/magicflow/g/s;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/s;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto :goto_0

    .line 14
    :pswitch_d
    new-instance p1, Lcom/smartisanos/magicflow/g/j;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/j;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto :goto_0

    .line 15
    :pswitch_e
    new-instance p1, Lcom/smartisanos/magicflow/g/k;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/k;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto :goto_0

    .line 16
    :pswitch_f
    new-instance p1, Lcom/smartisanos/magicflow/g/i;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/i;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto :goto_0

    .line 17
    :pswitch_10
    new-instance p1, Lcom/smartisanos/magicflow/g/g;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/g;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto :goto_0

    .line 18
    :pswitch_11
    new-instance p1, Lcom/smartisanos/magicflow/g/h;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/h;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto :goto_0

    .line 19
    :pswitch_12
    new-instance p1, Lcom/smartisanos/magicflow/g/f;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/f;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto :goto_0

    .line 20
    :pswitch_13
    new-instance p1, Lcom/smartisanos/magicflow/g/q;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/q;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto :goto_0

    .line 21
    :pswitch_14
    new-instance p1, Lcom/smartisanos/magicflow/g/r;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/r;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto :goto_0

    .line 22
    :pswitch_15
    new-instance p1, Lcom/smartisanos/magicflow/g/p;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/p;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    goto :goto_0

    .line 23
    :cond_3
    new-instance p1, Lcom/smartisanos/magicflow/g/m;

    invoke-direct {p1, v1}, Lcom/smartisanos/magicflow/g/m;-><init>(Lcom/smartisanos/magicflow/g/b;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/g/o;->b:Lcom/smartisanos/magicflow/g/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/smartisanos/magicflow/g/l;->a(F)F

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method
