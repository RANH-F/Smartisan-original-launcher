.class public Lcom/smartisanos/launcher/view/Sc;
.super Lcom/smartisanos/smengine/SceneNode;
.source "TrashView.java"


# static fields
.field public static YO:I

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private IO:Z

.field private JO:Z

.field private KO:Z

.field private LO:Z

.field private OO:Z

.field private PO:Lcom/smartisanos/smengine/F;

.field private QO:Lcom/smartisanos/smengine/F;

.field private SO:Lcom/smartisanos/launcher/view/a/g;

.field private UO:Lcom/smartisanos/launcher/view/ec;

.field private VO:Lcom/smartisanos/launcher/view/Rc;

.field private WO:Lcom/smartisanos/smengine/g;

.field private XO:Lcom/smartisanos/smengine/g;

.field private animation:Lcom/smartisanos/launcher/animations/lb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/Sc;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/smartisanos/launcher/view/Sc;->YO:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Sc;->IO:Z

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Sc;->JO:Z

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Sc;->KO:Z

    .line 5
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Sc;->LO:Z

    .line 6
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Sc;->OO:Z

    .line 7
    new-instance p1, Lcom/smartisanos/launcher/view/Rc;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/smartisanos/launcher/view/Rc;-><init>(Lcom/smartisanos/launcher/view/Sc;Lcom/smartisanos/launcher/view/Oc;)V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Sc;->VO:Lcom/smartisanos/launcher/view/Rc;

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Sc;->WO:Lcom/smartisanos/smengine/g;

    .line 9
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Sc;->XO:Lcom/smartisanos/smengine/g;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Sc;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Sc;->SO:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Sc;Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Sc;->SO:Lcom/smartisanos/launcher/view/a/g;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Sc;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Sc;->XO:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic access$300()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/Sc;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Sc;->XO:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/Sc;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Sc;->WO:Lcom/smartisanos/smengine/g;

    return-object p1
.end method


# virtual methods
.method public Bi()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Sc;->setRenderQueue(I)V

    return-void
.end method

.method public C(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Sc;->SO:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method public a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;F)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    return-void
.end method

