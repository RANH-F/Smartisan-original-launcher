.class Lcom/smartisanos/launcher/theme/l;
.super Lcom/smartisanos/smengine/a;
.source "ChangeThemeHandler.java"


# instance fields
.field final synthetic rj:Lcom/smartisanos/launcher/theme/v;

.field final synthetic this$0:Lcom/smartisanos/launcher/theme/t;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/t;Lcom/smartisanos/launcher/theme/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/l;->this$0:Lcom/smartisanos/launcher/theme/t;

    iput-object p2, p0, Lcom/smartisanos/launcher/theme/l;->rj:Lcom/smartisanos/launcher/theme/v;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    # Restore the steady clear color in k.run, after the scene handoff.
    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->l(Z)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/J;->H(I)V

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/theme/k;

    const/16 v2, 0x64

    invoke-direct {v0, p0, v2}, Lcom/smartisanos/launcher/theme/k;-><init>(Lcom/smartisanos/launcher/theme/l;I)V

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->fi()V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/l;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/theme/t;->P(Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/l;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/t;->c(Lcom/smartisanos/launcher/theme/t;)[Lcom/smartisanos/smengine/F;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 10
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 11
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/l;->this$0:Lcom/smartisanos/launcher/theme/t;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartisanos/launcher/theme/t;->tt:Lcom/smartisanos/launcher/theme/s;

    .line 13
    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/t;->Rf()V

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->m(F)V

    .line 15
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/l;->this$0:Lcom/smartisanos/launcher/theme/t;

    iget-boolean p0, p0, Lcom/smartisanos/launcher/theme/t;->kt:Z

    if-eqz p0, :cond_2

    .line 16
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/d;->Oj()V

    .line 17
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    :cond_2
    return-void
.end method
