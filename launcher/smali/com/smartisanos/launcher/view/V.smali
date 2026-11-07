.class public Lcom/smartisanos/launcher/view/V;
.super Lcom/smartisanos/smengine/SceneNode;
.source "DockView.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field public AK:Z

.field private BK:Z

.field private CJ:Lcom/smartisanos/smengine/F;

.field private DJ:Lcom/smartisanos/smengine/F;

.field DK:Lcom/smartisanos/smengine/a/j;

.field private Dd:F

.field private EJ:Lcom/smartisanos/smengine/F;

.field private EK:Ljava/util/Comparator;

.field private FJ:Lcom/smartisanos/launcher/view/ib;

.field private FK:Lcom/smartisanos/smengine/g;

.field private GJ:Lcom/smartisanos/launcher/view/ib;

.field GK:Lcom/smartisanos/smengine/a/j;

.field private HJ:Lcom/smartisanos/launcher/view/Ec;

.field private IJ:Ljava/util/ArrayList;

.field private JJ:Lcom/smartisanos/launcher/view/Z;

.field private KJ:Lcom/smartisanos/launcher/view/Sc;

.field private LJ:Lcom/smartisanos/smengine/SceneNode;

.field public MJ:Lcom/smartisanos/smengine/F;

.field public NJ:Lcom/smartisanos/smengine/F;

.field public OJ:Lcom/smartisanos/smengine/F;

