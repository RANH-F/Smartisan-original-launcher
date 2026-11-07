.class public Lcom/smartisanos/launcher/view/a/la;
.super Ljava/lang/Object;
.source "FolderIcons.java"


# static fields
.field protected static Tz:I = 0x2

.field protected static Uz:I = 0x2


# instance fields
.field private Az:F

.field private Bz:F

.field private Cz:F

.field private Dz:F

.field private Ez:F

.field private Fz:F

.field private Gz:F

.field private Hz:F

.field private Iz:F

.field private Jz:F

.field private Kz:F

.field private Lz:F

.field private Mz:F

.field private Nz:F

.field private Oz:F

.field private Pz:F

.field private Qj:Lcom/smartisanos/launcher/view/a/ka;

.field private Qz:F

.field private Rz:F

.field private Sz:F

.field protected cy:Lcom/smartisanos/launcher/view/activeicon/H;

.field protected hz:Lcom/smartisanos/smengine/N;

.field protected iz:[Lcom/smartisanos/smengine/F;

.field protected jz:Z

.field private mFolderIconsContextGeneration:I

.field protected kz:Lcom/smartisanos/smengine/Camera;

.field private log:Lcom/smartisanos/launcher/va;

.field protected lz:Lcom/smartisanos/smengine/F;

.field protected mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

.field protected mz:Ljava/lang/String;

.field protected nz:Z

.field private oz:F

.field private pz:F

.field private qz:F

.field private rz:F

.field private sz:F

.field private tz:F

.field private uz:F

.field private vz:F

.field private wz:F

.field private xz:F

.field private yz:F

.field private zz:F


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/a/ka;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/launcher/view/a/la;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->iz:[Lcom/smartisanos/smengine/F;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/la;->jz:Z

    .line 5
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    .line 6
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    .line 7
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->lz:Lcom/smartisanos/smengine/F;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->mz:Ljava/lang/String;

    .line 9
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/la;->nz:Z

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->oz:F

    .line 11
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->pz:F

    .line 12
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->qz:F

    .line 13
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->rz:F

    .line 14
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->sz:F

    .line 15
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->tz:F

    .line 16
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->uz:F

    .line 17
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->vz:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    iput v1, p0, Lcom/smartisanos/launcher/view/a/la;->wz:F

    .line 19
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->xz:F

    .line 20
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->yz:F

    .line 21
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->zz:F

    .line 22
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->Az:F

    .line 23
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->Bz:F

    .line 24
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->Cz:F

    .line 25
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->Dz:F

    .line 26
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->Ez:F

    .line 27
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->Fz:F

    .line 28
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->Gz:F

    .line 29
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->Hz:F

    .line 30
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->Iz:F

    .line 31
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->Jz:F

    .line 32
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->Kz:F

    .line 33
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->Lz:F

    .line 34
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->Mz:F

    .line 35
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->Nz:F

    .line 36
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->Oz:F

    .line 37
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->Pz:F

    .line 38
    iput v1, p0, Lcom/smartisanos/launcher/view/a/la;->Qz:F

    .line 39
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->Rz:F

    .line 40
    iput v1, p0, Lcom/smartisanos/launcher/view/a/la;->Sz:F

    .line 41
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    return-void
.end method


# virtual methods
.method public Ti()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast v0, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->mf()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v1

    .line 4
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/a/la;->nz:Z

    const/16 v3, 0x9

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_0

    if-gt v0, v4, :cond_0

    const/4 v0, 0x2

    .line 5
    sput v0, Lcom/smartisanos/launcher/view/a/la;->Tz:I

    .line 6
    sput v0, Lcom/smartisanos/launcher/view/a/la;->Uz:I

    .line 7
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    invoke-static {v1, v5, v0}, Lcom/smartisanos/launcher/pb;->a(IZLcom/smartisanos/launcher/data/Constants$IconType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_0
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/a/la;->nz:Z

    if-nez v2, :cond_2

    if-le v0, v4, :cond_1

    if-gt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x3

    .line 9
    sput v0, Lcom/smartisanos/launcher/view/a/la;->Uz:I

    .line 10
    sput v0, Lcom/smartisanos/launcher/view/a/la;->Tz:I

    .line 11
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    invoke-static {v1, v6, v0}, Lcom/smartisanos/launcher/pb;->a(IZLcom/smartisanos/launcher/data/Constants$IconType;)Ljava/lang/String;

    move-result-object v0

    .line 12
    :goto_1
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->mz:Ljava/lang/String;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_bookcase"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/4 v7, 0x0

    invoke-static {v1, v2, v2, v7, v6}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->lz:Lcom/smartisanos/smengine/F;

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->lz:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/L;->Ba(Z)V

    .line 16
    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 17
    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v7, -0x40000000    # -2.0f

    .line 18
    invoke-virtual {v1, v2, v7}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 19
    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 20
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->lz:Lcom/smartisanos/smengine/F;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v7, v2

    float-to-int v2, v2

    invoke-virtual {v1, v6, v6, v7, v2}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    .line 21
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->lz:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 22
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->lz:Lcom/smartisanos/smengine/F;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 23
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget v2, v2, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->lz:Lcom/smartisanos/smengine/F;

    iget v1, v1, Lcom/smartisanos/launcher/view/jb;->Mv:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 25
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->lz:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    .line 28
    :try_start_0
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_3

    .line 29
    invoke-static {v0}, Lcom/smartisanos/launcher/xa;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_2
    move-object v2, p0

    goto :goto_3

    .line 30
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/J;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/smartisanos/launcher/xa;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 31
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/la;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createBookcaseRectInRT(). bmap is null. imageName = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    :goto_3
    new-instance p0, Lcom/smartisanos/smengine/Da;

    invoke-direct {p0, v2}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 34
    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/Da;->Ub(Z)V

    .line 35
    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 36
    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 37
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v0, p0}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    :cond_4
    return-void
.end method

.method public Ui()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/N;->e(FFFF)V

    goto :goto_0

    .line 3
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/la;->Wi()V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/N;->e(FFFF)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/la;->Ti()V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast v0, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->mf()I

    move-result v1

    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->iz:[Lcom/smartisanos/smengine/F;

    .line 10
    new-array v2, v1, [Lcom/smartisanos/smengine/F;

    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->iz:[Lcom/smartisanos/smengine/F;

    .line 11
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->nf()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 12
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/la;->iz:[Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {p0, v4, v2}, Lcom/smartisanos/launcher/view/a/la;->a(Lcom/smartisanos/launcher/data/ItemInfo;I)Lcom/smartisanos/smengine/F;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "icon target is null, return. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Vi()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->kz:Lcom/smartisanos/smengine/Camera;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v0

    const-string v1, "folderIconCamera"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/k;->Da(Ljava/lang/String;)Lcom/smartisanos/smengine/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/Camera;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v3, v2

    float-to-int v2, v2

    invoke-direct {v0, v3, v2}, Lcom/smartisanos/smengine/Camera;-><init>(II)V

    const/high16 v2, 0x41a00000    # 20.0f

    const v3, 0x42652ee0

    .line 4
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v4, v2}, Lcom/smartisanos/smengine/a/a;->atan2(FF)F

    move-result v4

    mul-float/2addr v4, v3

    mul-float/2addr v4, v5

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42480000    # 50.0f

    invoke-virtual {v0, v4, v3, v5, v6}, Lcom/smartisanos/smengine/Camera;->d(FFFF)V

    .line 6
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/Camera;->g(Lcom/smartisanos/smengine/a/j;)V

    .line 7
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v2, v4, v4, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    sget-object v3, Lcom/smartisanos/smengine/a/j;->QV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/Camera;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V

    .line 8
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/smartisanos/smengine/k;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Camera;)V

    .line 9
    :cond_0
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->kz:Lcom/smartisanos/smengine/Camera;

    :cond_1
    return-void
.end method

.method public Wi()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->vt()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-nez v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FolderCell is ==>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Km()V

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v3, v2, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->Ne()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v3, v2, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    if-eqz v5, :cond_2

    .line 8
    aget-object v3, v3, v4

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 11
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 12
    :cond_3
    new-instance v3, Lcom/smartisanos/smengine/N;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_renderTargetFore"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v5, v1

    float-to-int v1, v1

    invoke-direct {v3, v0, v5, v1}, Lcom/smartisanos/smengine/N;-><init>(Ljava/lang/String;II)V

    iput-object v3, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v1}, Lcom/smartisanos/smengine/N;->e(FFFF)V

    .line 14
    new-instance v0, Lcom/smartisanos/smengine/Da;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Da;-><init>(Lcom/smartisanos/smengine/N;)V

    .line 15
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/N;->Ma(Z)V

    .line 16
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/N;->La(Z)V

    const/4 v1, 0x5

    .line 17
    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/smartisanos/smengine/Da;->e(IIII)V

    .line 18
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 19
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/la;->dj()V

    return-void
.end method

.method public Xi()Lcom/smartisanos/smengine/a/j;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0, v2, v2, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 6
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3, v2, v2, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/h;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    .line 9
    iget v1, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, p0, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v1, v2

    iput v1, v3, Lcom/smartisanos/smengine/a/j;->x:F

    .line 10
    iget v1, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v1, p0

    iput v1, v3, Lcom/smartisanos/smengine/a/j;->y:F

    .line 11
    iget p0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, v3, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr p0, v1

    iput p0, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 12
    iget p0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v3, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr p0, v1

    iput p0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    return-object v0
.end method

.method public Yi()Lcom/smartisanos/launcher/view/activeicon/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/la;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    return-object p0
.end method

.method public Zi()Lcom/smartisanos/smengine/a/j;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/la;->Xi()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/h;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast v2, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 6
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/FolderInfo;->mf()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_1

    .line 7
    iget v2, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_icon_center_offset_2_2:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p0, v1

    add-float/2addr v2, p0

    iput v2, v0, Lcom/smartisanos/smengine/a/j;->y:F

    goto :goto_0

    .line 8
    :cond_1
    iget v2, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_icon_center_offset_3_3:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p0, v1

    add-float/2addr v2, p0

    iput v2, v0, Lcom/smartisanos/smengine/a/j;->y:F

    :goto_0
    return-object v0
.end method

.method public _i()Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/N;->Uk()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/smartisanos/launcher/data/ItemInfo;I)Lcom/smartisanos/smengine/F;
    .locals 4

    .line 1
    iget-byte v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Icon in folder should be ITEM_TYPE_APPLICATION or ITEM_TYPE_SHORTCUT"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_foreIcon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v1, v2, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0, p2}, Lcom/smartisanos/launcher/view/a/la;->a(Lcom/smartisanos/smengine/F;I)V

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/launcher/view/a/la;->a(Lcom/smartisanos/smengine/F;Lcom/smartisanos/launcher/data/ItemInfo;)V

    return-object v0
.end method

.method public a(Lcom/smartisanos/launcher/view/activeicon/H;)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/activeicon/H;->g(ZZ)V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/la;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    .line 64
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/la;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    if-eqz p1, :cond_1

    .line 65
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/activeicon/a;->c(Lcom/smartisanos/launcher/view/a/ka;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/activeicon/m;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/activeicon/m;->g(ZZ)V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/la;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    .line 70
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/la;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    if-eqz p1, :cond_1

    .line 71
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/activeicon/a;->c(Lcom/smartisanos/launcher/view/a/ka;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/smartisanos/smengine/F;I)V
    .locals 8

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ba(Z)V

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    const/4 v3, 0x2

    .line 9
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 10
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    .line 11
    invoke-virtual {v0, v3, v4}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 12
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast v0, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 14
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->mf()I

    move-result v0

    .line 15
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/a/la;->nz:Z

    const/4 v3, 0x4

    if-nez v2, :cond_0

    if-gt v0, v3, :cond_0

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_left_margin_2_2:I

    .line 17
    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_top_margin_2_2:I

    .line 18
    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_side_length_2_2:I

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_horizontal_space_2_2:I

    add-int/2addr v5, v4

    .line 19
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_vertical_space_2_2:I

    goto :goto_1

    .line 20
    :cond_0
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/a/la;->nz:Z

    if-nez v2, :cond_2

    if-le v0, v3, :cond_1

    const/16 v2, 0x9

    if-gt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v0

    move v4, v2

    move v5, v4

    goto :goto_2

    .line 21
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_left_margin_3_3:I

    .line 22
    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_top_margin_3_3:I

    .line 23
    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_side_length_3_3:I

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_horizontal_space_3_3:I

    add-int/2addr v5, v4

    .line 24
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_vertical_space_3_3:I

    :goto_1
    add-int/2addr v0, v4

    .line 25
    :goto_2
    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    if-eqz v6, :cond_3

    .line 26
    sget v6, Lcom/smartisanos/launcher/view/a/la;->Uz:I

    div-int v7, p2, v6

    .line 27
    rem-int/2addr p2, v6

    mul-int/2addr p2, v5

    add-int/2addr p2, v1

    mul-int/2addr v7, v0

    add-int/2addr v7, v2

    .line 28
    invoke-virtual {p1, p2, v7, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    .line 29
    :cond_3
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 30
    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 31
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object p2

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {p2, p0}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object p0

    .line 32
    iget p0, p0, Lcom/smartisanos/launcher/view/jb;->Mv:I

    add-int/lit8 p0, p0, 0xa

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/F;Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 10

    .line 33
    iget-byte v0, p2, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Icon in folder should be ITEM_TYPE_APPLICATION or ITEM_TYPE_SHORTCUT"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_1
    :goto_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    .line 36
    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/ItemInfo;->Ne()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/smartisanos/launcher/theme/IconRasterDiagnostics;->desktopRenderMode()I

    move-result v8

    invoke-static {p2, v9, v8}, Lcom/smartisanos/launcher/theme/IconRasterDiagnostics;->textureCacheKey(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 37
    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/ItemInfo;->Qe()Z

    .line 38
    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v0

    if-nez v0, :cond_7

    .line 39
    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/ItemInfo;->Qe()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40
    iget v0, p2, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-lez v0, :cond_2

    .line 41
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE()I

    move-result v1

    iget v2, p2, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/data/Constants;->getMessageTextureName(II)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 44
    :cond_2
    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/ItemInfo;->bf()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    new-instance v0, Lcom/smartisanos/launcher/view/activeicon/H;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    const-string v2, "weatherView"

    invoke-direct {v0, v2, v1}, Lcom/smartisanos/launcher/view/activeicon/H;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/g;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    .line 46
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/activeicon/H;->create()V

    .line 47
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/activeicon/a;->c(Lcom/smartisanos/launcher/view/a/ka;)V

    .line 48
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 49
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/launcher/view/activeicon/H;)V

    .line 50
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    const/4 v4, 0x0

    iget-boolean v5, p2, Lcom/smartisanos/launcher/data/ItemInfo;->mFGTransparentAndBlackWhiteFlag:Z

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v6, p0

    float-to-int v7, p0

    move-object v2, p2

    move-object v3, v9

    invoke-static/range {v1 .. v8}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/launcher/view/activeicon/a;Lcom/smartisanos/launcher/data/ItemInfo;Ljava/lang/String;ZZIII)Lcom/smartisanos/smengine/Da;

    goto :goto_1

    .line 51
    :cond_4
    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/ItemInfo;->Te()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 52
    new-instance v0, Lcom/smartisanos/launcher/view/activeicon/m;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    const-string v2, "calendarView"

    invoke-direct {v0, v2, v1}, Lcom/smartisanos/launcher/view/activeicon/m;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/g;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    .line 53
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->create()V

    .line 54
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/activeicon/a;->c(Lcom/smartisanos/launcher/view/a/ka;)V

    .line 55
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 56
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/launcher/view/activeicon/m;)V

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    const/4 v4, 0x0

    iget-boolean v5, p2, Lcom/smartisanos/launcher/data/ItemInfo;->mFGTransparentAndBlackWhiteFlag:Z

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v6, p0

    float-to-int v7, p0

    move-object v2, p2

    move-object v3, v9

    invoke-static/range {v1 .. v8}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/launcher/view/activeicon/a;Lcom/smartisanos/launcher/data/ItemInfo;Ljava/lang/String;ZZIII)Lcom/smartisanos/smengine/Da;

    goto :goto_1

    .line 58
    :cond_6
    move-object v1, p2

    move-object v2, v9

    const/4 v3, 0x0

    move v4, v8

    invoke-static {v1, v2, v3, v4}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/launcher/data/ItemInfo;Ljava/lang/String;ZI)Lcom/smartisanos/smengine/Da;

    .line 59
    :cond_7
    :goto_1
    invoke-virtual {p1, v9}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    return-void
