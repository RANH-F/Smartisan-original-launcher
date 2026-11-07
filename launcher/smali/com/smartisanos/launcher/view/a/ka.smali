.class public Lcom/smartisanos/launcher/view/a/ka;
.super Lcom/smartisanos/launcher/view/a/g;
.source "FolderCell.java"


# instance fields
.field private log:Lcom/smartisanos/launcher/va;

.field private sI:Lcom/smartisanos/launcher/view/a/la;

.field protected tI:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/ba;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/a/g;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/ba;)V

    .line 2
    const-class p1, Lcom/smartisanos/launcher/view/a/ka;

    invoke-static {p1}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/ka;->log:Lcom/smartisanos/launcher/va;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/a/ka;->tI:Z

    .line 4
    new-instance p1, Lcom/smartisanos/launcher/view/a/la;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/view/a/la;-><init>(Lcom/smartisanos/launcher/view/a/ka;)V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/ka;->sI:Lcom/smartisanos/launcher/view/a/la;

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast p0, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/FolderInfo;->sf()I

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/b/t;->as()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/a/ka;)Lcom/smartisanos/launcher/view/a/la;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ka;->sI:Lcom/smartisanos/launcher/view/a/la;

    return-object p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/a/ka;)Lcom/smartisanos/launcher/va;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ka;->log:Lcom/smartisanos/launcher/va;

    return-object p0
.end method

