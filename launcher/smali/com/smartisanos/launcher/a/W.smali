.class Lcom/smartisanos/launcher/a/W;
.super Lcom/smartisanos/smengine/n;
.source "UninstallApp.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/a/oa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/oa;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/W;->this$0:Lcom/smartisanos/launcher/a/oa;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cancel_scene_missing

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    if-eqz v0, :cancel_scene_missing

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    if-eqz v0, :cancel_scene_missing

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Sc;->mq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "cancelActionEvent return by uninstall anim is running."

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 3
    :cond_0
    # A rapid system return may overlap trash entry. Finish safely on GL.
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->hd()V

    invoke-static {v1}, Lcom/smartisanos/launcher/a/oa;->w(Z)Z

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    if-nez v2, :cond_3

    .line 6
    invoke-static {v1}, Lcom/smartisanos/launcher/a/oa;->w(Z)Z

    .line 7
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "NegativeButton click ==> error cell is null !!!"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 8
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/16 v3, 0x400

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 9
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v1

    const-string v3, "NegativeButton click ==> revertCollideStatus !"

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 10
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v3, Lcom/smartisanos/smengine/g;

    invoke-direct {v3}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 14
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Sc;->nq()V

    .line 16
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/X;->ri()Lcom/smartisanos/launcher/animations/G;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/animations/G;->C(Z)V

    .line 17
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/X;->ri()Lcom/smartisanos/launcher/animations/G;

    move-result-object v4

    const v5, 0x3e99999a    # 0.3f

    invoke-virtual {v4, v3, v5}, Lcom/smartisanos/launcher/animations/G;->a(Lcom/smartisanos/smengine/g;F)V

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v4

    sget-object v6, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->aZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    .line 19
    invoke-virtual {v4, v6, v5, v1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v4

    sget-object v6, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->hZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    .line 21
    invoke-virtual {v4, v6, v5, v1}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 22
    sget-object v4, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->NZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v0, v4, v5, v1}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 23
    sget-object v4, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->LZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v0, v4, v5, v1}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 24
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-nez v0, :cond_5

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/b/fa;->J(F)Lcom/smartisanos/smengine/g;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 26
    invoke-virtual {v3, v1, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 27
    :cond_5
    new-instance v0, Lcom/smartisanos/launcher/a/V;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/a/V;-><init>(Lcom/smartisanos/launcher/a/W;)V

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 28
    invoke-virtual {v3}, Lcom/smartisanos/smengine/g;->start()V

    return-void

    :cancel_scene_missing
    const/4 v0, 0x0
    invoke-static {v0}, Lcom/smartisanos/launcher/a/oa;->w(Z)Z
    return-void
.end method
