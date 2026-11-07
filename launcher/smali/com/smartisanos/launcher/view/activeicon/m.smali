.class public Lcom/smartisanos/launcher/view/activeicon/m;
.super Lcom/smartisanos/launcher/view/activeicon/a;
.source "CalendarView.java"


# static fields
.field public static final PACKAGE_NAME:Ljava/lang/String;

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private AP:I

.field private BP:I

.field private CJ:Lcom/smartisanos/smengine/F;

.field private activeIconShadowNode:Lcom/smartisanos/smengine/F;

.field private CP:I

.field private EP:I

.field private FP:Z

.field private GP:I

.field private HP:J

.field private JP:Lcom/smartisanos/smengine/a/j;

.field private KP:Lcom/smartisanos/smengine/a/j;

.field private Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private tP:Lcom/smartisanos/smengine/F;

.field private uP:Lcom/smartisanos/smengine/SceneNode;

.field private vC:Lcom/smartisanos/smengine/g;

.field private vP:Lcom/smartisanos/smengine/F;

.field private wP:Lcom/smartisanos/smengine/SceneNode;

.field private xP:I

.field private yP:I

.field private zP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/activeicon/m;->log:Lcom/smartisanos/launcher/va;

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/data/T;->CALENDAR:Lcom/smartisanos/launcher/data/S;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    sput-object v0, Lcom/smartisanos/launcher/view/activeicon/m;->PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/activeicon/a;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/g;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->FP:Z

    .line 3
    iput p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->GP:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->HP:J

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object p1

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Tl()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object p1

    .line 6
    iget p1, p1, Lcom/smartisanos/launcher/view/jb;->Pv:I

    iput p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->xP:I

    .line 7
    iget p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->xP:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->yP:I

    .line 8
    iget p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->yP:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->zP:I

    .line 9
    iget p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->zP:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->AP:I

    .line 10
    iget p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->AP:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->BP:I

    .line 11
    iget p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->BP:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CP:I

    .line 12
    iget p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CP:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->EP:I

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result p1

    .line 14
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/activeicon/m;->Fz()I

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->GP:I

    .line 16
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/m;->Ez()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->HP:J

    return-void
.end method

