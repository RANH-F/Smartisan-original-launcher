.class public final Lsmartisan/api/SettingsSmt$SHORTCUT_KEY_VALUE;
.super Ljava/lang/Object;
.source "SettingsSmt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/api/SettingsSmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHORTCUT_KEY_VALUE"
.end annotation


# static fields
.field public static final ANSWER_CALL:Ljava/lang/String; = "answer_all"

.field public static final BULLET_SMS:Ljava/lang/String; = "bullet_sms"

.field public static final DARKEN_SCREEN:Ljava/lang/String; = "darken_screen"

.field public static final FEATURE_CMEL:Ljava/lang/String; = "feature_cmel"

.field public static final IDEA_PILLS_LIST:Ljava/lang/String; = "idea_pills_list"

.field public static final KEEP_SCREEN_ON:Ljava/lang/String; = "keep_screen_on"

.field public static final LAUNCH_CACULATOR:Ljava/lang/String; = "launch_calculator"

.field public static final LAUNCH_CAMERA:Ljava/lang/String; = "launch_camera"

.field public static final LIGHTEN_SCREEN:Ljava/lang/String; = "lighten_screen"

.field public static final LOCKSCREEN:Ljava/lang/String; = "lockscreen"

.field public static final NEW_CALENDAR_TASK:Ljava/lang/String; = "new_calendar_task"

.field public static final NEW_EMAIL:Ljava/lang/String; = "new_email"

.field public static final NEW_NOTE:Ljava/lang/String; = "new_note"

.field public static final NEW_QUICK_PHRASE:Ljava/lang/String; = "new_quick_phrase"

.field public static final NEW_VOICE_RECORD:Ljava/lang/String; = "new_voice_record"

.field public static final NONE:Ljava/lang/String; = null

.field public static final NOTIFICATION_CENTER:Ljava/lang/String; = "notification_center"

.field public static final PERSPECTIVE:Ljava/lang/String; = "perspective"

.field public static final QR_CODE:Ljava/lang/String; = "qr_code"

.field public static final QUICK_LAUNCH_PAD:Ljava/lang/String; = "quick_launch_pad"

.field public static final QUICK_LAUNCH_PREVIOUS_APP:Ljava/lang/String; = "quick_launch_previous_app"

.field public static final QUICK_SHOT:Ljava/lang/String; = "quick_shot"

.field public static final RECORD_SCREEN:Ljava/lang/String; = "record_screen"

.field public static final SCREENSHOT:Ljava/lang/String; = "screenshot"

.field public static final SIDE_BAR:Ljava/lang/String; = "side_bar"

.field public static final TASKS_MANAGER:Ljava/lang/String; = "tasks_manager"

.field public static final TEXT_RECOGNITION:Ljava/lang/String; = "text_recognition"

.field public static final TOGGLE_MUTE:Ljava/lang/String; = "toggle_mute"

.field public static final TOGGLE_MUTE_ON:Ljava/lang/String; = "toggle_mute_on"

.field public static final TOGGLE_SCREEN_MOVE_DOWN:Ljava/lang/String; = "toggle_screen_move_down"

.field public static final TORCH:Ljava/lang/String; = "torch"

.field public static final UNDEFINE:Ljava/lang/String; = "undefine"

.field public static final VIRTUAL_CALLIN:Ljava/lang/String; = "virtual_callin"

.field public static final VOICE_ASSISTANT:Ljava/lang/String; = "voice_assistant"

.field public static final VOICE_COMMAND:Ljava/lang/String; = "voice_command"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findEqualConst(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "undefine"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "screenshot"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const-string v0, "notification_center"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v0, "tasks_manager"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    const-string v0, "voice_assistant"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    const-string v0, "toggle_screen_move_down"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    const-string v0, "answer_all"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    const-string v0, "new_calendar_task"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    const-string v0, "torch"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    const-string v0, "quick_shot"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    :cond_a
    const-string v0, "new_note"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    const-string v0, "new_voice_record"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    :cond_c
    const-string v0, "toggle_mute"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    const-string v0, "toggle_mute_on"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v0

    :cond_e
    const-string v0, "lockscreen"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    :cond_f
    const-string v0, "quick_launch_pad"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "quick_launch_pad"

    return-object p0

    :cond_10
    const-string v0, "quick_launch_previous_app"

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "quick_launch_previous_app"

    return-object p0

    :cond_11
    const-string v0, "side_bar"

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "side_bar"

    return-object p0

    :cond_12
    const-string v0, "launch_camera"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p0, "launch_camera"

    return-object p0

    :cond_13
    const-string v0, "voice_command"

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p0, "voice_command"

    return-object p0

    :cond_14
    const-string v0, "text_recognition"

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p0, "text_recognition"

    return-object p0

    :cond_15
    const-string v0, "bullet_sms"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "bullet_sms"

    return-object p0

    :cond_16
    const-string v0, "perspective"

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p0, "perspective"

    return-object p0

    :cond_17
    const-string v0, "feature_cmel"

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p0, "feature_cmel"

    :cond_18
    return-object p0
.end method

.method public static getShortcutSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsmartisan/api/SettingsSmt$SHORTCUT_KEY_VALUE;->findEqualConst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
