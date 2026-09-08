.class public Lsmartisan/api/IntentSmt;
.super Ljava/lang/Object;
.source "IntentSmt.java"


# static fields
.field public static final ACTION_COPY_HISTORY_CHANGE:Ljava/lang/String; = "android.intent.action.CopyHistoryChange"

.field public static final ACTION_FOORESULT_DISMISS:Ljava/lang/String; = "smartisanos.intent.action.FOORESULT_DISMISS"

.field public static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "smartisanos.intent.action.INSTALL_SHORTCUT"

.field public static final ACTION_LAUNCH_VOICE_COMMAND:Ljava/lang/String; = "smartisanos.intent.action.ACTION_LAUNCH_VOICE_COMMAND"

.field public static final ACTION_PHONE_MODE_CHANGED:Ljava/lang/String; = "smartisanos.intent.action.ACTION_PHONE_MODE_CHANGED"

.field public static final ACTION_SMARTISAN_GAMEAPPTYPE_UPDATED:Ljava/lang/String; = "android.intent.action_GAMEAPPTYPE_UPDATED"

.field public static final ACTION_SM_SQUEEZE_SHORTCUTS:Ljava/lang/String; = "com.smartisanos.action.SM_SQUEEZE_SHORTCUT"

.field public static final ACTION_STATUS_BAR_CLICKED:Ljava/lang/String; = "android.intent.action.STATUS_BAR_CLICKED"

.field public static final EXTRA_PHONE_MODE:Ljava/lang/String; = "phone_mode"

.field public static final EXTRA_REVONE_SMT_LAUNCH_TYPE:Ljava/lang/String; = "rev_launch_type"

.field public static final EXTRA_REVONE_SMT_POPACTIVITY_PRE_TASKID:Ljava/lang/String; = "smt_pop_pre_taskid"

.field public static final EXTRA_REVONE_SMT_WINDOW_ARROW_DIRECT:Ljava/lang/String; = "smt_window_arrow_direct"

.field public static final EXTRA_REVONE_SMT_WINDOW_ARROW_XOFFSET:Ljava/lang/String; = "smt_window_arrow_xoffset"

.field public static final EXTRA_REVONE_SMT_WINDOW_ARROW_YOFFSET:Ljava/lang/String; = "smt_window_arrow_yoffset"

.field public static final EXTRA_REVONE_SMT_WINDOW_FLOATING:Ljava/lang/String; = "smt_window_floating"

.field public static final EXTRA_REVONE_SMT_WINDOW_TYPE:Ljava/lang/String; = "window-type"

.field public static final EXTRA_REVONE_SMT_WINDOW_USE_LAST_LOCATION:Ljava/lang/String; = "smt_window_use_last_location"

.field public static final EXTRA_REVONE_SMT_WINDOW_VIEW_HEIGHT:Ljava/lang/String; = "smt_window_view_height"

.field public static final EXTRA_REVONE_SMT_WINDOW_VIEW_WIDTH:Ljava/lang/String; = "smt_window_view_width"

.field public static final EXTRA_SMARTISAN_ANIM_RESOURCE_ID:Ljava/lang/String; = "smartisanos.intent.extra.ANIM_RESOURCE_ID"

.field public static final EXTRA_SMARTISAN_KEYGUARD_LAUNCH_CAMERA:Ljava/lang/String; = "smartisanos.intent.extra.KEYGUARD_LAUNCH_CAMERA"

.field public static final EXTRA_SMARTISAN_WINDOW_OPTION:Ljava/lang/String; = "smartisanos.intent.extra.SHOW_WINDOW_WITH_OPTIONS"

.field public static final EXTRA_SM_SQUEEZE_SHORTCUTS:Ljava/lang/String; = "com.smartisanos.extra.SM_SQUEEZE_SHORTCUT"

.field public static final FLAG_NEW_TASK_FOR_ACTIVITY_RESULT:I = 0x800

.field public static final FLAG_RECEIVER_SM_USER_AWARE:I = 0x100000

.field public static final FLAG_SM_NO_AMPLIFICATION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmFlags(Landroid/content/Intent;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lsmartisan/InvokeApi$h;->a(Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method public static getSmtBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lsmartisan/InvokeApi$h;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getSmtFloatExtra(Landroid/content/Intent;Ljava/lang/String;F)F
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lsmartisan/InvokeApi$h;->a(Landroid/content/Intent;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getSmtIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lsmartisan/InvokeApi$h;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSmtLongExtra(Landroid/content/Intent;Ljava/lang/String;J)J
    .locals 0

    if-nez p0, :cond_0

    return-wide p2

    .line 1
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lsmartisan/InvokeApi$h;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getSmtStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lsmartisan/InvokeApi$h;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final get_ACTION_BATTERY_LEVEL_CHANGED()Ljava/lang/String;
    .locals 1

    const-string v0, "android.bluetooth.headset.profile.action.BATTERY_LEVEL_CHANGED"

    return-object v0
.end method

.method public static final get_ACTION_SMARTISAN_GAMEAPPTYPE_UPDATED()Ljava/lang/String;
    .locals 1

    const-string v0, "android.intent.action_GAMEAPPTYPE_UPDATED"

    return-object v0
.end method

.method public static final get_ACTION_SM_SQUEEZE_SHORTCUTS()Ljava/lang/String;
    .locals 1

    const-string v0, "com.smartisanos.action.SM_SQUEEZE_SHORTCUT"

    return-object v0
.end method

.method public static final get_ACTION_STATUS_BAR_CLICKED()Ljava/lang/String;
    .locals 1

    const-string v0, "android.intent.action.STATUS_BAR_CLICKED"

    return-object v0
.end method

.method public static final get_EXTRA_HEADSET_BATTERY_LEVEL()Ljava/lang/String;
    .locals 1

    const-string v0, "android.bluetooth.headset.extra.EXTRA_HEADSET_BATTERY_LEVEL"

    return-object v0
.end method

.method public static final get_EXTRA_SMARTISAN_ANIM_RESOURCE_ID()Ljava/lang/String;
    .locals 1

    const-string v0, "smartisanos.intent.extra.ANIM_RESOURCE_ID"

    return-object v0
.end method

.method public static final get_EXTRA_SMARTISAN_KEYGUARD_LAUNCH_CAMERA()Ljava/lang/String;
    .locals 1

    const-string v0, "smartisanos.intent.extra.KEYGUARD_LAUNCH_CAMERA"

    return-object v0
.end method

.method public static final get_EXTRA_SM_SQUEEZE_SHORTCUTS()Ljava/lang/String;
    .locals 1

    const-string v0, "com.smartisanos.extra.SM_SQUEEZE_SHORTCUT"

    return-object v0
.end method

.method public static final get_FLAG_RECEIVER_SM_USER_AWARE()I
    .locals 1

    const/high16 v0, 0x100000

    return v0
.end method

.method public static putSmtExtra(Landroid/content/Intent;Ljava/lang/String;F)V
    .locals 0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {p0, p1, p2}, Lsmartisan/InvokeApi$h;->b(Landroid/content/Intent;Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public static putSmtExtra(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, Lsmartisan/InvokeApi$h;->b(Landroid/content/Intent;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static putSmtExtra(Landroid/content/Intent;Ljava/lang/String;J)V
    .locals 0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0, p1, p2, p3}, Lsmartisan/InvokeApi$h;->b(Landroid/content/Intent;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static putSmtExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0, p1, p2}, Lsmartisan/InvokeApi$h;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static putSmtExtra(Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 5
    invoke-static {p0, p1, p2}, Lsmartisan/InvokeApi$h;->b(Landroid/content/Intent;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