.method public a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Sc;->animation:Lcom/smartisanos/launcher/animations/lb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/animations/lb;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/TrashView$STATUS;Z)V
    .locals 1

    .line 13
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Raa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    if-ne p1, v0, :cond_0

    .line 14
    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/Sc;->LO:Z

    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Qaa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    if-ne p1, v0, :cond_1

    .line 16
    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/Sc;->KO:Z

    goto :goto_0

    .line 17
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Saa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    if-ne p1, v0, :cond_2

    .line 18
    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/Sc;->IO:Z

    goto :goto_0

    .line 19
    :cond_2
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Taa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    if-ne p1, v0, :cond_3

    .line 20
    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/Sc;->JO:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/TrashView$STATUS;)Z
    .locals 1

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Raa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    if-ne p1, v0, :cond_0

    .line 5
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/Sc;->LO:Z

    return p0

    .line 6
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Qaa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    if-ne p1, v0, :cond_1

    .line 7
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/Sc;->KO:Z

    return p0

    .line 8
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Saa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    if-ne p1, v0, :cond_2

    .line 9
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/Sc;->IO:Z

    return p0

    .line 10
    :cond_2
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Taa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    if-ne p1, v0, :cond_3

    .line 11
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/Sc;->JO:Z

    return p0

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown trash status !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    sget-object v6, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    const-string v7, "handleUninstallFinish nothing to do by removeItemList is empty !"

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    move v6, v5

    :goto_1
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 6
    :cond_2
    sget-object v6, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    const-string v7, "handleUninstallFinish nothing to do by pkgName is empty !"

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    move v6, v5

    :cond_3
    if-eqz v6, :cond_5

    if-eqz v3, :cond_4

    .line 7
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void

    .line 8
    :cond_5
    iget-object v6, v1, Lcom/smartisanos/launcher/view/Sc;->WO:Lcom/smartisanos/smengine/g;

    if-eqz v6, :cond_8

    .line 9
    sget-boolean v6, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v6, :cond_6

    sget-object v6, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    const-string v7, "force finish uninstallAnimationTimeLine"

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    :cond_6
    iget-object v6, v1, Lcom/smartisanos/launcher/view/Sc;->WO:Lcom/smartisanos/smengine/g;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 11
    iget-object v6, v1, Lcom/smartisanos/launcher/view/Sc;->XO:Lcom/smartisanos/smengine/g;

    if-eqz v6, :cond_8

    .line 12
    sget-boolean v6, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v6, :cond_7

    sget-object v6, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    const-string v7, "force finish relayoutByUninstallTimeLine"

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 13
    :cond_7
    iget-object v6, v1, Lcom/smartisanos/launcher/view/Sc;->XO:Lcom/smartisanos/smengine/g;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 14
    :cond_8
    new-instance v6, Lcom/smartisanos/smengine/g;

    invoke-direct {v6}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v6, v1, Lcom/smartisanos/launcher/view/Sc;->WO:Lcom/smartisanos/smengine/g;

    .line 15
    iget-object v6, v1, Lcom/smartisanos/launcher/view/Sc;->SO:Lcom/smartisanos/launcher/view/a/g;

    const-string v7, ""

    if-eqz v6, :cond_9

    .line 16
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    # Database ID is unique across components and clone users; id() is not.
    iget-wide v10, v6, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 17
    iget-object v8, v1, Lcom/smartisanos/launcher/view/Sc;->SO:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 18
    sget-boolean v9, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v9, :cond_a

    sget-object v9, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "trash is not empty, appOnTrashPackageName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object v6, v7

    move-object v8, v6

    .line 19
    :cond_a
    :goto_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_c

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 20
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    const-string v7, "some app is on trash, need this app back to parent view ~"

    invoke-virtual {v0, v7}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 21
    :cond_b
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->hd()V

    .line 22
    iput-object v9, v1, Lcom/smartisanos/launcher/view/Sc;->SO:Lcom/smartisanos/launcher/view/a/g;

    .line 23
    :cond_c
    new-instance v0, Lcom/smartisanos/launcher/view/Oc;

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/Oc;-><init>(Lcom/smartisanos/launcher/view/Sc;)V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    .line 24
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_e

    .line 26
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 27
    iget-wide v10, v8, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 28
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-interface {v2, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30
    :cond_e
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 31
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    :cond_f
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v8

    .line 34
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v10

    .line 35
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v11

    .line 36
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 37
    iget-wide v13, v12, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    .line 38
    sget-boolean v14, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v14, :cond_11

    sget-object v14, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 39
    :cond_11
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 40
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "remove item from waiting uninstall list "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    goto :goto_3

    :cond_12
    move-object v12, v9

    :cond_13
    :goto_3
    const v6, 0x3e99999a    # 0.3f

    if-eqz v12, :cond_17

    .line 42
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    const-string v12, "######## uninstall by trash !"

    invoke-virtual {v0, v12}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 43
    :cond_14
    const-string v0, "UninstallAnimation"

    const-string v12, "fall_into_trash start"

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Tl()I

    move-result v0

    .line 44
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/smartisanos/launcher/view/nb;->ua(I)Lcom/smartisanos/launcher/view/kb;

    move-result-object v0

    .line 45
    iget-object v12, v1, Lcom/smartisanos/launcher/view/Sc;->SO:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v12, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v12

    iget v13, v0, Lcom/smartisanos/launcher/view/kb;->nw:I

    add-int/2addr v13, v5

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 46
    iget-object v12, v1, Lcom/smartisanos/launcher/view/Sc;->SO:Lcom/smartisanos/launcher/view/a/g;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v12

    if-eqz v12, :cond_15

    .line 47
    iget v0, v0, Lcom/smartisanos/launcher/view/kb;->nw:I

    add-int/2addr v0, v5

    invoke-virtual {v12, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 48
    :cond_15
    iget-object v0, v1, Lcom/smartisanos/launcher/view/Sc;->SO:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v12

    .line 50
    iget-object v13, v1, Lcom/smartisanos/launcher/view/Sc;->SO:Lcom/smartisanos/launcher/view/a/g;

    iget v14, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v12, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v13, v14, v0, v12}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 51
    iget-object v0, v1, Lcom/smartisanos/launcher/view/Sc;->SO:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v12, v1, Lcom/smartisanos/launcher/view/Sc;->WO:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v2, v1, Lcom/smartisanos/launcher/view/Sc;->SO:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/X;->ri()Lcom/smartisanos/launcher/animations/G;

    move-result-object v2

    sget-object v12, Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;->YY:Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;

    invoke-virtual {v2, v12, v6, v0}, Lcom/smartisanos/launcher/animations/G;->a(Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;FLjava/util/ArrayList;)V

    .line 56
    iget-object v0, v1, Lcom/smartisanos/launcher/view/Sc;->SO:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_16

    .line 57
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result v0

    if-nez v0, :cond_16

    .line 58
    :try_start_0
    iget-object v0, v1, Lcom/smartisanos/launcher/view/Sc;->SO:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    move-object v0, v9

    :goto_4
    if-eqz v0, :cond_17

    .line 60
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 61
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->ao()V

    .line 62
    :cond_17
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 63
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/db;->ih()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/t;->Zr()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 65
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_18

    sget-object v2, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    const-string v12, "### current folder is opening, force finish open animation."

    invoke-virtual {v2, v12}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 66
    :cond_18
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/db;->ih()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/t;->Sr()V

    .line 67
    :cond_19
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/db;->ih()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/t;->Yr()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 68
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    const-string v12, "### current folder is closing , force finish animation."

    invoke-virtual {v2, v12}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 69
    :cond_1a
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/db;->ih()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/t;->Sr()V

    goto :goto_5

    .line 70
    :cond_1b
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    const-string v12, "### current folder has open, close and force finish animation."

    invoke-virtual {v2, v12}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 71
    :cond_1c
    invoke-virtual {v0, v5, v4}, Lcom/smartisanos/launcher/view/db;->b(ZZ)V

    .line 72
    :cond_1d
    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 75
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_23

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 76
    iget-wide v14, v13, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-ltz v16, :cond_22

    .line 77
    invoke-virtual {v10, v14, v15}, Lcom/smartisanos/launcher/view/b/fa;->q(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v6

    if-eqz v6, :cond_1e

    .line 78
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 79
    :cond_1e
    invoke-virtual {v11, v14, v15}, Lcom/smartisanos/launcher/view/V;->t(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v6

    if-eqz v6, :cond_1f

    .line 80
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 81
    :cond_1f
    invoke-virtual {v13}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 82
    iget v6, v13, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    int-to-long v14, v6

    .line 83
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_20

    .line 84
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 85
    :cond_20
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-boolean v6, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v6, :cond_22

    sget-object v6, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onRemoveItems this item is in Folder iteminfo ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_7

    .line 88
    :cond_21
    sget-object v6, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onRemoveItems can\'t find page cell by id ["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "], package name ["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_22
    :goto_7
    const/4 v5, 0x1

    const v6, 0x3e99999a    # 0.3f

    const/4 v9, 0x0

    goto/16 :goto_6

    .line 89
    :cond_23
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v5

    const/4 v7, 0x2

    if-lez v5, :cond_32

    .line 90
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v9, v4

    .line 91
    :goto_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_32

    .line 92
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 93
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 94
    invoke-static {v13, v14}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v13

    check-cast v13, Lcom/smartisanos/launcher/data/FolderInfo;

    if-eqz v13, :cond_30

    .line 95
    invoke-virtual {v13}, Lcom/smartisanos/launcher/data/FolderInfo;->lf()I

    move-result v14

    .line 96
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 p2, v5

    .line 97
    iget-wide v4, v13, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/e/s;->o(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/a/ka;

    if-le v15, v14, :cond_25

    .line 98
    sget-object v0, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "#### folder children size error !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! "

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 99
    :goto_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 100
    sget-object v1, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### child j = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " childinfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 101
    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### this folder has not enough children !!! folderInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/smartisanos/launcher/data/FolderInfo;->ef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    sub-int/2addr v14, v15

    if-lt v14, v7, :cond_27

    const/4 v5, 0x0

    .line 102
    :goto_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_26

    .line 103
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smartisanos/launcher/data/ItemInfo;

    move-object v15, v8

    .line 104
    iget-wide v7, v14, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 105
    iget-object v6, v14, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8, v6}, Lcom/smartisanos/launcher/view/a/ka;->b(JLjava/lang/String;)V

    .line 106
    iget v6, v14, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    iget v7, v14, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {v13, v6, v7}, Lcom/smartisanos/launcher/data/FolderInfo;->j(II)V

    add-int/lit8 v5, v5, 0x1

    move-object v8, v15

    const/4 v7, 0x2

    goto :goto_a

    :cond_26
    move-object v15, v8

    .line 107
    sget-object v5, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->UZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v5}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    const/4 v5, 0x0

    .line 108
    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/a/ka;->fb(Z)V

    const/4 v6, 0x0

    goto/16 :goto_f

    :cond_27
    move-object v15, v8

    if-nez v14, :cond_2a

    .line 109
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    instance-of v5, v5, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v5, :cond_28

    .line 110
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 111
    :cond_28
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    instance-of v5, v5, Lcom/smartisanos/launcher/view/V;

    if-eqz v5, :cond_29

    .line 112
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :goto_b
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 114
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    long-to-int v4, v4

    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v4, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->saa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v5, 0x0

    invoke-static {v4, v5, v6}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    move-object v6, v5

    goto/16 :goto_f

    .line 117
    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "### folder cell parent is unknow !!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_2a
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    const/4 v6, 0x0

    .line 119
    :goto_c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2b

    .line 120
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v7, v7, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 121
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v14, v14, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8, v14}, Lcom/smartisanos/launcher/view/a/ka;->b(JLjava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 122
    :cond_2b
    invoke-virtual {v13}, Lcom/smartisanos/launcher/data/FolderInfo;->rf()Ljava/util/ArrayList;

    move-result-object v6

    .line 123
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2f

    const/4 v7, 0x0

    .line 124
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 125
    instance-of v7, v5, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v7, :cond_2c

    .line 126
    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    .line 127
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v7

    .line 128
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v8

    .line 129
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->getSinglePageMode()I

    move-result v10

    invoke-static {v10}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v10

    .line 130
    invoke-virtual {v5, v7, v8, v6, v10}, Lcom/smartisanos/launcher/view/b/M;->a(IILcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v6

    .line 131
    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 132
    invoke-virtual {v5, v7, v8}, Lcom/smartisanos/launcher/view/b/M;->getIndex(II)I

    move-result v7

    .line 133
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object v8

    .line 134
    aget-object v7, v8, v7

    .line 135
    iget v8, v7, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v7, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v7, v10}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 136
    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 137
    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 138
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    .line 139
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->Om()V

    goto :goto_d

    .line 140
    :cond_2c
    instance-of v5, v5, Lcom/smartisanos/launcher/view/V;

    if-eqz v5, :cond_2e

    .line 141
    invoke-virtual {v11, v4}, Lcom/smartisanos/launcher/view/V;->x(Lcom/smartisanos/launcher/view/a/g;)V

    .line 142
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 143
    iget v7, v13, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {v11, v6, v7}, Lcom/smartisanos/launcher/view/V;->b(Lcom/smartisanos/launcher/data/ItemInfo;I)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v6

    .line 144
    iget v7, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v5, Lcom/smartisanos/smengine/a/j;->y:F

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v6, v7, v8, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 145
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPageMode()I

    move-result v5

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->isMultiPageMode(I)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 146
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v5

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    .line 147
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v7

    invoke-static {v7}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v7

    .line 148
    iget v8, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v10, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float/2addr v8, v10

    .line 149
    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float/2addr v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    .line 150
    invoke-virtual {v6, v8, v5, v7}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 151
    :cond_2d
    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 152
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/V;->gp()V

    .line 153
    :goto_d
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    iput v7, v5, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 154
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    iput v7, v5, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 155
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    const/4 v7, -0x1

    iput v7, v5, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    .line 156
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->Vg()V

    .line 157
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/ItemInfo;->clone()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    .line 158
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    iget-wide v6, v6, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 159
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    long-to-int v6, v6

    .line 160
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v5, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->saa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v6, 0x0

    invoke-static {v5, v6, v8}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 163
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 164
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->tl()V

    const/4 v5, 0x1

    .line 165
    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/a/ka;->clear(Z)V

    goto :goto_f

    .line 166
    :cond_2e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "### folder cell parent unknown !!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_2f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "### folder child remove error, child is not 1 ."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    move-object/from16 p2, v5

    move-object v15, v8

    const/4 v6, 0x0

    .line 168
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 169
    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/ItemInfo;->Me()V

    goto :goto_e

    :cond_31
    :goto_f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, p2

    move-object v8, v15

    const/4 v4, 0x0

    const/4 v7, 0x2

    goto/16 :goto_8

    :cond_32
    move-object v15, v8

    .line 170
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_33

    .line 171
    new-instance v4, Lcom/smartisanos/smengine/A;

    invoke-direct {v4}, Lcom/smartisanos/smengine/A;-><init>()V

    .line 172
    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 173
    iget-object v5, v1, Lcom/smartisanos/launcher/view/Sc;->WO:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 175
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 176
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v5

    const-string v6, "relayoutByUninstall"

    invoke-virtual {v5, v6, v4}, Lcom/smartisanos/smengine/C;->b(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V

    .line 177
    :cond_33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/a/g;

    .line 179
    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v7, :cond_37

    .line 180
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_36

    .line 181
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v8

    const/16 v10, 0x10

    if-nez v8, :cond_34

    .line 182
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v8

    if-nez v8, :cond_34

    const/4 v8, 0x0

    .line 183
    invoke-virtual {v7, v8, v8, v8, v8}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 184
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/M;->ao()V

    goto :goto_11

    :cond_34
    const/4 v8, 0x0

    .line 185
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 186
    sget-object v7, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    const-string v9, "remove empty page failed by ON_PAGE_HAS_FLOAT"

    invoke-virtual {v7, v9}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 187
    :cond_35
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 188
    sget-object v7, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    const-string v9, "remove empty page failed by ON_PAGE_DOING_FLOATING_ANIM"

    invoke-virtual {v7, v9}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_11

    :cond_36
    const/4 v8, 0x0

    goto :goto_11

    :cond_37
    const/4 v8, 0x0

    .line 189
    sget-boolean v7, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v7, :cond_38

    sget-object v7, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    const-string v9, "TrashView, handleUninstall currentPage is null !"

    invoke-virtual {v7, v9}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 190
    :cond_38
    :goto_11
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v8

    goto :goto_10

    .line 191
    :cond_39
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3a
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v7, :cond_3a

    .line 192
    invoke-virtual {v11, v7}, Lcom/smartisanos/launcher/view/V;->x(Lcom/smartisanos/launcher/view/a/g;)V

    .line 193
    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 194
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->tl()V

    const/4 v8, 0x1

    .line 195
    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/view/a/g;->clear(Z)V

    goto :goto_12

    .line 196
    :cond_3b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3c

    .line 197
    iget-object v2, v1, Lcom/smartisanos/launcher/view/Sc;->WO:Lcom/smartisanos/smengine/g;

    const v5, 0x3e99999a    # 0.3f

    invoke-virtual {v11, v2, v5}, Lcom/smartisanos/launcher/view/V;->g(Lcom/smartisanos/smengine/g;F)V

    goto :goto_13

    :cond_3c
    const v5, 0x3e99999a    # 0.3f

    :goto_13
    if-eqz v6, :cond_3d

    move-object v2, v15

    .line 198
    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/view/b/fa;->J(F)Lcom/smartisanos/smengine/g;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 199
    iget-object v5, v1, Lcom/smartisanos/launcher/view/Sc;->WO:Lcom/smartisanos/smengine/g;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 200
    :cond_3d
    iget-object v2, v1, Lcom/smartisanos/launcher/view/Sc;->WO:Lcom/smartisanos/smengine/g;

    new-instance v5, Lcom/smartisanos/launcher/view/Qc;

    invoke-direct {v5, v1, v0, v4, v3}, Lcom/smartisanos/launcher/view/Qc;-><init>(Lcom/smartisanos/launcher/view/Sc;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 201
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v2, 0x10000

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 202
    iget-object v0, v1, Lcom/smartisanos/launcher/view/Sc;->WO:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    return-void
.end method

.method public f(Lcom/smartisanos/smengine/l;)I
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/Sc;->JO:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "touchUpAndObjectInTrashArea true"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return v0

    .line 3
    :cond_1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Sc;->IO:Z

    .line 4
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/Sc;->KO:Z

    const/4 v0, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/smartisanos/launcher/view/Sc;->animation:Lcom/smartisanos/launcher/animations/lb;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/animations/lb;->Td()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    sget-object p1, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->MZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;F)V

    :cond_3
    :goto_0
    return v0
.end method

.method public g(Lcom/smartisanos/smengine/l;)I
    .locals 4

    .line 1
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/Sc;->JO:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Sc;->IO:Z

    .line 3
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Sc;->KO:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Sc;->animation:Lcom/smartisanos/launcher/animations/lb;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/lb;->Td()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v2, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->NZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v2, v3, v0}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 8
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    :cond_2
    :goto_0
    return p1
.end method

.method public getAnimation()Lcom/smartisanos/launcher/animations/lb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Sc;->animation:Lcom/smartisanos/launcher/animations/lb;

    return-object p0
.end method

.method public i(Lcom/smartisanos/smengine/a/j;)Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/j;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/j;->isPointInBoundingVolume(Lcom/smartisanos/smengine/a/j;)Z

    move-result p0

    return p0
.end method

.method public iq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Sc;->WO:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Sc;->XO:Lcom/smartisanos/smengine/g;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_1
    return-void
.end method

.method public jq()Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Sc;->SO:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method public kq()Lcom/smartisanos/launcher/view/ec;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Sc;->UO:Lcom/smartisanos/launcher/view/ec;

    return-object p0
.end method

.method public l(Lcom/smartisanos/launcher/view/ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Sc;->UO:Lcom/smartisanos/launcher/view/ec;

    return-void
.end method

.method public lq()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/Sc;->IO:Z

    return p0
.end method

.method public mq()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Sc;->WO:Lcom/smartisanos/smengine/g;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Sc;->XO:Lcom/smartisanos/smengine/g;

    if-eqz p0, :cond_0

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

.method public n(IZ)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/smartisanos/launcher/view/V;->a(IZZ)Lcom/smartisanos/smengine/a/j;

    move-result-object p2

    .line 2
    iget v0, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p2, Lcom/smartisanos/smengine/a/j;->y:F

    iget p2, p2, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p0, v0, v1, p2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 3
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p2

    iget p2, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_react_width:F

    .line 4
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_react_height:F

    neg-float v1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    neg-float v3, v0

    div-float/2addr v3, v2

    div-float/2addr p2, v2

    div-float/2addr v0, v2

    .line 5
    invoke-virtual {p0, v1, v3, p2, v0}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 6
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Sc;->PO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p2}, Lcom/smartisanos/smengine/F;->getWidth()F

    move-result p2

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Sc;->PO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/F;->getHeight()F

    move-result v0

    .line 8
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_width:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, p2

    mul-float/2addr v1, v2

    .line 9
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_height:F

    mul-float/2addr p1, v2

    div-float/2addr p1, v0

    mul-float/2addr p1, v2

    .line 10
    sget-boolean p2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/smartisanos/launcher/view/Sc;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trash scale value scale_w ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "], scale_h ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 11
    :cond_0
    invoke-virtual {p0, v1, p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public nq()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Sc;->IO:Z

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Sc;->JO:Z

    return-void
.end method

.method public oq()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Sc;->OO:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Sc;->OO:Z

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 4
    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_width:F

    .line 5
    iget v3, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_height:F

    const-string v4, "trash.png"

    .line 6
    invoke-static {v4}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v2, v3, v6, v0}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v5

    iput-object v5, p0, Lcom/smartisanos/launcher/view/Sc;->PO:Lcom/smartisanos/smengine/F;

    .line 7
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Sc;->PO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 8
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Sc;->PO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 9
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Sc;->PO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 10
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Sc;->PO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 11
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Sc;->PO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    const/high16 v7, -0x40000000    # -2.0f

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v5, v8, v7}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 12
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Sc;->PO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 13
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Sc;->PO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 14
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Sc;->PO:Lcom/smartisanos/smengine/F;

    invoke-static {v4}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 15
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Sc;->PO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/V;->Tl()I

    move-result v4

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/view/nb;->ua(I)Lcom/smartisanos/launcher/view/kb;

    move-result-object v4

    .line 18
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Sc;->PO:Lcom/smartisanos/smengine/F;

    iget v10, v4, Lcom/smartisanos/launcher/view/kb;->ow:I

    invoke-virtual {v5, v10}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    const-string v5, "trash_shadow.png"

    .line 19
    invoke-static {v5}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2, v3, v6, v0}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/view/Sc;->QO:Lcom/smartisanos/smengine/F;

    .line 20
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Sc;->QO:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 21
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Sc;->QO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 22
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Sc;->QO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 23
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Sc;->QO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 24
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Sc;->QO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v8, v7}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 25
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Sc;->QO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 26
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Sc;->QO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 27
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Sc;->QO:Lcom/smartisanos/smengine/F;

    invoke-static {v5}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Sc;->QO:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Sc;->QO:Lcom/smartisanos/smengine/F;

    iget v2, v4, Lcom/smartisanos/launcher/view/kb;->nw:I

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 30
    new-instance v0, Lcom/smartisanos/launcher/animations/lb;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/animations/lb;-><init>(Lcom/smartisanos/launcher/view/Sc;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Sc;->animation:Lcom/smartisanos/launcher/animations/lb;

    .line 31
    iget v0, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_react_width:F

    neg-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_react_height:F

    neg-float v4, v1

    div-float/2addr v4, v3

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-virtual {p0, v2, v4, v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 32
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Sc;->Bi()V

    return-void
.end method

.method public setRenderQueue(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
