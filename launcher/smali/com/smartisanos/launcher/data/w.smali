.class Lcom/smartisanos/launcher/data/w;
.super Lcom/smartisanos/smengine/n;
.source "DatabaseHandler.java"


# instance fields
.field final synthetic WD:Lcom/smartisanos/launcher/data/z;


# direct methods
.method constructor <init>(ILcom/smartisanos/launcher/data/z;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/data/w;->WD:Lcom/smartisanos/launcher/data/z;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageTask action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/data/w;->WD:Lcom/smartisanos/launcher/data/z;

    iget v2, v2, Lcom/smartisanos/launcher/data/z;->Mk:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/z;->fa(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/data/w;->WD:Lcom/smartisanos/launcher/data/z;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/z;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/data/w;->WD:Lcom/smartisanos/launcher/data/z;

    iget v0, v0, Lcom/smartisanos/launcher/data/z;->Mk:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "ON_CELL_IN_TRASH is true, set remove task to top"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    # Prioritize the selected database row, not every component of its package.
    iget-wide v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iget-object v1, p0, Lcom/smartisanos/launcher/data/w;->WD:Lcom/smartisanos/launcher/data/z;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/z;->Yj:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :remove_find_selected
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v0, v3, v5

    if-nez v0, :remove_find_selected

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/data/z;->u()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/smartisanos/launcher/data/w;->WD:Lcom/smartisanos/launcher/data/z;

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/data/z;->Ge()V

    return-void

    .line 10
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/data/z;->u()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/data/w;->WD:Lcom/smartisanos/launcher/data/z;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/data/z;->Ge()V

    return-void
.end method
