.class Lcom/smartisanos/launcher/theme/k;
.super Lcom/smartisanos/smengine/n;
.source "ChangeThemeHandler.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/theme/l;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/l;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/k;->this$1:Lcom/smartisanos/launcher/theme/l;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/k;->this$1:Lcom/smartisanos/launcher/theme/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/l;->this$0:Lcom/smartisanos/launcher/theme/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/theme/t;->b(Lcom/smartisanos/launcher/theme/t;Z)V

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ea;->Is()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/k;->this$1:Lcom/smartisanos/launcher/theme/l;

    iget-object v2, v0, Lcom/smartisanos/launcher/theme/l;->this$0:Lcom/smartisanos/launcher/theme/t;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/l;->rj:Lcom/smartisanos/launcher/theme/v;

    invoke-static {v2, v0}, Lcom/smartisanos/launcher/theme/t;->b(Lcom/smartisanos/launcher/theme/t;Lcom/smartisanos/launcher/theme/v;)V

    # The old Gaussian cover is transparent at this point. Restoring white
    # before r() exposes it through the cube seams for a queued render frame.
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :clear_color_handoff_complete

    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->it()Lcom/smartisanos/smengine/J;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/J;->s(F)V

    :clear_color_handoff_complete
    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/k;->this$1:Lcom/smartisanos/launcher/theme/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/l;->this$0:Lcom/smartisanos/launcher/theme/t;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/smartisanos/launcher/theme/t;->qt:Lcom/smartisanos/smengine/g;

    .line 5
    iput-object v2, v0, Lcom/smartisanos/launcher/theme/t;->rt:Lcom/smartisanos/smengine/g;

    .line 6
    iput-object v2, v0, Lcom/smartisanos/launcher/theme/t;->st:Lcom/smartisanos/smengine/g;

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/k;->this$1:Lcom/smartisanos/launcher/theme/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/l;->this$0:Lcom/smartisanos/launcher/theme/t;

    iput-boolean v1, v0, Lcom/smartisanos/launcher/theme/t;->kt:Z

    .line 10
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/theme/t;->c(Lcom/smartisanos/launcher/theme/t;Z)Z

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/k;->this$1:Lcom/smartisanos/launcher/theme/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/l;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/theme/t;->d(Lcom/smartisanos/launcher/theme/t;Z)Z

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/k;->this$1:Lcom/smartisanos/launcher/theme/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/l;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/theme/t;->e(Lcom/smartisanos/launcher/theme/t;Z)Z

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/k;->this$1:Lcom/smartisanos/launcher/theme/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/l;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/theme/t;->f(Lcom/smartisanos/launcher/theme/t;Z)Z

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/k;->this$1:Lcom/smartisanos/launcher/theme/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/l;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/theme/t;->g(Lcom/smartisanos/launcher/theme/t;Z)Z

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/k;->this$1:Lcom/smartisanos/launcher/theme/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/l;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/theme/t;->a(Lcom/smartisanos/launcher/theme/t;Z)Z

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/k;->this$1:Lcom/smartisanos/launcher/theme/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/l;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/t;->b(Lcom/smartisanos/launcher/theme/t;)V

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/Eb;->m(II)V

    .line 18
    new-instance v0, Lcom/smartisanos/launcher/theme/h;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/theme/h;-><init>(Lcom/smartisanos/launcher/theme/k;I)V

    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 20
    new-instance v0, Lcom/smartisanos/launcher/theme/i;

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/theme/i;-><init>(Lcom/smartisanos/launcher/theme/k;I)V

    .line 21
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 22
    new-instance v0, Lcom/smartisanos/launcher/theme/j;

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/theme/j;-><init>(Lcom/smartisanos/launcher/theme/k;I)V

    .line 23
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method