.method private r(Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/ItemInfo;->Pe()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/shadow/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ka;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete tex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    :cond_2
    return-void
.end method


# virtual methods
.method public Hm()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/db;->j(Lcom/smartisanos/launcher/view/a/g;)V

    return-void
.end method

.method public Ll()Lcom/smartisanos/launcher/view/a/la;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ka;->sI:Lcom/smartisanos/launcher/view/a/la;

    return-object p0
.end method

.method public Oa(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ka;->sI:Lcom/smartisanos/launcher/view/a/la;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/la;->oa(Z)V

    return-void
.end method

.method public Pi()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v0

    const/16 v1, 0x200

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_3

    .line 3
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 5
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x10

    .line 6
    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 7
    :cond_3
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/ka;->tI:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 8
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/a/ka;->tI:Z

    return-void

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    const/16 v3, 0x800

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/X;->Aa(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->kill()V

    return-void

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    new-instance v3, Lcom/smartisanos/smengine/g;

    invoke-direct {v3}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v3, v0, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v4, v0, v3

    sget v5, Lcom/smartisanos/launcher/view/a/g;->Ny:F

    mul-float v8, v4, v5

    mul-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v9, v0, v3

    .line 15
    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    const/4 v7, 0x0

    const/4 v10, 0x0

    iget-object v11, v6, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    const/16 v12, 0xe

    const/4 v13, 0x0

    const v14, 0x3e19999a    # 0.15f

    invoke-virtual/range {v6 .. v14}, Lcom/smartisanos/launcher/view/a/X;->a(ZFFFLcom/smartisanos/smengine/g;IZF)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v4, 0x5

    aget-object v0, v0, v4

    const v5, 0x3e99999a    # 0.3f

    const/16 v6, 0xe

    const/4 v7, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-lez v0, :cond_7

    .line 17
    new-instance v0, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 18
    new-instance v8, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v8, v7, v7, v7, v7}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    new-instance v9, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v9, v3, v3, v3, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-virtual {v0, v8, v9, v6, v5}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 19
    iget-object v8, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v8, v4

    invoke-static {v4, v0}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/oa;->ta(Z)V

    .line 21
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4, v7, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    if-eqz v0, :cond_8

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    new-instance v0, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 24
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v7, v7, v7, v7}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    new-instance v8, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v8, v3, v3, v3, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-virtual {v0, v1, v8, v6, v5}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 25
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v4

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/oa;->ta(Z)V

    .line 27
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1, v7, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 28
    :cond_8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    new-instance v1, Lcom/smartisanos/launcher/view/a/ja;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/a/ja;-><init>(Lcom/smartisanos/launcher/view/a/ka;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ka;->sI:Lcom/smartisanos/launcher/view/a/la;

    iput-boolean v2, v0, Lcom/smartisanos/launcher/view/a/la;->nz:Z

    .line 31
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public Qi()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/g;->cI:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    new-instance v2, Lcom/smartisanos/smengine/g;

    invoke-direct {v2}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v2, v0, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, v0, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v7, v3, v4

    mul-float/2addr v0, v2

    .line 7
    sget v2, Lcom/smartisanos/launcher/view/a/g;->Ny:F

    mul-float v8, v0, v2

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    const/16 v2, 0x800

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/X;->g(IZ)V

    .line 9
    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    const/4 v6, 0x1

    sget v9, Lcom/smartisanos/launcher/view/a/g;->Ly:F

    iget-object v10, v5, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    const/16 v11, 0xe

    const/4 v12, 0x0

    const v13, 0x3e19999a    # 0.15f

    invoke-virtual/range {v5 .. v13}, Lcom/smartisanos/launcher/view/a/X;->a(ZFFFLcom/smartisanos/smengine/g;IZF)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    new-instance v1, Lcom/smartisanos/launcher/view/a/ia;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/a/ia;-><init>(Lcom/smartisanos/launcher/view/a/ka;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public a(ZLcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/ka;->fb(Z)V

    .line 3
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/view/a/ka;->r(Lcom/smartisanos/launcher/data/ItemInfo;)V

    return-void
.end method

.method public b(JLjava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast v0, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/launcher/data/FolderInfo;->remove(J)V

    .line 4
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 5
    iget-object p3, p1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, p2

    :goto_0
    if-eqz p3, :cond_3

    .line 6
    sget-object p1, Lcom/smartisanos/launcher/view/activeicon/m;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ka;->sI:Lcom/smartisanos/launcher/view/a/la;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/la;->Yi()Lcom/smartisanos/launcher/view/activeicon/a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ka;->sI:Lcom/smartisanos/launcher/view/a/la;

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/a/la;->a(Lcom/smartisanos/launcher/view/activeicon/m;)V

    goto :goto_1

    .line 9
    :cond_2
    sget-object p1, Lcom/smartisanos/launcher/view/activeicon/H;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ka;->sI:Lcom/smartisanos/launcher/view/a/la;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/la;->bj()Lcom/smartisanos/launcher/view/activeicon/a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ka;->sI:Lcom/smartisanos/launcher/view/a/la;

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/view/a/la;->a(Lcom/smartisanos/launcher/view/activeicon/H;)V

    .line 12
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->lf()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_4

    .line 13
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ka;->sI:Lcom/smartisanos/launcher/view/a/la;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/la;->fj()V

    goto :goto_2

    .line 14
    :cond_4
    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/view/a/ka;->fb(Z)V

    :goto_2
    return-void
.end method

.method public cb(I)Lcom/smartisanos/smengine/F;
    .locals 4

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v0, v1, v2}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p1

    const-string v0, "TextureBlendModularColorMaterial"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/mymaterial/u;

    .line 4
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sIconBlendColor:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v2, v2, v3}, Lcom/smartisanos/smengine/mymaterial/u;->setBlendColor(FFFF)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 6
    invoke-virtual {p1, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/a/g;->d(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 8
    invoke-virtual {p1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 10
    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 11
    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y:I

    int-to-float v2, v2

    .line 12
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-nez v3, :cond_0

    .line 13
    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y_without_app_name:I

    int-to-float v2, v1

    .line 14
    :cond_0
    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p1, v1, v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 15
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateWorldTransforms()V

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v0

    .line 17
    iget v0, v0, Lcom/smartisanos/launcher/view/jb;->Mv:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 18
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->rl()V

    return-object p1
.end method

.method public bridge synthetic cb(I)Lcom/smartisanos/smengine/SceneNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/ka;->cb(I)Lcom/smartisanos/smengine/F;

    move-result-object p0

    return-object p0
.end method

.method public clear(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ka;->sI:Lcom/smartisanos/launcher/view/a/la;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/la;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/ka;->sI:Lcom/smartisanos/launcher/view/a/la;

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->clear(Z)V

    return-void
.end method

.method public create()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/g;->iH:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->ol()V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->nl()V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->ql()V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/V;->AK:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ka;->sI:Lcom/smartisanos/launcher/view/a/la;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/la;->create()V

    .line 8
    :goto_0
    invoke-super {p0}, Lcom/smartisanos/launcher/view/a/g;->create()V

    return-void
.end method

.method public preparePreviewChildLayers()V
    .locals 9

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;
    move-result-object v0
    instance-of v1, v0, Lcom/smartisanos/launcher/data/FolderInfo;
    if-eqz v1, :done
    check-cast v0, Lcom/smartisanos/launcher/data/FolderInfo;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->lf()I
    move-result v1
    const/4 v2, 0x3
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
    move-result v1
    if-lez v1, :done

    const/16 v2, 0x8
    mul-int v3, v1, v2
    new-array v3, v3, [Ljava/lang/String;
    const/4 v4, 0x0
    :child
    if-ge v4, v1, :schedule
    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/data/FolderInfo;->ia(I)Lcom/smartisanos/launcher/data/ItemInfo;
    move-result-object v5
    if-eqz v5, :next_child
    iget-byte v6, v5, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B
    if-nez v6, :next_child
    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/ItemInfo;->Pe()Ljava/lang/String;
    move-result-object v5
    const/4 v6, 0x0
    mul-int v7, v4, v2
    :layer
    if-ge v6, v2, :next_child
    invoke-virtual {p0, v5, v6}, Lcom/smartisanos/launcher/view/a/g;->n(Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v8
    aput-object v8, v3, v7
    add-int/lit8 v6, v6, 0x1
    add-int/lit8 v7, v7, 0x1
    goto :layer
    :next_child
    add-int/lit8 v4, v4, 0x1
    goto :child
    :schedule
    invoke-static {v3}, Lcom/smartisanos/launcher/theme/IconIlluminationCompat;->prepareFolderLayers([Ljava/lang/String;)V
    :done
    return-void
.end method

.method public fb(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ka;->sI:Lcom/smartisanos/launcher/view/a/la;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/la;->fj()V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ka;->sI:Lcom/smartisanos/launcher/view/a/la;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/la;->Wi()V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ka;->sI:Lcom/smartisanos/launcher/view/a/la;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/la;->Ui()V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast p1, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/FolderInfo;->sf()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->qb(I)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ka;->sI:Lcom/smartisanos/launcher/view/a/la;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/la;->dj()V

    return-void
.end method

.method public ff()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast p0, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/FolderInfo;->ff()Z

    move-result p0

    return p0
.end method

.method public gj()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ka;->sI:Lcom/smartisanos/launcher/view/a/la;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/la;->gj()V

    return-void
.end method
