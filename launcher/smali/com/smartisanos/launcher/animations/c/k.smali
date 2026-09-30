.class public Lcom/smartisanos/launcher/animations/c/k;
.super Ljava/lang/Object;
.source "UnlockAnimationXML.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field public Mn:Lcom/smartisanos/smengine/g;

.field private dl:Lcom/smartisanos/launcher/view/b/fa;

.field private jq:I

.field private kq:F

.field private lq:Lcom/smartisanos/launcher/view/b/M;

.field private mShadowColor:Lcom/smartisanos/smengine/a/k;

.field private mTotalDuration:F

.field private mq:Z

.field private nq:Ljava/util/ArrayList;

.field private oq:F

.field private pq:Lcom/smartisanos/smengine/g;

.field private qq:Z

.field private rq:Lcom/smartisanos/smengine/a/j;

.field private sq:Lcom/smartisanos/smengine/a/j;

.field private tq:Lcom/smartisanos/smengine/a/j;

.field private uq:Lcom/smartisanos/smengine/a/j;

.field private vq:Lcom/smartisanos/launcher/animations/c/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/c/k;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fb33333    # 1.4f

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/animations/c/k;->mTotalDuration:F

    const/16 v0, 0x96

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/animations/c/k;->jq:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/c/k;->mq:Z

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/animations/c/k;->nq:Ljava/util/ArrayList;

    .line 6
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/k;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/animations/c/k;->mShadowColor:Lcom/smartisanos/smengine/a/k;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/c/k;->pq:Lcom/smartisanos/smengine/g;

    .line 8
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/c/k;->qq:Z

    .line 9
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->rq:Lcom/smartisanos/smengine/a/j;

    .line 10
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->sq:Lcom/smartisanos/smengine/a/j;

    .line 11
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->tq:Lcom/smartisanos/smengine/a/j;

    .line 12
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->uq:Lcom/smartisanos/smengine/a/j;

    .line 13
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/c/k;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 14
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/k;->Vj()Lcom/smartisanos/smengine/Camera;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result p2

    iput p2, p0, Lcom/smartisanos/launcher/animations/c/k;->oq:F

    .line 15
    new-instance p2, Lcom/smartisanos/launcher/animations/c/n;

    invoke-direct {p2, p1}, Lcom/smartisanos/launcher/animations/c/n;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/c/k;->vq:Lcom/smartisanos/launcher/animations/c/n;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/c/k;)F
    .locals 0

    .line 2
    iget p0, p0, Lcom/smartisanos/launcher/animations/c/k;->oq:F

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/c/k;Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/c/k;->lq:Lcom/smartisanos/launcher/view/b/M;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/c/k;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/c/k;->pq:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/c/k;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/c/k;->qq:Z

    return p1
.end method

.method static synthetic access$200()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/animations/c/k;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/launcher/view/b/fa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/k;->dl:Lcom/smartisanos/launcher/view/b/fa;

    return-object p0
.end method

