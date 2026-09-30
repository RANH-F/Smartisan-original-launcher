.class Lcom/smartisanos/launcher/ia;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationProxy.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ja;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/ia;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    move-object v7, p1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p2, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->ACTION_INTERNAL_FORCE_FINISH:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_codex_not_force_finish

    iget-object p0, p0, Lcom/smartisanos/launcher/ia;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-static {p0}, Lcom/smartisanos/launcher/ja;->b(Lcom/smartisanos/launcher/ja;)Lcom/smartisanos/smengine/n;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void

    :cond_codex_not_force_finish
    sget-object p2, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->ACTION_INTERNAL_PLAY:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_codex_not_internal_play

    invoke-static {v7}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->takeInternalPlayPermit(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_codex_internal_play_allowed

    return-void

    :cond_codex_internal_play_allowed
    const-string v0, "mLockScreenReceiver #### current is single page mode. prepare do unlock animation init."

    const/4 v1, 0x0

    goto/16 :cond_codex_unlock_state_ready

    :cond_codex_not_internal_play
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_codex_unlock_action_ready

    const-string p1, "SCREEN_OFF"

    invoke-static {v7, p1}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->armAndPrepareIfNeeded(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    :cond_codex_unlock_action_ready
    sget-boolean p2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const-string v0, "action_keyguard_on"

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/d/e;->dismissDialog()V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/ia;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-static {p0}, Lcom/smartisanos/launcher/ja;->f(Lcom/smartisanos/launcher/ja;)Lcom/smartisanos/smengine/n;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_1
    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p2

    if-nez p2, :cond_3

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "mActivityBroadcastReceiver isActivityReady false"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    const-string p0, "RECEIVER_ACTIVITY_NOT_READY"

    invoke-static {v7, p0}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->forceFinishOriginal(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "mLockScreenReceiver #### current is single page mode. prepare do unlock animation init."

    if-eqz p2, :cond_c

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/high16 p2, 0x20000000

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 10
    invoke-static {p1}, Lcom/smartisanos/launcher/d/h;->dismiss(Z)V

    .line 11
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/d/e;->dismissDialog()V

    .line 12
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p1

    const-string p2, "UnlockAnim, ACTION_KEYGUARD_ON begin !"

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 13
    :cond_5
    invoke-static {v7}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->canPrepare(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_codex_prepare_session_ready

    return-void

    :cond_codex_prepare_session_ready
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p1

    iget-boolean p1, p1, Lcom/smartisanos/launcher/J;->Yf:Z

    if-eqz p1, :cond_6

    invoke-static {v7}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->onPrepareFailed(Landroid/content/Context;)V

    return-void

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/smartisanos/launcher/ia;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/ja;->nb()V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/launcher/ia;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-static {p1}, Lcom/smartisanos/launcher/ja;->g(Lcom/smartisanos/launcher/ja;)V

    .line 17
    iget-object p1, p0, Lcom/smartisanos/launcher/ia;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-static {p1}, Lcom/smartisanos/launcher/ja;->f(Lcom/smartisanos/launcher/ja;)Lcom/smartisanos/smengine/n;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/launcher/ia;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-static {p1}, Lcom/smartisanos/launcher/ja;->h(Lcom/smartisanos/launcher/ja;)Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->ia(Landroid/content/Context;)Z

    move-result p1

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnlockAnim, ACTION_KEYGUARD_ON isHome:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    if-eqz p1, :cond_18

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_0

    .line 21
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result p1

    if-nez p1, :cond_9

    .line 22
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_8
    invoke-static {v7}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->onPrepareFailed(Landroid/content/Context;)V

    return-void

    .line 23
    :cond_9
    iget-object p0, p0, Lcom/smartisanos/launcher/ia;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ja;->hb()Lcom/smartisanos/smengine/n;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    goto/16 :goto_2

    .line 24
    :cond_a
    :goto_0
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_b

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "mLockScreenReceiver ACTION_KEYGUARD_ON MainView.getInstance() is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_b
    invoke-static {v7}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->onPrepareFailed(Landroid/content/Context;)V

    return-void

    :cond_c
    const-string p2, "android.intent.action.USER_PRESENT"

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    const-string p2, "action_keyguard_to_dismiss"

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 27
    :cond_d
    invoke-static {v7, v6}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->onDismissSignal(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_codex_unlock_state_ready

    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p1

    const-string p2, "UnlockAnim, ACTION_KEYGUARD_TO_DISMISS begin !"

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 28
    :cond_e
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p1

    if-nez p1, :cond_f

    .line 29
    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "mLockScreenReceiver execute error, isActivityReady false"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    const-string p0, "PLAY_ACTIVITY_NOT_READY"

    invoke-static {v7, p0}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->forceFinishOriginal(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 30
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 31
    iget-object v2, p0, Lcom/smartisanos/launcher/ia;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-static {v2}, Lcom/smartisanos/launcher/ja;->i(Lcom/smartisanos/launcher/ja;)J

    move-result-wide v2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-lez v2, :cond_10

    .line 32
    iget-object v2, p0, Lcom/smartisanos/launcher/ia;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-static {v2}, Lcom/smartisanos/launcher/ja;->h(Lcom/smartisanos/launcher/ja;)Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/launcher/e/s;->ia(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/ja;->b(Lcom/smartisanos/launcher/ja;Z)Z

    .line 33
    iget-object v2, p0, Lcom/smartisanos/launcher/ia;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-static {v2, p1, p2}, Lcom/smartisanos/launcher/ja;->a(Lcom/smartisanos/launcher/ja;J)J

    .line 34
    :cond_10
    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnlockAnim, ACTION_KEYGUARD_TO_DISMISS isHome:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/ia;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-static {v2}, Lcom/smartisanos/launcher/ja;->j(Lcom/smartisanos/launcher/ja;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/smartisanos/launcher/ia;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-static {p1}, Lcom/smartisanos/launcher/ja;->j(Lcom/smartisanos/launcher/ja;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 36
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_11

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p1

    const-string p2, "### ACTION_KEYGUARD_TO_DISMISS,launcher is home."

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 37
    :cond_11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    if-nez p1, :cond_12

    goto :goto_1

    .line 38
    :cond_12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result p1

    if-nez p1, :cond_14

    .line 39
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_13

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_13
    const-string p0, "PLAY_PAGE_STATE_NOT_READY"

    invoke-static {v7, p0}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->forceFinishOriginal(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_14
    invoke-static {}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->isMaintainedCompatMode()Z

    move-result v2

    if-eqz v2, :cond_codex_maintained_compat_done

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/r;->Kd()Z

    move-result v3

    if-nez v3, :cond_codex_maintained_compat_done

    iget-object v3, p0, Lcom/smartisanos/launcher/ia;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/ja;->hb()Lcom/smartisanos/smengine/n;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_codex_maintained_compat_done
    iget-object p0, p0, Lcom/smartisanos/launcher/ia;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-static {p0}, Lcom/smartisanos/launcher/ja;->k(Lcom/smartisanos/launcher/ja;)Lcom/smartisanos/smengine/n;

    move-result-object p0

    .line 41
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_2

    .line 42
    :cond_15
    :goto_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_16

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "mLockScreenReceiver ACTION_KEYGUARD_TO_DISMISS MainView.getInstance() is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_16
    const-string p0, "PLAY_MAIN_VIEW_NOT_READY"

    invoke-static {v7, p0}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->forceFinishOriginal(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 43
    :cond_17
    iget-object p0, p0, Lcom/smartisanos/launcher/ia;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-static {p0}, Lcom/smartisanos/launcher/ja;->b(Lcom/smartisanos/launcher/ja;)Lcom/smartisanos/smengine/n;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_18
    :goto_2
    return-void
.end method
