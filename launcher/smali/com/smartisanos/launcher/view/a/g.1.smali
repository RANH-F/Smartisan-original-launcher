.class public Lcom/smartisanos/launcher/view/a/g;
.super Lcom/smartisanos/launcher/view/a;
.source "Cell.java"

# interfaces
.implements Lcom/smartisanos/launcher/view/a/ma;
.implements Lcom/smartisanos/launcher/view/a/na;


# static fields
.field protected static Ly:F = 0.3f

.field protected static Ny:F = 1.35f

.field public static oI:I = 0x0

.field public static pI:I = 0x1

.field public static qI:I = 0x8

.field public static rI:I = 0x10


# instance fields
.field protected BH:Lcom/smartisanos/launcher/view/a/Z;

.field protected CH:Lcom/smartisanos/launcher/view/b/M;

.field protected DH:Lcom/smartisanos/launcher/view/b/M;

.field protected EH:I

.field protected FH:Lcom/smartisanos/launcher/view/l;

.field protected GH:Lcom/smartisanos/launcher/view/v;

.field public HH:Z

.field protected IH:Z

.field protected JH:Lcom/smartisanos/launcher/view/a/X;

.field protected KH:Lcom/smartisanos/smengine/a/j;

.field protected LH:[F

.field protected MH:[F

.field protected NH:Lcom/smartisanos/smengine/a/j;

.field protected OH:Lcom/smartisanos/launcher/view/a/f;

.field private PH:I

.field private QH:Lcom/smartisanos/smengine/i;

.field private RH:Lcom/smartisanos/smengine/i;

.field protected Rj:Lcom/smartisanos/launcher/data/ItemInfo;

.field SH:Lcom/smartisanos/smengine/i;

.field protected TH:Ljava/lang/String;

.field protected UG:Lcom/smartisanos/launcher/view/b/M;

.field protected UH:Ljava/lang/String;

.field protected VG:Landroid/graphics/Paint;

.field protected VH:I

.field protected WG:F

.field protected WH:Lcom/smartisanos/launcher/view/a/ca;

.field protected XG:I

.field protected XH:Lcom/smartisanos/launcher/view/a/ga;

.field protected YG:I

.field public YH:Lcom/smartisanos/smengine/n;

.field protected ZG:I

.field private ZH:F

.field protected _G:I

.field private _H:I

.field protected aH:I

.field private aI:Z

.field protected bH:I

.field protected bI:Z

.field protected cH:I

.field protected cI:Lcom/smartisanos/smengine/a/j;

.field protected dH:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private dI:Z

.field protected eH:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private eI:Z

.field protected fH:I

.field protected fI:Z

.field protected gH:I

.field private gI:Ljava/lang/Throwable;

.field protected hH:I

.field private hI:Z

.field protected iH:Z

.field private iI:Lcom/smartisanos/launcher/view/a/g;

.field protected jH:I

.field private jI:I

.field private kH:I

.field private kI:I

.field protected lH:Lcom/smartisanos/smengine/Camera;

.field private lI:I

.field private log:Lcom/smartisanos/launcher/va;

.field public mCurrentColor:Lcom/smartisanos/smengine/a/k;

.field private mI:Z

.field protected mRenderTarget:Lcom/smartisanos/smengine/N;

.field private pageProjectionViewportMapped:Z

.field protected nH:Z

.field private nI:Ljava/lang/String;

.field protected oH:Z

.field protected pH:Ljava/lang/String;

.field protected qH:Z

.field protected rH:Z

.field protected sH:Z

.field protected sc:[Lcom/smartisanos/smengine/SceneNode;

.field protected tH:Z

.field protected uH:Z

.field public vH:Z

.field public wH:Z

.field protected xH:Z

.field protected yH:Z

.field protected zH:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a;-><init>(Ljava/lang/String;)V

    .line 2
    const-class p1, Lcom/smartisanos/launcher/view/a/g;

    invoke-static {p1}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->WG:F

    const/16 v0, 0xa

    .line 4
    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->XG:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->_G:I

    .line 6
    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->aH:I

    .line 7
    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->bH:I

    .line 8
    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->cH:I

    .line 9
    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->fH:I

    .line 10
    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->gH:I

    .line 11
    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->iH:Z

    .line 13
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->mCurrentColor:Lcom/smartisanos/smengine/a/k;

    .line 14
    iput v1, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    .line 15
    iput v1, p0, Lcom/smartisanos/launcher/view/a/g;->kH:I

    .line 16
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->qH:Z

    const/4 v2, 0x1

    .line 17
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/a/g;->tH:Z

    .line 18
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/a/g;->uH:Z

    .line 19
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->vH:Z

    .line 20
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/a/g;->wH:Z

    .line 21
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/a/g;->xH:Z

    .line 22
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->yH:Z

    .line 23
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->zH:Z

    .line 24
    sget v3, Lcom/smartisanos/launcher/view/a/g;->oI:I

    iput v3, p0, Lcom/smartisanos/launcher/view/a/g;->EH:I

    .line 25
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    .line 26
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->IH:Z

    .line 27
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->KH:Lcom/smartisanos/smengine/a/j;

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 28
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->MH:[F

    .line 29
    new-instance v2, Lcom/smartisanos/launcher/view/a/f;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/a/f;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->OH:Lcom/smartisanos/launcher/view/a/f;

    const/4 v2, 0x0

    .line 30
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->YH:Lcom/smartisanos/smengine/n;

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    .line 31
    iput v3, p0, Lcom/smartisanos/launcher/view/a/g;->ZH:F

    .line 32
    iput v1, p0, Lcom/smartisanos/launcher/view/a/g;->_H:I

    .line 33
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->aI:Z

    .line 34
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->bI:Z

    .line 35
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3, p1, p1, p1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->cI:Lcom/smartisanos/smengine/a/j;

    .line 36
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->dI:Z

    .line 37
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->eI:Z

    .line 38
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->fI:Z

    .line 39
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->hI:Z

    .line 40
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->iI:Lcom/smartisanos/launcher/view/a/g;

    .line 41
    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->jI:I

    .line 42
    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->kI:I

    .line 43
    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->lI:I

    .line 44
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->mI:Z

    .line 45
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->nI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/ba;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/g;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance p1, Lcom/smartisanos/launcher/view/v;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/view/v;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->GH:Lcom/smartisanos/launcher/view/v;

    .line 48
    new-instance p1, Lcom/smartisanos/launcher/view/l;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/view/l;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->FH:Lcom/smartisanos/launcher/view/l;

    const/16 p1, 0x1c

    .line 49
    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->XG:I

    .line 50
    iget p1, p0, Lcom/smartisanos/launcher/view/a/g;->XG:I

    new-array p1, p1, [Lcom/smartisanos/smengine/SceneNode;

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    .line 51
    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/view/a/g;->a(Lcom/smartisanos/launcher/view/a/ba;)V

    .line 52
    iget p1, p0, Lcom/smartisanos/launcher/view/a/g;->fH:I

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 53
    iget p1, p0, Lcom/smartisanos/launcher/view/a/g;->gH:I

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->eH:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 54
    iget p1, p0, Lcom/smartisanos/launcher/view/a/g;->_G:I

    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->bH:I

    .line 55
    iget p2, p0, Lcom/smartisanos/launcher/view/a/g;->aH:I

    iput p2, p0, Lcom/smartisanos/launcher/view/a/g;->cH:I

    .line 56
    iput p2, p0, Lcom/smartisanos/launcher/view/a/g;->ZG:I

    .line 57
    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->YG:I

    .line 58
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->VG:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    .line 59
    sget-object p1, Lcom/smartisanos/launcher/view/Mc;->xO:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->VG:Landroid/graphics/Paint;

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->pm()V

    .line 61
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    if-eqz p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/ga;->init()V

    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->WH:Lcom/smartisanos/launcher/view/a/ca;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/ca;->init()V

    .line 64
    :goto_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object p1

    const-string p2, "cellCamera"

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/k;->Da(Ljava/lang/String;)Lcom/smartisanos/smengine/Camera;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 65
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/a/g;->IH:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    goto :goto_1

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p2, 0x1

    const-string v0, "back"

    invoke-static {v0, p2}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".png"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    .line 68
    :goto_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/a/g;->Ug()V

    .line 69
    new-instance p1, Lcom/smartisanos/launcher/view/a/X;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/view/a/X;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    .line 70
    new-instance p1, Lcom/smartisanos/launcher/view/a/Z;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/view/a/Z;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    return-void
.end method

.method private Ug()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/a/a;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/a/a;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setOnClickListener(Lcom/smartisanos/smengine/aa;)V

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/view/a/b;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/a/b;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setOnLongClickListener(Lcom/smartisanos/smengine/ba;)V

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/view/a/d;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/a/d;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setTouchDownListener(Lcom/smartisanos/smengine/ga;)V

    return-void
.end method

.method private Zx()Lcom/smartisanos/smengine/SceneNode;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/a/g;->nc(Z)F

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->Te()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x7

    if-eqz v3, :cond_2

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/view/activeicon/m;

    const-string v3, "calendarView"

    invoke-direct {v0, v3, p0}, Lcom/smartisanos/launcher/view/activeicon/m;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/g;)V

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->create()V

    .line 7
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 8
    invoke-virtual {v0, v4, v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 10
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aput-object v0, v1, v5

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/launcher/view/activeicon/m;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->bf()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    new-instance v0, Lcom/smartisanos/launcher/view/activeicon/H;

    const-string v3, "weatherView"

    invoke-direct {v0, v3, p0}, Lcom/smartisanos/launcher/view/activeicon/H;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/g;)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/activeicon/a;->Eb(Z)V

    .line 17
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/activeicon/H;->create()V

    .line 18
    invoke-virtual {v0, v4, v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 19
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/activeicon/a;->tq()Z

    move-result v1

    if-nez v1, :cond_3

    .line 20
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 21
    :cond_3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 22
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aput-object v0, v1, v5

    .line 23
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/launcher/view/activeicon/H;)V

    .line 25
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v5

    if-eqz v0, :cond_5

    .line 26
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v5

    iget v0, v0, Lcom/smartisanos/launcher/view/jb;->Pv:I

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 28
    :cond_5
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->syncActiveIconToStaticArtwork(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->applyActiveIconShadowOwnership(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v5

    return-object p0
.end method

.method private _x()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sget v0, Lcom/smartisanos/launcher/data/Constants;->NEW_OR_MESSAGE_LOCATION_X_MODULUS:F

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private a(Lcom/smartisanos/smengine/L;)V
    .locals 2

    const/4 p0, 0x1

    .line 18
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, -0x40000000    # -2.0f

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 20
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/L;->a(Lcom/smartisanos/smengine/a/k;)V

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/L;->Ba(Z)V

    .line 22
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 23
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 24
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    const/4 p0, 0x2

    .line 25
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/L;->Va(I)V

    return-void
.end method

.method private ay()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->NEW_OR_MESSAGE_LOCATION_Y_MODULUS:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 2
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    if-nez v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->eH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_cell_icon_size:F

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    div-float/2addr v2, v0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 5
    sget v1, Lcom/smartisanos/launcher/data/Constants;->NEW_OR_MESSAGE_LOCATION_Y_MODULUS:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Um()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y:I

    goto :goto_0

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y_without_app_name:I

    :goto_0
    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method private by()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Pe()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->lm()[I

    move-result-object v2

    .line 6
    array-length v3, v2

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 7
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/shadow/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9
    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove tex"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cy()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/aa;->s(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/L;->Ok()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/launcher/view/b/ka;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/b/M;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/M;->ib(Z)V

    :cond_0
    return-void
.end method

.method private dy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->gI:Ljava/lang/Throwable;

    :cond_0
    return-void
.end method

.method private i(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 1

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 16
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 17
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 18
    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->mode(Lcom/smartisanos/launcher/data/LayoutProperty;)I

    move-result p2

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    invoke-static {p2, p0}, Lcom/smartisanos/launcher/data/Constants;->getMessageTextureName(II)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    return-void
.end method

.method private j(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/L;->Va(I)V

    const-string p0, "newapp.png"

    .line 4
    invoke-static {p0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/smartisanos/smengine/mymaterial/f;->r(IZ)V

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p0

    new-instance p1, Lcom/smartisanos/smengine/Ca;

    const/4 v1, 0x5

    invoke-direct {p1, v1, p2, p2, p2}, Lcom/smartisanos/smengine/Ca;-><init>(IIII)V

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    return-void
.end method

.method private ld(I)Lcom/smartisanos/launcher/view/Mc;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    check-cast v0, Lcom/smartisanos/launcher/view/Mc;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Mc;->clear(Z)V

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v2, :cond_6

    .line 4
    iget-object v0, v2, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    check-cast v3, Lcom/smartisanos/launcher/view/Ca;

    if-eqz v2, :cond_1

    .line 6
    iget-boolean v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Ca;->lp()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v0, " "

    :cond_3
    move-object v4, v0

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->max_app_name_length:F

    float-to-int v0, v0

    .line 10
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_4

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->eH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->max_app_name_length:F

    float-to-int v0, v0

    :cond_4
    move v7, v0

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->VG:Landroid/graphics/Paint;

    if-nez v0, :cond_5

    .line 13
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->xO:Landroid/graphics/Paint;

    :cond_5
    move-object v6, v0

    .line 14
    new-instance v0, Lcom/smartisanos/launcher/view/Mc;

    sget-object v2, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object v3, v2, p1

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    float-to-int p1, p1

    div-int/lit8 v8, p1, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/smartisanos/launcher/view/Mc;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object v2, p1

    iget p1, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->name_off_set_y:I

    int-to-float p1, p1

    invoke-static {p0, v2, v0, p1}, Lcom/smartisanos/launcher/data/FolderCellVisualMetrics;->resolveLabelCenterY(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;F)F

    move-result p1

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2, p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 18
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->updateGeometricState()V

    .line 19
    invoke-virtual {v0, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(IZ)V

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object p1

    iget v2, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {p1, v2}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object p1

    .line 21
    iget p1, p1, Lcom/smartisanos/launcher/view/jb;->Ov:I

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Mc;->setLayer(I)V

    .line 22
    :cond_6
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/16 v2, 0x10

    if-eqz p1, :cond_a

    .line 23
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/16 v3, 0x4000

    invoke-virtual {p1, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const v3, 0x8000

    invoke-virtual {p1, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    .line 25
    :cond_7
    invoke-virtual {p0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    goto :goto_1

    :cond_8
    :goto_0
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 27
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    if-eqz p1, :cond_b

    if-eqz v0, :cond_b

    .line 28
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->wn()Lcom/smartisanos/smengine/a/k;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 29
    iget v1, p1, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v3, v1

    iget v1, p1, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v4, v1

    iget v1, p1, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v5, v1

    iget p1, p1, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int v6, p1

    const/4 v7, 0x1

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Lcom/smartisanos/launcher/view/Mc;->b(IIIIZ)V

    .line 30
    :cond_9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result p0

    if-eqz p0, :cond_b

    const p0, 0x3dcccccd    # 0.1f

    .line 31
    invoke-virtual {v0, p0, p0, p0, p0}, Lcom/smartisanos/launcher/view/Mc;->setColor(FFFF)V

    goto :goto_2

    .line 32
    :cond_a
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    :cond_b
    :goto_2
    return-object v0
.end method

.method private md(I)Lcom/smartisanos/launcher/view/Ca;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-boolean v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0x8

    aget-object v0, v0, v3

    if-nez v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_log_tag createDownloadWithWaveView "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget v2, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v0

    .line 4
    iget v8, v0, Lcom/smartisanos/launcher/view/jb;->aw:I

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_with_raw_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/smartisanos/launcher/view/a/g;->fH:I

    invoke-static {v0, v4}, Lcom/smartisanos/launcher/theme/IconRasterDiagnostics;->usesSharedFolderApplicationTexture(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_download_texture_mode_ready

    invoke-static {}, Lcom/smartisanos/launcher/theme/IconRasterDiagnostics;->desktopRenderMode()I

    move-result v4

    :cond_download_texture_mode_ready
    invoke-static {v0, v2, v1, v4}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/launcher/data/ItemInfo;Ljava/lang/String;ZI)Lcom/smartisanos/smengine/Da;

    .line 6
    new-instance v0, Lcom/smartisanos/launcher/view/Ca;

    sget-object v1, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-direct {v0, p1}, Lcom/smartisanos/launcher/view/Ca;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    move-object v2, v0

    move-object v3, p0

    move v6, v7

    invoke-virtual/range {v2 .. v8}, Lcom/smartisanos/launcher/view/Ca;->a(Lcom/smartisanos/smengine/SceneNode;Ljava/lang/String;Ljava/lang/String;FFI)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 9
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y:I

    int-to-float p1, p1

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Um()Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y_without_app_name:I

    int-to-float p1, p1

    :cond_1
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1, p1, v1}, Lcom/smartisanos/launcher/view/Ca;->setTranslate(FFF)V

    .line 13
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Ca;->updateGeometricState()V

    const/16 p1, 0x200

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    goto :goto_0

    .line 15
    :cond_2
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_log_tag !isEmptyCell() = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mItemInfo.isNeedDowload = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-boolean v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDownloadWithWaveView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mItemInfo.packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method private nc(Z)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->fH:I

    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->gH:I

    invoke-static {v0, p0, p1}, Lcom/smartisanos/launcher/view/a/aa;->a(IIZ)F

    move-result p0

    return p0
.end method

.method private nd(I)Lcom/smartisanos/smengine/F;
    .locals 5

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v0, p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v0, v1, v2}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p1

    const-string v1, "TextureModularColorMaterial"

    .line 2
    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v1

    .line 3
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_1

    .line 6
    :cond_0
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_3

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/16 v3, 0x4000

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const v3, 0x8000

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 12
    :goto_1
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createFlagMessageCountRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", num:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 13
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/r;->Jd()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->mCurrentColor:Lcom/smartisanos/smengine/a/k;

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {p1, v1, v3, v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v1

    if-eqz v1, :cond_6

    const v0, 0x3dcccccd    # 0.1f

    .line 17
    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_2

    .line 18
    :cond_6
    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 19
    :goto_2
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v0

    .line 20
    iget v0, v0, Lcom/smartisanos/launcher/view/jb;->Qv:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 21
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 22
    invoke-virtual {p0, p1, v2}, Lcom/smartisanos/launcher/view/a/g;->e(Lcom/smartisanos/smengine/SceneNode;Z)V

    return-object p1
.end method

.method private od(I)Lcom/smartisanos/smengine/F;
    .locals 8

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    check-cast v0, Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v1, :cond_b

    .line 4
    iget-object v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 9
    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->ma(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 10
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bt .width ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 11
    :cond_2
    new-instance v4, Lcom/smartisanos/smengine/Da;

    invoke-direct {v4, v2}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v6, v6, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 13
    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 14
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 15
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {v2}, Lcom/smartisanos/smengine/Da;->getWidth()F

    move-result v1

    float-to-int v1, v1

    .line 17
    invoke-virtual {v2}, Lcom/smartisanos/smengine/Da;->getHeight()F

    move-result v2

    float-to-int v2, v2

    .line 18
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    const-string v5, "texutre not null"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 19
    :cond_4
    :goto_0
    sget-object v4, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v4, p1

    int-to-float v1, v1

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v3}, Lcom/smartisanos/smengine/F;->c(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p1

    const-string v1, "TextureModularColorMaterial"

    .line 20
    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v1

    .line 21
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 23
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    .line 24
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 26
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_MODE(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    .line 27
    :cond_5
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_4_MODE(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x3f266666    # 0.65f

    goto :goto_1

    .line 28
    :cond_6
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_9_MODE(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/high16 v0, 0x3f400000    # 0.75f

    .line 29
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0x3eb33333    # 0.35f

    .line 30
    :cond_7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float/2addr v1, v0

    .line 31
    invoke-virtual {p1, v4, v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 32
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 34
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->fH:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 35
    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->gH:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 36
    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 37
    iget v3, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 38
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    .line 39
    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float/2addr v2, v3

    div-float/2addr v0, v1

    .line 40
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 41
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_8

    move v0, v5

    move v2, v0

    goto :goto_2

    .line 42
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 43
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/bb;->Ap()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    div-float/2addr v2, v3

    .line 44
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/bb;->Ap()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr v0, v3

    .line 45
    :cond_9
    :goto_2
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v3, v2

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v1, v0

    invoke-virtual {p1, v3, v1, v5}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 46
    invoke-virtual {p1, v5, v5, v5, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 47
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 48
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object p0

    .line 49
    iget p0, p0, Lcom/smartisanos/launcher/view/jb;->Vv:I

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    goto :goto_3

    .line 50
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createLongPressAppNameRect mCurrentPageMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    move-object p1, v0

    :goto_3
    return-object p1
.end method

.method private pd(I)Lcom/smartisanos/smengine/F;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    check-cast v0, Lcom/smartisanos/smengine/F;

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->fH:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 4
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->magnify_uv_radius:F

    .line 5
    sget-object v1, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v1, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v0, v2, v1}, Lcom/smartisanos/smengine/F;->b(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const-string p1, "MagnifyMaskMaterail"

    .line 6
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/4 p1, 0x3

    .line 8
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 9
    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    const/4 v3, 0x1

    const-string v4, "magnify_mask.png"

    .line 10
    invoke-static {v4, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 11
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->MH:[F

    aput v2, v4, v1

    .line 12
    aput v2, v4, v3

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    .line 13
    aput v6, v4, v5

    .line 14
    aput v2, v4, p1

    const/4 v7, 0x4

    .line 15
    aput v6, v4, v7

    const/4 v7, 0x5

    .line 16
    aput v6, v4, v7

    const/4 v7, 0x6

    .line 17
    aput v2, v4, v7

    const/4 v2, 0x7

    .line 18
    aput v6, v4, v2

    .line 19
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v2

    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->MH:[F

    invoke-virtual {v2, p1, v4}, Lcom/smartisanos/smengine/y;->c(I[F)V

    .line 20
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 21
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {p1, v2, v4}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 22
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 23
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 24
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 25
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 26
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 27
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 28
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    .line 29
    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    :cond_0
    return-object v0
.end method

.method private qd(I)Lcom/smartisanos/smengine/F;
    .locals 7

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iget v2, p0, Lcom/smartisanos/launcher/view/a/g;->WG:F

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->pH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 4
    invoke-virtual {p0, p1, v3}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 5
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->oH:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    if-eqz v0, :cond_0

    .line 7
    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->_G:I

    iget v2, p0, Lcom/smartisanos/launcher/view/a/g;->aH:I

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/N;->p(II)Lcom/smartisanos/smengine/M;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 8
    iget-object v2, v0, Lcom/smartisanos/smengine/M;->rG:[F

    aget v4, v2, v3

    aput v4, v1, v3

    .line 9
    iget-object v0, v0, Lcom/smartisanos/smengine/M;->v:[F

    aget v4, v0, v3

    const/4 v5, 0x1

    aput v4, v1, v5

    const/4 v4, 0x2

    .line 10
    aget v6, v2, v5

    aput v6, v1, v4

    const/4 v4, 0x3

    .line 11
    aget v6, v0, v3

    aput v6, v1, v4

    const/4 v4, 0x4

    .line 12
    aget v6, v2, v5

    aput v6, v1, v4

    const/4 v4, 0x5

    .line 13
    aget v6, v0, v5

    aput v6, v1, v4

    const/4 v4, 0x6

    .line 14
    aget v2, v2, v3

    aput v2, v1, v4

    const/4 v2, 0x7

    .line 15
    aget v0, v0, v5

    aput v0, v1, v2

    .line 16
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/F;->d([F)V

    :cond_0
    const-string v0, "TextureModularColorMaterial"

    .line 17
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v0

    .line 21
    iget v0, v0, Lcom/smartisanos/launcher/view/jb;->Jv:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    return-object p1
.end method

.method private rd(I)Lcom/smartisanos/smengine/F;
    .locals 4

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iget v2, p0, Lcom/smartisanos/launcher/view/a/g;->WG:F

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, v3}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    const-string v0, "GlobalColorMaterial"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object p0

    .line 8
    iget p0, p0, Lcom/smartisanos/launcher/view/jb;->Zv:I

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-object p1
.end method

.method private sd(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->eH:Lcom/smartisanos/launcher/data/LayoutProperty;

    return-void
.end method

.method static synthetic t(Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/va;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    return-object p0
.end method


# virtual methods
.method public Af()Lcom/smartisanos/launcher/view/b/M;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v2, v0, Lcom/smartisanos/launcher/view/b/fa;

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    goto :goto_0

    .line 5
    :cond_1
    instance-of p0, v0, Lcom/smartisanos/launcher/view/b/M;

    if-eqz p0, :cond_2

    .line 6
    move-object v1, v0

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public Al()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->aH:I

    return p0
.end method

.method public Am()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->fH:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Ba(I)Lcom/smartisanos/smengine/SceneNode;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/ga;->Ea(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aput-object v0, v1, p1

    goto :active_raster_diag

    :cond_0
    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->cb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->ld(I)Lcom/smartisanos/launcher/view/Mc;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 5
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->bb(I)Lcom/smartisanos/smengine/F;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 6
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->nd(I)Lcom/smartisanos/smengine/F;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/16 v1, 0xc

    if-ne p1, v1, :cond_5

    .line 7
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->qd(I)Lcom/smartisanos/smengine/F;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 8
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->od(I)Lcom/smartisanos/smengine/F;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/16 v1, 0x8

    if-ne p1, v1, :cond_7

    .line 9
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->md(I)Lcom/smartisanos/launcher/view/Ca;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/16 v1, 0x16

    if-ne p1, v1, :cond_8

    .line 10
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->rd(I)Lcom/smartisanos/smengine/F;

    move-result-object v0

    goto :goto_0

    :cond_8
    const/16 v1, 0x9

    if-ne p1, v1, :cond_9

    .line 11
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->pd(I)Lcom/smartisanos/smengine/F;

    move-result-object v0

    goto :goto_0

    :cond_9
    const/4 v1, 0x7

    if-ne p1, v1, :cond_a

    .line 12
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/a/g;->Zx()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 13
    :cond_a
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aput-object v0, v1, p1

    :active_raster_diag
    const/4 v1, 0x1

    if-eq p1, v1, :active_raster_diag_run

    const/4 v1, 0x7

    if-ne p1, v1, :active_raster_diag_done

    :active_raster_diag_run
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->syncActiveIconToStaticArtwork(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->applyActiveIconShadowOwnership(Ljava/lang/Object;)V

    :active_raster_diag_done

    return-object v0
.end method

.method public Bi()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/ga;->Bi()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->WH:Lcom/smartisanos/launcher/view/a/ca;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/ca;->Bi()V

    :goto_0
    return-void
.end method

.method public Bl()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/a/g;->eI:Z

    return p0
.end method

.method public Bm()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 2
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->name_off_set_y:I

    int-to-float v2, v2

    aget-object v0, v0, v1

    invoke-static {p0, v3, v0, v2}, Lcom/smartisanos/launcher/data/FolderCellVisualMetrics;->resolveLabelCenterY(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;F)F

    move-result v2

    .line 3
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_0
    return-void
.end method

.method public Cl()Lcom/smartisanos/smengine/a/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->mCurrentColor:Lcom/smartisanos/smengine/a/k;

    return-object p0
.end method

.method public Cm()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 4
    iget v3, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 5
    iget v4, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y:I

    int-to-float v4, v4

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Um()Z

    move-result v5

    if-nez v5, :cond_0

    .line 7
    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y_without_app_name:I

    int-to-float v4, v3

    .line 8
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v1

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v3, v5, v4, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 9
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateWorldTransforms()V

    .line 10
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0x1b

    aget-object v1, v1, v3

    if-eqz v1, :cond_1

    .line 12
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->nt()F

    move-result v1

    .line 13
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Ra;->ot()F

    move-result v5

    .line 14
    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, v3

    invoke-virtual {v6, v1, v5, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 15
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0xb

    aget-object v5, v1, v3

    if-eqz v5, :cond_2

    .line 17
    aget-object v1, v1, v3

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v5, v4, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 18
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateWorldTransforms()V

    .line 19
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v3, 0x7

    aget-object v5, v1, v3

    if-eqz v5, :cond_3

    .line 21
    aget-object v1, v1, v3

    invoke-virtual {v1, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 22
    # Keep the original mode-aware animation anchor. The cached composed bitmap
    # is optically corrected to this position; the live node itself is not moved.
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/a/g;->nc(Z)F

    move-result v1

    .line 23
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v3

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v2, v5, v1, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 24
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateWorldTransforms()V

    .line 25
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 26
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0x8

    aget-object v3, v1, v2

    if-eqz v3, :cond_4

    .line 27
    aget-object v1, v1, v2

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v3, v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateWorldTransforms()V

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 30
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_5
    return-void
.end method

.method public Dl()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    return p0
.end method

.method public Dm()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v1

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->magnify_x_offset:F

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->magnify_y_offset:F

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    :cond_0
    return-void
.end method

.method public El()Lcom/smartisanos/launcher/view/a/g;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v0

    int-to-float v1, v0

    .line 2
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return-object v3

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    if-nez v1, :cond_1

    return-object v3

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    add-int/2addr v0, p0

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    return-object p0
.end method

.method public Em()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/a/g;->_x()F

    move-result v0

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/a/g;->ay()F

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_0
    return-void
.end method

.method public Fl()F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/a/g;->_x()F

    move-result p0

    return p0
.end method

.method public Fm()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Fl()F

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Gl()F

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v3, 0x4

    aget-object v1, v1, v3

    invoke-virtual {v1, v0, v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v3

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_0
    return-void
.end method

.method public Gl()F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/a/g;->ay()F

    move-result p0

    return p0
.end method

.method public Gm()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Fm()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Em()V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Dm()V

    return-void
.end method

.method public Hl()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    sget v1, Lcom/smartisanos/launcher/data/Constants;->NEW_RECT_HEIGHT_MODULUS:F

    mul-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    .line 2
    sget v1, Lcom/smartisanos/launcher/data/Constants;->NEW_RECT_WIDTH_HEIGHT_MODULUS:F

    mul-float/2addr v1, p0

    float-to-int v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    float-to-int p0, p0

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method public Hm()V
    .locals 0

    return-void
.end method

.method public Il()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sget v0, Lcom/smartisanos/launcher/data/Constants;->FLAG_SELECT_LOCATION_X_MODULUS:F

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method protected Im()Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/Aa;->qc()Ljava/util/HashMap;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 5
    iget-wide v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v5, v4, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    .line 6
    iget v2, v4, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    iget v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-ne v2, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public Jl()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sget v1, Lcom/smartisanos/launcher/data/Constants;->FLAG_SELECT_LOCATION_Y_MODULUS:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Um()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y_without_app_name:I

    :goto_0
    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public Jm()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 3
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "printCellRects i:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Ka(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/a/g;->o(Ljava/lang/String;I)V

    return-void
.end method

.method public Kl()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    sget v0, Lcom/smartisanos/launcher/data/Constants;->FLAG_SELECT_RECT_MODULUS:F

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public Km()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->gI:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "printTrace nothing to do by mLocalTrace is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public La(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    return-void
.end method

.method public Ll()Lcom/smartisanos/launcher/view/a/la;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public Lm()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    return-void
.end method

.method public Ma(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->oH:Z

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->pH:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public Ml()Lcom/smartisanos/launcher/view/a/Z;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    return-object p0
.end method

.method public Mm()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 3
    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 5
    iget v5, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float/2addr v4, v1

    div-float/2addr v5, v2

    .line 6
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    mul-float/2addr v1, v4

    .line 7
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float/2addr v0, v5

    .line 8
    iget v2, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 9
    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float/2addr v1, v2

    div-float/2addr v0, v3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {p0, v1, v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public Na(Ljava/lang/String;)V
    .locals 9

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    check-cast v0, Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string p1, " "

    :cond_2
    move-object v4, p1

    .line 17
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->max_app_name_length:F

    float-to-int p1, p1

    .line 18
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_3

    .line 19
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->eH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->max_app_name_length:F

    float-to-int p1, p1

    :cond_3
    move v7, p1

    .line 20
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->VG:Landroid/graphics/Paint;

    if-nez p1, :cond_4

    .line 21
    sget-object p1, Lcom/smartisanos/launcher/view/Mc;->xO:Landroid/graphics/Paint;

    :cond_4
    move-object v6, p1

    .line 22
    invoke-virtual {p0, v1, v1}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 23
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    new-instance v0, Lcom/smartisanos/launcher/view/Mc;

    sget-object v2, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object v3, v2, v1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    float-to-int v2, v2

    div-int/lit8 v8, v2, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/smartisanos/launcher/view/Mc;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V

    aput-object v0, p1, v1

    .line 24
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Bm()V

    .line 25
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 26
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 27
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v1

    check-cast p1, Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(IZ)V

    .line 28
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object p1

    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    check-cast v0, Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    iget p1, p1, Lcom/smartisanos/launcher/view/jb;->Ov:I

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 30
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Um()Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x10

    .line 31
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 32
    :cond_6
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_7

    .line 33
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 34
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v1

    const p1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_7
    return-void
.end method

.method public Na(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x10

    if-eqz p1, :cond_3

    .line 2
    aget-object p1, v0, v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    if-eq p1, p0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Bm()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez p1, :cond_2

    .line 6
    invoke-virtual {p0, v3, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v3, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0, v3, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 10
    :goto_0
    iget p1, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->Ya(I)V

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Em()V

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Fm()V

    .line 13
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public Nl()Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->cI:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method public Nm()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->eH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_cell_icon_size:F

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p0, v1, v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    return-void
.end method

.method public Oa(Z)V
    .locals 0

    return-void
.end method

.method public Ol()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    return-object p0
.end method

.method public Om()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->_G:I

    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->YG:I

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->aH:I

    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->ZG:I

    return-void
.end method

.method public Pa(Z)Lcom/smartisanos/launcher/view/d;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->GH:Lcom/smartisanos/launcher/view/v;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->FH:Lcom/smartisanos/launcher/view/l;

    :goto_0
    return-object p0
.end method

.method public Pe()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_0

    iget-byte v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p0, "com.smartisan.commonshortcut"

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_1

    iget-byte v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string p0, "com.smartisan.folder"

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->Pe()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public Pi()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/ga;->Pi()V

    :cond_0
    return-void
.end method

.method public Pl()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/a/g;->dI:Z

    return p0
.end method

.method public Pm()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rm()V

    return-void
.end method

.method public Qa(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x10

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    if-eq p1, p0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Bm()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0, v3, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v3, v0}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0, v3, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 9
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Em()V

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Fm()V

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public Qi()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/ga;->Qi()V

    :cond_0
    return-void
.end method

.method public Ql()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->_H:I

    return p0
.end method

.method public Qm()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->WH:Lcom/smartisanos/launcher/view/a/ca;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/ca;->T(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->GH:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/d;->Rg()Lcom/smartisanos/smengine/ha;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setTouchListener(Lcom/smartisanos/smengine/ha;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->GH:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/d;->Qg()Lcom/smartisanos/smengine/fa;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setSingleTapListener(Lcom/smartisanos/smengine/fa;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->GH:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/d;->Pg()Lcom/smartisanos/smengine/V;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setCollideListener(Lcom/smartisanos/smengine/V;)V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/V;->x(Lcom/smartisanos/launcher/view/a/g;)V

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->fl()V

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Pm()V

    return-void
.end method

.method public Ra(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0xc

    aget-object v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setDepthTestFunc(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0xa

    aget-object v2, v0, v1

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 6
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v0, v3

    if-eqz v1, :cond_2

    .line 9
    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v0, v4

    if-eqz v1, :cond_3

    .line 12
    aget-object v0, v0, v4

    check-cast v0, Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x5

    aget-object v2, v0, v1

    if-eqz v2, :cond_4

    .line 15
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x3

    aget-object v2, v0, v1

    if-eqz v2, :cond_5

    .line 18
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    :cond_5
    return-void
.end method

.method public Rl()Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    return-object p0
.end method

.method public Rm()V
    .locals 2

    const/4 v0, 0x1

    const v1, 0x8000

    .line 1
    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    const/high16 v1, 0x10000

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    return-void
.end method

.method public Sa(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0xc

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->Fa(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0xa

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 4
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->Fa(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    .line 6
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->Fa(Z)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    .line 8
    aget-object v0, v0, v1

    check-cast v0, Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->Fa(Z)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x5

    aget-object v2, v0, v1

    if-eqz v2, :cond_4

    .line 10
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->Fa(Z)V

    .line 11
    :cond_4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v0, 0x3

    aget-object v1, p0, v0

    if-eqz v1, :cond_5

    .line 12
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->Fa(Z)V

    :cond_5
    return-void
.end method

.method public Sl()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->ZH:F

    return p0
.end method

.method public Sm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->KH:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    return-void
.end method

.method public Ta(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/a/g;->xH:Z

    return-void
.end method

.method public Tl()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    return p0
.end method

.method public Tm()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    instance-of v1, v1, Lcom/smartisanos/launcher/view/b/M;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v4

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/bb;->yp()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v6

    if-eqz v6, :cond_1

    if-ne v6, v1, :cond_1

    .line 8
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/bb;->zp()I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v1

    if-ne v1, v5, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_4

    move v1, v3

    .line 11
    :cond_4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast p0, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 13
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/data/FolderInfo;->M(Z)V

    goto :goto_3

    .line 14
    :cond_5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v2, :cond_6

    goto :goto_2

    .line 15
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockStatus() mIteminfo is in folder. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_7
    :goto_2
    invoke-static {v2, v0, v1}, Lcom/smartisanos/launcher/e/s;->a(ZLjava/lang/String;I)V

    .line 17
    :goto_3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Rh()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 18
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->m(Ljava/lang/String;I)V

    :cond_8
    return-void

    .line 19
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "set cell lock status, but cell don\'t have parent !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public Ua(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/a/g;->eI:Z

    return-void
.end method

.method public Ul()Lcom/smartisanos/launcher/data/LayoutProperty;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    return-object p0
.end method

.method public Um()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v2

    .line 2
    :goto_1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public Va(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/a/g;->hI:Z

    return-void
.end method

.method public Vg()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Fm()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Em()V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Dm()V

    return-void
.end method

.method public Vl()Lcom/smartisanos/smengine/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->QH:Lcom/smartisanos/smengine/i;

    return-object p0
.end method

.method public Vm()V
    .locals 4

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 3
    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 4
    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/smartisanos/launcher/view/b/fa;->a(FFZ)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->CH:Lcom/smartisanos/launcher/view/b/M;

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->CH:Lcom/smartisanos/launcher/view/b/M;

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/bb;->yp()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->CH:Lcom/smartisanos/launcher/view/b/M;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->CH:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_6

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->DH:Lcom/smartisanos/launcher/view/b/M;

    if-eq v0, v1, :cond_2

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->DH:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Dn()V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->CH:Lcom/smartisanos/launcher/view/b/M;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->DH:Lcom/smartisanos/launcher/view/b/M;

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->CH:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/b/M;->rb(I)Z

    move-result v0

    .line 16
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->CH:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->CH:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_3
    if-nez v0, :cond_5

    .line 17
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->CH:Lcom/smartisanos/launcher/view/b/M;

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->fo()V

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->CH:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->co()V

    goto :goto_1

    .line 20
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->CH:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->bo()V

    goto :goto_1

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->DH:Lcom/smartisanos/launcher/view/b/M;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->CH:Lcom/smartisanos/launcher/view/b/M;

    :cond_7
    :goto_1
    return-void
.end method

.method public Wa(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    :cond_2
    :goto_1
    return-void
.end method

.method public Wl()Lcom/smartisanos/launcher/view/a/g;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    rem-int v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/b/M;

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    return-object p0
.end method

.method public Wm()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/a/e;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/a/e;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Xa(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/a/g;->aI:Z

    return-void
.end method

.method public Xl()Lcom/smartisanos/smengine/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->SH:Lcom/smartisanos/smengine/i;

    return-object p0
.end method

.method public Xm()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "### updateAppNameRect iteminfo is null."

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "### updateAppNameRect mAppNameRect is null."

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    aget-object v0, v0, v1

    check-cast v0, Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_7

    .line 7
    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const-string v0, " "

    :cond_4
    move-object v4, v0

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->max_app_name_length:F

    float-to-int v0, v0

    .line 10
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_5

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->eH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->max_app_name_length:F

    float-to-int v0, v0

    :cond_5
    move v7, v0

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->VG:Landroid/graphics/Paint;

    if-nez v0, :cond_6

    .line 13
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->xO:Landroid/graphics/Paint;

    :cond_6
    move-object v6, v0

    .line 14
    invoke-virtual {p0, v1, v1}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    new-instance v9, Lcom/smartisanos/launcher/view/Mc;

    sget-object v2, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object v3, v2, v1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    float-to-int v2, v2

    div-int/lit8 v8, v2, 0x2

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/smartisanos/launcher/view/Mc;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V

    aput-object v9, v0, v1

    .line 16
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Bm()V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    check-cast v0, Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(IZ)V

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget v2, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v1

    check-cast v2, Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v2

    iget v0, v0, Lcom/smartisanos/launcher/view/jb;->Ov:I

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 22
    :cond_7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Um()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x10

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    :cond_8
    return-void
.end method

.method public Ya(I)V
    .locals 8

    move v7, p1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 4
    iget v3, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y:I

    int-to-float v3, v3

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Um()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y_without_app_name:I

    int-to-float v3, v2

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v1

    iget v4, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v2, v4, v3, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 8
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateWorldTransforms()V

    .line 9
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v4, 0x7

    aget-object v2, v2, v4

    if-eqz v2, :cond_2

    .line 10
    iget v2, p0, Lcom/smartisanos/launcher/view/a/g;->gH:I

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/a/g;->nc(Z)F

    move-result v1

    .line 11
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v4

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v2, v5, v1, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0x8

    aget-object v4, v1, v2

    if-eqz v4, :cond_3

    .line 14
    aget-object v1, v1, v2

    iget v4, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v4, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 16
    :cond_3
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_4

    .line 17
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->isSinglePageMode(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Fm()V

    .line 19
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Em()V

    .line 20
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Bm()V

    .line 21
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 22
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    :cond_5
    invoke-static {p0, v7}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->preserveOverviewIconAspect(Ljava/lang/Object;I)V

    return-void
.end method

.method public Ya(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/a/g;->dI:Z

    return-void
.end method

.method public Yl()Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->iI:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method public Ym()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_log_tag updateDownloadViewRect() pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v1

    check-cast p0, Lcom/smartisanos/launcher/view/Ca;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ca;->np()V

    :cond_1
    return-void
.end method

.method public Za(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->EH:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->EH:I

    return-void
.end method

.method public Za(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/a/g;->bI:Z

    return-void
.end method

.method public Zl()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->jI:I

    return p0
.end method

.method public Zm()V
    .locals 4

    const/16 v0, 0x200

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v1

    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    if-nez v2, :cond_new_badge_visibility_ready

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v3, :cond_new_badge_visibility_ready

    iget-boolean v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    if-eqz v3, :cond_new_badge_visibility_ready

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-gtz v3, :cond_new_badge_visibility_ready

    const/4 v2, 0x1

    :cond_new_badge_visibility_ready

    if-ne v1, v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_5

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v0, v1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v2, :cond_5

    iget v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-lez v2, :cond_5

    .line 6
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v0, v1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v2, :cond_5

    iget v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-lez v2, :cond_5

    .line 13
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 16
    :cond_5
    :goto_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    return-void
.end method

.method public _a(I)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->gl()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/launcher/view/a/g;->f(ZI)V

    :goto_0
    return-void
.end method

.method public _a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/a/g;->fI:Z

    return-void
.end method

.method public _k()Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->UG:Lcom/smartisanos/launcher/view/b/M;

    return-object p0
.end method

.method public _l()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->nI:Ljava/lang/String;

    return-object p0
.end method

.method public _m()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->NH:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/k;->Vj()Lcom/smartisanos/smengine/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->getZ()F

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->NH:Lcom/smartisanos/smengine/a/j;

    iget v3, v2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v3, v1

    iget v4, v2, Lcom/smartisanos/smengine/a/j;->z:F

    sub-float v5, v1, v4

    div-float/2addr v3, v5

    .line 5
    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v2, v1

    sub-float/2addr v1, v4

    div-float/2addr v2, v1

    .line 6
    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 7
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void

    :cond_1
    const/high16 v4, 0x42700000    # 60.0f

    .line 9
    iget v6, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_3X4_MODE(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/high16 v4, 0x42c80000    # 100.0f

    .line 10
    :cond_2
    iget v6, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_4X5_MODE(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/high16 v4, 0x43160000    # 150.0f

    .line 11
    :cond_3
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    neg-int v6, v6

    const/4 v7, 0x2

    div-int/2addr v6, v7

    int-to-float v6, v6

    iget v8, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    add-float/2addr v6, v8

    add-float/2addr v6, v4

    cmpl-float v4, v2, v6

    if-lez v4, :cond_4

    .line 12
    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void

    :cond_4
    const/4 v4, 0x1

    .line 13
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 14
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float/2addr v3, v6

    .line 15
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v6, v6

    div-float/2addr v6, v8

    add-float/2addr v2, v6

    .line 16
    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->magnify_uv_radius:F

    div-float/2addr v1, v8

    const v6, 0x3f99999a    # 1.2f

    div-float/2addr v1, v6

    sub-float v6, v3, v1

    .line 17
    sget v8, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float v8, v2, v1

    .line 18
    sget v9, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-float/2addr v3, v1

    .line 19
    sget v9, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v9, v9

    div-float/2addr v3, v9

    add-float/2addr v2, v1

    .line 20
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 21
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->LH:[F

    aput v6, v1, v5

    .line 22
    aput v8, v1, v4

    .line 23
    aput v3, v1, v7

    const/4 v9, 0x3

    .line 24
    aput v8, v1, v9

    const/4 v8, 0x4

    .line 25
    aput v3, v1, v8

    const/4 v3, 0x5

    .line 26
    aput v2, v1, v3

    const/4 v10, 0x6

    .line 27
    aput v6, v1, v10

    const/4 v6, 0x7

    .line 28
    aput v2, v1, v6

    .line 29
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->LH:[F

    invoke-virtual {v1, v5, v2}, Lcom/smartisanos/smengine/y;->d(I[F)V

    .line 30
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->MH:[F

    const/4 v2, 0x0

    aput v2, v1, v5

    .line 31
    aput v2, v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 32
    aput v4, v1, v7

    .line 33
    aput v2, v1, v9

    .line 34
    aput v4, v1, v8

    .line 35
    aput v4, v1, v3

    .line 36
    aput v2, v1, v10

    .line 37
    aput v4, v1, v6

    .line 38
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->MH:[F

    invoke-virtual {v0, v9, p0}, Lcom/smartisanos/smengine/y;->d(I[F)V

    return-void
.end method

.method public a(IIIIZ)V
    .locals 9

    .line 29
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->vH:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p5, v1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    if-ne v0, v2, :cond_1

    move p5, v1

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    .line 32
    aget-object v0, v0, v1

    move-object v3, v0

    check-cast v3, Lcom/smartisanos/launcher/view/Mc;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/smartisanos/launcher/view/Mc;->b(IIIIZ)V

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x5

    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    .line 34
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/L;->d(IIII)V

    .line 35
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x3

    aget-object v2, v0, v1

    if-eqz v2, :cond_4

    .line 37
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/L;->d(IIII)V

    .line 38
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    :cond_4
    return-void
.end method

.method public a(ILcom/smartisanos/smengine/Camera;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/smartisanos/launcher/view/a/ba;)V
    .locals 2

    const-string v0, "PageCell"

    .line 1
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/ba;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    const-string v0, "CellOnFolderPage"

    .line 2
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/ba;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->IH:Z

    const-string v0, "itemInfo"

    .line 3
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/ba;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/a/g;->dy()V

    const-string v0, "paint"

    .line 5
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/ba;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->VG:Landroid/graphics/Paint;

    const-string v0, "RenderWithBatch"

    .line 6
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/ba;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->nH:Z

    const-string v0, "RenderUsePageBatch"

    .line 7
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/ba;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->oH:Z

    const-string v0, "rowIndex"

    .line 8
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/ba;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->_G:I

    const-string v0, "columnIndex"

    .line 9
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/ba;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->aH:I

    const-string v0, "singlePageMode"

    .line 10
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/ba;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/ba;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->fH:I

    const-string v0, "multiPageMode"

    .line 12
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/ba;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/ba;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->gH:I

    const-string v0, "KeyCurrentPageMode"

    .line 14
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/ba;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/ba;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/smartisanos/launcher/view/a/g;->fH:I

    :goto_0
    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    return-void

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not contains KeyMultiPageMode"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not contains KeySinglePageMode"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Lcom/smartisanos/smengine/N;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    return-void
.end method

.method public a(ZLcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 0

    return-void
.end method

.method public ab(I)V
    .locals 11

    const/16 v0, 0x3e7

    if-le p1, v0, :cond_0

    const/16 p1, 0x3e8

    .line 1
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/e/s;->Au:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@ flag size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "@@@@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    new-instance v9, Lcom/smartisanos/launcher/view/Ua;

    const/4 v4, 0x0

    sget-object v3, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    const/4 v10, 0x6

    aget-object v5, v3, v10

    aget v2, p1, v2

    int-to-float v7, v2

    aget p1, p1, v1

    int-to-float v8, p1

    move-object v3, v9

    move-object v6, p0

    invoke-direct/range {v3 .. v8}, Lcom/smartisanos/launcher/view/Ua;-><init>(ILjava/lang/String;Lcom/smartisanos/launcher/view/a/g;FF)V

    aput-object v9, v0, v10

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/a/g;->_x()F

    move-result p1

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/a/g;->ay()F

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v10

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v10

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object p1

    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v10

    iget p1, p1, Lcom/smartisanos/launcher/view/jb;->Sv:I

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method public ab(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/a/g;->mI:Z

    return-void
.end method

.method public al()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/a/g;->xH:Z

    return p0
.end method

.method public am()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->lI:I

    return p0
.end method

.method protected an()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Pe()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->gm()[I

    move-result-object v3

    .line 6
    array-length v4, v3

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    .line 7
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/shadow/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9
    sget-boolean v6, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "texchange tex"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, v2

    invoke-virtual {v6, v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    goto :goto_1

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "tex num error"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public b(FZ)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x1b

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p2, p1, v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 8
    aget-object p1, p1, v2

    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p2, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    div-float v4, p2, v3

    div-float/2addr p2, v3

    invoke-virtual {p1, v4, p2, v0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v1

    if-eqz p1, :cond_3

    .line 11
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->mt()F

    move-result p1

    .line 12
    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p2, p2, v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    mul-float v4, p1, v2

    div-float/2addr v4, v3

    mul-float/2addr p1, v2

    div-float/2addr p1, v3

    invoke-virtual {p2, v4, p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, p2, v2

    if-eqz v3, :cond_2

    .line 15
    aget-object p2, p2, v2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object p2

    .line 16
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v2

    iget v4, p2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v4, p1

    iget p2, p2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p2, p1

    invoke-virtual {v3, v4, p2, v0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 17
    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p2, p2, v2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 18
    :cond_2
    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, p2, v1

    if-eqz v2, :cond_3

    .line 19
    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object p2

    .line 20
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v1

    iget v3, p2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v3, p1

    iget p2, p2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p2, p1

    invoke-virtual {v2, v3, p2, v0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 21
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 22
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 23
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public b(Lcom/smartisanos/smengine/Camera;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    const/16 v2, 0x40

    .line 3
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/X;->Aa(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Um()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Um()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v1

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    :cond_2
    return-void
.end method

.method public bb(I)Lcom/smartisanos/smengine/F;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 2
    aget-object p0, v0, p1

    check-cast p0, Lcom/smartisanos/smengine/F;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v2, :cond_9

    aget-object v0, v0, p1

    if-nez v0, :cond_9

    iget-boolean v0, v2, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    if-eqz v0, :cond_9

    iget v0, v2, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-gtz v0, :cond_9

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Hl()[I

    move-result-object v0

    const-string v1, "newapp.png"

    .line 5
    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 8
    invoke-static {v1}, Lcom/smartisanos/launcher/xa;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 9
    aget v6, v0, v5

    aget v7, v0, v4

    invoke-static {v3, v6, v7}, Lcom/smartisanos/launcher/e/s;->b(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 10
    new-instance v6, Lcom/smartisanos/smengine/Da;

    invoke-direct {v6, v3}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 11
    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 12
    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 13
    invoke-virtual {v2, v1, v6}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/smartisanos/launcher/install/SmartisanInstallManager;->onNewBadgeNodeCreated(Ljava/lang/String;I)V

    sget-object v1, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object v1, v1, p1

    aget v2, v0, v5

    int-to-float v2, v2

    aget v0, v0, v4

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v1

    const-string v0, "TextureModularColorMaterial"

    .line 15
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 16
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 17
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_2

    .line 19
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_5

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v2, 0x4000

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const v2, 0x8000

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_1

    .line 23
    :cond_4
    :goto_0
    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 24
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->wn()Lcom/smartisanos/smengine/a/k;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->wn()Lcom/smartisanos/smengine/a/k;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 26
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    iget v6, v0, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v6, v6

    iget v7, v0, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v7, v7

    iget v8, v0, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v8, v8

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int v0, v0

    invoke-virtual {v2, v6, v7, v8, v0}, Lcom/smartisanos/smengine/L;->d(IIII)V

    .line 27
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    goto :goto_2

    .line 28
    :cond_5
    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 29
    :cond_6
    :goto_2
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget v2, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v0

    .line 30
    iget v0, v0, Lcom/smartisanos/launcher/view/jb;->Qv:I

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 31
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Fl()F

    move-result v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Gl()F

    move-result v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 32
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->mCurrentColor:Lcom/smartisanos/smengine/a/k;

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 33
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 34
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x3dcccccd    # 0.1f

    .line 35
    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 36
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-boolean v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v0, :cond_8

    .line 37
    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 38
    :cond_8
    invoke-virtual {p0, v1, v5}, Lcom/smartisanos/launcher/view/a/g;->e(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 39
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aput-object v1, v0, p1

    .line 40
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->ml()V

    :cond_9
    return-object v1
.end method

.method public bb(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/a/g;->oH:Z

    return-void
.end method

.method public bl()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->kl()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 5
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/16 v2, 0x10

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0, v2, v3}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 7
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/Z;->ea(Z)V

    .line 9
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    .line 11
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/a/g;->eb(Z)V

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Qe()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->bf()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/activeicon/H;->zq()V

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v1, :cond_3

    .line 16
    invoke-virtual {p0, v2, v0}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    :cond_3
    const/4 v0, 0x5

    .line 17
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    .line 18
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object p0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->uaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public bm()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->kI:I

    return p0
.end method

.method public c(Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 2

    .line 16
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 17
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/a/g;->dy()V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 19
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "Ooops, field packageName is null when \'setItemInfo\'"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_1

    .line 21
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setItemInfo(). "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "row = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->_G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " col = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->aH:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "### set iteminfo to null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected c(Lcom/smartisanos/smengine/Camera;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->pr()Lcom/smartisanos/launcher/animations/Qa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->pr()Lcom/smartisanos/launcher/animations/Qa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/Qa;->Td()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_3

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    const/16 v2, 0x200

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-gtz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->xm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-lez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v1

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    :cond_3
    return-void
.end method

.method protected c(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 24
    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    const/4 p2, 0x0

    .line 25
    :goto_0
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->XG:I

    if-ge p2, v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v0, p2

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    .line 27
    aput-object v1, v0, p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(ZZ)V
    .locals 1

    .line 13
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    const/high16 v0, 0x10000

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    const p1, 0x8000

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    return-void
.end method

.method public cb(I)Lcom/smartisanos/smengine/SceneNode;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Ne()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v3, p0, Lcom/smartisanos/launcher/view/a/g;->fH:I

    invoke-static {v2, v0, v3}, Lcom/smartisanos/launcher/theme/IconRasterDiagnostics;->applicationCellTextureCacheKey(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    move-object v2, v0

    check-cast v2, Lcom/smartisanos/launcher/view/activeicon/a;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    const/4 v5, 0x1

    iget-boolean v6, v3, Lcom/smartisanos/launcher/data/ItemInfo;->mFGTransparentAndBlackWhiteFlag:Z

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v7, v0

    float-to-int v8, v0

    iget v9, p0, Lcom/smartisanos/launcher/view/a/g;->fH:I

    invoke-static {v3, v9}, Lcom/smartisanos/launcher/theme/IconRasterDiagnostics;->usesSharedFolderApplicationTexture(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_cb_scene_texture

    invoke-static/range {v2 .. v8}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/launcher/view/activeicon/a;Lcom/smartisanos/launcher/data/ItemInfo;Ljava/lang/String;ZZII)Lcom/smartisanos/smengine/Da;

    move-result-object v0

    goto :goto_0

    :cond_cb_scene_texture
    invoke-static/range {v2 .. v9}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/launcher/view/activeicon/a;Lcom/smartisanos/launcher/data/ItemInfo;Ljava/lang/String;ZZIII)Lcom/smartisanos/smengine/Da;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v0, v1, v2}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v1

    const-string p1, "TextureBlendModularColorMaterial"

    .line 6
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/smengine/mymaterial/u;

    .line 7
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sIconBlendColor:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0, v0, v3}, Lcom/smartisanos/smengine/mymaterial/u;->setBlendColor(FFFF)V

    .line 8
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 9
    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0, v2}, Lcom/smartisanos/smengine/mymaterial/f;->r(IZ)V

    .line 11
    new-instance v3, Lcom/smartisanos/smengine/Ca;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v2, v2, v2}, Lcom/smartisanos/smengine/Ca;-><init>(IIII)V

    invoke-virtual {p1, v0, v3}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    .line 12
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/a/g;->nH:Z

    invoke-virtual {p0, v1, p1}, Lcom/smartisanos/launcher/view/a/g;->e(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object p1

    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object p1

    .line 14
    iget p1, p1, Lcom/smartisanos/launcher/view/jb;->Mv:I

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 15
    :cond_2
    invoke-static {p0, v1}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->syncActiveIconToStaticArtwork(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->rl()V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->applyActiveIconShadowOwnership(Ljava/lang/Object;)V

    return-object v1
.end method

.method public cb(Z)V
    .locals 13

    .line 16
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 17
    :cond_0
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/a/g;->nH:Z

    const/high16 v0, 0x10000

    .line 18
    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    const v0, 0x8000

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 20
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->ll()V

    const/4 v0, 0x1

    const/16 v1, 0xc

    const/16 v2, 0x1b

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eqz p1, :cond_8

    .line 21
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, p1, v4

    if-eqz v5, :cond_1

    .line 22
    aget-object p1, p1, v4

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 23
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, p1, v2

    if-eqz v4, :cond_2

    .line 25
    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 26
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, p1, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 28
    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 29
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v3

    invoke-virtual {p1, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 30
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0x17

    aget-object v3, p1, v2

    if-eqz v3, :cond_4

    .line 32
    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 33
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v2

    invoke-virtual {p1, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 34
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 35
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, p1, v1

    if-eqz v2, :cond_5

    .line 36
    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 37
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 38
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    instance-of p1, p1, Lcom/smartisanos/launcher/view/b/t;

    if-nez p1, :cond_7

    .line 39
    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/aa;->s(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 40
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/L;->Ok()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 41
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/b/M;->ib(Z)V

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 42
    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/launcher/view/a/g;->a(IIIIZ)V

    goto/16 :goto_1

    .line 43
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "getParent() is FolderPageView."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_8
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, p1, v4

    if-eqz v5, :cond_9

    aget-object p1, p1, v4

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    if-nez p1, :cond_9

    .line 45
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v4

    invoke-virtual {p0, p1, v4}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 46
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v4

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 47
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    .line 48
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 49
    :cond_9
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, p1, v2

    if-eqz v5, :cond_a

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    if-nez p1, :cond_a

    .line 50
    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/a/g;->db(Z)V

    .line 51
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 52
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    .line 53
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 54
    :cond_a
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, p1, v3

    if-eqz v2, :cond_c

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    if-nez p1, :cond_c

    .line 55
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    if-eqz p1, :cond_b

    .line 56
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2, v4}, Lcom/smartisanos/launcher/view/a/ga;->a(Lcom/smartisanos/smengine/SceneNode;Z)V

    goto :goto_0

    .line 57
    :cond_b
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v3

    invoke-virtual {p0, p1, v4}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 58
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v3

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 59
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    .line 60
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 61
    :cond_c
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, p1, v1

    if-eqz v2, :cond_d

    .line 62
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 63
    :cond_d
    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/aa;->q(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 64
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    .line 65
    invoke-static {p1}, Lcom/smartisanos/launcher/view/b/fa;->m(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 66
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    :cond_e
    if-eqz p1, :cond_f

    .line 67
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/L;->Ok()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 68
    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/b/M;->ib(Z)V

    goto :goto_1

    :cond_f
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 69
    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/launcher/view/a/g;->a(IIIIZ)V

    goto :goto_1

    :cond_10
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    .line 70
    invoke-virtual/range {v7 .. v12}, Lcom/smartisanos/launcher/view/a/g;->a(IIIIZ)V

    .line 71
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Cm()V

    .line 72
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### change ancestor fail, parent is target = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    if-eqz p1, :cond_6

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    iput-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->UG:Lcom/smartisanos/launcher/view/b/M;

    .line 7
    instance-of v1, v0, Lcom/smartisanos/launcher/view/b/ka;

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->dm()I

    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->cm()I

    move-result v2

    .line 10
    new-instance v3, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/i;-><init>()V

    int-to-float v1, v1

    int-to-float v2, v2

    .line 11
    invoke-virtual {v3, v1, v2}, Lcom/smartisanos/smengine/a/i;->set(FF)Lcom/smartisanos/smengine/a/i;

    .line 12
    check-cast v0, Lcom/smartisanos/launcher/view/b/ka;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/b/ka;->a(Lcom/smartisanos/smengine/a/i;)V

    .line 13
    :cond_3
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/a;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    .line 14
    instance-of v1, p1, Lcom/smartisanos/launcher/view/b/ka;

    if-eqz v1, :cond_4

    .line 15
    move-object v1, p1

    check-cast v1, Lcom/smartisanos/launcher/view/b/ka;

    .line 16
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Jn()Z

    move-result v2

    .line 17
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/a/g;->bb(Z)V

    .line 18
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->yl()Lcom/smartisanos/smengine/Camera;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/a/g;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 19
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/ka;->vo()Lcom/smartisanos/smengine/a/i;

    move-result-object v2

    .line 20
    iget v3, v2, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/a/g;->ob(I)V

    .line 21
    iget v2, v2, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/a/g;->nb(I)V

    .line 22
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 23
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/ka;->uo()Lcom/smartisanos/smengine/N;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/a/g;->a(Lcom/smartisanos/smengine/N;)V

    .line 24
    :cond_4
    instance-of p1, p1, Lcom/smartisanos/launcher/view/b/M;

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result p1

    if-nez p1, :cond_5

    .line 25
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    iget p1, p1, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    .line 26
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iput p1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public cl()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/X;->d(Lcom/smartisanos/smengine/g;F)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 5
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 7
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/a/g;->k(Lcom/smartisanos/smengine/SceneNode;)V

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->Ya(Z)V

    return-void
.end method

.method public clear(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->XG:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    .line 3
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    .line 7
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/a/g;->dy()V

    .line 9
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->VG:Landroid/graphics/Paint;

    .line 10
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 11
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->eH:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 12
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->mCurrentColor:Lcom/smartisanos/smengine/a/k;

    .line 13
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->lH:Lcom/smartisanos/smengine/Camera;

    .line 14
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/Z;->clear()V

    .line 17
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    .line 18
    :cond_2
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->UG:Lcom/smartisanos/launcher/view/b/M;

    .line 19
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->CH:Lcom/smartisanos/launcher/view/b/M;

    .line 20
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->DH:Lcom/smartisanos/launcher/view/b/M;

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->FH:Lcom/smartisanos/launcher/view/l;

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/l;->clear()V

    .line 23
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->FH:Lcom/smartisanos/launcher/view/l;

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->GH:Lcom/smartisanos/launcher/view/v;

    if-eqz v0, :cond_4

    .line 25
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/v;->clear()V

    .line 26
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->GH:Lcom/smartisanos/launcher/view/v;

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    if-eqz v0, :cond_5

    .line 28
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/X;->clear()V

    .line 29
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    .line 30
    :cond_5
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->KH:Lcom/smartisanos/smengine/a/j;

    .line 31
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->LH:[F

    .line 32
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->MH:[F

    .line 33
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->NH:Lcom/smartisanos/smengine/a/j;

    .line 34
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->OH:Lcom/smartisanos/launcher/view/a/f;

    .line 35
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->QH:Lcom/smartisanos/smengine/i;

    .line 36
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->RH:Lcom/smartisanos/smengine/i;

    .line 37
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->SH:Lcom/smartisanos/smengine/i;

    .line 38
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->WH:Lcom/smartisanos/launcher/view/a/ca;

    if-eqz v0, :cond_6

    .line 39
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/ca;->clear()V

    .line 40
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->WH:Lcom/smartisanos/launcher/view/a/ca;

    .line 41
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    if-eqz v0, :cond_7

    .line 42
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/ga;->clear()V

    .line 43
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    .line 44
    :cond_7
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/a;->clear(Z)V

    return-void
.end method

.method public cm()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->ZG:I

    return p0
.end method

.method public create()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->iH:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/diagnostics/StartupPageSceneDiagnostics;->cellBegin(Ljava/lang/Object;)V

    const-string v0, "TextureModularColorMaterial"

    .line 2
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/smartisanos/launcher/view/a/g;->setColor(FFFF)V

    const/16 v0, 0x200

    .line 5
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 6
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    if-eqz v0, :cond_1

    .line 7
    const-string v1, "CELL_CONTENT_CREATE"

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/diagnostics/StartupPageSceneDiagnostics;->stage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/ga;->create()V

    goto :goto_0

    .line 8
    :cond_1
    const-string v1, "CELL_CONTENT_CREATE"

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/diagnostics/StartupPageSceneDiagnostics;->stage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->WH:Lcom/smartisanos/launcher/view/a/ca;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/ca;->create()V

    .line 9
    :goto_0
    const-string v0, "CELL_POST_CONTENT"

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/diagnostics/StartupPageSceneDiagnostics;->stage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/smartisanos/launcher/view/a/g;->cy()V

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Cm()V

    .line 11
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Nm()V

    .line 13
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_2
    invoke-static {p0}, Lcom/smartisanos/launcher/diagnostics/StartupPageSceneDiagnostics;->cellEnd(Ljava/lang/Object;)V

    return-void
.end method

.method protected preparePageProjectionViewport(Lcom/smartisanos/smengine/Camera;)V
    .locals 14

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->nH:Z
    if-eqz v0, :projection_viewport_restore
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->oH:Z
    if-eqz v0, :projection_viewport_restore

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;
    const/16 v1, 0x1b
    aget-object v0, v0, v1
    if-eqz v0, :projection_viewport_done
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getViewPort()Lcom/smartisanos/smengine/Ga;
    move-result-object v1
    if-eqz v1, :projection_viewport_done
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;
    if-eqz v2, :projection_viewport_done
    invoke-virtual {v2}, Lcom/smartisanos/smengine/N;->getViewPort()Lcom/smartisanos/smengine/Ga;
    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ga;->Qs()I
    move-result v3
    int-to-float v3, v3
    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ga;->Ps()I
    move-result v4
    int-to-float v4, v4
    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ga;->Qs()I
    move-result v5
    int-to-float v5, v5
    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ga;->Ps()I
    move-result v6
    int-to-float v6, v6
    div-float v7, v5, v3
    div-float v8, v6, v4

    # Map the same cell-local clip coordinates into the complete existing atlas.
    # Only the projection can span neighbouring slots; body/background viewports stay local.
    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ga;->Rs()I
    move-result v9
    int-to-float v9, v9
    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ga;->Ss()I
    move-result v10
    int-to-float v10, v10
    const/high16 v11, 0x40000000
    mul-float/2addr v9, v11
    add-float/2addr v9, v5
    sub-float/2addr v9, v3
    div-float/2addr v9, v3
    div-float/2addr v9, v11
    mul-float/2addr v10, v11
    add-float/2addr v10, v6
    sub-float/2addr v10, v4
    div-float/2addr v10, v4
    div-float/2addr v10, v11
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Camera;->getWidth()I
    move-result v11
    int-to-float v11, v11
    mul-float/2addr v9, v11
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Camera;->getHeight()I
    move-result v11
    int-to-float v11, v11
    mul-float/2addr v10, v11

    # Rebuild from original weather geometry so repeated draws never accumulate a scale.
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;
    move-result-object v13
    invoke-virtual {v13}, Lcom/smartisanos/smengine/Ra;->nt()F
    move-result v11
    mul-float/2addr v11, v7
    add-float/2addr v9, v11
    invoke-virtual {v13}, Lcom/smartisanos/smengine/Ra;->ot()F
    move-result v11
    mul-float/2addr v11, v8
    add-float/2addr v10, v11
    invoke-virtual {v13}, Lcom/smartisanos/smengine/Ra;->mt()F
    move-result v11
    iget-object v12, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v12, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F
    mul-float/2addr v11, v12
    const/high16 v12, 0x40000000
    div-float/2addr v11, v12
    mul-float v12, v11, v8
    mul-float/2addr v11, v7
    const/high16 v13, 0x3f800000
    invoke-virtual {v0, v11, v12, v13}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V
    const/4 v13, 0x0
    invoke-virtual {v0, v9, v10, v13}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V
    # Copy bounds; SceneNode's Ga setter would alias the RenderTarget's shared viewport.
    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ga;->Rs()I
    move-result v9
    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ga;->Ss()I
    move-result v10
    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ga;->Qs()I
    move-result v11
    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ga;->Ps()I
    move-result v12
    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const/4 v1, 0x1
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->pageProjectionViewportMapped:Z
    goto :projection_viewport_done

    :projection_viewport_restore
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->pageProjectionViewportMapped:Z
    if-eqz v0, :projection_viewport_done
    # Dragging or moving to Dock returns to the original direct geometry exactly once.
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->forceUpdateShadowMap()V
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->pageProjectionViewportMapped:Z

    :projection_viewport_done
    return-void
.end method

.method public d(Lcom/smartisanos/smengine/Camera;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x8

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x1b

    .line 9
    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    aget-object v0, v0, v1

    .line 10
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/aa;->q(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->pt()F

    move-result v0

    const v2, 0x3faccccd    # 1.35f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    const v0, 0x3f638e39

    goto :goto_0

    :cond_1
    const v0, 0x3f2aaaaa

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setAdjustForShadowLen(F)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setAdjustForShadowLen(F)V

    .line 15
    :goto_1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->preparePageProjectionViewport(Lcom/smartisanos/smengine/Camera;)V

    # Only the depth-test bit changes; keep the original target, queue and viewport.
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :projection_depth_ready

    # Restore original depth occlusion while the existing folder owner is present.
    const/4 v2, 0x1

    :projection_depth_ready
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v1

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    :cond_3
    return-void
.end method

.method protected d(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 5
    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/ItemInfo;->Ne()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->fH:I

    invoke-static {v0, p2, v1}, Lcom/smartisanos/launcher/theme/IconRasterDiagnostics;->applicationCellTextureCacheKey(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    return-void
.end method

.method protected db(I)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method protected db(Z)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x1b

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 3
    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->a(Lcom/smartisanos/smengine/L;)V

    :cond_0
    return-void
.end method

.method public dl()Lcom/smartisanos/launcher/view/a/ca;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->WH:Lcom/smartisanos/launcher/view/a/ca;

    return-object p0
.end method

.method public dm()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->YG:I

    return p0
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->cullWithCameraRect(Lcom/smartisanos/smengine/Camera;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->alignStaticIconPixelGrid(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    if-eqz v0, :cond_3

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/ga;->draw(Lcom/smartisanos/smengine/Camera;)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->WH:Lcom/smartisanos/launcher/view/a/ca;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/ca;->draw(Lcom/smartisanos/smengine/Camera;)V

    :goto_0
    return-void
.end method

.method protected e(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/a/g;->d(Lcom/smartisanos/smengine/SceneNode;Z)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1, v1}, Lcom/smartisanos/launcher/view/a/g;->j(Lcom/smartisanos/smengine/SceneNode;Z)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-direct {p0, p1, v1}, Lcom/smartisanos/launcher/view/a/g;->i(Lcom/smartisanos/smengine/SceneNode;Z)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/a/ga;->a(Lcom/smartisanos/smengine/SceneNode;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public eb(Z)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cell MagnifyGlass is null cell = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x4000

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Dm()V

    .line 9
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->NH:Lcom/smartisanos/smengine/a/j;

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 10
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->LH:[F

    .line 11
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/a/g;->nH:Z

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->NH:Lcom/smartisanos/smengine/a/j;

    .line 14
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->LH:[F

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/Z;->fa(Z)V

    .line 16
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 17
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    :cond_2
    return-void
.end method

.method public eb(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->EH:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public el()Lcom/smartisanos/launcher/view/a/ga;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    return-object p0
.end method

.method public em()Lcom/smartisanos/smengine/i;
    .locals 5

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    .line 2
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/i;

    new-instance v1, Lcom/smartisanos/smengine/a/i;

    neg-float v2, p0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    neg-float v4, p0

    div-float/2addr v4, v3

    invoke-direct {v1, v2, v4}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    new-instance v2, Lcom/smartisanos/smengine/a/i;

    div-float v4, p0, v3

    div-float/2addr p0, v3

    invoke-direct {v2, v4, p0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/smengine/i;-><init>(Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/i;)V

    return-object v0
.end method

.method protected f(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 4
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->a(Lcom/smartisanos/smengine/a/k;)V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ba(Z)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 8
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ba(Z)V

    if-eqz p2, :cond_2

    .line 9
    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    if-eqz p2, :cond_1

    .line 10
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->oH:Z

    if-eqz v0, :cond_0

    .line 11
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->YG:I

    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->ZG:I

    invoke-virtual {p2, v0, v1}, Lcom/smartisanos/smengine/N;->q(II)Lcom/smartisanos/smengine/Ga;

    move-result-object p2

    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->_G:I

    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->aH:I

    invoke-virtual {p2, v0, v1}, Lcom/smartisanos/smengine/N;->q(II)Lcom/smartisanos/smengine/Ga;

    move-result-object p2

    .line 13
    :goto_0
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v0

    invoke-virtual {p2}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v1

    invoke-virtual {p2}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v3

    invoke-virtual {p2}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result p2

    invoke-virtual {p1, v0, v1, v3, p2}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    .line 14
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 15
    :cond_1
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 16
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 17
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 18
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    :goto_1
    return-void
.end method

.method public f(ZI)V
    .locals 10

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x5

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 20
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-eq v0, p2, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Im()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 26
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(Lcom/smartisanos/launcher/data/LayoutProperty;)I

    move-result v2

    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    invoke-static {v2, v4}, Lcom/smartisanos/launcher/data/Constants;->getMessageTextureName(II)Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget p1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 30
    iput p1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 31
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 33
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "messagesNumber"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v5, "clearFlagMessage --> EVENT_UPDATE_ITEM"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 38
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->WZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/F;->a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V

    .line 39
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast v0, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->lf()I

    move-result v0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 41
    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast v6, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {v6, v1}, Lcom/smartisanos/launcher/data/FolderInfo;->ia(I)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    .line 42
    iput p1, v6, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 43
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 44
    iget-wide v8, v6, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 45
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-boolean v7, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v7, v5}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 50
    :cond_2
    sget-object v7, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->WZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v7, v6}, Lcom/smartisanos/launcher/data/F;->a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz p1, :cond_4

    .line 52
    iput p2, p1, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 53
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearFlagMessageCount "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x6

    .line 54
    invoke-virtual {p0, p1, v3}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    return-void
.end method

.method public fb(I)Lcom/smartisanos/smengine/F;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 p1, 0x3

    aget-object p0, p0, p1

    check-cast p0, Lcom/smartisanos/smengine/F;

    return-object p0

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 p1, 0x5

    aget-object p0, p0, p1

    check-cast p0, Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method public fb(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Ne()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v2, p0, Lcom/smartisanos/launcher/view/a/g;->fH:I

    invoke-static {v1, v0, v2}, Lcom/smartisanos/launcher/theme/IconRasterDiagnostics;->applicationCellTextureCacheKey(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    move-object v1, v0

    check-cast v1, Lcom/smartisanos/launcher/view/activeicon/a;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    const/4 v4, 0x1

    iget-boolean v5, v2, Lcom/smartisanos/launcher/data/ItemInfo;->mFGTransparentAndBlackWhiteFlag:Z

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v6, v0

    float-to-int v7, v0

    iget v8, p0, Lcom/smartisanos/launcher/view/a/g;->fH:I

    invoke-static {v2, v8}, Lcom/smartisanos/launcher/theme/IconRasterDiagnostics;->usesSharedFolderApplicationTexture(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_fb_scene_texture

    invoke-static/range {v1 .. v7}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/launcher/view/activeicon/a;Lcom/smartisanos/launcher/data/ItemInfo;Ljava/lang/String;ZZII)Lcom/smartisanos/smengine/Da;

    goto :goto_fb_texture_ready

    :cond_fb_scene_texture
    invoke-static/range {v1 .. v8}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/launcher/view/activeicon/a;Lcom/smartisanos/launcher/data/ItemInfo;Ljava/lang/String;ZZIII)Lcom/smartisanos/smengine/Da;

    :goto_fb_texture_ready
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    sget-object v1, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v2, v3, v4}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v1

    aput-object v1, p1, v0

    const-string p1, "TextureBlendModularColorMaterial"

    .line 5
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/smengine/mymaterial/u;

    .line 6
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sIconBlendColor:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v1, v1, v2}, Lcom/smartisanos/smengine/mymaterial/u;->setBlendColor(FFFF)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v0

    invoke-virtual {p1, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object p1

    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object p1

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v0

    iget p1, p1, Lcom/smartisanos/launcher/view/jb;->Mv:I

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->ol()V

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->nl()V

    .line 13
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->ql()V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->ul()V

    .line 15
    :goto_0
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->SHOW_ICON_SHADOW_LIST:Z

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x1b

    aget-object p1, p1, v1

    if-nez p1, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->rl()V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->applyActiveIconShadowOwnership(Ljava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->an()V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->applyActiveIconShadowOwnership(Ljava/lang/Object;)V

    .line 19
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v0

    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->nH:Z

    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/launcher/view/a/g;->d(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 20
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cell id ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "], name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], isNew ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-boolean v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-boolean p1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    .line 22
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-boolean p1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x8

    aget-object p1, p1, v1

    if-nez p1, :cond_6

    .line 24
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 25
    :cond_6
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz p1, :cond_8

    .line 26
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v0

    if-eqz p1, :cond_8

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 28
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v0

    const v0, 0x3ee66666    # 0.45f

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_2

    .line 29
    :cond_7
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    instance-of p1, p1, Lcom/smartisanos/launcher/view/b/M;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 30
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v0

    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 31
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Cm()V

    .line 32
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public ff()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public fl()V
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/launcher/view/a/g;->oI:I

    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->EH:I

    return-void
.end method

.method public fm()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->PH:I

    return p0
.end method

.method public forceUpdateNeedDisplay()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public forceUpdateShadowMap()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Pe()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->lm()[I

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->nt()F

    move-result v2

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Ra;->ot()F

    move-result v3

    .line 5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ra;->mt()F

    move-result v4

    const/16 v5, 0x1b

    if-eqz v0, :cond_2

    .line 6
    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, v5

    if-eqz v6, :cond_2

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 8
    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    .line 9
    array-length v7, v1

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    const/4 v7, 0x0

    .line 10
    :goto_0
    array-length v8, v1

    if-ge v7, v8, :cond_2

    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/shadow/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v1, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 12
    sget-boolean v9, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "texchange tex"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object v9, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v9, v9, v5

    invoke-virtual {v9, v7, v8}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "tex num error"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v0, v5

    if-eqz v1, :cond_3

    .line 16
    aget-object v0, v0, v5

    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v2, v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 18
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    mul-float v1, v4, p0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    mul-float/2addr v4, p0

    div-float/2addr v4, v2

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v4, p0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 19
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_3
    return-void
.end method

.method public gb(I)Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    aget-object p0, p0, p1

    return-object p0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-nez p0, :cond_0

    const-string p0, "empty"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getMultiPageMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->gH:I

    return p0
.end method

.method public getRenderTarget()Lcom/smartisanos/smengine/N;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    return-object p0
.end method

.method public getRowIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->_G:I

    return p0
.end method

.method public getSinglePageMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->fH:I

    return p0
.end method

.method public gj()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->zH:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Te()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->bf()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    check-cast v0, Lcom/smartisanos/launcher/view/activeicon/a;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/activeicon/a;->d([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/e/s;->b(Landroid/graphics/Bitmap;Z)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/data/ItemInfo;->a([B)V

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 11
    new-instance v3, Lcom/smartisanos/smengine/Da;

    invoke-direct {v3, v0}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    .line 12
    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/Da;->Ub(Z)V

    .line 13
    invoke-virtual {v2, v1, v3}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 14
    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    :cond_4
    return-void
.end method

.method public gl()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_2

    .line 2
    iget-byte v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNewlyInstalled set false by clearFlagNew, name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], pkg ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], cmp ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "newlyInstalled"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->WZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/F;->a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->hl()V

    return-void
.end method

.method public gm()[I
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->lm()[I

    move-result-object p0

    return-object p0
.end method

.method public h(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 3
    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 p2, 0x0

    aput-object p2, p0, p1

    :cond_0
    return-void
.end method

.method public hb(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0xc

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 2
    aget-object v2, v0, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 4
    aget-object v2, v0, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    .line 6
    aget-object v0, v0, v1

    check-cast v0, Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v2, v1

    check-cast v1, Lcom/smartisanos/launcher/view/Mc;

    .line 7
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x5

    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    .line 9
    aget-object v2, v0, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 10
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v0, 0x3

    aget-object v1, p0, v0

    if-eqz v1, :cond_4

    .line 11
    aget-object v1, p0, v0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v1, p0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    :cond_4
    return-void
.end method

.method public hl()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1
    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    return-void
.end method

.method public hm()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->pH:Ljava/lang/String;

    return-object p0
.end method

.method public i(IZ)V
    .locals 2

    if-nez p2, :cond_new_badge_visibility_ready

    const/16 v0, 0x200

    if-ne p1, v0, :cond_new_badge_visibility_ready

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_new_badge_visibility_ready

    iget-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    if-eqz v1, :cond_new_badge_visibility_ready

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-gtz v0, :cond_new_badge_visibility_ready

    const/4 p2, 0x1

    :cond_new_badge_visibility_ready

    if-eqz p2, :cond_0

    .line 20
    iget p2, p0, Lcom/smartisanos/launcher/view/a/g;->VH:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->VH:I

    goto :goto_0

    .line 21
    :cond_0
    iget p2, p0, Lcom/smartisanos/launcher/view/a/g;->VH:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->VH:I

    :goto_0
    return-void
.end method

.method public i(Lcom/smartisanos/smengine/Fa;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isUserInteractionEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->al()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "now cellCanHandleTouchEvent!!!!!!!!!!!"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_1
    return v1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getSize()F

    move-result v0

    sget v2, Lcom/smartisanos/launcher/data/Constants;->tap_threshold_percent:F

    cmpl-float v0, v0, v2

    const/4 v2, 0x6

    if-lez v0, :cond_4

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getType()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 5
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "event size > tap_threshold"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    return v1

    .line 6
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_6

    .line 7
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    const-string v3, "Cell onTouchEvent mSomethingIsFloat set true"

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 8
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 9
    :cond_6
    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/aa;->s(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 11
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getType()I

    move-result v0

    if-eq v0, v2, :cond_8

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 13
    :cond_7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    .line 14
    :cond_8
    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/aa;->s(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/d;->onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z

    return v1
.end method

.method public ib(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->VH:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public il()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->jI:I

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->kI:I

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->lI:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->nI:Ljava/lang/String;

    return-void
.end method

.method public im()Lcom/smartisanos/smengine/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->RH:Lcom/smartisanos/smengine/i;

    return-object p0
.end method

.method public jb(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->EH:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->EH:I

    return-void
.end method

.method public jl()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    # jl() runs after changeAncestor().  Its actual parent is the single
    # authoritative owner: only FolderPage keeps the Folder Cell contract.
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    instance-of v6, v6, Lcom/smartisanos/launcher/view/b/a;

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/ga;->clear()V

    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lcom/smartisanos/launcher/view/a/g;->XG:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v2, v1

    if-eqz v5, :cond_0

    .line 5
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aput-object v4, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    if-eqz v6, :cond_jl_desktop_owner

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/a/g;->IH:Z

    new-instance v1, Lcom/smartisanos/launcher/view/a/da;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/a/da;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    goto :goto_jl_owner_bound

    :cond_jl_desktop_owner
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->IH:Z

    new-instance v1, Lcom/smartisanos/launcher/view/a/ga;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/a/ga;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    :goto_jl_owner_bound

    iput-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/ga;->init()V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back"

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/a/g;->k(Lcom/smartisanos/smengine/SceneNode;)V

    .line 12
    iput-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->CH:Lcom/smartisanos/launcher/view/b/M;

    .line 13
    iput-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->DH:Lcom/smartisanos/launcher/view/b/M;

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v1

    iput v1, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v1

    if-eqz v6, :cond_jl_desktop_mode

    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result v1

    iput v1, p0, Lcom/smartisanos/launcher/view/a/g;->fH:I

    goto :goto_jl_mode_bound

    :cond_jl_desktop_mode
    iput v1, p0, Lcom/smartisanos/launcher/view/a/g;->fH:I

    :goto_jl_mode_bound

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v1

    iput v1, p0, Lcom/smartisanos/launcher/view/a/g;->gH:I

    .line 17
    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->fH:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 18
    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->gH:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->eH:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 19
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->iH:Z

    .line 20
    iput-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->VG:Landroid/graphics/Paint;

    .line 21
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->create()V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->Ka(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-lez v0, :cond_2

    .line 24
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->qb(I)V

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 25
    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/launcher/view/a/g;->a(IIIIZ)V

    .line 26
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Vg()V

    .line 28
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPageMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->lb(I)V

    .line 29
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public jm()Lcom/smartisanos/launcher/view/a/g;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    rem-int v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/b/M;

    if-nez p0, :cond_1

    return-object v2

    .line 4
    :cond_1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    return-object p0
.end method

.method public k(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/a;->k(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2
    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->UG:Lcom/smartisanos/launcher/view/b/M;

    return-void
.end method

.method public kb(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz p0, :cond_0

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    :cond_0
    return-void
.end method

.method public kl()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->jl()V

    const/16 v0, 0x10

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x12

    .line 3
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x1

    const/16 v2, 0x8

    .line 4
    invoke-virtual {p0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    const/16 v2, 0x1000

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 6
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/Z;->yi()V

    .line 8
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v4, 0x18

    aget-object v5, v2, v4

    if-eqz v5, :cond_0

    .line 9
    aget-object v2, v2, v4

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v5, 0x19

    aget-object v6, v2, v5

    if-eqz v6, :cond_1

    .line 11
    aget-object v2, v2, v5

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v2, v4

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v6, :cond_2

    .line 13
    aget-object v2, v2, v4

    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v9, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float/2addr v9, v8

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float/2addr v6, v8

    invoke-virtual {v2, v9, v6, v7}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 14
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 15
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v2, v5

    if-eqz v4, :cond_3

    .line 16
    aget-object v2, v2, v5

    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float/2addr v6, v8

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float/2addr v4, v8

    invoke-virtual {v2, v6, v4, v7}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 17
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_3
    const/16 v2, 0x400

    .line 18
    invoke-virtual {p0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 19
    :cond_4
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {p0, v0, v3}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    const/16 v0, 0x200

    .line 21
    invoke-virtual {p0, v0, v3}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    :cond_5
    return-void
.end method

.method public km()Lcom/smartisanos/launcher/view/a/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->OH:Lcom/smartisanos/launcher/view/a/f;

    return-object p0
.end method

.method public l(Lcom/smartisanos/smengine/SceneNode;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public lb(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    if-eqz p1, :cond_2

    .line 3
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/a/ga;->ez:Z

    goto :goto_0

    .line 5
    :cond_0
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/a/ga;->ez:Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/a/ga;->ez:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected ll()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 4
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    sub-float/2addr v3, v2

    const/high16 v4, 0x40200000    # 2.5f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 6
    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    sub-float/2addr v5, v2

    div-float/2addr v5, v4

    add-float/2addr v2, v5

    .line 7
    iget-boolean v4, p0, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    if-nez v4, :cond_1

    .line 8
    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_cell_icon_size:F

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    move v2, v3

    :goto_0
    neg-float v3, v2

    div-float/2addr v3, v1

    neg-float v4, v0

    div-float/2addr v4, v1

    div-float/2addr v2, v1

    div-float/2addr v0, v1

    .line 9
    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->updateWorldBoundingVolume()V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 13
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    neg-float v3, v2

    div-float/2addr v3, v1

    neg-float v4, v0

    div-float/2addr v4, v1

    div-float/2addr v2, v1

    div-float/2addr v0, v1

    .line 14
    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->updateWorldBoundingVolume()V

    goto :goto_1

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    neg-float v2, v0

    div-float/2addr v2, v1

    neg-float v3, v0

    div-float/2addr v3, v1

    div-float v4, v0, v1

    div-float/2addr v0, v1

    .line 17
    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 18
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->updateWorldBoundingVolume()V

    :goto_1
    return-void
.end method

.method public lm()[I
    .locals 0

    const/16 p0, 0x8

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method public m(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "---parent has no child-----"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "---------------------"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 4
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### parent name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", parent layer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 5
    :cond_3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 6
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    .line 7
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### child index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", child name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", child layer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 8
    :cond_4
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/a/g;->m(Lcom/smartisanos/smengine/SceneNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public mb(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->kH:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->kH:I

    .line 3
    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    .line 4
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->updateLayer(I)V

    :cond_1
    return-void
.end method

.method public ml()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Hl()[I

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    new-instance v8, Lcom/smartisanos/launcher/view/Ua;

    sget-object v2, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    const/4 v9, 0x4

    aget-object v4, v2, v9

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v6, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v7, v0

    const/4 v3, 0x1

    move-object v2, v8

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/smartisanos/launcher/view/Ua;-><init>(ILjava/lang/String;Lcom/smartisanos/launcher/view/a/g;FF)V

    aput-object v8, v1, v9

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v9

    iget v0, v0, Lcom/smartisanos/launcher/view/jb;->Tv:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method public mm()F
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 3
    iget v0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 4
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget p0, p0, Lcom/smartisanos/smengine/SceneNode;->mDragPointX:F

    add-float/2addr v1, p0

    return v1
.end method

.method protected n(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->lm()[I

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/shadow/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v0, p2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nb(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->ZG:I

    return-void
.end method

.method protected nl()V
    .locals 7

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/i;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    neg-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    neg-float v5, v1

    div-float/2addr v5, v4

    neg-float v2, v2

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v2, v6

    div-float/2addr v1, v4

    invoke-direct {v0, v3, v5, v2, v1}, Lcom/smartisanos/smengine/i;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->QH:Lcom/smartisanos/smengine/i;

    return-void
.end method

.method public nm()Lcom/smartisanos/launcher/view/a/g;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v0

    int-to-float v1, v0

    .line 2
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    if-nez v1, :cond_1

    return-object v2

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    sub-int/2addr v0, p0

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/b/M;->ub(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    return-object p0
.end method

.method public o(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->IH:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    invoke-virtual {v0, p2}, Lcom/smartisanos/launcher/view/a/Z;->Ca(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    move-object p1, p2

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 4
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 p2, 0xa

    aget-object v0, p1, p2

    if-eqz v0, :cond_2

    .line 6
    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    :cond_2
    return-void
.end method

.method public ob(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->YG:I

    return-void
.end method

.method protected ol()V
    .locals 6

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/i;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    neg-float v3, v2

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    neg-float v5, v1

    div-float/2addr v5, v4

    div-float/2addr v2, v4

    div-float/2addr v1, v4

    invoke-direct {v0, v3, v5, v2, v1}, Lcom/smartisanos/smengine/i;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->SH:Lcom/smartisanos/smengine/i;

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/Z;->vi()V

    :cond_0
    return-void
.end method

.method public om()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->CH:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Dn()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->CH:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Fn()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->DH:Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Dn()V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->DH:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Fn()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->i(Lcom/smartisanos/smengine/Fa;)Z

    move-result p0

    return p0
.end method

.method public pb(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->PH:I

    return-void
.end method

.method protected pl()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->oH:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->vt()J

    move-result-wide v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_renderTargetTexture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->pH:Ljava/lang/String;

    .line 4
    new-instance v2, Lcom/smartisanos/smengine/N;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_renderTarget"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    float-to-int v3, v3

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    float-to-int v1, v1

    invoke-direct {v2, v0, v3, v1}, Lcom/smartisanos/smengine/N;-><init>(Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->qH:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/N;->Ma(Z)V

    .line 6
    new-instance v0, Lcom/smartisanos/smengine/Da;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Da;-><init>(Lcom/smartisanos/smengine/N;)V

    .line 7
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->qH:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/smartisanos/smengine/Da;->e(IIII)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/Da;->e(IIII)V

    .line 10
    :goto_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v1

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->pH:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    :cond_1
    return-void
.end method

.method protected pm()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/a/ca;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/a/ca;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->WH:Lcom/smartisanos/launcher/view/a/ca;

    .line 2
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->IH:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/view/a/da;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/a/da;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/view/a/ga;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/a/ga;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->XH:Lcom/smartisanos/launcher/view/a/ga;

    :goto_0
    return-void
.end method

.method public qb(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x6

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    check-cast v0, Lcom/smartisanos/launcher/view/Ua;

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Ua;->wp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x5

    aget-object v2, v0, v1

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 4
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderQueue()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/16 v2, 0x200

    .line 5
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    invoke-virtual {p0, v2, v4}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-gtz p1, :cond_2

    .line 6
    invoke-virtual {p0, v4, v2}, Lcom/smartisanos/launcher/view/a/g;->f(ZI)V

    goto/16 :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/launcher/view/a/g;->f(ZI)V

    .line 8
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 9
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 10
    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(Lcom/smartisanos/launcher/data/LayoutProperty;)I

    move-result v6

    invoke-static {v6, p1}, Lcom/smartisanos/launcher/data/Constants;->getMessageTextureName(II)Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v5

    if-nez v5, :cond_3

    .line 12
    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(Lcom/smartisanos/launcher/data/LayoutProperty;)I

    move-result v5

    invoke-static {p1, v5}, Lcom/smartisanos/launcher/e/s;->k(II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 13
    new-instance v6, Lcom/smartisanos/smengine/Da;

    invoke-direct {v6, v5}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 14
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v5

    .line 15
    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 16
    iget-object v7, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-static {v7}, Lcom/smartisanos/launcher/data/Constants;->mode(Lcom/smartisanos/launcher/data/LayoutProperty;)I

    move-result v7

    invoke-static {v7, p1}, Lcom/smartisanos/launcher/data/Constants;->getMessageTextureName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 17
    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/Da;->Ub(Z)V

    .line 18
    invoke-virtual {v6, v1, v4, v4, v4}, Lcom/smartisanos/smengine/Da;->e(IIII)V

    .line 19
    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    move-object v5, v6

    .line 20
    :cond_3
    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, v1

    invoke-direct {p0, v6, v2}, Lcom/smartisanos/launcher/view/a/g;->i(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 21
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    .line 22
    invoke-virtual {v5}, Lcom/smartisanos/smengine/Da;->getWidth()F

    move-result v6

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Da;->getHeight()F

    move-result v5

    div-float/2addr v6, v5

    mul-float/2addr v6, v2

    .line 23
    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    div-float/2addr v2, v7

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v2, v7}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 24
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/a/g;->_x()F

    move-result v2

    .line 25
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/a/g;->ay()F

    move-result v5

    .line 26
    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v5, v7}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 27
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 28
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 29
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v1

    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v5, v5, v5, v5}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 30
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->wn()Lcom/smartisanos/smengine/a/k;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 31
    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    iget v6, v2, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v6, v6

    iget v7, v2, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v7, v7

    iget v8, v2, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v8, v8

    iget v2, v2, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int v2, v2

    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/smartisanos/smengine/L;->d(IIII)V

    .line 32
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    .line 33
    :cond_5
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->ab(I)V

    .line 34
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    instance-of p1, p1, Lcom/smartisanos/launcher/view/b/a;

    if-eqz p1, :cond_6

    .line 35
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1, v4}, Lcom/smartisanos/launcher/view/b/M;->ib(Z)V

    .line 36
    :cond_6
    :goto_1
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, p1, v1

    if-eqz v2, :cond_7

    if-eq v0, v3, :cond_7

    .line 37
    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 38
    :cond_7
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz p1, :cond_8

    .line 39
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Em()V

    goto :goto_2

    .line 40
    :cond_8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Vg()V

    .line 41
    :goto_2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    return-void
.end method

.method protected ql()V
    .locals 6

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/i;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    const/high16 v3, 0x40800000    # 4.0f

    div-float v3, v2, v3

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    neg-float v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    div-float/2addr v2, v5

    div-float/2addr v1, v5

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/smartisanos/smengine/i;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->RH:Lcom/smartisanos/smengine/i;

    return-void
.end method

.method public qm()Z
    .locals 3

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 3
    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->KH:Lcom/smartisanos/smengine/a/j;

    iget v2, p0, Lcom/smartisanos/smengine/a/j;->x:F

    sub-float/2addr v1, v2

    .line 4
    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v0, p0

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    .line 5
    invoke-static {v1}, Lcom/smartisanos/smengine/a/a;->sqrt(F)F

    move-result p0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected rl()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_ICON_SHADOW_LIST:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Pe()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/theme/IconRasterDiagnostics;->prepareSettingsIconProjection(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "shadowlist"

    invoke-static {v5, v1, v1, v3, v4}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v1

    const-string v5, "MutiTexMaterial"

    .line 5
    invoke-static {v5}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/16 v8, 0x8

    if-ge v7, v8, :cond_3

    .line 6
    invoke-virtual {p0, v0, v7}, Lcom/smartisanos/launcher/view/a/g;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-virtual {v1, v7, v8}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 8
    invoke-virtual {v5, v7, v6}, Lcom/smartisanos/smengine/mymaterial/f;->r(IZ)V

    .line 9
    new-instance v8, Lcom/smartisanos/smengine/Ca;

    invoke-direct {v8, v4, v4, v6, v6}, Lcom/smartisanos/smengine/Ca;-><init>(IIII)V

    invoke-virtual {v5, v7, v8}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0x24

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/Ra;->pt()F

    move-result v6

    invoke-virtual {v5, v0, v6}, Lcom/smartisanos/smengine/mymaterial/f;->i(IF)V

    const/16 v0, 0x25

    .line 11
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/Ra;->qt()F

    move-result v6

    invoke-virtual {v5, v0, v6}, Lcom/smartisanos/smengine/mymaterial/f;->i(IF)V

    const/16 v0, 0x23

    .line 12
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/Ra;->getShadowRadius()F

    move-result v6

    invoke-virtual {v5, v0, v6}, Lcom/smartisanos/smengine/mymaterial/f;->i(IF)V

    .line 13
    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v5

    iget v6, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v5

    .line 16
    iget v5, v5, Lcom/smartisanos/launcher/view/jb;->Mv:I

    sub-int/2addr v5, v4

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 17
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aput-object v1, v4, v2

    .line 18
    iget-boolean v4, p0, Lcom/smartisanos/launcher/view/a/g;->nH:Z

    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/a/g;->db(Z)V

    .line 19
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v5, "settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 20
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iconsize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", cellsize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 21
    :cond_4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ra;->nt()F

    move-result v4

    .line 22
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Ra;->ot()F

    move-result v5

    .line 23
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/Ra;->mt()F

    move-result v6

    .line 24
    invoke-virtual {v1, v4, v5, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 25
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    mul-float v4, v6, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    mul-float/2addr v6, v3

    div-float/2addr v6, v5

    invoke-virtual {v1, v4, v6, v0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 26
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 27
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v2

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->SHOW_ICON_SHADOW_LIST:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    const/high16 v0, 0x80000

    .line 28
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->SHOW_ICON_SHADOW_LIST:Z

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->applyActiveIconShadowOwnership(Ljava/lang/Object;)V

    return-void
.end method

.method public rm()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/a/g;->hI:Z

    return p0
.end method

.method public s(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_6

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_0

    rem-int/lit8 v0, p2, 0xa

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tagIn GL. setDownloadState, pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x8

    aget-object v2, v0, v1

    if-eqz v2, :cond_5

    const/16 v2, 0x400

    if-ne p1, v2, :cond_4

    const/4 p1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/J;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 5
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag packageInfo = null. setDwonloadState()1 pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 7
    :catch_1
    sget-boolean p2, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download_log_tag packageInfo = null. setDwonloadState() pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-nez p1, :cond_7

    .line 8
    sget-boolean p1, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download_log_tag In Main Thread. setDwonloadState() pkg = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " LauncherModel.removePackage()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-static {p0}, Lcom/smartisanos/launcher/install/SmartisanInstallManager;->onScenePackageQueryUncertain(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_4
    aget-object p0, v0, v1

    check-cast p0, Lcom/smartisanos/launcher/view/Ca;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/Ca;->s(II)V

    goto :goto_1

    .line 11
    :cond_5
    sget-boolean p1, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download_log_tag In GL. mDownloadWithWaveView = null pkg = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_6
    sget-boolean p1, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "download_log_tag In GL. mItemInfo = null "

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public setCamera(Lcom/smartisanos/smengine/Camera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->lH:Lcom/smartisanos/smengine/Camera;

    return-void
.end method

.method public setColor(FFFF)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/t;->Wf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->mCurrentColor:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 4
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->oH:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0xc

    aget-object v3, v0, v2

    if-eqz v3, :cond_3

    .line 6
    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0xa

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    .line 8
    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    .line 10
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 11
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_4

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    if-eqz v0, :cond_4

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/ec;->Op()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    if-eqz v3, :cond_5

    .line 17
    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v2, 0x5

    aget-object v3, v0, v2

    if-eqz v3, :cond_6

    .line 19
    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v2, 0x3

    aget-object v3, v0, v2

    if-eqz v3, :cond_7

    .line 21
    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 22
    :cond_7
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_9

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v0, v1

    if-eqz v2, :cond_8

    .line 24
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 25
    :cond_8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x13

    aget-object v2, v0, v1

    if-eqz v2, :cond_9

    .line 26
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 27
    :cond_9
    :goto_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v0, 0x7

    aget-object v1, p0, v0

    if-eqz v1, :cond_a

    .line 28
    aget-object p0, p0, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_a
    return-void
.end method

.method public setMultiPageMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->gH:I

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->sd(I)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setPressed(Z)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isPressed()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/X;->ti()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/X;->si()V

    .line 9
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setPressed(Z)V

    return-void
.end method

.method public setRenderTarget(Lcom/smartisanos/smengine/N;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    return-void
.end method

.method public sl()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag deleteDownloadView() pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 6
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag deleteDownloadView() failed. waitingUninstallAppInfo. pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Sc;->kq()Lcom/smartisanos/launcher/view/ec;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/ec;->Mp()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 10
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 11
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag deleteDownloadView() failed. waitingUninstallApps. pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    .line 14
    iput-boolean v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->mFGTransparentAndBlackWhiteFlag:Z

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->Wa(Z)V

    .line 17
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x200

    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 19
    :cond_6
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 20
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag mDownloadWithWaveView != null. deleteDownloadView() success. pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public sm()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz p0, :cond_1

    iget-wide v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public t(F)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->ZH:F

    return-void
.end method

.method public t(II)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->kH:I

    if-eq v0, p2, :cond_1

    .line 3
    :cond_0
    iput p2, p0, Lcom/smartisanos/launcher/view/a/g;->kH:I

    .line 4
    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    .line 5
    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/view/a/g;->updateLayer(I)V

    :cond_1
    return-void
.end method

.method public tl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_1

    iget-byte v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/a/g;->by()V

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v0, 0x7

    aget-object v1, p0, v0

    if-eqz v1, :cond_2

    .line 6
    aget-object p0, p0, v0

    check-cast p0, Lcom/smartisanos/launcher/view/activeicon/a;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/activeicon/a;->qq()V

    :cond_2
    return-void
.end method

.method public tm()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/a/g;->aI:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cell name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPreParent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->UG:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mParent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(F)I
    .locals 6

    .line 12
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_3

    .line 13
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->IH:Z

    if-eqz v0, :cond_2

    .line 14
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float/2addr p1, v0

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->eH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    neg-float v5, v0

    div-float/2addr v5, v4

    div-float/2addr v0, v4

    cmpg-float v4, p1, v5

    if-gez v4, :cond_0

    .line 16
    iput v3, p0, Lcom/smartisanos/launcher/view/a/g;->_H:I

    goto :goto_0

    :cond_0
    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 17
    iput v1, p0, Lcom/smartisanos/launcher/view/a/g;->_H:I

    goto :goto_0

    .line 18
    :cond_1
    iput v2, p0, Lcom/smartisanos/launcher/view/a/g;->_H:I

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->l(F)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->_H:I

    .line 20
    :goto_0
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->_H:I

    return p0

    .line 21
    :cond_3
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->IH:Z

    if-eqz v0, :cond_6

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_4

    .line 23
    iput v3, p0, Lcom/smartisanos/launcher/view/a/g;->_H:I

    goto :goto_1

    .line 24
    :cond_4
    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v3, v3

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    sub-float/2addr v3, v0

    cmpl-float p1, p1, v3

    if-lez p1, :cond_5

    .line 25
    iput v1, p0, Lcom/smartisanos/launcher/view/a/g;->_H:I

    goto :goto_1

    .line 26
    :cond_5
    iput v2, p0, Lcom/smartisanos/launcher/view/a/g;->_H:I

    .line 27
    :goto_1
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->_H:I

    return p0

    :cond_6
    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v4, p1, v0

    if-gez v4, :cond_7

    .line 28
    iput v3, p0, Lcom/smartisanos/launcher/view/a/g;->_H:I

    goto :goto_2

    .line 29
    :cond_7
    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    cmpl-float p1, p1, v3

    if-lez p1, :cond_8

    .line 30
    iput v1, p0, Lcom/smartisanos/launcher/view/a/g;->_H:I

    goto :goto_2

    .line 31
    :cond_8
    iput v2, p0, Lcom/smartisanos/launcher/view/a/g;->_H:I

    .line 32
    :goto_2
    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->_H:I

    return p0
.end method

.method public u(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->_G:I

    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->bH:I

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->aH:I

    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->cH:I

    .line 3
    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->_G:I

    .line 4
    iput p2, p0, Lcom/smartisanos/launcher/view/a/g;->aH:I

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget p1, p0, Lcom/smartisanos/launcher/view/a/g;->_G:I

    iget p2, p0, Lcom/smartisanos/launcher/view/a/g;->aH:I

    invoke-static {p1, p2}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result p1

    .line 7
    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iput p1, p2, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    instance-of p1, p1, Lcom/smartisanos/launcher/view/b/M;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    .line 10
    iget p1, p1, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iput p1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    :cond_0
    return-void
.end method

.method public u(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 2

    .line 33
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->iI:Lcom/smartisanos/launcher/view/a/g;

    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    iput v1, p0, Lcom/smartisanos/launcher/view/a/g;->jI:I

    .line 35
    iget v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    iput v1, p0, Lcom/smartisanos/launcher/view/a/g;->kI:I

    .line 36
    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->lI:I

    .line 37
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->nI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/smartisanos/launcher/view/a/ka;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->nI:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public ul()V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_ICON_SHADOW_LIST:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Pe()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    const/16 v4, 0x9

    if-ge v3, v4, :cond_1

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/shadow/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8
    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete tex"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    :cond_2
    return-void
.end method

.method public um()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateLayer(I)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->updateLayer(I)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/smartisanos/launcher/view/jb;->Ev:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v2, 0x2

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 5
    aget-object v1, v1, v2

    iget v3, v0, Lcom/smartisanos/launcher/view/jb;->Vv:I

    add-int/2addr v3, p1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0x14

    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    .line 7
    aget-object v1, v1, v3

    iget v3, v0, Lcom/smartisanos/launcher/view/jb;->Kv:I

    add-int/2addr v3, p1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0x13

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    .line 9
    aget-object v1, v1, v3

    iget v3, v0, Lcom/smartisanos/launcher/view/jb;->Wv:I

    add-int/2addr v3, p1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v3, 0x1

    aget-object v4, v1, v3

    if-eqz v4, :cond_3

    .line 11
    aget-object v1, v1, v3

    check-cast v1, Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v1

    iget v4, v0, Lcom/smartisanos/launcher/view/jb;->Ov:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v4, 0x12

    aget-object v5, v1, v4

    if-eqz v5, :cond_4

    .line 13
    aget-object v1, v1, v4

    iget v4, v0, Lcom/smartisanos/launcher/view/jb;->Iv:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v4, 0xe

    aget-object v5, v1, v4

    if-eqz v5, :cond_5

    .line 15
    aget-object v1, v1, v4

    iget v4, v0, Lcom/smartisanos/launcher/view/jb;->Xv:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v4, 0xb

    aget-object v5, v1, v4

    if-eqz v5, :cond_6

    .line 17
    aget-object v1, v1, v4

    iget v4, v0, Lcom/smartisanos/launcher/view/jb;->Lv:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 18
    :cond_6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    if-eqz v5, :cond_7

    .line 19
    aget-object v1, v1, v4

    iget v4, v0, Lcom/smartisanos/launcher/view/jb;->Mv:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 20
    :cond_7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v4, 0x1b

    aget-object v5, v1, v4

    if-eqz v5, :cond_8

    .line 21
    aget-object v1, v1, v4

    iget v4, v0, Lcom/smartisanos/launcher/view/jb;->Mv:I

    sub-int/2addr v4, v3

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 22
    :cond_8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v4, 0xa

    aget-object v5, v1, v4

    if-eqz v5, :cond_9

    .line 23
    aget-object v1, v1, v4

    iget v4, v0, Lcom/smartisanos/launcher/view/jb;->Gv:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 24
    :cond_9
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v4, 0xc

    aget-object v5, v1, v4

    if-eqz v5, :cond_a

    .line 25
    aget-object v1, v1, v4

    iget v4, v0, Lcom/smartisanos/launcher/view/jb;->Jv:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 26
    :cond_a
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v4, 0x3

    aget-object v5, v1, v4

    if-eqz v5, :cond_b

    .line 27
    aget-object v1, v1, v4

    iget v4, v0, Lcom/smartisanos/launcher/view/jb;->Qv:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 28
    :cond_b
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v4, 0x5

    aget-object v5, v1, v4

    if-eqz v5, :cond_c

    .line 29
    aget-object v1, v1, v4

    iget v4, v0, Lcom/smartisanos/launcher/view/jb;->Qv:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 30
    :cond_c
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v4, 0x16

    aget-object v5, v1, v4

    if-eqz v5, :cond_d

    .line 31
    aget-object v1, v1, v4

    iget v4, v0, Lcom/smartisanos/launcher/view/jb;->Zv:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 32
    :cond_d
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v4, 0x7

    aget-object v5, v1, v4

    if-eqz v5, :cond_e

    .line 33
    aget-object v1, v1, v4

    iget v4, v0, Lcom/smartisanos/launcher/view/jb;->Pv:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 34
    :cond_e
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v4, 0x11

    aget-object v4, v1, v4

    if-eqz v4, :cond_f

    const/16 v4, 0x11

    .line 35
    aget-object v1, v1, v4

    iget v4, v0, Lcom/smartisanos/launcher/view/jb;->_v:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 36
    :cond_f
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v4, 0x10

    aget-object v4, v1, v4

    if-eqz v4, :cond_10

    const/16 v4, 0x10

    .line 37
    aget-object v1, v1, v4

    iget v4, v0, Lcom/smartisanos/launcher/view/jb;->Fv:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 38
    :cond_10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v4, 0xd

    aget-object v4, v1, v4

    if-eqz v4, :cond_11

    const/16 v4, 0xd

    .line 39
    aget-object v1, v1, v4

    iget v4, v0, Lcom/smartisanos/launcher/view/jb;->Yv:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 40
    :cond_11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v4, 0x15

    aget-object v4, v1, v4

    if-eqz v4, :cond_12

    const/16 v4, 0x15

    .line 41
    aget-object v1, v1, v4

    iget v4, v0, Lcom/smartisanos/launcher/view/jb;->Hv:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 42
    :cond_12
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v4, 0xf

    aget-object v4, v1, v4

    if-eqz v4, :cond_13

    const/16 v4, 0xf

    .line 43
    aget-object v1, v1, v4

    iget v4, v0, Lcom/smartisanos/launcher/view/jb;->Xv:I

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 44
    :cond_13
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v4, 0x18

    aget-object v4, v1, v4

    if-eqz v4, :cond_14

    const/16 v4, 0x18

    .line 45
    aget-object v1, v1, v4

    iget v4, v0, Lcom/smartisanos/launcher/view/jb;->Gv:I

    sub-int/2addr v4, v2

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 46
    :cond_14
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0x19

    aget-object v2, v1, v2

    if-eqz v2, :cond_15

    const/16 v2, 0x19

    .line 47
    aget-object v1, v1, v2

    iget v2, v0, Lcom/smartisanos/launcher/view/jb;->Gv:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 48
    :cond_15
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x8

    aget-object v1, p0, v1

    if-eqz v1, :cond_16

    const/16 v1, 0x8

    .line 49
    aget-object p0, p0, v1

    iget v0, v0, Lcom/smartisanos/launcher/view/jb;->aw:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    :cond_16
    return-void
.end method

.method public updateWorldBoundingVolume()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateSelfWorldBoundingVolume()V

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Ha;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateWorldBoundingVolume()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateWorldTransforms()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateSelfWorldTranform()V

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Ha;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateWorldTransforms()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public v(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->_G:I

    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->bH:I

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->aH:I

    iput v0, p0, Lcom/smartisanos/launcher/view/a/g;->cH:I

    .line 3
    iput p1, p0, Lcom/smartisanos/launcher/view/a/g;->_G:I

    .line 4
    iput p2, p0, Lcom/smartisanos/launcher/view/a/g;->aH:I

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget p1, p0, Lcom/smartisanos/launcher/view/a/g;->_G:I

    iget p2, p0, Lcom/smartisanos/launcher/view/a/g;->aH:I

    invoke-static {p1, p2}, Lcom/smartisanos/launcher/view/b/M;->y(II)I

    move-result p1

    .line 7
    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iput p1, p2, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    instance-of p1, p1, Lcom/smartisanos/launcher/view/b/M;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    .line 10
    iget p1, p1, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    .line 11
    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iput p1, p2, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 12
    :cond_0
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->log:Lcom/smartisanos/launcher/va;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cell["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]change index, p ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] c ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public vl()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    if-lez v2, :cond_codex_normal_icon

    move-object v1, v0

    goto :goto_0

    :cond_codex_normal_icon
    # itemType=1 is QuickLaunchItem. Its iconRawData is the provider's final
    # shortcut artwork (including the original Smartisan ring/frame), not the
    # host application's icon. Never send it through the managed app-icon path.
    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-byte v5, v5, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v6, 0x1

    if-ne v5, v6, :cond_codex_managed_static_icon

    move-object v1, v0

    goto :goto_0

    :cond_codex_managed_static_icon
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v5, v5, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-static {v1, v2, v5}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->shouldUseManagedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_codex_original_icon

    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v6, v6, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-static {v1, v2, v5, v6}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->loadIconForDesktopItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :cond_codex_icon_loaded

    :cond_codex_original_icon
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_codex_icon_loaded
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    move v4, v2

    goto :goto_1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->iconRawData:[B

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->c([B)Landroid/graphics/Bitmap;

    move-result-object v1

    move v4, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v6, v6

    if-ne v5, v6, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v6, v6

    if-eq v5, v6, :cond_3

    .line 8
    :cond_1
    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v6, v5

    float-to-int v5, v5

    invoke-static {v1, v6, v5, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move v4, v3

    move-object v1, v5

    .line 10
    :cond_3
    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    float-to-int v6, v6

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    float-to-int v5, v5

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 11
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 12
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v2, v2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 13
    new-instance v2, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget-object v10, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    .line 14
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    div-float/2addr v10, v9

    iget-object v11, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v12, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->multi_select_distance:F

    mul-float/2addr v12, v9

    sub-float/2addr v10, v12

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 15
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float v12, v11, v12

    div-float/2addr v12, v9

    sub-float/2addr v11, v12

    iget-object v12, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v12, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    .line 16
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v12, v13

    div-float/2addr v13, v9

    sub-float/2addr v12, v13

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->multi_select_distance:F

    mul-float/2addr p0, v9

    sub-float/2addr v12, p0

    invoke-direct {v2, v8, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 17
    invoke-virtual {v6, v1, v7, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/16 p0, 0x20

    const/4 v0, 0x3

    .line 18
    invoke-static {v5, p0, v0}, Lcom/smartisanos/launcher/e/s;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 19
    new-instance v0, Lcom/smartisanos/smengine/Da;

    invoke-direct {v0, p0}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 21
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 22
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object p0

    const-string v2, "t_blur_icon"

    invoke-virtual {p0, v2, v0}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    if-eqz v4, :cond_4

    .line 23
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    return-void

    .line 24
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "No data to generate gaussian icon"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public vm()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->gH:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public wl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    return-object p0
.end method

.method public wm()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/a/g;->mI:Z

    return p0
.end method

.method public xl()Lcom/smartisanos/launcher/view/a/X;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    return-object p0
.end method

.method public xm()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz p0, :cond_0

    .line 2
    iget-boolean p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public yi()V
    .locals 9

    const/4 v0, 0x0

    const v1, 0x3f7d70a4    # 0.99f

    .line 1
    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/a/g;->b(FZ)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Sm()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zg()V

    .line 4
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x10

    .line 5
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x8

    .line 6
    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 8
    invoke-virtual/range {v3 .. v8}, Lcom/smartisanos/launcher/view/a/g;->a(IIIIZ)V

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v1

    const/4 v3, 0x2

    const/16 v4, 0x20

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {p0, v4, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 11
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-nez v1, :cond_2

    .line 13
    invoke-virtual {p0, v4, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 14
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0, v4, v0}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    :goto_0
    const/4 v0, 0x5

    .line 16
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    .line 17
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->k(Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->k(Lcom/smartisanos/smengine/SceneNode;)V

    .line 20
    :goto_1
    sget v0, Lcom/smartisanos/launcher/view/a/g;->pI:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->jb(I)V

    .line 21
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_4

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/Z;->yi()V

    goto :goto_2

    .line 23
    :cond_4
    sget-object v0, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    .line 25
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/a/g;->eb(Z)V

    .line 26
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/X;->oi()V

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 28
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Z;->updateLayer()V

    .line 29
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->getPageCount()I

    move-result p0

    .line 30
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v0

    .line 31
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/smartisanos/launcher/view/Z;->D(II)V

    .line 32
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object p0

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->Naa:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/Z;->a(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    :cond_6
    return-void
.end method

.method public yl()Lcom/smartisanos/smengine/Camera;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->lH:Lcom/smartisanos/smengine/Camera;

    return-object p0
.end method

.method public ym()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/a/g;->fI:Z

    return p0
.end method

.method public zl()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz p0, :cond_0

    .line 2
    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public zm()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/a/g;->nH:Z

    return p0
.end method
