.class Lcom/smartisanos/launcher/view/Pc;
.super Lcom/smartisanos/smengine/a;
.source "TrashView.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/view/Qc;

.field final synthetic val$info:Lcom/smartisanos/launcher/data/ItemInfo;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Qc;Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Pc;->this$1:Lcom/smartisanos/launcher/view/Qc;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Pc;->val$info:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Pc;->this$1:Lcom/smartisanos/launcher/view/Qc;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Qc;->yB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Pc;->this$1:Lcom/smartisanos/launcher/view/Qc;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Qc;->yB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 3
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->fm()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v2, v5

    .line 4
    :cond_0
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 5
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->tl()V

    .line 6
    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/a/g;->clear(Z)V

    goto :goto_0

    :cond_1
    move v2, v1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Pc;->val$info:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Pc;->val$info:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/aa;->l(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Pc;->this$1:Lcom/smartisanos/launcher/view/Qc;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Qc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/Sc;Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Pc;->this$1:Lcom/smartisanos/launcher/view/Qc;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Qc;->this$0:Lcom/smartisanos/launcher/view/Sc;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/Sc;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 11
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->UZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Pc;->this$1:Lcom/smartisanos/launcher/view/Qc;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Qc;->zB:Ljava/lang/Runnable;

    if-eqz p0, :cond_4

    .line 13
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 14
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Fq()V

    if-eqz v2, :cond_5

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Gg()V

    :cond_5
    const-string v0, "UninstallAnimation"

    const-string v1, "trash_relayout complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # Resume the existing package queue after the trash/relayout phase unlocks.
    invoke-static {}, Lcom/smartisanos/launcher/data/z;->Ge()V

    return-void
.end method
