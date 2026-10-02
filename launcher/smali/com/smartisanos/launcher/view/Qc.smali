.class Lcom/smartisanos/launcher/view/Qc;
.super Lcom/smartisanos/smengine/a;
.source "TrashView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Sc;

.field final synthetic xB:Ljava/util/List;

.field final synthetic yB:Ljava/util/List;

.field final synthetic zB:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Sc;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Qc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Qc;->xB:Ljava/util/List;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/Qc;->yB:Ljava/util/List;

    iput-object p4, p0, Lcom/smartisanos/launcher/view/Qc;->zB:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Qc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/Sc;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Qc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/Sc;->b(Lcom/smartisanos/launcher/view/Sc;)Lcom/smartisanos/smengine/g;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Qc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/Sc;->b(Lcom/smartisanos/launcher/view/Sc;)Lcom/smartisanos/smengine/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 7
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Qc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    new-instance v4, Lcom/smartisanos/smengine/g;

    invoke-direct {v4}, Lcom/smartisanos/smengine/g;-><init>()V

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/Sc;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 8
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Qc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/Sc;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    const v4, 0x3e99999a    # 0.3f

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 10
    new-instance v5, Lcom/smartisanos/smengine/A;

    invoke-direct {v5}, Lcom/smartisanos/smengine/A;-><init>()V

    .line 11
    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 12
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Qc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/Sc;->b(Lcom/smartisanos/launcher/view/Sc;)Lcom/smartisanos/smengine/g;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 13
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Qc;->xB:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 14
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/A;->l(Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lcom/smartisanos/smengine/C;->Ek()Lcom/smartisanos/smengine/C;

    move-result-object v6

    const-string v7, "relayoutByUninstall"

    invoke-virtual {v6, v7, v5}, Lcom/smartisanos/smengine/C;->b(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Qc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/Sc;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/V;->x(Lcom/smartisanos/launcher/view/a/g;)V

    .line 17
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Qc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/Sc;->b(Lcom/smartisanos/launcher/view/Sc;)Lcom/smartisanos/smengine/g;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lcom/smartisanos/launcher/view/V;->g(Lcom/smartisanos/smengine/g;F)V

    .line 18
    :goto_0
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Qc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/Sc;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 19
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Qc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/Sc;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->tl()V

    .line 20
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Qc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/Sc;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/smartisanos/launcher/view/a/g;->clear(Z)V

    .line 21
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/view/Sc;->access$300()Lcom/smartisanos/launcher/va;

    move-result-object v2

    const-string v5, "waitingUninstallCell clear !!!"

    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 22
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Qc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/Sc;->b(Lcom/smartisanos/launcher/view/Sc;)Lcom/smartisanos/smengine/g;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v5, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->aZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v0, v5, v4, v2}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 25
    sget-object v5, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->hZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v0, v5, v4, v2}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 26
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v5

    sget-object v6, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->NZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v5, v6, v4, v2}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 27
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    sget-object v5, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->LZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v0, v5, v4, v2}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 28
    sget v0, Lcom/smartisanos/launcher/ob;->delete_success:I

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/Bb;->showToast(II)V

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Qc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Sc;->b(Lcom/smartisanos/launcher/view/Sc;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/view/Pc;

    invoke-direct {v1, p0, v3}, Lcom/smartisanos/launcher/view/Pc;-><init>(Lcom/smartisanos/launcher/view/Qc;Lcom/smartisanos/launcher/data/ItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Qc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Sc;->b(Lcom/smartisanos/launcher/view/Sc;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    goto :goto_2

    .line 31
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v3, 0x10000

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 32
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Qc;->yB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 33
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Qc;->yB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 34
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->fm()I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 35
    :cond_4
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 36
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->tl()V

    .line 37
    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/a/g;->clear(Z)V

    goto :goto_1

    .line 38
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Qc;->zB:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 39
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 40
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Fq()V

    if-eqz v1, :cond_7

    .line 41
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Gg()V

    .line 42
    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Qc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/Sc;->b(Lcom/smartisanos/launcher/view/Sc;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    # Non-trash removals finish here; trash removals stay gated until Pc.
    invoke-static {}, Lcom/smartisanos/launcher/data/z;->Ge()V

    return-void
.end method
