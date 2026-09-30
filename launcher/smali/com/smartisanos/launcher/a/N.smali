.class Lcom/smartisanos/launcher/a/N;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Mj:Landroid/content/Intent;

.field final synthetic Nj:I

.field final synthetic Oj:I

.field final synthetic Pj:Z


# direct methods
.method constructor <init>(Landroid/content/Intent;ZII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/N;->Mj:Landroid/content/Intent;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/a/N;->Pj:Z

    iput p3, p0, Lcom/smartisanos/launcher/a/N;->Nj:I

    iput p4, p0, Lcom/smartisanos/launcher/a/N;->Oj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/smartisanos/launcher/a/N;->Mj:Landroid/content/Intent;

    const-string v3, "com.smartisanos.userId"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/a/P;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### startactivity: intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/smartisanos/launcher/a/N;->Mj:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " userid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    .line 4
    iget-boolean v5, p0, Lcom/smartisanos/launcher/a/N;->Pj:Z

    if-nez v5, :cond_1

    .line 5
    iget v5, p0, Lcom/smartisanos/launcher/a/N;->Nj:I

    iget v6, p0, Lcom/smartisanos/launcher/a/N;->Oj:I

    invoke-static {v5, v6, v1, v1}, Lcom/smartisanos/launcher/a/P;->a(IIII)Landroid/app/ActivityOptions;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    :cond_1
    const/16 v5, 0xa

    .line 6
    iget-object v5, p0, Lcom/smartisanos/launcher/a/N;->Mj:Landroid/content/Intent;

    invoke-static {v0, v5, v3, v2}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->startActivityForUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;I)V

    goto :goto_0

    if-ne v2, v5, :cond_2

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/a/N;->Mj:Landroid/content/Intent;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v3, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 8
    iget-object v2, p0, Lcom/smartisanos/launcher/a/N;->Mj:Landroid/content/Intent;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_3
    if-ne v2, v4, :cond_4

    .line 9
    iget-object v2, p0, Lcom/smartisanos/launcher/a/N;->Mj:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/a/N;->Mj:Landroid/content/Intent;

    const-string v2, "intent_extra_for_search"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/smartisanos/launcher/fb;->wallpaper_gesture_close_enter:I

    sget v3, Lcom/smartisanos/launcher/fb;->wallpaper_gesture_close_exit:I

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 12
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivitySafely error. userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 13
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/a/P;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "hideCellClickShadow 2"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 14
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Nh()V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 16
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/a/P;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v2

    const-string v3, "hideCellClickShadow 1"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 17
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Nh()V

    .line 18
    sget v2, Lcom/smartisanos/launcher/ob;->activity_not_found:I

    invoke-static {v2, v1}, Lcom/smartisanos/launcher/Bb;->showToast(II)V

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/a/P;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch. intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/a/N;->Mj:Landroid/content/Intent;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method