.field private Oy:[F

.field public PJ:Lcom/smartisanos/smengine/F;

.field public QJ:Lcom/smartisanos/smengine/F;

.field public RJ:Lcom/smartisanos/smengine/F;

.field public SJ:Lcom/smartisanos/smengine/F;

.field public TJ:Lcom/smartisanos/smengine/F;

.field private Ty:Lcom/smartisanos/smengine/a/j;

.field public UJ:Ljava/util/Map;

.field public VJ:[Lcom/smartisanos/smengine/F;

.field public WJ:[Lcom/smartisanos/smengine/F;

.field public XJ:Lcom/smartisanos/smengine/F;

.field public YJ:Lcom/smartisanos/smengine/F;

.field public ZJ:Lcom/smartisanos/smengine/F;

.field public _J:Lcom/smartisanos/smengine/F;

.field public aK:Lcom/smartisanos/smengine/F;

.field private animation:Lcom/smartisanos/launcher/animations/U;

.field private bK:I

.field public cK:Z

.field public dK:Z

.field private final eK:F

.field private final fK:F

.field private gH:I

.field private gK:Z

.field private hH:I

.field private hK:Z

.field private iK:Lcom/smartisanos/launcher/view/a/g;

.field private jH:I

.field private jK:Lcom/smartisanos/launcher/view/a/g;

.field private kK:Ljava/lang/String;

.field private lK:I

.field private mK:Lcom/smartisanos/launcher/view/gb;

.field private mStartX:F

.field private nK:Lcom/smartisanos/smengine/F;

.field oK:Lcom/smartisanos/smengine/n;

.field private pK:Z

.field private qK:Lcom/smartisanos/smengine/ca;

.field private rK:Lcom/smartisanos/smengine/ca;

.field private sK:Lcom/smartisanos/smengine/g;

.field private sc:[Lcom/smartisanos/launcher/view/V;

.field private tK:Lcom/smartisanos/smengine/g;

.field private uK:I

.field private vK:I

.field private wK:Z

.field private xK:Lcom/smartisanos/launcher/view/a/g;

.field public yK:Lcom/smartisanos/smengine/i;

.field public zK:[Lcom/smartisanos/smengine/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/V;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 5

    .line 45
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smartisanos/launcher/view/V;

    .line 47
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    .line 49
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->WJ:[Lcom/smartisanos/smengine/F;

    const/4 v1, -0x1

    .line 50
    iput v1, p0, Lcom/smartisanos/launcher/view/V;->bK:I

    .line 51
    iput v1, p0, Lcom/smartisanos/launcher/view/V;->gH:I

    .line 52
    iput v1, p0, Lcom/smartisanos/launcher/view/V;->hH:I

    const/4 v2, 0x1

    .line 53
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/V;->cK:Z

    .line 54
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/V;->dK:Z

    const/high16 v3, 0x420c0000    # 35.0f

    .line 55
    iput v3, p0, Lcom/smartisanos/launcher/view/V;->eK:F

    const/high16 v3, 0x41200000    # 10.0f

    .line 56
    iput v3, p0, Lcom/smartisanos/launcher/view/V;->fK:F

    const/4 v3, 0x0

    .line 57
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/V;->gK:Z

    .line 58
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/V;->hK:Z

    .line 59
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->jK:Lcom/smartisanos/launcher/view/a/g;

    .line 60
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v4, p0, Lcom/smartisanos/launcher/view/V;->Ty:Lcom/smartisanos/smengine/a/j;

    const/16 v4, 0x8

    new-array v4, v4, [F

    .line 61
    iput-object v4, p0, Lcom/smartisanos/launcher/view/V;->Oy:[F

    .line 62
    iput v1, p0, Lcom/smartisanos/launcher/view/V;->lK:I

    .line 63
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/V;->pK:Z

    .line 64
    new-instance v2, Lcom/smartisanos/launcher/view/I;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/I;-><init>(Lcom/smartisanos/launcher/view/V;)V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/V;->qK:Lcom/smartisanos/smengine/ca;

    .line 65
    new-instance v2, Lcom/smartisanos/launcher/view/K;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/K;-><init>(Lcom/smartisanos/launcher/view/V;)V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/V;->rK:Lcom/smartisanos/smengine/ca;

    .line 66
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->sK:Lcom/smartisanos/smengine/g;

    .line 67
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->tK:Lcom/smartisanos/smengine/g;

    .line 68
    iput v1, p0, Lcom/smartisanos/launcher/view/V;->uK:I

    .line 69
    iput v1, p0, Lcom/smartisanos/launcher/view/V;->vK:I

    .line 70
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/V;->wK:Z

    .line 71
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->xK:Lcom/smartisanos/launcher/view/a/g;

    .line 72
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->yK:Lcom/smartisanos/smengine/i;

    .line 73
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->zK:[Lcom/smartisanos/smengine/a/j;

    .line 74
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/V;->AK:Z

    .line 75
    iput v3, p0, Lcom/smartisanos/launcher/view/V;->jH:I

    .line 76
    new-instance v1, Lcom/smartisanos/launcher/view/B;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/B;-><init>(Lcom/smartisanos/launcher/view/V;)V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/V;->EK:Ljava/util/Comparator;

    .line 77
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->FK:Lcom/smartisanos/smengine/g;

    .line 78
    invoke-direct {p0, p2, p3}, Lcom/smartisanos/launcher/view/V;->N(II)V

    .line 79
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/V;->a(Landroid/graphics/Paint;)V

    .line 80
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Zo()V

    .line 81
    new-instance p2, Lcom/smartisanos/launcher/view/S;

    invoke-direct {p2, p0}, Lcom/smartisanos/launcher/view/S;-><init>(Lcom/smartisanos/launcher/view/V;)V

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/SceneNode;->setLongPressListener(Lcom/smartisanos/smengine/Y;)V

    .line 82
    new-instance p2, Lcom/smartisanos/launcher/view/U;

    invoke-direct {p2, p0}, Lcom/smartisanos/launcher/view/U;-><init>(Lcom/smartisanos/launcher/view/V;)V

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/SceneNode;->setTouchListener(Lcom/smartisanos/smengine/ha;)V

    .line 83
    new-instance p2, Lcom/smartisanos/launcher/view/T;

    invoke-direct {p2, p0}, Lcom/smartisanos/launcher/view/T;-><init>(Lcom/smartisanos/launcher/view/V;)V

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/SceneNode;->setSingleTapListener(Lcom/smartisanos/smengine/fa;)V

    .line 84
    new-instance p2, Lcom/smartisanos/launcher/view/Q;

    invoke-direct {p2, p0, v0}, Lcom/smartisanos/launcher/view/Q;-><init>(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/launcher/view/F;)V

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/SceneNode;->setCollideListener(Lcom/smartisanos/smengine/V;)V

    .line 85
    sget-boolean p2, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    .line 86
    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/view/V;->Na(Z)V

    .line 87
    new-instance p2, Lcom/smartisanos/launcher/animations/U;

    invoke-direct {p2, p0}, Lcom/smartisanos/launcher/animations/U;-><init>(Lcom/smartisanos/launcher/view/V;)V

    iput-object p2, p0, Lcom/smartisanos/launcher/view/V;->animation:Lcom/smartisanos/launcher/animations/U;

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dock_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "two.texture.cell"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/V;->kK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Paint;II)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smartisanos/launcher/view/V;

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    .line 5
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->WJ:[Lcom/smartisanos/smengine/F;

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/smartisanos/launcher/view/V;->bK:I

    .line 7
    iput v1, p0, Lcom/smartisanos/launcher/view/V;->gH:I

    .line 8
    iput v1, p0, Lcom/smartisanos/launcher/view/V;->hH:I

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/V;->cK:Z

    .line 10
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/V;->dK:Z

    const/high16 v3, 0x420c0000    # 35.0f

    .line 11
    iput v3, p0, Lcom/smartisanos/launcher/view/V;->eK:F

    const/high16 v3, 0x41200000    # 10.0f

    .line 12
    iput v3, p0, Lcom/smartisanos/launcher/view/V;->fK:F

    const/4 v3, 0x0

    .line 13
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/V;->gK:Z

    .line 14
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/V;->hK:Z

    .line 15
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->jK:Lcom/smartisanos/launcher/view/a/g;

    .line 16
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v4, p0, Lcom/smartisanos/launcher/view/V;->Ty:Lcom/smartisanos/smengine/a/j;

    const/16 v4, 0x8

    new-array v4, v4, [F

    .line 17
    iput-object v4, p0, Lcom/smartisanos/launcher/view/V;->Oy:[F

    .line 18
    iput v1, p0, Lcom/smartisanos/launcher/view/V;->lK:I

    .line 19
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/V;->pK:Z

    .line 20
    new-instance v2, Lcom/smartisanos/launcher/view/I;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/I;-><init>(Lcom/smartisanos/launcher/view/V;)V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/V;->qK:Lcom/smartisanos/smengine/ca;

    .line 21
    new-instance v2, Lcom/smartisanos/launcher/view/K;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/K;-><init>(Lcom/smartisanos/launcher/view/V;)V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/V;->rK:Lcom/smartisanos/smengine/ca;

    .line 22
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->sK:Lcom/smartisanos/smengine/g;

    .line 23
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->tK:Lcom/smartisanos/smengine/g;

    .line 24
    iput v1, p0, Lcom/smartisanos/launcher/view/V;->uK:I

    .line 25
    iput v1, p0, Lcom/smartisanos/launcher/view/V;->vK:I

    .line 26
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/V;->wK:Z

    .line 27
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->xK:Lcom/smartisanos/launcher/view/a/g;

    .line 28
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->yK:Lcom/smartisanos/smengine/i;

    .line 29
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->zK:[Lcom/smartisanos/smengine/a/j;

    .line 30
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/V;->AK:Z

    .line 31
    iput v3, p0, Lcom/smartisanos/launcher/view/V;->jH:I

    .line 32
    new-instance v1, Lcom/smartisanos/launcher/view/B;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/B;-><init>(Lcom/smartisanos/launcher/view/V;)V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/V;->EK:Ljava/util/Comparator;

    .line 33
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->FK:Lcom/smartisanos/smengine/g;

    .line 34
    invoke-direct {p0, p3, p4}, Lcom/smartisanos/launcher/view/V;->N(II)V

    .line 35
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/view/V;->a(Landroid/graphics/Paint;)V

    .line 36
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Zo()V

    .line 37
    new-instance p2, Lcom/smartisanos/launcher/view/S;

    invoke-direct {p2, p0}, Lcom/smartisanos/launcher/view/S;-><init>(Lcom/smartisanos/launcher/view/V;)V

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/SceneNode;->setLongPressListener(Lcom/smartisanos/smengine/Y;)V

    .line 38
    new-instance p2, Lcom/smartisanos/launcher/view/U;

    invoke-direct {p2, p0}, Lcom/smartisanos/launcher/view/U;-><init>(Lcom/smartisanos/launcher/view/V;)V

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/SceneNode;->setTouchListener(Lcom/smartisanos/smengine/ha;)V

    .line 39
    new-instance p2, Lcom/smartisanos/launcher/view/T;

    invoke-direct {p2, p0}, Lcom/smartisanos/launcher/view/T;-><init>(Lcom/smartisanos/launcher/view/V;)V

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/SceneNode;->setSingleTapListener(Lcom/smartisanos/smengine/fa;)V

    .line 40
    new-instance p2, Lcom/smartisanos/launcher/view/Q;

    invoke-direct {p2, p0, v0}, Lcom/smartisanos/launcher/view/Q;-><init>(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/launcher/view/F;)V

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/SceneNode;->setCollideListener(Lcom/smartisanos/smengine/V;)V

    .line 41
    sget-boolean p2, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    .line 42
    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/view/V;->Na(Z)V

    .line 43
    new-instance p2, Lcom/smartisanos/launcher/animations/U;

    invoke-direct {p2, p0}, Lcom/smartisanos/launcher/animations/U;-><init>(Lcom/smartisanos/launcher/view/V;)V

    iput-object p2, p0, Lcom/smartisanos/launcher/view/V;->animation:Lcom/smartisanos/launcher/animations/U;

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dock_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "two.texture.cell"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/V;->kK:Ljava/lang/String;

    return-void
.end method

.method private N(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/V;->bK:I

    .line 2
    iput p2, p0, Lcom/smartisanos/launcher/view/V;->gH:I

    .line 3
    iget p1, p0, Lcom/smartisanos/launcher/view/V;->bK:I

    iput p1, p0, Lcom/smartisanos/launcher/view/V;->hH:I

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/view/V;->xK:Lcom/smartisanos/launcher/view/a/g;

    return-object p1
.end method

.method private a(Ljava/lang/String;FFLcom/smartisanos/smengine/ca;)Lcom/smartisanos/smengine/F;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-static {p1, p2, p3, v1, v0}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p2

    const-string p3, "TextureModularColorMaterial"

    .line 44
    invoke-static {p3}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p3

    .line 45
    invoke-virtual {p2, p3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 47
    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 48
    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 49
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 p3, 0x2

    invoke-virtual {p0, p3}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 50
    invoke-static {p1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 52
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 p3, -0x40000000    # -2.0f

    invoke-virtual {p0, p1, p3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 53
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 54
    invoke-virtual {p2, p1, p1, p0, p0}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 55
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    if-eqz p4, :cond_0

    .line 56
    invoke-virtual {p2, p4}, Lcom/smartisanos/smengine/SceneNode;->setOnTouchListener(Lcom/smartisanos/smengine/ca;)V

    :cond_0
    return-object p2
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/V;->sK:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method private a(Landroid/graphics/Paint;)V
    .locals 11

    const/4 v0, -0x2

    .line 58
    invoke-static {v0}, Lcom/smartisanos/launcher/Aa;->K(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 60
    iget v2, p0, Lcom/smartisanos/launcher/view/V;->bK:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_app_count:I

    if-gt v1, v2, :cond_5

    const/4 v1, 0x0

    move v2, v1

    .line 61
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 62
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/ItemInfo;

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 63
    :cond_0
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 64
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-static {}, Lcom/smartisanos/launcher/Aa;->qc()Ljava/util/HashMap;

    move-result-object v5

    .line 66
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 67
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 68
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 70
    iget v7, v6, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    int-to-long v7, v7

    iget-wide v9, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 71
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_2
    iget v5, p0, Lcom/smartisanos/launcher/view/V;->bK:I

    iget v6, p0, Lcom/smartisanos/launcher/view/V;->gH:I

    invoke-static {v3, v4, v5, v6, p1}, Lcom/smartisanos/launcher/view/a/aa;->a(Lcom/smartisanos/launcher/data/ItemInfo;Ljava/util/ArrayList;IILandroid/graphics/Paint;)Lcom/smartisanos/launcher/view/a/ka;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/ka;->create()V

    goto :goto_2

    .line 74
    :cond_3
    new-instance v4, Lcom/smartisanos/launcher/view/a/ba;

    invoke-direct {v4}, Lcom/smartisanos/launcher/view/a/ba;-><init>()V

    const-string v5, "itemInfo"

    .line 75
    invoke-virtual {v4, v5, v3}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "paint"

    .line 76
    invoke-virtual {v4, v5, p1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "PageCell"

    .line 77
    invoke-virtual {v4, v5, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    .line 78
    iget v5, p0, Lcom/smartisanos/launcher/view/V;->bK:I

    const-string v6, "singlePageMode"

    invoke-virtual {v4, v6, v5}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 79
    iget v5, p0, Lcom/smartisanos/launcher/view/V;->gH:I

    const-string v6, "multiPageMode"

    invoke-virtual {v4, v6, v5}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 80
    iget v5, p0, Lcom/smartisanos/launcher/view/V;->hH:I

    const-string v6, "KeyCurrentPageMode"

    invoke-virtual {v4, v6, v5}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 81
    new-instance v5, Lcom/smartisanos/launcher/view/a/g;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_fore"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Lcom/smartisanos/launcher/view/a/g;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/ba;)V

    .line 82
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->create()V

    move-object v3, v5

    .line 83
    :goto_2
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 84
    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/a/g;->kb(I)V

    iget v4, p0, Lcom/smartisanos/launcher/view/V;->hH:I

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    new-instance v5, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v5}, Lcom/smartisanos/smengine/a/j;-><init>()V

    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v6, v6

    add-int/lit8 v7, v2, 0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v4}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v9

    move v7, v9

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-static {v4}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v8

    invoke-static {v6, v7, v8, v9, v5}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    iget v4, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v5, Lcom/smartisanos/smengine/a/j;->y:F

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v3, v4, v6, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 85
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Lo()Lcom/smartisanos/smengine/i;

    move-result-object v4

    .line 86
    invoke-virtual {v4}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {v4}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v4}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {v4}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 87
    iget-object v4, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 88
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void

    .line 89
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dock cell count ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] over dock cell limited ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/V;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/V;->s(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/V;->y(Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/V;->m(Lcom/smartisanos/smengine/SceneNode;Z)V

    return-void
.end method

.method private a(Lcom/smartisanos/launcher/view/kb;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 7
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v2, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_create_folder_height:F

    float-to-int v2, v2

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_create_folder_width:F

    float-to-int v8, v3

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_delete_btn_width:F

    float-to-int v10, v3

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 12
    sget v4, Lcom/smartisanos/launcher/lb;->btn_text_size:I

    invoke-static {v4}, Lcom/smartisanos/launcher/e/s;->na(I)I

    move-result v17

    .line 13
    sget v4, Lcom/smartisanos/launcher/lb;->btn_create_folder_text_width:I

    invoke-static {v4}, Lcom/smartisanos/launcher/e/s;->na(I)I

    .line 14
    sget v4, Lcom/smartisanos/launcher/lb;->btn_text_height:I

    invoke-static {v4}, Lcom/smartisanos/launcher/e/s;->na(I)I

    move-result v18

    .line 15
    sget v4, Lcom/smartisanos/launcher/lb;->btn_text_margin_left:I

    invoke-static {v4}, Lcom/smartisanos/launcher/e/s;->na(I)I

    move-result v19

    .line 16
    sget v4, Lcom/smartisanos/launcher/lb;->btn_text_margin_right:I

    invoke-static {v4}, Lcom/smartisanos/launcher/e/s;->na(I)I

    move-result v20

    .line 17
    sget v4, Lcom/smartisanos/launcher/lb;->btn_icon_margin_left:I

    invoke-static {v4}, Lcom/smartisanos/launcher/e/s;->na(I)I

    move-result v9

    .line 18
    sget v4, Lcom/smartisanos/launcher/lb;->btn_icon_size:I

    invoke-static {v4}, Lcom/smartisanos/launcher/e/s;->na(I)I

    move-result v7

    .line 19
    new-instance v4, Lcom/smartisanos/launcher/view/ib;

    const-string v5, "create_folder"

    invoke-direct {v4, v5}, Lcom/smartisanos/launcher/view/ib;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Lcom/smartisanos/launcher/view/V;->FJ:Lcom/smartisanos/launcher/view/ib;

    .line 20
    iget-object v11, v0, Lcom/smartisanos/launcher/view/V;->FJ:Lcom/smartisanos/launcher/view/ib;

    sget v4, Lcom/smartisanos/launcher/hb;->large_create_folder:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    move/from16 v13, v17

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v16, v20

    invoke-virtual/range {v11 .. v16}, Lcom/smartisanos/launcher/view/ib;->a(IIIII)V

    .line 21
    iget-object v3, v0, Lcom/smartisanos/launcher/view/V;->FJ:Lcom/smartisanos/launcher/view/ib;

    invoke-virtual {v3, v7, v9}, Lcom/smartisanos/launcher/view/ib;->E(II)V

    .line 22
    iget-object v3, v0, Lcom/smartisanos/launcher/view/V;->FJ:Lcom/smartisanos/launcher/view/ib;

    iget v4, v1, Lcom/smartisanos/launcher/view/kb;->ew:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/ib;->setLayer(I)V

    .line 23
    iget-object v3, v0, Lcom/smartisanos/launcher/view/V;->FJ:Lcom/smartisanos/launcher/view/ib;

    sget v4, Lcom/smartisanos/launcher/ob;->btn_create_folder:I

    sget v6, Lcom/smartisanos/launcher/jb;->ic_create_folder_bg:I

    sget v11, Lcom/smartisanos/launcher/jb;->ic_create_folder_bg_pressed:I

    const-string v5, "ic_create_folder.png"

    move v15, v7

    move v7, v11

    move v14, v9

    move v9, v2

    invoke-virtual/range {v3 .. v9}, Lcom/smartisanos/launcher/view/ib;->a(ILjava/lang/String;IIII)V

    .line 24
    iget-object v3, v0, Lcom/smartisanos/launcher/view/V;->FJ:Lcom/smartisanos/launcher/view/ib;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/view/x;->bh()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 26
    iget-object v4, v0, Lcom/smartisanos/launcher/view/V;->FJ:Lcom/smartisanos/launcher/view/ib;

    iget v5, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v4, v5, v6, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 27
    iget-object v3, v0, Lcom/smartisanos/launcher/view/V;->FJ:Lcom/smartisanos/launcher/view/ib;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 28
    iget-object v3, v0, Lcom/smartisanos/launcher/view/V;->FJ:Lcom/smartisanos/launcher/view/ib;

    new-instance v4, Lcom/smartisanos/launcher/view/N;

    invoke-direct {v4, v0}, Lcom/smartisanos/launcher/view/N;-><init>(Lcom/smartisanos/launcher/view/V;)V

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setOnClickListener(Lcom/smartisanos/smengine/aa;)V

    .line 29
    new-instance v3, Lcom/smartisanos/launcher/view/ib;

    const-string v4, "delete_app"

    invoke-direct {v3, v4}, Lcom/smartisanos/launcher/view/ib;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/smartisanos/launcher/view/V;->GJ:Lcom/smartisanos/launcher/view/ib;

    .line 30
    sget v3, Lcom/smartisanos/launcher/lb;->btn_delete_text_width:I

    invoke-static {v3}, Lcom/smartisanos/launcher/e/s;->na(I)I

    .line 31
    iget-object v11, v0, Lcom/smartisanos/launcher/view/V;->GJ:Lcom/smartisanos/launcher/view/ib;

    const/4 v12, -0x1

    move v3, v14

    move/from16 v14, v18

    move v4, v15

    move/from16 v15, v19

    invoke-virtual/range {v11 .. v16}, Lcom/smartisanos/launcher/view/ib;->a(IIIII)V

    .line 32
    iget-object v5, v0, Lcom/smartisanos/launcher/view/V;->GJ:Lcom/smartisanos/launcher/view/ib;

    invoke-virtual {v5, v4, v3}, Lcom/smartisanos/launcher/view/ib;->E(II)V

    .line 33
    iget-object v3, v0, Lcom/smartisanos/launcher/view/V;->GJ:Lcom/smartisanos/launcher/view/ib;

    iget v1, v1, Lcom/smartisanos/launcher/view/kb;->ew:I

    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/ib;->setLayer(I)V

    .line 34
    iget-object v3, v0, Lcom/smartisanos/launcher/view/V;->GJ:Lcom/smartisanos/launcher/view/ib;

    sget v4, Lcom/smartisanos/launcher/ob;->btn_delete:I

    sget v6, Lcom/smartisanos/launcher/jb;->ic_delete_btn_bg:I

    sget v7, Lcom/smartisanos/launcher/jb;->ic_delete_btn_bg_pressed:I

    const-string v5, "ic_delete.png"

    move v8, v10

    invoke-virtual/range {v3 .. v9}, Lcom/smartisanos/launcher/view/ib;->a(ILjava/lang/String;IIII)V

    .line 35
    iget-object v1, v0, Lcom/smartisanos/launcher/view/V;->GJ:Lcom/smartisanos/launcher/view/ib;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 36
    invoke-static {}, Lcom/smartisanos/launcher/view/x;->ch()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 37
    iget-object v2, v0, Lcom/smartisanos/launcher/view/V;->GJ:Lcom/smartisanos/launcher/view/ib;

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v2, v3, v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 38
    iget-object v1, v0, Lcom/smartisanos/launcher/view/V;->GJ:Lcom/smartisanos/launcher/view/ib;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 39
    iget-object v1, v0, Lcom/smartisanos/launcher/view/V;->GJ:Lcom/smartisanos/launcher/view/ib;

    new-instance v2, Lcom/smartisanos/launcher/view/O;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/O;-><init>(Lcom/smartisanos/launcher/view/V;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setOnClickListener(Lcom/smartisanos/smengine/aa;)V

    .line 40
    iget-object v1, v0, Lcom/smartisanos/launcher/view/V;->FJ:Lcom/smartisanos/launcher/view/ib;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 41
    iget-object v0, v0, Lcom/smartisanos/launcher/view/V;->GJ:Lcom/smartisanos/launcher/view/ib;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method

.method private a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 2

    if-nez p7, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/a/k;-><init>(Lcom/smartisanos/smengine/a/k;)V

    .line 204
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, p1}, Lcom/smartisanos/smengine/a/k;-><init>(Lcom/smartisanos/smengine/a/k;)V

    .line 205
    sget-object p1, Lcom/smartisanos/launcher/animations/ab;->ho:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p2, p1}, Lcom/smartisanos/smengine/a/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 206
    sget-object p1, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/a/k;->f(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    goto :goto_0

    .line 207
    :cond_1
    sget-object p1, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/a/k;->f(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    .line 208
    :goto_0
    new-instance p1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {p1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 209
    invoke-virtual {p1, v1, v0, p3, p4}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 210
    new-instance p2, Lcom/smartisanos/launcher/view/C;

    invoke-direct {p2, p0, p7}, Lcom/smartisanos/launcher/view/C;-><init>(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/SceneNode;)V

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    .line 211
    invoke-static {p7, p1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p0

    .line 212
    invoke-virtual {p6, p5, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/V;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/V;->pK:Z

    return p1
.end method

.method static synthetic access$200()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/V;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/V;->DJ:Lcom/smartisanos/smengine/F;

    return-object p1
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/V;->tK:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/V;->x(Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/V;->l(Lcom/smartisanos/smengine/SceneNode;Z)V

    return-void
.end method

.method static synthetic e(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/Z;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->JJ:Lcom/smartisanos/launcher/view/Z;

    return-object p0
.end method

.method static synthetic f(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->tK:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method static synthetic g(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->xK:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method static synthetic h(Lcom/smartisanos/launcher/view/V;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/V;->ly()Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/smartisanos/launcher/view/V;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic j(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method static synthetic k(Lcom/smartisanos/launcher/view/V;)[Lcom/smartisanos/launcher/view/V;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    return-object p0
.end method

.method static synthetic l(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->DJ:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method private l(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 2

    if-nez p1, :cond_1

    .line 2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/view/V;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "showOrDisappearConfirmOrCancelCoverIcon error. v = null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    if-ne p1, v0, :cond_2

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->_J:Lcom/smartisanos/smengine/F;

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    if-ne p1, v0, :cond_4

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->aK:Lcom/smartisanos/smengine/F;

    :goto_0
    if-eqz p2, :cond_3

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 8
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object p2

    iget p2, p2, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p0, p2, v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object p2

    iget p2, p2, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p0, p2, v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :goto_1
    return-void

    .line 13
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "showOrDisappearConfirmOrCancelCoverIcon error. rectNode is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private ly()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic m(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/ib;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->FJ:Lcom/smartisanos/launcher/view/ib;

    return-object p0
.end method

.method private m(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 2

    if-nez p1, :cond_1

    .line 2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/view/V;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "showSortCoverIcon error. v = null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->UJ:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/F;

    if-nez p0, :cond_3

    .line 4
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/launcher/view/V;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "showSortCoverIcon error. coverNode = null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    if-eqz p2, :cond_4

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object p2

    iget p2, p2, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p0, p2, v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 7
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object p2

    iget p2, p2, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p0, p2, v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :goto_0
    return-void
.end method

.method private my()V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Lcom/smartisanos/launcher/view/V;->bK:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v6

    .line 5
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v5

    .line 6
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->c(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "dock_trans"

    const/4 v8, 0x1

    .line 7
    invoke-static {v2, v5, v6, v1, v8}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v7, "SimpleTextureClipPlaneMaterial"

    .line 8
    invoke-static {v7, v3, v4}, Lcom/smartisanos/smengine/mymaterial/g;->a(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/16 v4, 0xf

    .line 10
    new-instance v7, Lcom/smartisanos/smengine/a/k;

    iget v9, v0, Lcom/smartisanos/smengine/a/j;->y:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v6, v10

    add-float/2addr v9, v10

    const/high16 v11, -0x40800000    # -1.0f

    invoke-direct {v7, v1, v11, v1, v9}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-virtual {v3, v4, v7}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    const/16 v1, 0x11

    .line 11
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    const-string v3, "background.png"

    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 15
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v1, v11, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 16
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v8}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 17
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Tl()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/nb;->ua(I)Lcom/smartisanos/launcher/view/kb;

    move-result-object v1

    .line 19
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    iget v1, v1, Lcom/smartisanos/launcher/view/kb;->bw:I

    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 20
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 21
    iget v3, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iput v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 22
    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iput v0, v1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v3, v4, v7}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 24
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v3

    if-nez v3, :cond_1

    .line 25
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v3

    .line 26
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    .line 27
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    :cond_1
    move-object v10, v3

    .line 28
    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v4, v1, Lcom/smartisanos/smengine/a/j;->z:F

    const/4 v7, 0x0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v7

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lcom/smartisanos/launcher/e/s;->a(FFFZFF[F)V

    .line 29
    invoke-virtual {v10, v9, v0}, Lcom/smartisanos/smengine/y;->c(I[F)V

    .line 30
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 32
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_2
    return-void
.end method

.method static synthetic n(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/launcher/view/ib;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->GJ:Lcom/smartisanos/launcher/view/ib;

    return-object p0
.end method

.method private ny()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->mK:Lcom/smartisanos/launcher/view/gb;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/view/gb;

    const-string v1, "createFolderCreatorForMultiSelectView"

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/gb;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->mK:Lcom/smartisanos/launcher/view/gb;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->mK:Lcom/smartisanos/launcher/view/gb;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/smartisanos/launcher/view/V;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/V;->pK:Z

    return p0
.end method

.method private oy()V
    .locals 13

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Tl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->ua(I)Lcom/smartisanos/launcher/view/kb;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->qK:Lcom/smartisanos/smengine/ca;

    const/high16 v2, 0x43900000    # 288.0f

    const-string v3, "sort_by_color_icon.png"

    invoke-direct {p0, v3, v2, v2, v1}, Lcom/smartisanos/launcher/view/V;->a(Ljava/lang/String;FFLcom/smartisanos/smengine/ca;)Lcom/smartisanos/smengine/F;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/V;->NJ:Lcom/smartisanos/smengine/F;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->NJ:Lcom/smartisanos/smengine/F;

    iget v3, v0, Lcom/smartisanos/launcher/view/kb;->ew:I

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->NJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->qK:Lcom/smartisanos/smengine/ca;

    const-string v3, "sort_by_install_time_icon.png"

    invoke-direct {p0, v3, v2, v2, v1}, Lcom/smartisanos/launcher/view/V;->a(Ljava/lang/String;FFLcom/smartisanos/smengine/ca;)Lcom/smartisanos/smengine/F;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/V;->OJ:Lcom/smartisanos/smengine/F;

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->OJ:Lcom/smartisanos/smengine/F;

    iget v3, v0, Lcom/smartisanos/launcher/view/kb;->fw:I

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->OJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->qK:Lcom/smartisanos/smengine/ca;

    const-string v3, "sort_by_usage_frequency_icon.png"

    invoke-direct {p0, v3, v2, v2, v1}, Lcom/smartisanos/launcher/view/V;->a(Ljava/lang/String;FFLcom/smartisanos/smengine/ca;)Lcom/smartisanos/smengine/F;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/V;->PJ:Lcom/smartisanos/smengine/F;

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->PJ:Lcom/smartisanos/smengine/F;

    iget v3, v0, Lcom/smartisanos/launcher/view/kb;->hw:I

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->PJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->qK:Lcom/smartisanos/smengine/ca;

    const-string v3, "sort_by_category_icon.png"

    invoke-direct {p0, v3, v2, v2, v1}, Lcom/smartisanos/launcher/view/V;->a(Ljava/lang/String;FFLcom/smartisanos/smengine/ca;)Lcom/smartisanos/smengine/F;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/V;->MJ:Lcom/smartisanos/smengine/F;

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->MJ:Lcom/smartisanos/smengine/F;

    iget v3, v0, Lcom/smartisanos/launcher/view/kb;->iw:I

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->MJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/V;->UJ:Ljava/util/Map;

    const/4 v1, 0x0

    const-string v3, "sort_by_color_cover_icon.png"

    .line 15
    invoke-direct {p0, v3, v2, v2, v1}, Lcom/smartisanos/launcher/view/V;->a(Ljava/lang/String;FFLcom/smartisanos/smengine/ca;)Lcom/smartisanos/smengine/F;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/V;->RJ:Lcom/smartisanos/smengine/F;

    .line 16
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->RJ:Lcom/smartisanos/smengine/F;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/V;->NJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 17
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->RJ:Lcom/smartisanos/smengine/F;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 18
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->RJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 19
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->UJ:Ljava/util/Map;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/V;->NJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/V;->RJ:Lcom/smartisanos/smengine/F;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sort_by_install_time_cover_icon.png"

    .line 20
    invoke-direct {p0, v3, v2, v2, v1}, Lcom/smartisanos/launcher/view/V;->a(Ljava/lang/String;FFLcom/smartisanos/smengine/ca;)Lcom/smartisanos/smengine/F;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/V;->SJ:Lcom/smartisanos/smengine/F;

    .line 21
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->SJ:Lcom/smartisanos/smengine/F;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/V;->OJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 22
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->SJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 23
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->SJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 24
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->UJ:Ljava/util/Map;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/V;->OJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/V;->SJ:Lcom/smartisanos/smengine/F;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sort_by_usage_frequency_cover_icon.png"

    .line 25
    invoke-direct {p0, v3, v2, v2, v1}, Lcom/smartisanos/launcher/view/V;->a(Ljava/lang/String;FFLcom/smartisanos/smengine/ca;)Lcom/smartisanos/smengine/F;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/V;->TJ:Lcom/smartisanos/smengine/F;

    .line 26
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->TJ:Lcom/smartisanos/smengine/F;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/V;->PJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 27
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->TJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 28
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->TJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 29
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->UJ:Ljava/util/Map;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/V;->PJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/V;->TJ:Lcom/smartisanos/smengine/F;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sort_by_category_cover_icon.png"

    .line 30
    invoke-direct {p0, v3, v2, v2, v1}, Lcom/smartisanos/launcher/view/V;->a(Ljava/lang/String;FFLcom/smartisanos/smengine/ca;)Lcom/smartisanos/smengine/F;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/V;->QJ:Lcom/smartisanos/smengine/F;

    .line 31
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->QJ:Lcom/smartisanos/smengine/F;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/V;->MJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 32
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->QJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 33
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->QJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 34
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->UJ:Ljava/util/Map;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/V;->MJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/V;->QJ:Lcom/smartisanos/smengine/F;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    new-array v6, v3, [Lcom/smartisanos/smengine/F;

    .line 35
    iget-object v7, p0, Lcom/smartisanos/launcher/view/V;->PJ:Lcom/smartisanos/smengine/F;

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/smartisanos/launcher/view/V;->NJ:Lcom/smartisanos/smengine/F;

    aput-object v7, v6, v5

    iget-object v7, p0, Lcom/smartisanos/launcher/view/V;->OJ:Lcom/smartisanos/smengine/F;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/smartisanos/launcher/view/V;->MJ:Lcom/smartisanos/smengine/F;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    iput-object v6, p0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    .line 36
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v6, :cond_0

    .line 37
    iget-object v6, p0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    array-length v6, v6

    .line 38
    invoke-virtual {p0, v6}, Lcom/smartisanos/launcher/view/V;->Gb(I)[Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    move v8, v4

    :goto_0
    if-ge v8, v6, :cond_1

    .line 39
    iget-object v9, p0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    aget-object v9, v9, v8

    .line 40
    aget-object v10, v7, v8

    iget v10, v10, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v11, v7, v8

    iget v11, v11, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v12, v7, v8

    iget v12, v12, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v9, v10, v11, v12}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 41
    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Vo()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    .line 43
    iget-object v7, p0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    array-length v7, v7

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_1

    .line 44
    iget-object v9, p0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    aget-object v9, v9, v8

    .line 45
    iget v10, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v11, v6, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v6, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v9, v10, v11, v12}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 46
    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/V;->ub(Z)V

    .line 48
    iget-object v6, p0, Lcom/smartisanos/launcher/view/V;->rK:Lcom/smartisanos/smengine/ca;

    const-string v7, "sort_confirm.png"

    invoke-direct {p0, v7, v2, v2, v6}, Lcom/smartisanos/launcher/view/V;->a(Ljava/lang/String;FFLcom/smartisanos/smengine/ca;)Lcom/smartisanos/smengine/F;

    move-result-object v6

    iput-object v6, p0, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    .line 49
    iget-object v6, p0, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    iget v7, v0, Lcom/smartisanos/launcher/view/kb;->cw:I

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 50
    sget-object v3, Lcom/smartisanos/launcher/view/DockView$Component;->Haa:Lcom/smartisanos/launcher/view/DockView$Component;

    invoke-virtual {p0, v3, v4}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/view/DockView$Component;Z)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 51
    iget-object v6, p0, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    iget v7, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, v3, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v6, v7, v8, v9}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 52
    iget-object v6, p0, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 53
    iget-object v6, p0, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 54
    iget-object v6, p0, Lcom/smartisanos/launcher/view/V;->rK:Lcom/smartisanos/smengine/ca;

    const-string v7, "sort_cancel.png"

    invoke-direct {p0, v7, v2, v2, v6}, Lcom/smartisanos/launcher/view/V;->a(Ljava/lang/String;FFLcom/smartisanos/smengine/ca;)Lcom/smartisanos/smengine/F;

    move-result-object v6

    iput-object v6, p0, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    .line 55
    iget-object v6, p0, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    iget v7, v0, Lcom/smartisanos/launcher/view/kb;->cw:I

    add-int/lit8 v7, v7, 0x5

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 56
    sget-object v6, Lcom/smartisanos/launcher/view/DockView$Component;->Iaa:Lcom/smartisanos/launcher/view/DockView$Component;

    invoke-virtual {p0, v6, v4}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/view/DockView$Component;Z)Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    .line 57
    iget-object v7, p0, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    iget v8, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v6, Lcom/smartisanos/smengine/a/j;->y:F

    iget v10, v6, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 58
    iget-object v7, p0, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 59
    iget-object v7, p0, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v7, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 60
    sget-boolean v7, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v7, :cond_2

    .line 61
    iget-object v7, p0, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8, v8, v8}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_2
    const-string v7, "sort_confirm_cover.png"

    .line 62
    invoke-direct {p0, v7, v2, v2, v1}, Lcom/smartisanos/launcher/view/V;->a(Ljava/lang/String;FFLcom/smartisanos/smengine/ca;)Lcom/smartisanos/smengine/F;

    move-result-object v7

    iput-object v7, p0, Lcom/smartisanos/launcher/view/V;->_J:Lcom/smartisanos/smengine/F;

    .line 63
    iget-object v7, p0, Lcom/smartisanos/launcher/view/V;->_J:Lcom/smartisanos/smengine/F;

    iget-object v8, p0, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 64
    iget-object v7, p0, Lcom/smartisanos/launcher/view/V;->_J:Lcom/smartisanos/smengine/F;

    iget v8, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v7, v8, v9, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 65
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->_J:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 66
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->_J:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    const-string v3, "sort_cancel_cover.png"

    .line 67
    invoke-direct {p0, v3, v2, v2, v1}, Lcom/smartisanos/launcher/view/V;->a(Ljava/lang/String;FFLcom/smartisanos/smengine/ca;)Lcom/smartisanos/smengine/F;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/V;->aK:Lcom/smartisanos/smengine/F;

    .line 68
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->aK:Lcom/smartisanos/smengine/F;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 69
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->aK:Lcom/smartisanos/smengine/F;

    iget v2, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v6, Lcom/smartisanos/smengine/a/j;->y:F

    iget v5, v6, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v2, v3, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 70
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->aK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 71
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->aK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 72
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/view/kb;)V

    return-void
.end method

.method static synthetic p(Lcom/smartisanos/launcher/view/V;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/V;->qy()V

    return-void
.end method

.method private pc(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/a/g;->Ra(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    :cond_1
    return-void
.end method

.method private py()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/view/Sc;

    const-string v1, "trash.png_Node"

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/Sc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Sc;->oq()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->hp()V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/smartisanos/launcher/view/V;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/V;->lK:I

    return p0
.end method

.method private qc(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/a/g;->Sa(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->Fa(Z)V

    :cond_1
    return-void
.end method

.method private qy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->oK:Lcom/smartisanos/smengine/n;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->oK:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    :cond_0
    return-void
.end method

.method private s(IZ)V
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string p0, "event_sort_by_color"

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    const-string p0, "event_sort_by_time"

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    if-ne p1, p0, :cond_2

    const-string p0, "event_sort_by_usage"

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    if-ne p1, p0, :cond_3

    const-string p0, "event_sort_by_category"

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    .line 1
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/smartisanos/launcher/Da;->e(Ljava/lang/String;Z)V

    return-void
.end method

.method private td(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/V;->lK:I

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string p0, "event_sort_by_color"

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    const-string p0, "event_sort_by_time"

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    if-ne p1, p0, :cond_2

    const-string p0, "event_sort_by_usage"

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    if-ne p1, p0, :cond_3

    const-string p0, "event_sort_by_category"

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/Da;->H(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private w(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/n;
    .locals 2

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/view/H;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1, p1}, Lcom/smartisanos/launcher/view/H;-><init>(Lcom/smartisanos/launcher/view/V;ILcom/smartisanos/smengine/SceneNode;)V

    return-object v0
.end method

.method private x(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 5

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/smartisanos/launcher/Qa;->r(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->NJ:Lcom/smartisanos/smengine/F;

    if-ne p1, v2, :cond_1

    move p1, v1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->OJ:Lcom/smartisanos/smengine/F;

    if-ne p1, v2, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->PJ:Lcom/smartisanos/smengine/F;

    if-ne p1, v2, :cond_3

    const/4 p1, 0x3

    goto :goto_0

    .line 7
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->MJ:Lcom/smartisanos/smengine/F;

    if-ne p1, v2, :cond_4

    const/4 p1, 0x4

    goto :goto_0

    :cond_4
    move p1, v0

    .line 8
    :goto_0
    sget-object v0, Lcom/smartisanos/launcher/view/V;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sort type == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    if-lez p1, :cond_8

    .line 9
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/V;->td(I)V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/a/b/i;->getInstance()Lcom/smartisanos/launcher/a/b/i;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/a/b/i;->getInstance()Lcom/smartisanos/launcher/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/a/b/i;->clear()V

    .line 12
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->sK:Lcom/smartisanos/smengine/g;

    if-eqz v3, :cond_6

    .line 15
    invoke-virtual {v3}, Lcom/smartisanos/smengine/g;->Ij()V

    const/4 v3, 0x0

    .line 16
    iput-object v3, p0, Lcom/smartisanos/launcher/view/V;->sK:Lcom/smartisanos/smengine/g;

    .line 17
    :cond_6
    new-instance v3, Lcom/smartisanos/smengine/g;

    invoke-direct {v3}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v3, p0, Lcom/smartisanos/launcher/view/V;->sK:Lcom/smartisanos/smengine/g;

    .line 18
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->sK:Lcom/smartisanos/smengine/g;

    const v4, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v3, v4}, Lcom/smartisanos/launcher/view/Eb;->b(Lcom/smartisanos/smengine/g;F)V

    .line 19
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v0

    iput p1, v0, Lcom/smartisanos/launcher/view/Lc;->wO:I

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->sK:Lcom/smartisanos/smengine/g;

    new-instance v3, Lcom/smartisanos/launcher/view/M;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/M;-><init>(Lcom/smartisanos/launcher/view/V;)V

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 21
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->sK:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    .line 22
    invoke-static {p1}, Lcom/smartisanos/launcher/a/b/i;->Z(I)Lcom/smartisanos/launcher/a/b/i;

    move-result-object p0

    .line 23
    iput p1, p0, Lcom/smartisanos/launcher/a/b/i;->Mk:I

    .line 24
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_7

    sget-object p1, Lcom/smartisanos/launcher/a/b/i;->Uk:Lcom/smartisanos/launcher/a/b/j;

    if-nez p1, :cond_7

    .line 25
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Hq()Lcom/smartisanos/launcher/a/b/j;

    move-result-object p1

    sput-object p1, Lcom/smartisanos/launcher/a/b/i;->Uk:Lcom/smartisanos/launcher/a/b/j;

    .line 26
    :cond_7
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Hq()Lcom/smartisanos/launcher/a/b/j;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/a/b/i;->Dk:Lcom/smartisanos/launcher/a/b/j;

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 28
    invoke-virtual {p0}, Lcom/smartisanos/launcher/a/b/i;->ld()V

    :cond_8
    return-void
.end method

.method private y(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 1

    .line 2
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/V;->w(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/n;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/V;->oK:Lcom/smartisanos/smengine/n;

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->oK:Lcom/smartisanos/smengine/n;

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method private z(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v0, p0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v1, p0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v2, p0, Lcom/smartisanos/smengine/a/k;->z:F

    iget p0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public Am()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/V;->hH:I

    iget p0, p0, Lcom/smartisanos/launcher/view/V;->bK:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Ao()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Bo()V

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/view/Ec;

    const-string v1, "settingview"

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/Ec;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Ec;->create()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 5
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->b(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public Bb(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->FK:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->FK:Lcom/smartisanos/smengine/g;

    .line 4
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->FK:Lcom/smartisanos/smengine/g;

    .line 5
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/k;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->FJ:Lcom/smartisanos/launcher/view/ib;

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/ib;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 7
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/k;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->GJ:Lcom/smartisanos/launcher/view/ib;

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/ib;->getColor(Lcom/smartisanos/smengine/a/k;)V

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 9
    new-instance v3, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v3, v2, v2, v2, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 10
    new-instance v4, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v4, v2, v2, v2, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    move-object v5, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne p1, v3, :cond_2

    .line 11
    new-instance v3, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v3, v2, v2, v2, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 12
    new-instance v5, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v5, v4, v4, v4, v4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance v3, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v3, v4, v4, v4, v4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 14
    new-instance v5, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v5, v4, v4, v4, v4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 15
    :goto_0
    new-instance v4, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v4}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    const/16 v6, 0xe

    const v7, 0x3e99999a    # 0.3f

    .line 16
    invoke-virtual {v4, v0, v3, v6, v7}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->FJ:Lcom/smartisanos/launcher/view/ib;

    invoke-static {v0, v4}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 18
    new-instance v3, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v3}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 19
    invoke-virtual {v3, v1, v5, v6, v7}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 20
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->GJ:Lcom/smartisanos/launcher/view/ib;

    invoke-static {v1, v3}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    .line 21
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->FK:Lcom/smartisanos/smengine/g;

    new-instance v4, Lcom/smartisanos/launcher/view/D;

    invoke-direct {v4, p0, p1}, Lcom/smartisanos/launcher/view/D;-><init>(Lcom/smartisanos/launcher/view/V;I)V

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 22
    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->FK:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1, v2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 23
    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->FK:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1, v2, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 24
    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->FK:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1, v7}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 25
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->FK:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method public Bi()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Bi()V

    .line 5
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->JJ:Lcom/smartisanos/launcher/view/Z;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Z;->Bi()V

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Ec;->Bi()V

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Sc;->Bi()V

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Li()V

    .line 13
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->ep()V

    return-void
.end method

.method public Bo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    :cond_0
    return-void
.end method

.method public Cb(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/a/g;->hb(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Co()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/smartisanos/launcher/view/V;->hH:I

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/V;->getCellLocation(I)[Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 4
    aget-object v4, v1, v2

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v5, v1, v2

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v6, v1, v2

    iget v6, v6, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 5
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Nm()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public Db(I)Lcom/smartisanos/launcher/view/a/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    if-gez p1, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    if-nez v0, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->zl()I

    move-result v2

    if-ne v2, p1, :cond_2

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_5
    :goto_2
    return-object v1
.end method

.method public Dl()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/V;->hH:I

    return p0
.end method

.method public Do()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ec;->aq()V

    :cond_1
    :goto_0
    return-void
.end method

.method public Eb(I)[Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/view/V;II)[Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public Eo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->sK:Lcom/smartisanos/smengine/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 3
    iput-object v1, p0, Lcom/smartisanos/launcher/view/V;->sK:Lcom/smartisanos/smengine/g;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->tK:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 6
    iput-object v1, p0, Lcom/smartisanos/launcher/view/V;->tK:Lcom/smartisanos/smengine/g;

    :cond_1
    return-void
.end method

.method public Fb(I)Lcom/smartisanos/smengine/i;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/view/V;I)Lcom/smartisanos/smengine/i;

    move-result-object p0

    return-object p0
.end method

.method public Fo()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    return-object p0
.end method

.method public Gb(I)[Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/view/x;->b(Lcom/smartisanos/launcher/view/V;I)[Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public Go()[Lcom/smartisanos/launcher/view/a/g;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-array v1, v1, [Lcom/smartisanos/launcher/view/a/g;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->EK:Ljava/util/Comparator;

    invoke-static {v1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public Hb(I)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/view/x;->c(Lcom/smartisanos/launcher/view/V;I)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public Ho()Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method public Ib(I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->zo()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    sget v1, Lcom/smartisanos/launcher/ob;->confirm_sort_by_usage_dialog_title_long_press:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/smartisanos/launcher/ob;->confirm_sort_by_color_dialog_title_long_press:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/smartisanos/launcher/ob;->confirm_sort_by_install_dialog_title_long_press:I

    const/4 v3, 0x2

    aput v1, v0, v3

    sget v1, Lcom/smartisanos/launcher/ob;->confirm_sort_by_category_dialog_title_long_press:I

    const/4 v4, 0x3

    aput v1, v0, v4

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Tl()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/nb;->ua(I)Lcom/smartisanos/launcher/view/kb;

    move-result-object v1

    .line 4
    aget v0, v0, p1

    .line 5
    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v4

    const-string v5, "sort_bubble_texture"

    .line 7
    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v6

    if-nez v6, :cond_0

    .line 9
    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->oa(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 10
    new-instance v6, Lcom/smartisanos/smengine/Da;

    invoke-direct {v6, v0}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 11
    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 12
    invoke-virtual {v6, v2}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v6}, Lcom/smartisanos/smengine/Da;->getWidth()F

    move-result v0

    float-to-int v4, v0

    .line 16
    invoke-virtual {v6}, Lcom/smartisanos/smengine/Da;->getHeight()F

    move-result v0

    float-to-int v0, v0

    .line 17
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_rect"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    int-to-float v4, v4

    const v7, 0x3f733333    # 0.95f

    mul-float/2addr v4, v7

    int-to-float v0, v0

    mul-float/2addr v0, v7

    const/4 v7, 0x0

    invoke-static {v6, v4, v0, v7, v2}, Lcom/smartisanos/smengine/F;->c(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    const-string v4, "TextureModularColorMaterial"

    .line 18
    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v4

    .line 19
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 20
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    .line 21
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v8, -0x40000000    # -2.0f

    .line 22
    invoke-virtual {v4, v6, v8}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 23
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 24
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 25
    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 27
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 28
    invoke-virtual {v0, v7, v7, v7, v7}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 29
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    aget-object p1, v2, p1

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 30
    iget v2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v2, v3, p1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 31
    iget p1, v1, Lcom/smartisanos/launcher/view/kb;->nw:I

    add-int/lit8 p1, p1, 0x32

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 32
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 33
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 34
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->ep()V

    .line 35
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->XJ:Lcom/smartisanos/smengine/F;

    return-void
.end method

.method public Io()Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->DJ:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method public Jb(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/V;->vK:I

    return-void
.end method

.method public Jo()Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method public Kb(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/V;->uK:I

    return-void
.end method

.method public Ko()Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->jK:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method public Li()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x0

    const-string v2, "dock_back.png"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v4, :cond_0

    const-string v0, "TwoTexDifferentTexcoordMaterial"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 4
    iget-object v4, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    const-string v4, "t_blur_background"

    invoke-virtual {v0, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->ip()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/I;

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    const/4 v4, 0x3

    .line 11
    invoke-virtual {v0, v4, v1}, Lcom/smartisanos/smengine/y;->c(I[F)V

    const-string v0, "TextureModularColorMaterial"

    .line 12
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 13
    iget-object v4, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 17
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->LJ:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->LJ:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 20
    iput-object v1, p0, Lcom/smartisanos/launcher/view/V;->LJ:Lcom/smartisanos/smengine/SceneNode;

    .line 21
    :cond_2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "target/--/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {v2, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v1

    .line 25
    invoke-static {v2, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 26
    invoke-static {v2, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {v2, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->cb(Ljava/lang/String;)V

    .line 30
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    return-void
.end method

.method public Lm()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Bi()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Lo()Lcom/smartisanos/smengine/i;
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/V;->hH:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/V;->Fb(I)Lcom/smartisanos/smengine/i;

    move-result-object p0

    return-object p0
.end method

.method public Mo()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public Na(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/g;->Na(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public No()Lcom/smartisanos/launcher/view/Z;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->JJ:Lcom/smartisanos/launcher/view/Z;

    return-object p0
.end method

.method public Oo()Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public Po()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/V;->vK:I

    return p0
.end method

.method public Qo()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/V;->uK:I

    return p0
.end method

.method public Ra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    .line 7
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    .line 8
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public Ro()Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->iK:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method public So()Lcom/smartisanos/launcher/view/Ec;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    return-object p0
.end method

.method public Tl()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/V;->jH:I

    return p0
.end method

.method public To()Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->b(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public Uh()Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Go()[Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 3
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    instance-of v4, v3, Lcom/smartisanos/launcher/view/a/ka;

    if-eqz v4, :cond_3

    .line 6
    check-cast v3, Lcom/smartisanos/launcher/view/a/ka;

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public Uo()Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/x;->c(Lcom/smartisanos/launcher/view/V;I)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/x;->c(Lcom/smartisanos/launcher/view/V;I)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public Vg()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Am()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Vg()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Vo()Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->c(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public Wo()[Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    array-length v0, v0

    .line 2
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/x;->d(Lcom/smartisanos/launcher/view/V;I)[Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public Xo()Lcom/smartisanos/launcher/view/Sc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    return-object p0
.end method

.method public Ya(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/view/a/g;->Ya(I)V

    .line 4
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v0

    .line 6
    :goto_1
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v4

    goto :goto_2

    :cond_1
    move v4, v0

    .line 7
    :goto_2
    invoke-static {v3, v4}, Lcom/smartisanos/launcher/view/b/M;->w(II)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v3, p1}, Lcom/smartisanos/launcher/view/a/g;->o(Ljava/lang/String;I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public Yo()Lcom/smartisanos/smengine/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->mK:Lcom/smartisanos/launcher/view/gb;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/gb;->Hp()Lcom/smartisanos/smengine/g;

    move-result-object v0

    .line 2
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/V;->a(FLcom/smartisanos/smengine/g;)V

    :cond_0
    return-object v0
.end method

.method public Zm()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Zm()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Zo()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/ua;->c(Landroid/content/ContentResolver;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/V;->cK:Z

    .line 4
    invoke-static {v0}, Lcom/smartisanos/launcher/ua;->d(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/V;->dK:Z

    return-void
.end method

.method public _o()Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->mK:Lcom/smartisanos/launcher/view/gb;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/gb;->_o()Lcom/smartisanos/smengine/g;

    move-result-object p0

    return-object p0
.end method

.method public a(IZZ)Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/view/V;IZZI)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/smartisanos/launcher/view/DockView$Component;Z)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 42
    invoke-static {p0, p1, p2}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/launcher/view/DockView$Component;Z)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public a(ZF)Lcom/smartisanos/smengine/g;
    .locals 17

    move-object/from16 v0, p0

    if-eqz p1, :cond_13

    .line 97
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    const-string v2, ""

    .line 98
    sput-object v2, Lcom/smartisanos/smengine/Da;->sT:Ljava/lang/String;

    .line 99
    iget v3, v0, Lcom/smartisanos/launcher/view/V;->hH:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    .line 100
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 101
    iget-object v6, v0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v6

    instance-of v6, v6, Lcom/smartisanos/smengine/mymaterial/I;

    .line 102
    sget v7, Lcom/smartisanos/launcher/data/Constants;->sIconBlendColor:F

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    .line 103
    invoke-virtual {v0, v8}, Lcom/smartisanos/launcher/view/V;->rb(Z)V

    :cond_0
    if-eqz v5, :cond_1

    .line 104
    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    :cond_1
    const/4 v9, 0x1

    .line 105
    iput-boolean v9, v0, Lcom/smartisanos/launcher/view/V;->AK:Z

    .line 106
    iget-object v10, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    new-instance v11, Lcom/smartisanos/launcher/view/V;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_origin"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget v13, v0, Lcom/smartisanos/launcher/view/V;->bK:I

    iget v14, v0, Lcom/smartisanos/launcher/view/V;->gH:I

    invoke-direct {v11, v12, v13, v14}, Lcom/smartisanos/launcher/view/V;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v8

    .line 107
    iget-object v10, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/V;->create()V

    .line 108
    iget-object v10, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v11, v10, v8

    iget-object v11, v11, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    if-eqz v11, :cond_2

    .line 109
    aget-object v10, v10, v8

    iget-object v10, v10, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    invoke-virtual {v10, v8}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 110
    :cond_2
    iget-object v10, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v11, v10, v8

    iget-object v11, v11, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    if-eqz v11, :cond_3

    .line 111
    aget-object v10, v10, v8

    iget-object v10, v10, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    invoke-virtual {v10, v8}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 112
    :cond_3
    iget-object v10, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 113
    iget-object v10, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_4
    if-eqz v6, :cond_5

    .line 114
    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 115
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/theme/t;->Vf()Lcom/smartisanos/launcher/theme/v;

    move-result-object v10

    invoke-static {v10}, Lcom/smartisanos/launcher/data/Constants;->getIconBlendColor(Lcom/smartisanos/launcher/theme/v;)F

    move-result v10

    sput v10, Lcom/smartisanos/launcher/data/Constants;->sIconBlendColor:F

    const-string v10, "target/--/"

    .line 116
    sput-object v10, Lcom/smartisanos/smengine/Da;->sT:Ljava/lang/String;

    .line 117
    iget-object v11, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    new-instance v12, Lcom/smartisanos/launcher/view/V;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_target"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/smartisanos/launcher/view/Mc;->zO:Landroid/graphics/Paint;

    iget v15, v0, Lcom/smartisanos/launcher/view/V;->bK:I

    iget v8, v0, Lcom/smartisanos/launcher/view/V;->gH:I

    invoke-direct {v12, v13, v14, v15, v8}, Lcom/smartisanos/launcher/view/V;-><init>(Ljava/lang/String;Landroid/graphics/Paint;II)V

    aput-object v12, v11, v9

    .line 118
    iget-object v8, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/V;->create()V

    const/16 v8, -0x2d

    .line 119
    iget-object v11, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v11, v11, v9

    invoke-virtual {v11, v8}, Lcom/smartisanos/launcher/view/V;->Cb(I)V

    .line 120
    iget-object v11, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "dock_back.png"

    .line 121
    invoke-static {v13, v9}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 122
    invoke-virtual {v11, v12}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 123
    iget-object v11, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v12, v11, v9

    iget-object v12, v12, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    if-eqz v12, :cond_6

    .line 124
    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    :cond_6
    const/4 v12, 0x0

    .line 125
    :goto_0
    iget-object v11, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v14, v11, v9

    iget-object v14, v14, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    if-eqz v14, :cond_7

    .line 126
    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    invoke-virtual {v11, v12}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 127
    :cond_7
    iget-object v11, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v11, v11, v9

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result v11

    if-lez v11, :cond_9

    const/4 v11, 0x0

    .line 128
    :goto_1
    iget-object v12, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v12, v12, v9

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result v12

    if-ge v11, v12, :cond_9

    .line 129
    iget-object v12, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v12, v12, v9

    invoke-virtual {v12, v11}, Lcom/smartisanos/launcher/view/V;->Db(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 130
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/smartisanos/launcher/data/ItemInfo;->Ne()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 131
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v15

    invoke-virtual {v15}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v15

    .line 132
    invoke-virtual {v15, v14}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v15

    if-eqz v15, :cond_8

    const/4 v15, 0x0

    .line 133
    invoke-virtual {v12, v15}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v12

    if-eqz v12, :cond_8

    # The target Dock already composed a foreground for its own icon bounds.
    # Keep that raster when present instead of replacing it with the page-sized snapshot.
    invoke-virtual {v12, v15}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;
    move-result-object v15
    if-eqz v15, :dock_legacy_theme_texture
    const-string v8, ":STATIC_APPLICATION_COMPOSER:"
    invoke-virtual {v15, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v8
    if-eqz v8, :dock_legacy_theme_texture
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;
    move-result-object v8
    invoke-virtual {v8}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;
    move-result-object v8
    invoke-virtual {v8, v15}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;
    move-result-object v8
    if-nez v8, :cond_8

    :dock_legacy_theme_texture
    invoke-virtual {v12, v14}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 134
    :cond_9
    new-instance v11, Lcom/smartisanos/smengine/SceneNode;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_rotate90"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 135
    iget-object v12, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v12, v12, v9

    invoke-virtual {v11, v12}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    const v12, -0x4036f025

    .line 136
    new-instance v14, Lcom/smartisanos/smengine/a/j;

    const/high16 v15, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v14, v15, v9, v9}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v11, v12, v14}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    neg-float v12, v4

    .line 137
    invoke-virtual {v11, v9, v4, v12}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 138
    iget-object v4, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    new-instance v14, Lcom/smartisanos/launcher/view/V;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_next"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v15, Lcom/smartisanos/launcher/view/Mc;->zO:Landroid/graphics/Paint;

    iget v8, v0, Lcom/smartisanos/launcher/view/V;->bK:I

    move/from16 v16, v7

    iget v7, v0, Lcom/smartisanos/launcher/view/V;->gH:I

    invoke-direct {v14, v9, v15, v8, v7}, Lcom/smartisanos/launcher/view/V;-><init>(Ljava/lang/String;Landroid/graphics/Paint;II)V

    const/4 v7, 0x2

    aput-object v14, v4, v7

    .line 139
    iget-object v4, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/V;->create()V

    const/4 v4, 0x0

    .line 140
    iput-boolean v4, v0, Lcom/smartisanos/launcher/view/V;->AK:Z

    .line 141
    iget-object v4, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result v4

    if-lez v4, :cond_b

    const/4 v4, 0x0

    .line 142
    :goto_2
    iget-object v8, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/V;->Mo()I

    move-result v8

    if-ge v4, v8, :cond_b

    .line 143
    iget-object v8, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v8, v8, v7

    invoke-virtual {v8, v4}, Lcom/smartisanos/launcher/view/V;->Db(I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v8

    if-eqz v8, :cond_a

    const/4 v9, 0x0

    .line 144
    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 145
    :cond_b
    iget-object v4, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v4, v4, v7

    const/16 v8, -0x2d

    invoke-virtual {v4, v8}, Lcom/smartisanos/launcher/view/V;->Cb(I)V

    .line 146
    iget-object v4, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    .line 147
    invoke-static {v13, v9}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 148
    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 149
    iget-object v4, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v8, v4, v7

    iget-object v8, v8, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    if-eqz v8, :cond_c

    .line 150
    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_3

    :cond_c
    const/4 v8, 0x0

    .line 151
    :goto_3
    iget-object v4, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v9, v4, v7

    iget-object v9, v9, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    if-eqz v9, :cond_d

    .line 152
    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_d
    move v4, v8

    .line 153
    :goto_4
    iget-object v9, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    array-length v10, v9

    if-ge v4, v10, :cond_f

    .line 154
    aget-object v9, v9, v4

    if-eqz v9, :cond_e

    .line 155
    invoke-direct {v9, v8}, Lcom/smartisanos/launcher/view/V;->pc(Z)V

    const/4 v8, 0x1

    .line 156
    invoke-direct {v9, v8}, Lcom/smartisanos/launcher/view/V;->qc(Z)V

    :cond_e
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x0

    goto :goto_4

    .line 157
    :cond_f
    sput-object v2, Lcom/smartisanos/smengine/Da;->sT:Ljava/lang/String;

    .line 158
    new-instance v2, Lcom/smartisanos/smengine/SceneNode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_rotate180"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 159
    iget-object v4, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v4, v4, v7

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    const v4, -0x3fb6f025

    .line 160
    new-instance v8, Lcom/smartisanos/smengine/a/j;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10, v10}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v2, v4, v8}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    neg-float v3, v3

    .line 161
    invoke-virtual {v2, v10, v10, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 162
    new-instance v3, Lcom/smartisanos/smengine/SceneNode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_rotateParent"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/smartisanos/launcher/view/V;->LJ:Lcom/smartisanos/smengine/SceneNode;

    .line 163
    iget-object v3, v0, Lcom/smartisanos/launcher/view/V;->LJ:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v3, v11}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 164
    iget-object v3, v0, Lcom/smartisanos/launcher/view/V;->LJ:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 165
    iget-object v2, v0, Lcom/smartisanos/launcher/view/V;->LJ:Lcom/smartisanos/smengine/SceneNode;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 166
    iget-object v2, v0, Lcom/smartisanos/launcher/view/V;->LJ:Lcom/smartisanos/smengine/SceneNode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v12}, Lcom/smartisanos/smengine/SceneNode;->setScaleRotatePivot(FFF)V

    .line 167
    iget-object v2, v0, Lcom/smartisanos/launcher/view/V;->LJ:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 169
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/V;->LJ:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v2, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    move/from16 v4, p2

    .line 170
    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 171
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v8, v3, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/oa;->c(Lcom/smartisanos/smengine/a/j;)V

    const/16 v4, 0x1e

    .line 172
    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 173
    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    new-instance v8, Ljava/lang/Float;

    const v9, 0x3fc90fdb

    invoke-direct {v8, v9}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v2, v7, v4, v8}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 174
    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 175
    iget-object v2, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 176
    iget-object v2, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v2, v2, v7

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    if-eqz v5, :cond_10

    .line 177
    sput-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 178
    :cond_10
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_11

    .line 179
    iget-object v2, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 180
    iget-object v2, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/L;->Va(I)V

    :cond_11
    if-eqz v6, :cond_12

    .line 181
    iget-object v2, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 182
    iget-object v2, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 183
    iget-object v2, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 184
    iget-object v2, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/L;->Va(I)V

    goto :goto_5

    :cond_12
    const/4 v4, 0x0

    .line 185
    :goto_5
    sput v16, Lcom/smartisanos/launcher/data/Constants;->sIconBlendColor:F

    .line 186
    new-instance v2, Lcom/smartisanos/launcher/view/P;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/P;-><init>(Lcom/smartisanos/launcher/view/V;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 187
    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/V;->kb(Z)V

    .line 188
    iget-object v2, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v2, v2, v4

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/V;->kb(Z)V

    .line 189
    iget-object v2, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/V;->kb(Z)V

    .line 190
    iget-object v0, v0, Lcom/smartisanos/launcher/view/V;->sc:[Lcom/smartisanos/launcher/view/V;

    aget-object v0, v0, v7

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/V;->kb(Z)V

    return-object v1

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/i;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/view/V;ILcom/smartisanos/launcher/view/a/g;I)Lcom/smartisanos/smengine/i;

    move-result-object p0

    return-object p0
.end method

.method public a(FLcom/smartisanos/smengine/g;)V
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    .line 191
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 192
    aget-object v2, v2, v1

    .line 193
    new-instance v11, Lcom/smartisanos/smengine/oa;

    invoke-direct {v11, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 194
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->DK:Lcom/smartisanos/smengine/a/j;

    .line 195
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    const/16 v5, 0xf

    .line 196
    invoke-virtual {v11, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 197
    invoke-virtual {v11, v0}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const/4 v5, 0x1

    .line 198
    iget v6, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v4, Lcom/smartisanos/smengine/a/j;->z:F

    iget v9, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v3, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v3, v11

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v12

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const v3, 0x3e4ccccd    # 0.2f

    .line 199
    invoke-virtual {v11, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 200
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_0

    .line 201
    new-instance v3, Lcom/smartisanos/launcher/view/A;

    invoke-direct {v3, p0, v2}, Lcom/smartisanos/launcher/view/A;-><init>(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/F;)V

    invoke-virtual {v11, v3}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 202
    :cond_0
    invoke-virtual {p2, p1, v11}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(ILcom/smartisanos/smengine/i;)V
    .locals 0

    .line 90
    invoke-static {p0, p1, p2}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/view/V;ILcom/smartisanos/smengine/i;)V

    return-void
.end method

.method public a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->animation:Lcom/smartisanos/launcher/animations/U;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    return-void
.end method

.method public a(ZLcom/smartisanos/smengine/g;F)V
    .locals 10

    .line 213
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->FJ:Lcom/smartisanos/launcher/view/ib;

    if-nez v0, :cond_1

    return-void

    .line 215
    :cond_1
    new-instance v9, Lcom/smartisanos/smengine/oa;

    invoke-direct {v9, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    if-eqz p1, :cond_3

    .line 216
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->GK:Lcom/smartisanos/smengine/a/j;

    if-nez v0, :cond_2

    return-void

    .line 217
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->FJ:Lcom/smartisanos/launcher/view/ib;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    const/4 v2, 0x1

    .line 218
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v5, v1, Lcom/smartisanos/smengine/a/j;->z:F

    iget v6, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v0, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v1, v9

    invoke-virtual/range {v1 .. v8}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    goto :goto_0

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->FJ:Lcom/smartisanos/launcher/view/ib;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->GK:Lcom/smartisanos/smengine/a/j;

    .line 220
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/4 v2, 0x1

    .line 221
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->GK:Lcom/smartisanos/smengine/a/j;

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v5, v1, Lcom/smartisanos/smengine/a/j;->z:F

    iget v6, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v0, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v1, v9

    invoke-virtual/range {v1 .. v8}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 222
    :goto_0
    new-instance v0, Lcom/smartisanos/launcher/view/E;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/launcher/view/E;-><init>(Lcom/smartisanos/launcher/view/V;Z)V

    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    const/16 p0, 0xf

    .line 223
    invoke-virtual {v9, p0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 p0, 0x0

    .line 224
    invoke-virtual {v9, p0}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const p0, 0x3e4ccccd    # 0.2f

    .line 225
    invoke-virtual {v9, p0}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 226
    invoke-virtual {p2, p3, v9}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method public a(IZIZ)[Lcom/smartisanos/smengine/a/j;
    .locals 6

    .line 93
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    .line 94
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v4

    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    .line 95
    invoke-static/range {v0 .. v5}, Lcom/smartisanos/launcher/view/x;->a(IZIZLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/Constants$HandHabit;)[Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public a(ZIZ)[Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/smartisanos/launcher/view/V;->a(IZIZ)[Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public ap()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/V;->hH:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/V;->g(ZI)[Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v2

    .line 3
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 4
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 5
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 6
    aget-object v4, v0, v4

    .line 7
    iget v5, v4, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v4, Lcom/smartisanos/smengine/a/j;->y:F

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v3, v5, v6, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/V;->hH:I

    iget v1, p0, Lcom/smartisanos/launcher/view/V;->bK:I

    if-ne v0, v1, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->To()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Uo()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 11
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->hp()V

    .line 13
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public b(Lcom/smartisanos/launcher/data/ItemInfo;I)Lcom/smartisanos/launcher/view/a/g;
    .locals 3

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/view/a/ba;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/a/ba;-><init>()V

    const-string v1, "itemInfo"

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const-string v2, "PageCell"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    .line 8
    iget v1, p0, Lcom/smartisanos/launcher/view/V;->bK:I

    const-string v2, "singlePageMode"

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 9
    iget v1, p0, Lcom/smartisanos/launcher/view/V;->gH:I

    const-string v2, "multiPageMode"

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 10
    iget v1, p0, Lcom/smartisanos/launcher/view/V;->hH:I

    const-string v2, "KeyCurrentPageMode"

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 11
    new-instance v1, Lcom/smartisanos/launcher/view/a/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_fore"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/smartisanos/launcher/view/a/g;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/ba;)V

    .line 12
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->create()V

    .line 13
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 14
    invoke-virtual {v1, p2}, Lcom/smartisanos/launcher/view/a/g;->kb(I)V

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Lo()Lcom/smartisanos/smengine/i;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object p2

    iget p2, p2, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {p1}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object p1

    iget p1, p1, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v1, p2, v0, v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 17
    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-object v1

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "### item info is null, dock can not create cell !!!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(ZF)Lcom/smartisanos/smengine/oa;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 20
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 21
    iget v3, v0, Lcom/smartisanos/launcher/view/V;->bK:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 22
    invoke-static {v3}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v8

    .line 23
    invoke-static {v3}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v9

    const/4 v3, 0x1

    const-string v4, "dockgaussian"

    .line 24
    invoke-static {v4, v8, v9, v2, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v4

    iput-object v4, v0, Lcom/smartisanos/launcher/view/V;->DJ:Lcom/smartisanos/smengine/F;

    const-string v4, "TextureModularColorMaterial"

    .line 25
    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v4

    .line 26
    iget-object v5, v0, Lcom/smartisanos/launcher/view/V;->DJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 27
    iget-object v4, v0, Lcom/smartisanos/launcher/view/V;->DJ:Lcom/smartisanos/smengine/F;

    const-string v5, "t_blur_background"

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 28
    iget-object v4, v0, Lcom/smartisanos/launcher/view/V;->DJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 29
    iget-object v4, v0, Lcom/smartisanos/launcher/view/V;->DJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 30
    iget-object v4, v0, Lcom/smartisanos/launcher/view/V;->DJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40000000    # -2.0f

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 31
    iget-object v4, v0, Lcom/smartisanos/launcher/view/V;->DJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 32
    iget-object v4, v0, Lcom/smartisanos/launcher/view/V;->DJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 34
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/V;->Tl()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/nb;->ua(I)Lcom/smartisanos/launcher/view/kb;

    move-result-object v4

    .line 35
    iget-object v5, v0, Lcom/smartisanos/launcher/view/V;->DJ:Lcom/smartisanos/smengine/F;

    iget v4, v4, Lcom/smartisanos/launcher/view/kb;->cw:I

    sub-int/2addr v4, v3

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    const/4 v7, 0x0

    .line 36
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 37
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    const/16 v4, 0x8

    new-array v11, v4, [F

    .line 38
    iget v4, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v6, v3, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v10, v11

    invoke-static/range {v4 .. v10}, Lcom/smartisanos/launcher/e/s;->a(FFFZFF[F)V

    .line 39
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v3

    const-string v4, "dockgaussian_two.texture.cell"

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v3

    if-nez v3, :cond_1

    .line 40
    iget-object v3, v0, Lcom/smartisanos/launcher/view/V;->DJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v3

    .line 41
    iget-object v5, v0, Lcom/smartisanos/launcher/view/V;->DJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v3}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 42
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    :cond_1
    const/4 v4, 0x0

    .line 43
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/y;->Ua(I)[F

    move-result-object v5

    if-nez v5, :cond_2

    .line 44
    invoke-virtual {v3, v4, v11}, Lcom/smartisanos/smengine/y;->c(I[F)V

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v3, v4, v11}, Lcom/smartisanos/smengine/y;->d(I[F)V

    .line 46
    :cond_3
    :goto_0
    new-instance v3, Lcom/smartisanos/smengine/oa;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/V;->DJ:Lcom/smartisanos/smengine/F;

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    move/from16 v17, v2

    move/from16 v21, v4

    goto :goto_1

    :cond_4
    move/from16 v21, v2

    move/from16 v17, v4

    :goto_1
    const/4 v13, 0x3

    move-object v12, v3

    move/from16 v14, v17

    move/from16 v15, v17

    move/from16 v16, v17

    move/from16 v18, v21

    move/from16 v19, v21

    move/from16 v20, v21

    .line 47
    invoke-virtual/range {v12 .. v21}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    move/from16 v2, p2

    .line 48
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 49
    new-instance v2, Lcom/smartisanos/launcher/view/y;

    invoke-direct {v2, v0, v1}, Lcom/smartisanos/launcher/view/y;-><init>(Lcom/smartisanos/launcher/view/V;Z)V

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    return-object v3
.end method

.method public b(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V
    .locals 8

    .line 50
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->FJ:Lcom/smartisanos/launcher/view/ib;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/view/ib;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V

    .line 51
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->GJ:Lcom/smartisanos/launcher/view/ib;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/view/ib;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V

    return-void
.end method

.method public bp()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Lo()Lcom/smartisanos/smengine/i;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {v2}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v2}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {v2}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_1
    return-void
.end method

.method public c(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cp()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/smartisanos/launcher/view/V;->vK:I

    return-void
.end method

.method public create()V
    .locals 20

    move-object/from16 v7, p0

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/V;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "dockView init !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget v0, v7, Lcom/smartisanos/launcher/view/V;->bK:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    .line 4
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v2, "dockBackground"

    .line 5
    invoke-static {v2, v1, v3, v8, v9}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v2

    iput-object v2, v7, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    const-string v10, "TextureModularColorMaterial"

    .line 6
    invoke-static {v10}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v2

    .line 7
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez v4, :cond_1

    const-string v2, "TwoTexDifferentTexcoordMaterial"

    .line 8
    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v2

    .line 9
    :cond_1
    iget-object v4, v7, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 10
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const-string v4, "dock_back.png"

    const/4 v11, 0x0

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez v2, :cond_2

    .line 11
    iget-object v2, v7, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-static {v4, v9}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v11, v4}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 12
    iget-object v2, v7, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    const-string v4, "t_blur_background"

    invoke-virtual {v2, v9, v4}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 13
    iget-object v2, v7, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v2, v7, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-static {v4, v9}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 15
    :goto_0
    iget-object v2, v7, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v9}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 16
    iget-object v2, v7, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 17
    iget-object v2, v7, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    const/high16 v12, -0x40000000    # -2.0f

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v2, v13, v12}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 18
    iget-object v2, v7, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v9}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 19
    iget-object v2, v7, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    const/4 v14, 0x2

    invoke-virtual {v2, v14}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 20
    iget-object v2, v7, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v7, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 21
    iget-object v2, v7, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/V;->Tl()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/nb;->ua(I)Lcom/smartisanos/launcher/view/kb;

    move-result-object v15

    .line 23
    iget-object v2, v7, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    iget v4, v15, Lcom/smartisanos/launcher/view/kb;->cw:I

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 24
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_3

    .line 25
    iget-object v2, v7, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v11}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 26
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/V;->Ao()V

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v2

    if-nez v2, :cond_4

    move v6, v9

    goto :goto_1

    :cond_4
    move v6, v2

    .line 28
    :goto_1
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_6

    .line 29
    iget v1, v7, Lcom/smartisanos/launcher/view/V;->gH:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 30
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v2, v2

    iget v4, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    sub-float/2addr v2, v4

    iget v4, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_left:F

    sub-float/2addr v2, v4

    .line 31
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->isMeetingMode()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_bottom_meeting:F

    goto :goto_2

    :cond_5
    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_bottom:F

    .line 32
    :goto_2
    sget v4, Lcom/smartisanos/launcher/data/Constants;->LAUNCHPAD_DOCK_HEIGHT:I

    int-to-float v5, v4

    sub-float/2addr v1, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    int-to-float v4, v4

    add-float/2addr v1, v4

    move v5, v1

    goto :goto_3

    :cond_6
    move v2, v1

    move v5, v8

    .line 33
    :goto_3
    new-instance v4, Lcom/smartisanos/launcher/view/Z;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dot_width:F

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dot_height:F

    const-string v16, "DotView"

    move/from16 v17, v0

    move-object v0, v4

    move/from16 v18, v1

    move-object/from16 v1, v16

    move-object v14, v4

    move/from16 v4, v18

    move/from16 v19, v5

    move/from16 v5, v17

    move v12, v6

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/launcher/view/Z;-><init>(Ljava/lang/String;FFFFLcom/smartisanos/launcher/view/V;)V

    iput-object v14, v7, Lcom/smartisanos/launcher/view/V;->JJ:Lcom/smartisanos/launcher/view/Z;

    .line 34
    iget-object v0, v7, Lcom/smartisanos/launcher/view/V;->JJ:Lcom/smartisanos/launcher/view/Z;

    invoke-virtual {v0, v12, v11}, Lcom/smartisanos/launcher/view/Z;->create(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "blendNodeFixGLBug"

    .line 35
    invoke-static {v1, v0, v0, v8, v9}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, v7, Lcom/smartisanos/launcher/view/V;->nK:Lcom/smartisanos/smengine/F;

    .line 36
    invoke-static {v10}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 37
    iget-object v1, v7, Lcom/smartisanos/launcher/view/V;->nK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 38
    iget-object v0, v7, Lcom/smartisanos/launcher/view/V;->nK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v8, v8, v8, v8}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 39
    iget-object v0, v7, Lcom/smartisanos/launcher/view/V;->nK:Lcom/smartisanos/smengine/F;

    const-string v1, "trans.png"

    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 40
    iget-object v0, v7, Lcom/smartisanos/launcher/view/V;->nK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 41
    iget-object v0, v7, Lcom/smartisanos/launcher/view/V;->nK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 42
    iget-object v0, v7, Lcom/smartisanos/launcher/view/V;->nK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {v0, v13, v1}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 43
    iget-object v0, v7, Lcom/smartisanos/launcher/view/V;->nK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 44
    iget-object v0, v7, Lcom/smartisanos/launcher/view/V;->nK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 45
    iget-object v0, v7, Lcom/smartisanos/launcher/view/V;->nK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/L;->Ga(Z)V

    .line 46
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_7

    .line 47
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 48
    invoke-static {v8, v8, v0}, Lcom/smartisanos/smengine/d/a;->a(FFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 49
    iget-object v1, v7, Lcom/smartisanos/launcher/view/V;->nK:Lcom/smartisanos/smengine/F;

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 50
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    iget-object v1, v7, Lcom/smartisanos/launcher/view/V;->nK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1, v11}, Lcom/smartisanos/smengine/SceneNode;->addChildAt(Lcom/smartisanos/smengine/SceneNode;I)I

    .line 51
    iget-object v0, v7, Lcom/smartisanos/launcher/view/V;->nK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto :goto_4

    .line 52
    :cond_7
    iget-object v0, v7, Lcom/smartisanos/launcher/view/V;->nK:Lcom/smartisanos/smengine/F;

    invoke-virtual {v7, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 53
    :goto_4
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_8

    .line 54
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    iget-object v1, v7, Lcom/smartisanos/launcher/view/V;->JJ:Lcom/smartisanos/launcher/view/Z;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 55
    iget-object v0, v7, Lcom/smartisanos/launcher/view/V;->JJ:Lcom/smartisanos/launcher/view/Z;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Z;->v(F)V

    .line 56
    new-instance v0, Lcom/smartisanos/launcher/view/F;

    invoke-direct {v0, v7}, Lcom/smartisanos/launcher/view/F;-><init>(Lcom/smartisanos/launcher/view/V;)V

    invoke-virtual {v7, v0}, Lcom/smartisanos/smengine/SceneNode;->setOnClickListener(Lcom/smartisanos/smengine/aa;)V

    goto :goto_5

    .line 57
    :cond_8
    iget-object v0, v7, Lcom/smartisanos/launcher/view/V;->JJ:Lcom/smartisanos/launcher/view/Z;

    invoke-virtual {v7, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 58
    :goto_5
    iget-object v0, v7, Lcom/smartisanos/launcher/view/V;->JJ:Lcom/smartisanos/launcher/view/Z;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Z;->kp()V

    .line 59
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Fh()Lcom/smartisanos/launcher/view/hc;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 60
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Fh()Lcom/smartisanos/launcher/view/hc;

    move-result-object v0

    iget v1, v15, Lcom/smartisanos/launcher/view/kb;->pw:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/hc;->setLayer(I)V

    .line 61
    :cond_9
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_a

    .line 62
    new-instance v0, Lcom/smartisanos/launcher/view/G;

    const/16 v1, 0x64

    invoke-direct {v0, v7, v1}, Lcom/smartisanos/launcher/view/G;-><init>(Lcom/smartisanos/launcher/view/V;I)V

    .line 63
    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 64
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/V;->my()V

    .line 65
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/V;->py()V

    .line 66
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/V;->oy()V

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/V;->ny()V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/V;->Co()V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/V;->Vg()V

    return-void
.end method

.method public d(Laurelienribon/tweenengine/h;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/X;->d(Laurelienribon/tweenengine/h;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/view/Ec;->f(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V

    return-void
.end method

.method public dispatchTouchEvent(Lcom/smartisanos/smengine/Fa;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Ns()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->Os()F

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/smartisanos/smengine/SceneNode;->isPointInBoundingVolume(FFF)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/V;->wK:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/Fa;->lc(I)V

    .line 6
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/V;->wK:Z

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Ec;->onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z

    .line 8
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/Fa;->lc(I)V

    return v2

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/V;->wK:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 10
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/Fa;->lc(I)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Ec;->onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z

    .line 12
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/Fa;->lc(I)V

    .line 13
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/V;->wK:Z

    .line 14
    :cond_2
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/V;->onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z

    return v1
.end method

.method public dp()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/V;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "resetPreCollideUpIndex !@!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/view/V;->uK:I

    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 2
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    instance-of p1, p1, Lcom/smartisanos/smengine/mymaterial/I;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/y;->yk()[F

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->ip()V

    :cond_0
    return-void
.end method

.method public e(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V
    .locals 12

    move-object v8, p0

    .line 2
    iget-object v0, v8, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/Ec;->iO:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v9, v8, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    if-eqz v9, :cond_1

    .line 4
    array-length v10, v9

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-ge v11, v10, :cond_1

    aget-object v7, v9, v11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v8, Lcom/smartisanos/launcher/view/V;->UJ:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/smartisanos/smengine/SceneNode;

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object v7, v8, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V

    .line 10
    iget-object v7, v8, Lcom/smartisanos/launcher/view/V;->aK:Lcom/smartisanos/smengine/F;

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V

    .line 11
    iget-object v7, v8, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V

    .line 12
    iget-object v7, v8, Lcom/smartisanos/launcher/view/V;->aK:Lcom/smartisanos/smengine/F;

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method

.method public ep()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->NJ:Lcom/smartisanos/smengine/F;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->RJ:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/V;->z(Lcom/smartisanos/smengine/SceneNode;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->OJ:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/V;->z(Lcom/smartisanos/smengine/SceneNode;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->SJ:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/V;->z(Lcom/smartisanos/smengine/SceneNode;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->PJ:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/V;->z(Lcom/smartisanos/smengine/SceneNode;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->TJ:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/V;->z(Lcom/smartisanos/smengine/SceneNode;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->MJ:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/V;->z(Lcom/smartisanos/smengine/SceneNode;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->QJ:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/V;->z(Lcom/smartisanos/smengine/SceneNode;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->YJ:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/V;->z(Lcom/smartisanos/smengine/SceneNode;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->ZJ:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/V;->z(Lcom/smartisanos/smengine/SceneNode;)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->_J:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/V;->z(Lcom/smartisanos/smengine/SceneNode;)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->aK:Lcom/smartisanos/smengine/F;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/V;->z(Lcom/smartisanos/smengine/SceneNode;)V

    .line 13
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ec;->ep()V

    return-void
.end method

.method public f(Lcom/smartisanos/smengine/g;)V
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 16
    aget-object v2, v2, v1

    .line 17
    new-instance v11, Lcom/smartisanos/smengine/oa;

    invoke-direct {v11, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 18
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/V;->DK:Lcom/smartisanos/smengine/a/j;

    .line 19
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/V;->DK:Lcom/smartisanos/smengine/a/j;

    iget v5, v4, Lcom/smartisanos/smengine/a/j;->x:F

    const v6, 0x3c23d70a    # 0.01f

    mul-float/2addr v5, v6

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v4, v6}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/16 v4, 0xf

    .line 20
    invoke-virtual {v11, v4}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 21
    invoke-virtual {v11, v0}, Lcom/smartisanos/smengine/oa;->ua(Z)V

    const/4 v4, 0x1

    .line 22
    iget-object v5, p0, Lcom/smartisanos/launcher/view/V;->DK:Lcom/smartisanos/smengine/a/j;

    iget v6, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v5, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v5, Lcom/smartisanos/smengine/a/j;->z:F

    iget v9, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v3, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v3, v11

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v12

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const v3, 0x3e4ccccd    # 0.2f

    .line 23
    invoke-virtual {v11, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 24
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_0

    .line 25
    new-instance v3, Lcom/smartisanos/launcher/view/z;

    invoke-direct {v3, p0, v2}, Lcom/smartisanos/launcher/view/z;-><init>(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/F;)V

    invoke-virtual {v11, v3}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    :cond_0
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p1, v2, v11}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Lcom/smartisanos/launcher/a/b/i;)Z
    .locals 3

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    if-eqz p1, :cond_3

    .line 3
    iget v0, p1, Lcom/smartisanos/launcher/a/b/i;->Mk:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput v2, p1, Lcom/smartisanos/launcher/a/b/i;->Mk:I

    .line 5
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/a/b/i;->Uk:Lcom/smartisanos/launcher/a/b/j;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/a/b/j;->pd()Lcom/smartisanos/launcher/a/b/j;

    move-result-object v0

    iput-object v0, p1, Lcom/smartisanos/launcher/a/b/i;->Dk:Lcom/smartisanos/launcher/a/b/j;

    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcom/smartisanos/launcher/a/b/i;->Uk:Lcom/smartisanos/launcher/a/b/j;

    .line 8
    :cond_1
    iget-object v0, p1, Lcom/smartisanos/launcher/a/b/i;->Dk:Lcom/smartisanos/launcher/a/b/j;

    if-eqz v0, :cond_2

    .line 9
    iget v0, p0, Lcom/smartisanos/launcher/view/V;->lK:I

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/view/V;->s(IZ)V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 12
    invoke-virtual {p1}, Lcom/smartisanos/launcher/a/b/i;->jd()V

    return v1

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mSortCancelButton error, bakData is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Ec;->Db(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public fp()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/V;->bK:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->wt()V

    .line 5
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 6
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 7
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    .line 8
    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float/2addr v2, v0

    const/16 v0, 0xf

    .line 9
    new-instance v3, Lcom/smartisanos/smengine/a/k;

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-virtual {v1, v0, v3}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public g(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 8

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_6

    const-string v1, ""

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    move v2, v1

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 6
    iget-object v3, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    .line 7
    :cond_1
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p2, :cond_4

    .line 8
    check-cast v3, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 9
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/FolderInfo;->lf()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_5

    .line 10
    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/data/FolderInfo;->ia(I)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    .line 11
    iget-object v7, v6, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 13
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 14
    :cond_4
    iget-object v4, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 15
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    return-object v0
.end method

.method public g(Lcom/smartisanos/smengine/g;F)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance p1, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object p1, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->iZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    return-void
.end method

.method public g(ZI)[Lcom/smartisanos/smengine/a/j;
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/launcher/view/V;->a(ZIZ)[Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public getCellLocation(I)[Lcom/smartisanos/smengine/a/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Raa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/TrashView$STATUS;)Z

    move-result v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/launcher/view/V;->g(ZI)[Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public getMultiPageMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/V;->gH:I

    return p0
.end method

.method public getSinglePageMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/V;->bK:I

    return p0
.end method

.method public gp()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/a/g;->kb(I)V

    return-void

    .line 3
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-array v3, v0, [F

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_2

    .line 5
    iget-object v5, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v5, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->x:F

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v3}, Ljava/util/Arrays;->sort([F)V

    .line 8
    :goto_1
    array-length p0, v3

    if-ge v2, p0, :cond_4

    .line 9
    aget p0, v3, v2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/a/g;

    if-eqz p0, :cond_3

    .line 10
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/a/g;->kb(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public h(Lcom/smartisanos/smengine/a/j;)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->mK:Lcom/smartisanos/launcher/view/gb;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hp()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/V;->hH:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/smartisanos/launcher/view/V;->a(IZZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public ip()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3
    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/I;

    if-eqz v0, :cond_5

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->wt()V

    const/4 v4, 0x0

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    instance-of v1, v0, Lcom/smartisanos/launcher/view/V;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    instance-of v1, v0, Lcom/smartisanos/launcher/view/V;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->Ty:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->kK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->kK:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->Ty:Lcom/smartisanos/smengine/a/j;

    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v5, v1, Lcom/smartisanos/smengine/a/j;->z:F

    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    .line 15
    invoke-virtual {v1}, Lcom/smartisanos/smengine/F;->getWidth()F

    move-result v6

    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/F;->getHeight()F

    move-result v7

    iget-object v8, p0, Lcom/smartisanos/launcher/view/V;->Oy:[F

    move v1, v2

    move v2, v3

    move v3, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    .line 16
    invoke-static/range {v1 .. v7}, Lcom/smartisanos/launcher/e/s;->a(FFFZFF[F)V

    const/4 v1, 0x3

    .line 17
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/y;->Ua(I)[F

    move-result-object v2

    if-nez v2, :cond_4

    .line 18
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->Oy:[F

    invoke-virtual {v0, v1, p0}, Lcom/smartisanos/smengine/y;->c(I[F)V

    goto :goto_1

    .line 19
    :cond_4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->Oy:[F

    invoke-virtual {v0, v1, p0}, Lcom/smartisanos/smengine/y;->d(I[F)V

    :cond_5
    :goto_1
    return-void
.end method

.method public kb(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->nK:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method public l(IZ)Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 15
    invoke-static {p0, p1, p2, v0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/view/V;IZI)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0
.end method

.method public lb(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/V;->hH:I

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 4
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/g;->lb(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public mb(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/view/V;->jH:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/view/V;->jH:I

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->updateLayer()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Lcom/smartisanos/smengine/va;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 2
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/V;->BK:Z

    .line 3
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/V;->gK:Z

    .line 4
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/V;->hK:Z

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/V;->mStartX:F

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/V;->Dd:F

    .line 7
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/launcher/view/V;->mStartX:F

    iget v3, p0, Lcom/smartisanos/launcher/view/V;->Dd:F

    invoke-virtual {p0, v0, v3}, Lcom/smartisanos/launcher/view/V;->q(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 8
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/V;->Dd:F

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v4, v3

    const/high16 v5, 0x41200000    # 10.0f

    sub-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 9
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/V;->hK:Z

    return v2

    :cond_1
    int-to-float v0, v3

    .line 10
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/smartisanos/launcher/view/V;->bK:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_ignore_touch_height:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    .line 11
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    .line 12
    sget-object v0, Lcom/smartisanos/launcher/view/V;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nothing to do, ev.getY() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", dock_ignore_touch_height = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/launcher/view/V;->bK:I

    .line 13
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_ignore_touch_height:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    return v1

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 16
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/V;->gK:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/V;->hK:Z

    if-eqz v0, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v0

    .line 18
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result p1

    .line 19
    iget v3, p0, Lcom/smartisanos/launcher/view/V;->mStartX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 20
    iget v3, p0, Lcom/smartisanos/launcher/view/V;->Dd:F

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 21
    iget p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchSlop:I

    int-to-float p0, p0

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr p0, v3

    cmpl-float p0, v0, p0

    if-lez p0, :cond_5

    const p0, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, p0

    cmpl-float p0, v0, p1

    if-lez p0, :cond_5

    move p0, v1

    goto :goto_0

    :cond_5
    move p0, v2

    :goto_0
    if-eqz p0, :cond_6

    return v1

    :cond_6
    :goto_1
    return v2
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/V;->gK:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getType()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz p0, :cond_4

    .line 4
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ha;->b(Lcom/smartisanos/smengine/Fa;)V

    return v3

    .line 5
    :pswitch_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->xK:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/smartisanos/launcher/view/V;->ly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iput-object v2, p0, Lcom/smartisanos/launcher/view/V;->xK:Lcom/smartisanos/launcher/view/a/g;

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleListener:Lcom/smartisanos/smengine/ea;

    if-eqz p0, :cond_4

    .line 8
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ea;->c(Lcom/smartisanos/smengine/Fa;)V

    return v3

    .line 9
    :pswitch_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->xK:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/smartisanos/launcher/view/V;->ly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iput-object v2, p0, Lcom/smartisanos/launcher/view/V;->xK:Lcom/smartisanos/launcher/view/a/g;

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleListener:Lcom/smartisanos/smengine/ea;

    if-eqz p0, :cond_4

    .line 12
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ea;->e(Lcom/smartisanos/smengine/Fa;)V

    return v3

    .line 13
    :pswitch_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->xK:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/smartisanos/launcher/view/V;->ly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iput-object v2, p0, Lcom/smartisanos/launcher/view/V;->xK:Lcom/smartisanos/launcher/view/a/g;

    .line 15
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleListener:Lcom/smartisanos/smengine/ea;

    if-eqz p0, :cond_4

    .line 16
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ea;->a(Lcom/smartisanos/smengine/Fa;)V

    return v3

    .line 17
    :pswitch_5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getSize()F

    move-result v0

    sget v2, Lcom/smartisanos/launcher/data/Constants;->tap_threshold_percent:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    .line 18
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mSingleTapListener:Lcom/smartisanos/smengine/fa;

    if-eqz p0, :cond_4

    .line 19
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/fa;->g(Lcom/smartisanos/smengine/Fa;)V

    return v3

    .line 20
    :pswitch_6
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mLongPressListener:Lcom/smartisanos/smengine/Y;

    if-eqz p0, :cond_4

    .line 21
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/Y;->h(Lcom/smartisanos/smengine/Fa;)V

    return v3

    .line 22
    :pswitch_7
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz p0, :cond_4

    .line 23
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ha;->b(Lcom/smartisanos/smengine/Fa;)V

    return v3

    .line 24
    :pswitch_8
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz p0, :cond_4

    .line 25
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ha;->d(Lcom/smartisanos/smengine/Fa;)V

    return v3

    .line 26
    :pswitch_9
    iget-object p0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchListener:Lcom/smartisanos/smengine/ha;

    if-eqz p0, :cond_4

    .line 27
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/ha;->f(Lcom/smartisanos/smengine/Fa;)V

    return v3

    :cond_4
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/va;)Z
    .locals 6

    .line 28
    sget-boolean v0, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/V;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onTouchEvent"

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/V;->gK:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/V;->hK:Z

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 30
    :cond_1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/V;->BK:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 31
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v0

    .line 32
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getY()F

    move-result v2

    .line 33
    iget v3, p0, Lcom/smartisanos/launcher/view/V;->mStartX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 34
    iget v3, p0, Lcom/smartisanos/launcher/view/V;->Dd:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    .line 35
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Ha;->sp()Lcom/smartisanos/smengine/Ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ba;->getXVelocity()F

    move-result v0

    const/high16 v2, 0x44160000    # 600.0f

    cmpl-float v2, v0, v2

    const/4 v3, 0x0

    const v4, 0x8000

    if-lez v2, :cond_2

    .line 36
    sget v5, Lcom/smartisanos/launcher/data/Constants;->SLIDE_DOCK_ACTION_TYPE:I

    if-eqz v5, :cond_3

    :cond_2
    const/high16 v5, -0x3bea0000    # -600.0f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_5

    sget v5, Lcom/smartisanos/launcher/data/Constants;->SLIDE_DOCK_ACTION_TYPE:I

    if-eqz v5, :cond_5

    .line 37
    :cond_3
    iget v0, p0, Lcom/smartisanos/launcher/view/V;->hH:I

    iget v2, p0, Lcom/smartisanos/launcher/view/V;->gH:I

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 38
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/b/fa;->w(Lcom/smartisanos/launcher/view/b/M;)Z

    .line 39
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/V;->BK:Z

    .line 40
    :cond_4
    iget v0, p0, Lcom/smartisanos/launcher/view/V;->hH:I

    iget v2, p0, Lcom/smartisanos/launcher/view/V;->bK:I

    if-ne v0, v2, :cond_9

    .line 41
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Kr()V

    .line 42
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/V;->BK:Z

    goto :goto_0

    :cond_5
    if-gez v0, :cond_6

    .line 43
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SLIDE_DOCK_ACTION_TYPE:I

    if-eqz v0, :cond_7

    :cond_6
    if-lez v2, :cond_9

    sget v0, Lcom/smartisanos/launcher/data/Constants;->SLIDE_DOCK_ACTION_TYPE:I

    if-eqz v0, :cond_9

    .line 44
    :cond_7
    iget v0, p0, Lcom/smartisanos/launcher/view/V;->hH:I

    iget v2, p0, Lcom/smartisanos/launcher/view/V;->bK:I

    if-ne v0, v2, :cond_8

    .line 45
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/b/fa;->w(Lcom/smartisanos/launcher/view/b/M;)Z

    .line 46
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/V;->BK:Z

    .line 47
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/Da;->yc()V

    .line 48
    :cond_8
    iget v0, p0, Lcom/smartisanos/launcher/view/V;->hH:I

    iget v2, p0, Lcom/smartisanos/launcher/view/V;->gH:I

    if-ne v0, v2, :cond_9

    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 49
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Jr()V

    .line 50
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/V;->BK:Z

    .line 51
    :cond_9
    :goto_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_a

    .line 52
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->onTouchEvent(Lcom/smartisanos/smengine/va;)Z

    move-result p0

    return p0

    :cond_a
    return v1

    :cond_b
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public p(FF)Lcom/smartisanos/launcher/view/a/g;
    .locals 2

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/launcher/view/a/g;

    .line 5
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_1
    return-object p2
.end method

.method public q(FF)Z
    .locals 2

    .line 2
    sget-boolean p2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/smartisanos/launcher/view/V;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInSaraArea mOpenVoiceInput = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/V;->dK:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mOpenSlideTouchIgnore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/V;->cK:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-boolean p2, p0, Lcom/smartisanos/launcher/view/V;->dK:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/smartisanos/launcher/view/V;->cK:Z

    if-eqz p2, :cond_2

    .line 4
    sget p2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float p2, p2

    sub-float/2addr p2, p1

    .line 5
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/smartisanos/launcher/view/V;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInSaraArea deltaX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    const/high16 p1, 0x420c0000    # 35.0f

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_2

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/V;->gK:Z

    .line 7
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/V;->gK:Z

    return p0

    :cond_2
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/V;->gK:Z

    return p1
.end method

.method public rb(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "dock_back.png"

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    const-string p1, "TwoTexDifferentTexcoordMaterial"

    .line 4
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 7
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    const-string v0, "background.png"

    invoke-static {v0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    const-string v0, "t_blur_background"

    invoke-virtual {p1, v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->ip()V

    goto :goto_1

    :cond_3
    const-string p1, "TextureModularColorMaterial"

    .line 13
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p1

    .line 14
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/smartisanos/smengine/y;->c(I[F)V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 19
    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 20
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/L;->Va(I)V

    :goto_1
    return-void
.end method

.method public setColor(FFFF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 4
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/a/g;->setColor(FFFF)V

    .line 5
    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMultiPageMode(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/V;->gH:I

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 4
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/g;->setMultiPageMode(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t(J)Lcom/smartisanos/launcher/view/a/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    .line 7
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long p1, v1, p1

    if-nez p1, :cond_2

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->KJ:Lcom/smartisanos/launcher/view/Sc;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public tb(Z)V
    .locals 14

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->isMeetingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Kh()Lcom/smartisanos/smengine/a/k;

    move-result-object p1

    const/4 v1, 0x1

    .line 4
    iget v0, p1, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v2, v0

    iget v0, p1, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v3, v0

    iget v0, p1, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v4, v0

    iget p1, p1, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int v5, p1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/SceneNode;->setScissor(ZIIIIZ)V

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v7, p0

    .line 5
    invoke-virtual/range {v7 .. v13}, Lcom/smartisanos/smengine/SceneNode;->setScissor(ZIIIIZ)V

    :goto_0
    return-void
.end method

.method public ub(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->VJ:[Lcom/smartisanos/smengine/F;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public ui()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/Z;->ui()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->ep()V

    return-void
.end method

.method public updateLayer()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/SceneNode;->updateLayer()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Tl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->ua(I)Lcom/smartisanos/launcher/view/kb;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->CJ:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    .line 4
    iget v2, v0, Lcom/smartisanos/launcher/view/kb;->cw:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 5
    :cond_0
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->EJ:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_1

    .line 6
    iget v2, v0, Lcom/smartisanos/launcher/view/kb;->bw:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Fh()Lcom/smartisanos/launcher/view/hc;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Fh()Lcom/smartisanos/launcher/view/hc;

    move-result-object v1

    iget v0, v0, Lcom/smartisanos/launcher/view/kb;->pw:I

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/hc;->setLayer(I)V

    .line 9
    :cond_2
    iget v0, p0, Lcom/smartisanos/launcher/view/V;->jH:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    .line 12
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 13
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 14
    iget-object v2, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v2, :cond_5

    .line 15
    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->HJ:Lcom/smartisanos/launcher/view/Ec;

    if-eqz v0, :cond_7

    .line 17
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Ec;->updateLayer()V

    .line 18
    :cond_7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->JJ:Lcom/smartisanos/launcher/view/Z;

    if-eqz p0, :cond_8

    .line 19
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Z;->updateLayer()V

    :cond_8
    return-void
.end method

.method public v(Lcom/smartisanos/launcher/view/a/g;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public vb(Z)Lcom/smartisanos/smengine/g;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/V;->mK:Lcom/smartisanos/launcher/view/gb;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/gb;->Jp()Lcom/smartisanos/smengine/g;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/smartisanos/smengine/g;

    invoke-direct {p1}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 3
    :goto_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/V;->f(Lcom/smartisanos/smengine/g;)V

    :cond_1
    return-object p1
.end method

.method public w(Lcom/smartisanos/launcher/view/a/g;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "isExistOnDock cell is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public x(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->IJ:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public y(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/V;->jK:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method public z(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/V;->iK:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method public zo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->XJ:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/V;->XJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/V;->XJ:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    const-string p0, "sort_bubble_texture"

    .line 5
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