.method static synthetic c(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/k;->tq:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method static synthetic d(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/k;->uq:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method static synthetic e(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/k;->sq:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method static synthetic f(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/k;->mShadowColor:Lcom/smartisanos/smengine/a/k;

    return-object p0
.end method

.method static synthetic g(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/k;->rq:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method static synthetic h(Lcom/smartisanos/launcher/animations/c/k;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/k;->nq:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic i(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/k;->lq:Lcom/smartisanos/launcher/view/b/M;

    return-object p0
.end method

.method static synthetic j(Lcom/smartisanos/launcher/animations/c/k;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/animations/c/k;->kq:F

    return p0
.end method

.method static synthetic k(Lcom/smartisanos/launcher/animations/c/k;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/animations/c/k;->jq:I

    return p0
.end method


.method private updateUnlockTiming()V
    .locals 3

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->vq:Lcom/smartisanos/launcher/animations/c/n;

    .line 2
    iget v1, v0, Lcom/smartisanos/launcher/animations/c/n;->Gm:F

    # XML seconds are wall-clock seconds, not accelerated engine seconds.
    # Scale only this animation's durations/delays; keep other animations intact.
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->getAnimationTimeScale()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/smartisanos/launcher/animations/c/k;->mTotalDuration:F

    .line 3
    iget v0, v0, Lcom/smartisanos/launcher/animations/c/n;->Fm:I

    iput v0, p0, Lcom/smartisanos/launcher/animations/c/k;->jq:I

    .line 4
    iget v0, p0, Lcom/smartisanos/launcher/animations/c/k;->mTotalDuration:F

    iget v1, p0, Lcom/smartisanos/launcher/animations/c/k;->jq:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/launcher/animations/c/k;->kq:F

    return-void
.end method

# virtual methods
.method public Ee()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->vq:Lcom/smartisanos/launcher/animations/c/n;

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/c/k;->updateUnlockTiming()V

    const/4 v0, 0x0

    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/c/k;->vq:Lcom/smartisanos/launcher/animations/c/n;

    iget-object v2, v2, Lcom/smartisanos/launcher/animations/c/n;->Gq:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/c/k;->vq:Lcom/smartisanos/launcher/animations/c/n;

    iget-object v2, v2, Lcom/smartisanos/launcher/animations/c/n;->Gq:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/animations/c/m;

    .line 7
    iget v3, v2, Lcom/smartisanos/launcher/animations/c/m;->cellIndex:I

    const/16 v4, 0x22b

    const/16 v5, 0x3e7

    const/16 v6, 0x378

    const/16 v7, 0x309

    const/16 v8, 0x29a

    if-ne v3, v8, :cond_0

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v3

    goto :goto_1

    :cond_0
    if-ne v3, v7, :cond_1

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Fh()Lcom/smartisanos/launcher/view/hc;

    move-result-object v3

    goto :goto_1

    :cond_1
    if-ne v3, v6, :cond_2

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    .line 11
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/c/k;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v10, p0, Lcom/smartisanos/launcher/animations/c/k;->sq:Lcom/smartisanos/smengine/a/j;

    invoke-static {v9, v10}, Lcom/smartisanos/launcher/data/Constants;->setDockModulateColor(Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/smengine/a/j;)V

    goto :goto_1

    :cond_2
    if-ne v3, v5, :cond_3

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v3

    .line 13
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/c/k;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v10, p0, Lcom/smartisanos/launcher/animations/c/k;->tq:Lcom/smartisanos/smengine/a/j;

    iget-object v11, p0, Lcom/smartisanos/launcher/animations/c/k;->uq:Lcom/smartisanos/smengine/a/j;

    invoke-static {v9, v10, v11}, Lcom/smartisanos/launcher/data/Constants;->setBGModulateColor(Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V

    goto :goto_1

    :cond_3
    if-ne v3, v4, :cond_4

    .line 14
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/c/k;->lq:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    goto :goto_1

    .line 15
    :cond_4
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/c/k;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v9, v3}, Lcom/smartisanos/launcher/view/b/fa;->Vb(I)Lcom/smartisanos/smengine/a/i;

    move-result-object v3

    .line 16
    iget-object v9, p0, Lcom/smartisanos/launcher/animations/c/k;->lq:Lcom/smartisanos/launcher/view/b/M;

    iget v10, v3, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int v10, v10

    iget v3, v3, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int v3, v3

    invoke-virtual {v9, v10, v3}, Lcom/smartisanos/launcher/view/b/M;->A(II)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    .line 17
    iget v9, v2, Lcom/smartisanos/launcher/animations/c/m;->cellIndex:I

    .line 18
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/c/k;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v11, p0, Lcom/smartisanos/launcher/animations/c/k;->rq:Lcom/smartisanos/smengine/a/j;

    iget-object v12, p0, Lcom/smartisanos/launcher/animations/c/k;->mShadowColor:Lcom/smartisanos/smengine/a/k;

    invoke-static {v10, v11, v12, v9}, Lcom/smartisanos/launcher/data/Constants;->setCellAndShadowColor(Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/k;I)V

    :goto_1
    if-nez v3, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    new-instance v9, Lcom/smartisanos/launcher/animations/c/i;

    iget v10, v2, Lcom/smartisanos/launcher/animations/c/m;->Dq:I

    int-to-float v10, v10

    invoke-direct {v9, p0, v3, v10}, Lcom/smartisanos/launcher/animations/c/i;-><init>(Lcom/smartisanos/launcher/animations/c/k;Lcom/smartisanos/smengine/SceneNode;F)V

    .line 20
    iget v3, v2, Lcom/smartisanos/launcher/animations/c/m;->Bq:F

    invoke-static {v9, v3}, Lcom/smartisanos/launcher/animations/c/i;->a(Lcom/smartisanos/launcher/animations/c/i;F)F

    .line 21
    iget v3, v2, Lcom/smartisanos/launcher/animations/c/m;->Cq:F

    invoke-static {v9, v3}, Lcom/smartisanos/launcher/animations/c/i;->b(Lcom/smartisanos/launcher/animations/c/i;F)F

    move v3, v0

    .line 22
    :goto_2
    iget-object v10, v2, Lcom/smartisanos/launcher/animations/c/m;->Eq:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_6

    .line 23
    iget-object v10, v2, Lcom/smartisanos/launcher/animations/c/m;->Eq:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/animations/c/l;

    .line 24
    new-instance v11, Lcom/smartisanos/launcher/animations/c/j;

    invoke-direct {v11, p0}, Lcom/smartisanos/launcher/animations/c/j;-><init>(Lcom/smartisanos/launcher/animations/c/k;)V

    .line 25
    iget v12, v10, Lcom/smartisanos/launcher/animations/c/l;->xq:I

    iput v12, v11, Lcom/smartisanos/launcher/animations/c/j;->iq:I

    .line 26
    iget v12, v10, Lcom/smartisanos/launcher/animations/c/l;->wq:I

    iput v12, v11, Lcom/smartisanos/launcher/animations/c/j;->mInterpolator:I

    .line 27
    iget v12, v10, Lcom/smartisanos/launcher/animations/c/l;->yq:F

    iput v12, v11, Lcom/smartisanos/launcher/animations/c/j;->gq:F

    .line 28
    iget v10, v10, Lcom/smartisanos/launcher/animations/c/l;->zq:F

    iput v10, v11, Lcom/smartisanos/launcher/animations/c/j;->hq:F

    .line 29
    invoke-static {v9}, Lcom/smartisanos/launcher/animations/c/i;->b(Lcom/smartisanos/launcher/animations/c/i;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 30
    :cond_6
    iget v2, v2, Lcom/smartisanos/launcher/animations/c/m;->cellIndex:I

    if-ne v2, v8, :cond_7

    .line 31
    invoke-virtual {v9}, Lcom/smartisanos/launcher/animations/c/i;->De()V

    goto :goto_3

    :cond_7
    if-ne v2, v7, :cond_8

    .line 32
    invoke-virtual {v9}, Lcom/smartisanos/launcher/animations/c/i;->De()V

    goto :goto_3

    :cond_8
    if-ne v2, v5, :cond_9

    .line 33
    invoke-virtual {v9}, Lcom/smartisanos/launcher/animations/c/i;->Ae()V

    goto :goto_3

    :cond_9
    if-ne v2, v6, :cond_a

    .line 34
    invoke-virtual {v9}, Lcom/smartisanos/launcher/animations/c/i;->Ce()V

    goto :goto_3

    :cond_a
    if-ne v2, v4, :cond_b

    .line 35
    invoke-virtual {v9}, Lcom/smartisanos/launcher/animations/c/i;->Be()V

    goto :goto_3

    .line 36
    :cond_b
    invoke-virtual {v9}, Lcom/smartisanos/launcher/animations/c/i;->ze()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    return-void

    .line 37
    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "### unlock xml parse wrong..."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public Fe()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/animations/c/k;->mq:Z

    return p0
.end method

.method public K(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/c/k;->qq:Z

    return-void
.end method

.method public Yd()Lcom/smartisanos/smengine/g;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/c/k;->qq:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/k;->pq:Lcom/smartisanos/smengine/g;

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->lq:Lcom/smartisanos/launcher/view/b/M;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/c/k;->nq:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->nq:Ljava/util/ArrayList;

    .line 6
    :cond_0
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 7
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->mShadowColor:Lcom/smartisanos/smengine/a/k;

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->pq:Lcom/smartisanos/smengine/g;

    .line 9
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->vq:Lcom/smartisanos/launcher/animations/c/n;

    return-void
.end method

.method public e(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 6

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/animations/c/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnlockAnim, UnlockAnimationXML init:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Constants.sIsGaussianTheme:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Constants.isTransparentTheme:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_2

    .line 3
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/smartisanos/launcher/animations/c/k;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "error. init error page is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 4
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Lc;->rb(Z)V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/V;->rb(Z)V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/V;->kb(Z)V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Fh()Lcom/smartisanos/launcher/view/hc;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/hc;->rb(Z)V

    .line 10
    :cond_3
    instance-of v0, p1, Lcom/smartisanos/launcher/view/b/ka;

    if-eqz v0, :cond_4

    .line 11
    move-object v0, p1

    check-cast v0, Lcom/smartisanos/launcher/view/b/ka;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/b/ka;->rb(Z)V

    .line 12
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 13
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 14
    :cond_4
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/c/k;->qq:Z

    if-eqz v0, :cond_5

    .line 15
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->pq:Lcom/smartisanos/smengine/g;

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->pq:Lcom/smartisanos/smengine/g;

    new-instance v3, Lcom/smartisanos/launcher/animations/c/a;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/animations/c/a;-><init>(Lcom/smartisanos/launcher/animations/c/k;)V

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_7

    .line 18
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_6

    .line 19
    sget-object v0, Lcom/smartisanos/launcher/animations/c/k;->log:Lcom/smartisanos/launcher/va;

    const-string v3, "UnlockAnim, timeline not null, why?"

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    .line 22
    :cond_7
    # Gaussian background and cell timelines share the same converted duration.
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/c/k;->updateUnlockTiming()V

    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    .line 23
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez v0, :cond_8

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    iget v4, p0, Lcom/smartisanos/launcher/animations/c/k;->mTotalDuration:F

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/smengine/g;FF)V

    .line 25
    :cond_8
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    new-instance v3, Lcom/smartisanos/launcher/animations/c/b;

    invoke-direct {v3, p0, p1}, Lcom/smartisanos/launcher/animations/c/b;-><init>(Lcom/smartisanos/launcher/animations/c/k;Lcom/smartisanos/launcher/view/b/M;)V

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 26
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 28
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/a/X;->za(I)V

    goto :goto_0

    .line 29
    :cond_9
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/c/k;->lq:Lcom/smartisanos/launcher/view/b/M;

    .line 30
    iput-boolean v1, p0, Lcom/smartisanos/launcher/animations/c/k;->mq:Z

    .line 31
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 32
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 33
    :cond_a
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 34
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 35
    :cond_b
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/c/k;->Ee()V

    .line 36
    :goto_1
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/c/k;->nq:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_c

    .line 37
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/c/k;->nq:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/a/g;

    .line 38
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/ga;->Ri()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 39
    :cond_c
    iget-boolean p1, p0, Lcom/smartisanos/launcher/animations/c/k;->qq:Z

    if-eqz p1, :cond_d

    .line 40
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/c/k;->pq:Lcom/smartisanos/smengine/g;

    const v0, 0x3ecccccd    # 0.4f

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1, v0, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 41
    :cond_d
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_e

    sget-object p0, Lcom/smartisanos/launcher/animations/c/k;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "UnlockAnim, UnlockAnimationXML init complete."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public f(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 3

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/animations/c/k;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnlockAnim, UnlockAnimationXML start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/c/k;->mq:Z

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/animations/c/k;->e(Lcom/smartisanos/launcher/view/b/M;)V

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/c/k;->mq:Z

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/high16 v0, 0x20000

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 7
    iget-boolean p1, p0, Lcom/smartisanos/launcher/animations/c/k;->qq:Z

    if-eqz p1, :cond_2

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/k;->pq:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    :goto_0
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