.end method

.method public aj()Lcom/smartisanos/smengine/a/j;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast v0, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->mf()I

    move-result v0

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    if-gt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/h;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    iget p0, p0, Lcom/smartisanos/launcher/view/a/la;->wz:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v3, p0

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p0, v0

    invoke-direct {v1, v3, p0, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object v1

    :cond_0
    if-le v0, v1, :cond_1

    const/16 v1, 0x9

    if-gt v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/h;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    iget p0, p0, Lcom/smartisanos/launcher/view/a/la;->Qz:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v3, p0

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p0, v0

    invoke-direct {v1, v3, p0, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object v1

    .line 7
    :cond_1
    new-instance p0, Lcom/smartisanos/smengine/a/j;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object p0
.end method

.method public bj()Lcom/smartisanos/launcher/view/activeicon/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/la;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    return-object p0
.end method

.method public cj()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_horizontal_space_2_2:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 2
    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_vertical_space_2_2:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 3
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_side_length_2_2:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    const/high16 v2, -0x40800000    # -1.0f

    mul-float v4, v1, v2

    .line 4
    iput v4, p0, Lcom/smartisanos/launcher/view/a/la;->oz:F

    add-float/2addr v3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v5, v3, v0

    .line 5
    iput v5, p0, Lcom/smartisanos/launcher/view/a/la;->pz:F

    mul-float/2addr v1, v0

    .line 6
    iput v1, p0, Lcom/smartisanos/launcher/view/a/la;->qz:F

    .line 7
    iput v5, p0, Lcom/smartisanos/launcher/view/a/la;->rz:F

    .line 8
    iput v4, p0, Lcom/smartisanos/launcher/view/a/la;->sz:F

    mul-float/2addr v3, v2

    .line 9
    iput v3, p0, Lcom/smartisanos/launcher/view/a/la;->tz:F

    .line 10
    iput v1, p0, Lcom/smartisanos/launcher/view/a/la;->uz:F

    .line 11
    iput v3, p0, Lcom/smartisanos/launcher/view/a/la;->vz:F

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_side_length_2_2:I

    int-to-float v4, v3

    iget v5, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    div-float/2addr v4, v5

    iput v4, p0, Lcom/smartisanos/launcher/view/a/la;->wz:F

    .line 14
    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y:I

    int-to-float v4, v1

    mul-float/2addr v4, v0

    iget v6, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    div-float/2addr v4, v6

    int-to-float v3, v3

    mul-float/2addr v4, v3

    iput v4, p0, Lcom/smartisanos/launcher/view/a/la;->xz:F

    .line 15
    iget v3, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_horizontal_space_3_3:I

    int-to-float v3, v3

    .line 16
    iget v4, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_vertical_space_3_3:I

    int-to-float v4, v4

    .line 17
    iget v7, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_side_length_3_3:I

    int-to-float v8, v7

    add-float/2addr v3, v8

    add-float/2addr v8, v4

    neg-float v4, v3

    .line 18
    iput v4, p0, Lcom/smartisanos/launcher/view/a/la;->yz:F

    .line 19
    iput v8, p0, Lcom/smartisanos/launcher/view/a/la;->zz:F

    const/4 v9, 0x0

    .line 20
    iput v9, p0, Lcom/smartisanos/launcher/view/a/la;->Az:F

    .line 21
    iput v8, p0, Lcom/smartisanos/launcher/view/a/la;->Bz:F

    .line 22
    iput v3, p0, Lcom/smartisanos/launcher/view/a/la;->Cz:F

    .line 23
    iput v8, p0, Lcom/smartisanos/launcher/view/a/la;->Dz:F

    .line 24
    iput v4, p0, Lcom/smartisanos/launcher/view/a/la;->Ez:F

    .line 25
    iput v9, p0, Lcom/smartisanos/launcher/view/a/la;->Fz:F

    .line 26
    iput v3, p0, Lcom/smartisanos/launcher/view/a/la;->Iz:F

    .line 27
    iput v9, p0, Lcom/smartisanos/launcher/view/a/la;->Jz:F

    .line 28
    iput v4, p0, Lcom/smartisanos/launcher/view/a/la;->Kz:F

    neg-float v4, v8

    .line 29
    iput v4, p0, Lcom/smartisanos/launcher/view/a/la;->Lz:F

    .line 30
    iput v9, p0, Lcom/smartisanos/launcher/view/a/la;->Mz:F

    .line 31
    iput v4, p0, Lcom/smartisanos/launcher/view/a/la;->Nz:F

    .line 32
    iput v3, p0, Lcom/smartisanos/launcher/view/a/la;->Oz:F

    .line 33
    iput v4, p0, Lcom/smartisanos/launcher/view/a/la;->Pz:F

    int-to-float v3, v7

    div-float/2addr v3, v5

    .line 34
    iput v3, p0, Lcom/smartisanos/launcher/view/a/la;->Qz:F

    int-to-float v1, v1

    mul-float/2addr v1, v0

    div-float/2addr v1, v6

    int-to-float v0, v7

    mul-float/2addr v1, v0

    .line 35
    iput v1, p0, Lcom/smartisanos/launcher/view/a/la;->Rz:F

    .line 36
    iget v0, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    sub-float v0, v6, v0

    div-float/2addr v0, v6

    .line 37
    iput v0, p0, Lcom/smartisanos/launcher/view/a/la;->Sz:F

    return-void
.end method

.method public clear()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/a/la;->jz:Z

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/N;->Ka(Z)V

    .line 3
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->iz:[Lcom/smartisanos/smengine/F;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 5
    array-length v4, v0

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    if-eqz v6, :cond_1

    .line 6
    invoke-virtual {v6, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->iz:[Lcom/smartisanos/smengine/F;

    .line 8
    :cond_3
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->kz:Lcom/smartisanos/smengine/Camera;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/launcher/view/activeicon/H;->g(ZZ)V

    .line 11
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/launcher/view/activeicon/m;->g(ZZ)V

    .line 14
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->lz:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 17
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->lz:Lcom/smartisanos/smengine/F;

    .line 18
    :cond_6
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    return-void
.end method

.method public create()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/la;->cj()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/la;->Vi()V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/la;->Wi()V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/la;->Ui()V

    return-void
.end method

.method public dj()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/a/la;->jz:Z

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public ej()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/smengine/N;->Uk()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/k;->Vj()Lcom/smartisanos/smengine/Camera;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 6
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 7
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 8
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 9
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const/4 v4, 0x1

    .line 10
    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setSceneNodeForceRender(Z)V

    .line 11
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/a/la;->oa(Z)V

    .line 12
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 13
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setSceneNodeForceRender(Z)V

    .line 14
    iget p0, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v2, v3, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, p0, v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 15
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public fj()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/N;->Ka(Z)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    :cond_0
    return-void
.end method

.method public gj()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v3, :cond_3

    .line 2
    check-cast v3, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/activeicon/H;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/data/FolderInfo;->O(Ljava/lang/String;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    .line 3
    if-nez v0, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/FolderInfo;->lf()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_1

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/data/FolderInfo;->ia(I)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->bf()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "weather"

    invoke-static {v3, v4, v5}, Lcom/smartisanos/launcher/model/LauncherModelRepository;->noteActiveIconOwnerMissing(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/la;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/activeicon/a;->d([B)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 4
    invoke-static {v3, v1}, Lcom/smartisanos/launcher/e/s;->b(Landroid/graphics/Bitmap;Z)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/data/ItemInfo;->a([B)V

    .line 5
    move-object v5, v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Ne()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget v6, v6, Lcom/smartisanos/launcher/view/a/g;->fH:I

    invoke-static {v5, v0, v6}, Lcom/smartisanos/launcher/theme/IconRasterDiagnostics;->textureCacheKey(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 8
    new-instance v5, Lcom/smartisanos/smengine/Da;

    invoke-direct {v5, v3}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 9
    invoke-virtual {v5, v2}, Lcom/smartisanos/smengine/Da;->Ub(Z)V

    .line 10
    invoke-virtual {v4, v0, v5}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 11
    invoke-virtual {v5, v2}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 12
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v3, :cond_7

    .line 13
    check-cast v3, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/data/FolderInfo;->O(Ljava/lang/String;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    .line 14
    if-nez v0, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/FolderInfo;->lf()I

    move-result v6

    :goto_2
    if-ge v5, v6, :cond_5

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/data/FolderInfo;->ia(I)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Te()Z

    move-result v7

    if-nez v7, :cond_6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    const-string v5, "calendar"

    invoke-static {v3, v4, v5}, Lcom/smartisanos/launcher/model/LauncherModelRepository;->noteActiveIconOwnerMissing(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/la;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/activeicon/a;->d([B)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 15
    invoke-static {v3, v1}, Lcom/smartisanos/launcher/e/s;->b(Landroid/graphics/Bitmap;Z)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/data/ItemInfo;->a([B)V

    .line 16
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Ne()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 19
    new-instance v4, Lcom/smartisanos/smengine/Da;

    invoke-direct {v4, v3}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/Da;->Ub(Z)V

    .line 21
    invoke-virtual {v1, v0, v4}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 22
    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 23
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/a/ka;->fb(Z)V

    return-void
.end method

.method private restoreRetainedIconSources()V
    .locals 15

    # Miniature F nodes are not application Cells, so Eb.q cannot own their reload.
    # Reuse their original FolderIcons source factory and retained active owners.
    iget-object v9, p0, Lcom/smartisanos/launcher/view/a/la;->iz:[Lcom/smartisanos/smengine/F;
    if-eqz v9, :folder_sources_done
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;
    if-eqz v0, :folder_sources_done
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v0, :folder_sources_done
    check-cast v0, Lcom/smartisanos/launcher/data/FolderInfo;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->nf()Ljava/util/ArrayList;
    move-result-object v10
    if-eqz v10, :folder_sources_done
    array-length v12, v9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    move-result v0
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I
    move-result v12
    const/4 v11, 0x0
    :folder_sources_loop
    if-ge v11, v12, :folder_sources_done
    aget-object v13, v9, v11
    if-eqz v13, :folder_sources_next
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v2, :folder_sources_next
    const/4 v1, 0x0
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->bf()Z
    move-result v0
    if-eqz v0, :folder_sources_calendar
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->cy:Lcom/smartisanos/launcher/view/activeicon/H;
    goto :folder_sources_owner_ready
    :folder_sources_calendar
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->Te()Z
    move-result v0
    if-eqz v0, :folder_sources_owner_ready
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;
    :folder_sources_owner_ready
    if-nez v1, :folder_sources_active
    invoke-virtual {p0, v13, v2}, Lcom/smartisanos/launcher/view/a/la;->a(Lcom/smartisanos/smengine/F;Lcom/smartisanos/launcher/data/ItemInfo;)V
    goto :folder_sources_next
    :folder_sources_active
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->Ne()Ljava/lang/String;
    move-result-object v3
    invoke-static {}, Lcom/smartisanos/launcher/theme/IconRasterDiagnostics;->desktopRenderMode()I
    move-result v8
    invoke-static {v2, v3, v8}, Lcom/smartisanos/launcher/theme/IconRasterDiagnostics;->textureCacheKey(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v3
    const/4 v4, 0x0
    iget-boolean v5, v2, Lcom/smartisanos/launcher/data/ItemInfo;->mFGTransparentAndBlackWhiteFlag:Z
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F
    float-to-int v6, v0
    move v7, v6
    invoke-static/range {v1 .. v8}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/launcher/view/activeicon/a;Lcom/smartisanos/launcher/data/ItemInfo;Ljava/lang/String;ZZIII)Lcom/smartisanos/smengine/Da;
    invoke-virtual {v13, v3}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V
    :folder_sources_next
    add-int/lit8 v11, v11, 0x1
    goto :folder_sources_loop
    :folder_sources_done
    return-void
.end method

.method public restoreTargetForThemeCube()V
    .locals 2

    invoke-static {}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->getEglContextGeneration()I
    move-result v0
    iget v1, p0, Lcom/smartisanos/launcher/view/a/la;->mFolderIconsContextGeneration:I
    if-eq v0, v1, :target_ready
    const/4 v0, 0x1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/la;->oa(Z)V
    :target_ready
    return-void
.end method

.method public oa(Z)V
    .locals 5

    # FolderIcons is not a SceneNode: root refresh cannot invalidate its jz cache.
    # Its retained target has no pixels after an EGL generation change.
    invoke-static {}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->getEglContextGeneration()I
    move-result v1
    iget v2, p0, Lcom/smartisanos/launcher/view/a/la;->mFolderIconsContextGeneration:I
    if-eq v1, v2, :folder_icons_context_ready
    iput v1, p0, Lcom/smartisanos/launcher/view/a/la;->mFolderIconsContextGeneration:I
    if-eqz v2, :folder_icons_notify_dirty
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/a/la;->restoreRetainedIconSources()V
    :folder_icons_notify_dirty
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/la;->dj()V
    :folder_icons_context_ready
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/a/la;->jz:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->iz:[Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->kz:Lcom/smartisanos/smengine/Camera;

    if-nez v1, :cond_1

    :cond_0
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/a/la;->jz:Z

    return-void

    :cond_1
    if-eqz p1, :cond_5

    .line 1
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/a/la;->jz:Z

    if-eqz p1, :cond_9

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/la;->lz:Lcom/smartisanos/smengine/F;

    if-eqz p1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->kz:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/la;->iz:[Lcom/smartisanos/smengine/F;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    if-eqz v3, :cond_3

    .line 5
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/la;->kz:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/N;->La(Z)V

    .line 7
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/a/la;->jz:Z

    goto :goto_2

    .line 8
    :cond_5
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/a/la;->jz:Z

    if-eqz p1, :cond_9

    .line 9
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/la;->lz:Lcom/smartisanos/smengine/F;

    if-eqz p1, :cond_6

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/la;->kz:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 11
    :cond_6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/la;->iz:[Lcom/smartisanos/smengine/F;

    array-length v1, p1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_8

    aget-object v3, p1, v2

    if-eqz v3, :cond_7

    .line 12
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/la;->kz:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :cond_8
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/la;->hz:Lcom/smartisanos/smengine/N;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/N;->La(Z)V

    .line 14
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/a/la;->jz:Z

    :cond_9
    :goto_2
    return-void
.end method

.method public r(J)Lcom/smartisanos/smengine/a/j;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast v0, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->nf()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v4, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v2, v4, p1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 5
    :goto_1
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    if-eq v1, v3, :cond_7

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/la;->Qj:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/a/h;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x4

    const v4, 0x3e99999a    # 0.3f

    const v5, 0x3e4ccccd    # 0.2f

    const v6, 0x3dcccccd    # 0.1f

    if-gt v0, v3, :cond_6

    if-eqz v1, :cond_5

    const/4 p2, 0x1

    if-eq v1, p2, :cond_4

    const/4 p2, 0x2

    if-eq v1, p2, :cond_3

    const/4 p2, 0x3

    if-eq v1, p2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->uz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 9
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->vz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 10
    iput v4, p1, Lcom/smartisanos/smengine/a/j;->z:F

    goto :goto_2

    .line 11
    :cond_3
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->sz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 12
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->tz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 13
    iput v5, p1, Lcom/smartisanos/smengine/a/j;->z:F

    goto :goto_2

    .line 14
    :cond_4
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->qz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 15
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->rz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 16
    iput v6, p1, Lcom/smartisanos/smengine/a/j;->z:F

    goto :goto_2

    .line 17
    :cond_5
    iget v0, p0, Lcom/smartisanos/launcher/view/a/la;->oz:F

    iget v1, v2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 18
    iget v0, p0, Lcom/smartisanos/launcher/view/a/la;->pz:F

    iget v1, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 19
    iput p2, p1, Lcom/smartisanos/smengine/a/j;->z:F

    .line 20
    :goto_2
    sget-boolean p2, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz p2, :cond_7

    .line 21
    iget p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p0, p0, Lcom/smartisanos/launcher/view/a/la;->xz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p0, v0

    sub-float/2addr p2, p0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    goto/16 :goto_4

    :cond_6
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 22
    :pswitch_0
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->Oz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 23
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->Pz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    const p2, 0x3f4ccccd    # 0.8f

    .line 24
    iput p2, p1, Lcom/smartisanos/smengine/a/j;->z:F

    goto/16 :goto_3

    .line 25
    :pswitch_1
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->Mz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 26
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->Nz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    const p2, 0x3f333333    # 0.7f

    .line 27
    iput p2, p1, Lcom/smartisanos/smengine/a/j;->z:F

    goto/16 :goto_3

    .line 28
    :pswitch_2
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->Kz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 29
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->Lz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    const p2, 0x3f19999a    # 0.6f

    .line 30
    iput p2, p1, Lcom/smartisanos/smengine/a/j;->z:F

    goto :goto_3

    .line 31
    :pswitch_3
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->Iz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 32
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->Jz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    const/high16 p2, 0x3f000000    # 0.5f

    .line 33
    iput p2, p1, Lcom/smartisanos/smengine/a/j;->z:F

    goto :goto_3

    .line 34
    :pswitch_4
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->Gz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 35
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->Hz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    const p2, 0x3ecccccd    # 0.4f

    .line 36
    iput p2, p1, Lcom/smartisanos/smengine/a/j;->z:F

    goto :goto_3

    .line 37
    :pswitch_5
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->Ez:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 38
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->Fz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 39
    iput v4, p1, Lcom/smartisanos/smengine/a/j;->z:F

    goto :goto_3

    .line 40
    :pswitch_6
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->Cz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 41
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->Dz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 42
    iput v5, p1, Lcom/smartisanos/smengine/a/j;->z:F

    goto :goto_3

    .line 43
    :pswitch_7
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->Az:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 44
    iget p2, p0, Lcom/smartisanos/launcher/view/a/la;->Bz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p2, v0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 45
    iput v6, p1, Lcom/smartisanos/smengine/a/j;->z:F

    goto :goto_3

    .line 46
    :pswitch_8
    iget v0, p0, Lcom/smartisanos/launcher/view/a/la;->yz:F

    iget v1, v2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 47
    iget v0, p0, Lcom/smartisanos/launcher/view/a/la;->zz:F

    iget v1, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 48
    iput p2, p1, Lcom/smartisanos/smengine/a/j;->z:F

    .line 49
    :goto_3
    sget-boolean p2, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz p2, :cond_7

    .line 50
    iget p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p0, p0, Lcom/smartisanos/launcher/view/a/la;->Rz:F

    iget v0, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p0, v0

    sub-float/2addr p2, p0

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    :cond_7
    :goto_4
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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