.method private static Ad(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calendar/"

    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private Bz()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    neg-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    neg-float v3, v0

    div-float v4, v0, v2

    div-float/2addr v0, v2

    invoke-virtual {p0, v1, v3, v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method private Cz()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    const/4 v1, 0x1

    const-string v2, "calenderBg"

    const/4 v3, 0x0

    invoke-static {v2, v0, v0, v3, v1}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 2
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    const-string v2, "calendar/flip.png"

    invoke-static {v2}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->BP:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    return-void
.end method

.method private Dz()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    const/4 v1, 0x1

    const-string v2, "calenderBg"

    const/4 v3, 0x0

    invoke-static {v2, v0, v0, v3, v1}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 2
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    const-string v2, "calendar/ring.png"

    invoke-static {v2}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->yP:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    return-void
.end method

.method private Ez()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 3
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 4
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 5
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 6
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 7
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static Fz()I
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private static Gz()I
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private Hz()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->JP:Lcom/smartisanos/smengine/a/j;

    iget v3, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v3, v4, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    new-instance v2, Lcom/smartisanos/smengine/a/j;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->KP:Lcom/smartisanos/smengine/a/j;

    iget v5, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v5, v6, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    new-instance v2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v2, v3, v3, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_2
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vC:Lcom/smartisanos/smengine/g;

    return-void
.end method

.method private Iz()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/Sa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/view/activeicon/l;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/activeicon/l;-><init>(Lcom/smartisanos/launcher/view/activeicon/m;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0

    return-void
.end method

.method private Vg()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->zP:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/F;

    .line 4
    iget v3, p0, Lcom/smartisanos/launcher/view/activeicon/m;->AP:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/high16 v3, -0x40000000    # -2.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v1, v4, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    iget v6, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CP:I

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 12
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/F;

    .line 14
    iget v6, p0, Lcom/smartisanos/launcher/view/activeicon/m;->EP:I

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 25
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 26
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 27
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 32
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 33
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 35
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 36
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 37
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/activeicon/m;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vC:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method private a(ILcom/smartisanos/smengine/SceneNode;)V
    .locals 5

    .line 4
    invoke-static {p1}, Lcom/smartisanos/launcher/view/activeicon/m;->Ad(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lcom/smartisanos/smengine/SceneNode;->removeAllChildren()V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_day_w:F

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_day_h:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "dayRect"

    invoke-static {v4, v1, v0, v2, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 10
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 11
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 12
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {p1, v1, v4}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 13
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 14
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 15
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    :cond_0
    const-string p1, "TextureModularColorMaterial"

    .line 16
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 18
    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_day_offsety:F

    neg-float p1, p1

    iget p2, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_day_h:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    sub-float/2addr p1, p2

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    div-float/2addr p0, v1

    add-float/2addr p1, p0

    invoke-virtual {v0, v2, p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 20
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/activeicon/m;ILcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/activeicon/m;->a(ILcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/activeicon/m;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/m;->yc(Z)V

    return-void
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    return-object p0
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    return-object p0
.end method

.method static synthetic d(Lcom/smartisanos/launcher/view/activeicon/m;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->xP:I

    return p0
.end method

.method static synthetic e(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method static synthetic f(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method static synthetic g(Lcom/smartisanos/launcher/view/activeicon/m;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method static synthetic h(Lcom/smartisanos/launcher/view/activeicon/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/m;->Hz()V

    return-void
.end method

.method private jz()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    const/4 v1, 0x1

    const-string v2, "calenderBg"

    const/4 v3, 0x0

    invoke-static {v2, v0, v0, v3, v1}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 2
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    const-string v2, "calendar/bg.png"

    invoke-static {v2}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->xP:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    # The live calendar background is an independent SMEngine node, not the
    # cached ActiveIconView bitmap.  Attach a shadow-only sibling below it.
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->activeIconLiveShadowNodeSize(F)F

    move-result v1

    const-string v2, "calendar/bg.png"

    invoke-static {v2}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CALENDAR"

    invoke-static {v2, v0, v3}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->createActiveIconLiveShadowTexture(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_live_shadow_done

    const-string v3, "calendarLiveShadow"

    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-static {v3, v1, v1, v0, v4}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/m;->activeIconShadowNode:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    iget v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->xP:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    const-string v0, "CALENDAR"

    iget-object v3, p0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    invoke-static {v0, v3, v1, v2}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->logActiveIconLiveShadowNodeAttached(Ljava/lang/String;FFLjava/lang/String;)V

    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/m;->activeIconShadowNode:Lcom/smartisanos/smengine/F;

    invoke-static {v0, v4}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->logActiveIconLiveShadowNodeState(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_live_shadow_done

    return-void
.end method

.method static synthetic u()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/activeicon/m;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method private xc(Z)Lcom/smartisanos/smengine/g;
    .locals 33

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 2
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 3
    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 4
    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    iput-object v5, v0, Lcom/smartisanos/launcher/view/activeicon/m;->JP:Lcom/smartisanos/smengine/a/j;

    .line 7
    iget-object v5, v0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    iput-object v6, v0, Lcom/smartisanos/launcher/view/activeicon/m;->KP:Lcom/smartisanos/smengine/a/j;

    const v6, 0x3c8efa35

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-nez p1, :cond_0

    .line 9
    new-instance v11, Ljava/lang/Float;

    iget v12, v3, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-direct {v11, v12}, Ljava/lang/Float;-><init>(F)V

    .line 10
    new-instance v12, Ljava/lang/Float;

    iget v13, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v14, v0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_right_distance:F

    add-float/2addr v13, v14

    invoke-direct {v12, v13}, Ljava/lang/Float;-><init>(F)V

    .line 11
    new-instance v13, Ljava/lang/Float;

    iget v14, v3, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-direct {v13, v14}, Ljava/lang/Float;-><init>(F)V

    .line 12
    new-instance v14, Ljava/lang/Float;

    iget v15, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v7, v0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_down_distance:F

    sub-float/2addr v15, v7

    invoke-direct {v14, v15}, Ljava/lang/Float;-><init>(F)V

    .line 13
    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, v10}, Ljava/lang/Float;-><init>(F)V

    .line 14
    new-instance v15, Ljava/lang/Float;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_rotation_angenle:F

    mul-float/2addr v4, v6

    invoke-direct {v15, v4}, Ljava/lang/Float;-><init>(F)V

    .line 15
    new-instance v4, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v4, v9, v9, v9, v9}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 16
    new-instance v6, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v6, v10, v10, v10, v10}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    const v6, 0x3df5c28f    # 0.12f

    const v8, 0x3df5c28f    # 0.12f

    const v17, 0x3eb851ec    # 0.36f

    goto :goto_0

    .line 17
    :cond_0
    new-instance v12, Ljava/lang/Float;

    iget v4, v3, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-direct {v12, v4}, Ljava/lang/Float;-><init>(F)V

    .line 18
    new-instance v11, Ljava/lang/Float;

    iget v4, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v7, v0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_right_distance:F

    add-float/2addr v4, v7

    invoke-direct {v11, v4}, Ljava/lang/Float;-><init>(F)V

    .line 19
    new-instance v14, Ljava/lang/Float;

    iget v4, v3, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-direct {v14, v4}, Ljava/lang/Float;-><init>(F)V

    .line 20
    new-instance v13, Ljava/lang/Float;

    iget v4, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v7, v0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_down_distance:F

    sub-float/2addr v4, v7

    invoke-direct {v13, v4}, Ljava/lang/Float;-><init>(F)V

    .line 21
    new-instance v15, Ljava/lang/Float;

    invoke-direct {v15, v10}, Ljava/lang/Float;-><init>(F)V

    .line 22
    new-instance v7, Ljava/lang/Float;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_rotation_angenle:F

    mul-float/2addr v4, v6

    invoke-direct {v7, v4}, Ljava/lang/Float;-><init>(F)V

    .line 23
    new-instance v6, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v6, v9, v9, v9, v9}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 24
    new-instance v4, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v4, v10, v10, v10, v10}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move v6, v10

    move v8, v6

    move/from16 v17, v8

    .line 25
    :goto_0
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v5, v10, v10, v9}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 26
    iget-object v9, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v10

    move/from16 v20, v8

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v9, v10, v8, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 27
    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v3, v8, v5}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 28
    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    iget v8, v4, Lcom/smartisanos/smengine/a/k;->x:F

    iget v9, v4, Lcom/smartisanos/smengine/a/k;->y:F

    iget v10, v4, Lcom/smartisanos/smengine/a/k;->z:F

    move-object/from16 v21, v5

    iget v5, v4, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v3, v8, v9, v10, v5}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 29
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v8, 0x4

    invoke-virtual {v2, v8, v3, v5}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    const v3, 0x3f19999a    # 0.6f

    .line 30
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v5, 0xf

    .line 31
    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 32
    invoke-virtual {v1, v6, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 33
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v9, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-direct {v2, v9}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 34
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v10

    const/4 v11, 0x5

    invoke-virtual {v2, v11, v9, v10}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    const v9, 0x3f3851ec    # 0.72f

    .line 35
    invoke-virtual {v2, v9}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 36
    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v10, 0x0

    .line 37
    invoke-virtual {v1, v10, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 38
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v10, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-direct {v2, v10}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 39
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/4 v13, 0x2

    invoke-virtual {v2, v13, v10, v12}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 40
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 41
    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    move/from16 v10, v20

    .line 42
    invoke-virtual {v1, v10, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 43
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v12, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-direct {v2, v12}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/16 v23, 0x3

    .line 44
    iget v12, v4, Lcom/smartisanos/smengine/a/k;->x:F

    iget v14, v4, Lcom/smartisanos/smengine/a/k;->y:F

    iget v13, v4, Lcom/smartisanos/smengine/a/k;->z:F

    iget v9, v4, Lcom/smartisanos/smengine/a/k;->w:F

    move-object/from16 v11, v18

    iget v5, v11, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, v11, Lcom/smartisanos/smengine/a/k;->y:F

    iget v8, v11, Lcom/smartisanos/smengine/a/k;->z:F

    move/from16 v32, v10

    iget v10, v11, Lcom/smartisanos/smengine/a/k;->w:F

    move-object/from16 v22, v2

    move/from16 v24, v12

    move/from16 v25, v14

    move/from16 v26, v13

    move/from16 v27, v9

    move/from16 v28, v5

    move/from16 v29, v3

    move/from16 v30, v8

    move/from16 v31, v10

    invoke-virtual/range {v22 .. v31}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    const v3, 0x3eb851ec    # 0.36f

    .line 45
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v3, 0xe

    .line 46
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    move/from16 v8, v17

    .line 47
    invoke-virtual {v1, v8, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    if-nez p1, :cond_1

    .line 48
    new-instance v2, Ljava/lang/Float;

    move-object/from16 v5, v16

    iget v9, v5, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-direct {v2, v9}, Ljava/lang/Float;-><init>(F)V

    .line 49
    new-instance v9, Ljava/lang/Float;

    iget v10, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v12, v0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v12, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_right_distance:F

    add-float/2addr v10, v12

    invoke-direct {v9, v10}, Ljava/lang/Float;-><init>(F)V

    .line 50
    new-instance v10, Ljava/lang/Float;

    iget v12, v5, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-direct {v10, v12}, Ljava/lang/Float;-><init>(F)V

    .line 51
    new-instance v12, Ljava/lang/Float;

    iget v13, v5, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v14, v0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_down_distance:F

    sub-float/2addr v13, v14

    invoke-direct {v12, v13}, Ljava/lang/Float;-><init>(F)V

    goto :goto_1

    :cond_1
    move-object/from16 v5, v16

    .line 52
    new-instance v9, Ljava/lang/Float;

    iget v2, v5, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-direct {v9, v2}, Ljava/lang/Float;-><init>(F)V

    .line 53
    new-instance v2, Ljava/lang/Float;

    iget v10, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget-object v12, v0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v12, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_right_distance:F

    add-float/2addr v10, v12

    invoke-direct {v2, v10}, Ljava/lang/Float;-><init>(F)V

    .line 54
    new-instance v12, Ljava/lang/Float;

    iget v10, v5, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-direct {v12, v10}, Ljava/lang/Float;-><init>(F)V

    .line 55
    new-instance v10, Ljava/lang/Float;

    iget v13, v5, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object v14, v0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_down_distance:F

    sub-float/2addr v13, v14

    invoke-direct {v10, v13}, Ljava/lang/Float;-><init>(F)V

    .line 56
    :goto_1
    iget-object v13, v0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v13, v14, v3, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 57
    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object/from16 v13, v21

    invoke-virtual {v3, v5, v13}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 58
    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    iget v5, v4, Lcom/smartisanos/smengine/a/k;->x:F

    iget v13, v4, Lcom/smartisanos/smengine/a/k;->y:F

    iget v14, v4, Lcom/smartisanos/smengine/a/k;->z:F

    move/from16 v17, v8

    iget v8, v4, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v3, v5, v13, v14, v8}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 59
    new-instance v3, Lcom/smartisanos/smengine/oa;

    iget-object v5, v0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v3, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 60
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v8, 0x4

    invoke-virtual {v3, v8, v2, v5}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    const v2, 0x3f19999a    # 0.6f

    .line 61
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v2, 0xf

    .line 62
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 63
    invoke-virtual {v1, v6, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 64
    new-instance v3, Lcom/smartisanos/smengine/oa;

    iget-object v5, v0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v3, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 65
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v8, 0x5

    invoke-virtual {v3, v8, v5, v6}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    const v5, 0x3f3851ec    # 0.72f

    .line 66
    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 67
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v5, 0x0

    .line 68
    invoke-virtual {v1, v5, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 69
    new-instance v3, Lcom/smartisanos/smengine/oa;

    iget-object v5, v0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v3, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 70
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v3, v7, v5, v6}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    const v5, 0x3f19999a    # 0.6f

    .line 71
    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 72
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    move/from16 v10, v32

    .line 73
    invoke-virtual {v1, v10, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 74
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/16 v19, 0x3

    .line 75
    iget v3, v4, Lcom/smartisanos/smengine/a/k;->x:F

    iget v5, v4, Lcom/smartisanos/smengine/a/k;->y:F

    iget v6, v4, Lcom/smartisanos/smengine/a/k;->z:F

    iget v7, v4, Lcom/smartisanos/smengine/a/k;->w:F

    iget v8, v11, Lcom/smartisanos/smengine/a/k;->x:F

    iget v9, v11, Lcom/smartisanos/smengine/a/k;->y:F

    iget v10, v11, Lcom/smartisanos/smengine/a/k;->z:F

    iget v12, v11, Lcom/smartisanos/smengine/a/k;->w:F

    move-object/from16 v18, v2

    move/from16 v20, v3

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v12

    invoke-virtual/range {v18 .. v27}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    const v3, 0x3eb851ec    # 0.36f

    .line 76
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v3, 0xe

    .line 77
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    move/from16 v8, v17

    .line 78
    invoke-virtual {v1, v8, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 79
    iget-object v2, v0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v3, v2, :cond_2

    iget-object v2, v0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 80
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v5, v0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v5, v3}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/16 v18, 0x3

    .line 81
    iget v3, v4, Lcom/smartisanos/smengine/a/k;->x:F

    iget v5, v4, Lcom/smartisanos/smengine/a/k;->y:F

    iget v6, v4, Lcom/smartisanos/smengine/a/k;->z:F

    iget v4, v4, Lcom/smartisanos/smengine/a/k;->w:F

    iget v7, v11, Lcom/smartisanos/smengine/a/k;->x:F

    iget v9, v11, Lcom/smartisanos/smengine/a/k;->y:F

    iget v10, v11, Lcom/smartisanos/smengine/a/k;->z:F

    iget v11, v11, Lcom/smartisanos/smengine/a/k;->w:F

    move-object/from16 v17, v2

    move/from16 v19, v3

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v4

    move/from16 v23, v7

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    invoke-virtual/range {v17 .. v26}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    const v3, 0x3eb851ec    # 0.36f

    .line 82
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v3, 0xe

    .line 83
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 84
    invoke-virtual {v1, v8, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 85
    :cond_2
    new-instance v2, Lcom/smartisanos/launcher/view/activeicon/i;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/activeicon/i;-><init>(Lcom/smartisanos/launcher/view/activeicon/m;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    return-object v1
.end method

.method private yc(Z)V
    .locals 40

    move-object/from16 v0, p0

    const-string v2, "FLIP"

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->syncActiveIconState(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v1, p1

    .line 1
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/launcher/view/activeicon/m;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update date anim, prev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/smartisanos/launcher/view/activeicon/m;->GP:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/smartisanos/launcher/view/activeicon/a;->qP:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->vm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 4
    :goto_0
    iget-object v5, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vC:Lcom/smartisanos/smengine/g;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 5
    invoke-virtual {v5}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 6
    iput-object v6, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vC:Lcom/smartisanos/smengine/g;

    :cond_2
    const v5, 0x3eb851ec    # 0.36f

    const/4 v7, 0x0

    if-eqz v2, :cond_7

    .line 7
    iget-object v6, v0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 8
    iget-object v6, v0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 9
    iget-object v6, v0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 10
    iget-object v6, v0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 11
    iget-object v6, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    const/4 v13, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v6, 0xe

    .line 12
    iget-object v8, v0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v1, :cond_3

    .line 13
    iget-object v8, v0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    .line 14
    :cond_3
    new-instance v15, Lcom/smartisanos/smengine/g;

    invoke-direct {v15}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 15
    new-instance v9, Lcom/smartisanos/smengine/oa;

    iget-object v10, v0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    invoke-direct {v9, v10}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/16 v19, 0x3

    const/16 v23, 0x0

    const/high16 v27, 0x3f800000    # 1.0f

    move-object/from16 v18, v9

    move/from16 v20, v23

    move/from16 v21, v23

    move/from16 v22, v23

    move/from16 v24, v27

    move/from16 v25, v27

    move/from16 v26, v27

    .line 16
    invoke-virtual/range {v18 .. v27}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 17
    invoke-virtual {v9, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 18
    invoke-virtual {v9, v6}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 19
    invoke-virtual {v15, v7, v9}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 20
    new-instance v9, Lcom/smartisanos/smengine/oa;

    iget-object v10, v0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    invoke-direct {v9, v10}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/16 v29, 0x3

    const/16 v33, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    move-object/from16 v28, v9

    move/from16 v30, v33

    move/from16 v31, v33

    move/from16 v32, v33

    move/from16 v34, v37

    move/from16 v35, v37

    move/from16 v36, v37

    .line 21
    invoke-virtual/range {v28 .. v37}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 22
    invoke-virtual {v9, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 23
    invoke-virtual {v9, v6}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 24
    invoke-virtual {v15, v7, v9}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 25
    new-instance v9, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v8, v4}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    move-object/from16 v18, v9

    .line 26
    invoke-virtual/range {v18 .. v27}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 27
    invoke-virtual {v9, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 28
    invoke-virtual {v9, v6}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 29
    invoke-virtual {v15, v7, v9}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 30
    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_4

    invoke-virtual {v8, v3}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 31
    new-instance v14, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v8, v3}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    invoke-direct {v14, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/4 v9, 0x3

    move-object v8, v14

    move v10, v13

    move v11, v13

    move v12, v13

    move-object v3, v14

    move/from16 v14, v17

    move-object v4, v15

    move/from16 v15, v17

    move/from16 v16, v17

    .line 32
    invoke-virtual/range {v8 .. v17}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 33
    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 34
    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 35
    invoke-virtual {v4, v7, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto :goto_1

    :cond_4
    move-object v4, v15

    .line 36
    :goto_1
    new-instance v3, Lcom/smartisanos/launcher/view/activeicon/e;

    invoke-direct {v3, v0, v1}, Lcom/smartisanos/launcher/view/activeicon/e;-><init>(Lcom/smartisanos/launcher/view/activeicon/m;Z)V

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v3, 0xd

    .line 37
    new-instance v6, Lcom/smartisanos/smengine/g;

    invoke-direct {v6}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 38
    iget-object v8, v0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v1, :cond_5

    .line 39
    iget-object v8, v0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    .line 40
    :cond_5
    new-instance v9, Lcom/smartisanos/smengine/oa;

    iget-object v10, v0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    invoke-direct {v9, v10}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/16 v21, 0x3

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v29, 0x0

    move-object/from16 v20, v9

    move/from16 v22, v25

    move/from16 v23, v25

    move/from16 v24, v25

    move/from16 v26, v29

    move/from16 v27, v29

    move/from16 v28, v29

    .line 41
    invoke-virtual/range {v20 .. v29}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 42
    invoke-virtual {v9, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 43
    invoke-virtual {v9, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 44
    invoke-virtual {v6, v7, v9}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 45
    new-instance v9, Lcom/smartisanos/smengine/oa;

    iget-object v10, v0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    invoke-direct {v9, v10}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/16 v31, 0x3

    const/high16 v35, 0x3f800000    # 1.0f

    const/16 v39, 0x0

    move-object/from16 v30, v9

    move/from16 v32, v35

    move/from16 v33, v35

    move/from16 v34, v35

    move/from16 v36, v39

    move/from16 v37, v39

    move/from16 v38, v39

    .line 46
    invoke-virtual/range {v30 .. v39}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 47
    invoke-virtual {v9, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 48
    invoke-virtual {v9, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 49
    invoke-virtual {v6, v7, v9}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 50
    new-instance v9, Lcom/smartisanos/smengine/oa;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    move-object/from16 v20, v9

    .line 51
    invoke-virtual/range {v20 .. v29}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 52
    invoke-virtual {v9, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 53
    invoke-virtual {v9, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 54
    invoke-virtual {v6, v7, v9}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 55
    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-ge v10, v9, :cond_6

    invoke-virtual {v8, v10}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 56
    new-instance v15, Lcom/smartisanos/smengine/oa;

    invoke-virtual {v8, v10}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    invoke-direct {v15, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/4 v9, 0x3

    move-object v8, v15

    move v10, v13

    move v11, v13

    move v12, v13

    move/from16 v14, v17

    move-object v7, v15

    move/from16 v15, v17

    move/from16 v16, v17

    .line 57
    invoke-virtual/range {v8 .. v17}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 58
    invoke-virtual {v7, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 59
    invoke-virtual {v7, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v3, 0x0

    .line 60
    invoke-virtual {v6, v3, v7}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 61
    :cond_6
    new-instance v3, Lcom/smartisanos/launcher/view/activeicon/f;

    invoke-direct {v3, v0, v1}, Lcom/smartisanos/launcher/view/activeicon/f;-><init>(Lcom/smartisanos/launcher/view/activeicon/m;Z)V

    invoke-virtual {v6, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    goto :goto_2

    :cond_7
    move-object v4, v6

    .line 62
    :goto_2
    new-instance v3, Lcom/smartisanos/smengine/g;

    invoke-direct {v3}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v3, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vC:Lcom/smartisanos/smengine/g;

    if-eqz v2, :cond_a

    if-eqz v4, :cond_8

    .line 63
    iget-object v2, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vC:Lcom/smartisanos/smengine/g;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_8
    if-eqz v6, :cond_9

    .line 64
    iget-object v2, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vC:Lcom/smartisanos/smengine/g;

    const v3, 0x3f8a3d71    # 1.08f

    invoke-virtual {v2, v3, v6}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 65
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/smartisanos/launcher/view/activeicon/m;->xc(Z)Lcom/smartisanos/smengine/g;

    move-result-object v1

    .line 66
    iget-object v2, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v5, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 67
    iget-object v1, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vC:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/view/activeicon/g;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/activeicon/g;-><init>(Lcom/smartisanos/launcher/view/activeicon/m;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 68
    iget-object v1, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    goto :goto_3

    .line 69
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/smartisanos/launcher/view/activeicon/m;->xc(Z)Lcom/smartisanos/smengine/g;

    move-result-object v1

    .line 70
    iget-object v2, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vC:Lcom/smartisanos/smengine/g;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 71
    iget-object v1, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vC:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/view/activeicon/h;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/activeicon/h;-><init>(Lcom/smartisanos/launcher/view/activeicon/m;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 72
    iget-object v1, v0, Lcom/smartisanos/launcher/view/activeicon/m;->vC:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    .line 73
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/activeicon/m;->Iz()V

    .line 74
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_b

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/activeicon/m;->rq()V

    :cond_b
    const-string v1, "LIVE"

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->syncActiveIconState(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private zd(I)Lcom/smartisanos/smengine/SceneNode;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/SceneNode;

    const-string v1, "day"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/view/activeicon/m;->a(ILcom/smartisanos/smengine/SceneNode;)V

    return-object v0
.end method


# virtual methods
.method public Da(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/a;->Da(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/F;

    .line 7
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/F;

    .line 12
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/L;->Da(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public clear(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/activeicon/m;->g(ZZ)V

    return-void
.end method

.method public create()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/m;->Bz()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/m;->jz()V

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/m;->Dz()V

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/m;->Cz()V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/activeicon/m;->Fz()I

    move-result v0

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/activeicon/m;->Gz()I

    move-result v1

    .line 7
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/activeicon/m;->zd(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    .line 8
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/activeicon/m;->zd(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 11
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/m;->Vg()V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/a;->qP:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->useSmallActiveIcon(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    sget v0, Lcom/smartisanos/launcher/data/Constants;->icon_scale:F

    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->active_icon_scale:F

    mul-float v2, v0, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    :cond_0
    return-void
.end method

.method public createComposedBitmap()Landroid/graphics/Bitmap;
    .locals 13

    # Bitmap recovery may outlive the live scene cleared by g(ZZ).
    # Reuse the constructor's desktop layout source without reviving cleared nodes.
    iget-object v12, p0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;
    if-nez v12, :calendar_composition_layout_ready
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;
    move-result-object v12
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;
    move-result-object v12
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I
    move-result v12
    invoke-static {v12}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;
    move-result-object v12
    :calendar_composition_layout_ready

    const-string v0, "calendar/bg.png"

    .line 1
    invoke-static {v0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/smengine/s;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "calendar/ring.png"

    .line 2
    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/smengine/s;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "calendar/flip.png"

    .line 3
    invoke-static {v2}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/smengine/s;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/activeicon/m;->Fz()I

    move-result v3

    .line 5
    invoke-static {v3}, Lcom/smartisanos/launcher/view/activeicon/m;->Ad(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Lcom/smartisanos/smengine/s;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 7
    move-object v4, v12

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    invoke-static {v4}, Lcom/smartisanos/launcher/theme/ActiveIconRasterSpec;->physicalArtworkWidth(F)I

    move-result v5

    move v4, v5

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 9
    invoke-static {v5, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 10
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v7, v12

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    const-string v8, "calendar"

    invoke-static {v8, v7}, Lcom/smartisanos/launcher/theme/ActiveIconRasterSpec;->cachedArtworkScale(Ljava/lang/String;F)F

    move-result v7

    invoke-virtual {v5, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 11
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, 0x1

    .line 12
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 14
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/RectF;

    move-object v9, v12

    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    const/4 v11, 0x0

    invoke-direct {v8, v11, v11, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v0, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 15
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/RectF;

    move-object v9, v12

    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    invoke-direct {v8, v11, v11, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v2, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 16
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/RectF;

    move-object v9, v12

    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_back_size:F

    invoke-direct {v8, v11, v11, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v1, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 17
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/RectF;

    move-object p0, v12

    iget v9, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_day_offsetx:F

    iget v10, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_day_offsety:F

    iget v11, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_day_w:F

    add-float/2addr v11, v9

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->calendar_day_h:F

    add-float/2addr p0, v10

    invoke-direct {v8, v9, v10, v11, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v3, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 19
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 20
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 21
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    return-object v4
.end method

.method public g(ZZ)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 4
    iput-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 7
    iput-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 10
    iput-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 13
    iput-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 16
    iput-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    .line 17
    :cond_4
    iput-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 18
    iput-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->JP:Lcom/smartisanos/smengine/a/j;

    .line 19
    iput-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->KP:Lcom/smartisanos/smengine/a/j;

    .line 20
    iput-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vC:Lcom/smartisanos/smengine/g;

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->bi()V

    :cond_5
    if-eqz p2, :cond_6

    .line 23
    iget-object p2, p0, Lcom/smartisanos/launcher/view/activeicon/a;->rP:Lcom/smartisanos/launcher/view/a/ka;

    if-eqz p2, :cond_6

    .line 24
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/ka;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 25
    iget-object p2, p0, Lcom/smartisanos/launcher/view/activeicon/a;->rP:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/ka;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/smartisanos/launcher/view/a/la;->a(Lcom/smartisanos/launcher/view/activeicon/m;)V

    .line 26
    iput-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/a;->rP:Lcom/smartisanos/launcher/view/a/ka;

    .line 27
    :cond_6
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/a;->clear(Z)V

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lcom/smartisanos/launcher/view/activeicon/m;->PACKAGE_NAME:Ljava/lang/String;

    return-object p0
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/launcher/view/activeicon/a;->onResume()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/activeicon/m;->Fz()I

    move-result v0

    .line 3
    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->GP:I

    if-eq v0, v1, :cond_0

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/view/activeicon/j;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/activeicon/j;-><init>(Lcom/smartisanos/launcher/view/activeicon/m;I)V

    const/4 p0, 0x0

    .line 5
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    :cond_0
    return-void
.end method

.method public rq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vC:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vC:Lcom/smartisanos/smengine/g;

    :cond_0
    return-void
.end method

.method public setLayer(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->xP:I

    .line 3
    iget p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->xP:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->yP:I

    .line 4
    iget v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->yP:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->zP:I

    .line 5
    iget v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->zP:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->AP:I

    .line 6
    iget v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->AP:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->BP:I

    .line 7
    iget v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->BP:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CP:I

    .line 8
    iget v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CP:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->EP:I

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    if-eqz p1, :cond_1

    .line 12
    iget v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->yP:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    if-eqz p1, :cond_2

    .line 14
    iget v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->zP:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    move p1, v0

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 17
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/F;

    .line 18
    iget v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->AP:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    if-eqz p1, :cond_4

    .line 20
    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->BP:I

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    if-eqz p1, :cond_5

    .line 22
    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CP:I

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    if-eqz p1, :cond_6

    .line 24
    :goto_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_6

    .line 25
    iget-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/smengine/F;

    .line 26
    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->EP:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public setRenderQueue(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/activeicon/a;->setRenderQueue(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->CJ:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->tP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->uP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/F;

    .line 7
    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->vP:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->wP:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/F;

    .line 12
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public vq()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/a;->sP:Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;

    sget-object v1, Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;->RESUME:Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/activeicon/m;->wq()V

    return-void
.end method

.method public wq()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getClearFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/a;->sP:Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;

    sget-object v1, Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;->RESUME:Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;

    if-eq v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/activeicon/m;->Fz()I

    move-result v0

    .line 4
    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->GP:I

    if-ne v0, v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/activeicon/m;->Ez()J

    move-result-wide v1

    .line 6
    iget-wide v3, p0, Lcom/smartisanos/launcher/view/activeicon/m;->HP:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    const/4 v3, 0x0

    :goto_0
    move v9, v3

    goto :goto_1

    :cond_3
    cmp-long v3, v1, v3

    if-gez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    .line 7
    :goto_1
    iget v3, p0, Lcom/smartisanos/launcher/view/activeicon/m;->GP:I

    if-eqz v9, :cond_4

    move v7, v0

    move v8, v3

    goto :goto_2

    :cond_4
    move v8, v0

    move v7, v3

    .line 8
    :goto_2
    iput v0, p0, Lcom/smartisanos/launcher/view/activeicon/m;->GP:I

    .line 9
    iput-wide v1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->HP:J

    .line 10
    new-instance v0, Lcom/smartisanos/launcher/view/activeicon/d;

    const/16 v6, 0x64

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/smartisanos/launcher/view/activeicon/d;-><init>(Lcom/smartisanos/launcher/view/activeicon/m;IIIZ)V

    const/4 p0, 0x0

    .line 11
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_5
    return-void
.end method
