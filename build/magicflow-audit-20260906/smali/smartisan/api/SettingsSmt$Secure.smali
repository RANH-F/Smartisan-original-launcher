.class public final Lsmartisan/api/SettingsSmt$Secure;
.super Ljava/lang/Object;
.source "SettingsSmt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/api/SettingsSmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation


# static fields
.field public static final DEFAULT_CHS_INPUT_METHOD:Ljava/lang/String; = "default_chs_input_method"

.field public static final KEYWORD_SWITCH_STATE:Ljava/lang/String; = "keyword_swtich_state"

.field public static final LAUNCHER_APP_LOCK:Ljava/lang/String; = "launcher_app_lock_key"

.field public static final LAUNCHER_BLOCKS_GET_BACK_ANSWER:Ljava/lang/String; = "4e7cb907a3655ea11fee6898f196ffacf1ee6aea"

.field public static final LAUNCHER_BLOCKS_LOCK_PW:Ljava/lang/String; = "743bd8680e21f1e22a9d76fdf1a41ee9efb503a2"

.field public static final LIMITED_NO_DISTURB_ON:Ljava/lang/String; = "LimitedNoDisturbOn"

.field public static final NO_DISTURB_NOTIFY_WHEN_SCREEN_ON:Ljava/lang/String; = "NoDisturbNotifyWhenScreenOn"

.field public static final NO_DISTURB_NOTIFY_WHEN_SECOND_CALL:Ljava/lang/String; = "NoDisturbNotifyWhenSecondCall"

.field public static final NO_DISTURB_ON:Ljava/lang/String; = "NoDisturbOn"

.field public static final NO_DISTURB_START_TIME:Ljava/lang/String; = "NoDisturbStartTime"

.field public static final NO_DISTURB_STOP_TIME:Ljava/lang/String; = "NoDisturbStopTime"

.field public static final SAVED_USER_PC_MODE:Ljava/lang/String; = "pc_mode_enable"

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field public static final SHOW_VIRTUAL_IME_ALWAYS:Ljava/lang/String; = "show_virtual_ime_always"

.field public static final SMART_CALL_INTERCEPT_CLASSIFY:Ljava/lang/String; = "SmartCallInterceptClassify"

.field public static final SMART_INTERCEPT_ON:Ljava/lang/String; = "SmartInterceptOn"

.field public static final SM_SIM_EVER_READY:Ljava/lang/String; = "sm_sim_ever_ready"

.field public static final SM_TIMES_OF_TWIST:Ljava/lang/String; = "sm_times_of_twist"

.field public static final SPECIAL_TYPE:Ljava/lang/String; = "specialtype"


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-string v0, "ui_night_mode"

    const-string v1, "lock_screen_owner_info_enabled"

    const-string v2, "lock_screen_owner_info"

    const-string v3, "spell_checker_enabled"

    const-string v4, "install_non_market_apps"

    const-string v5, "NoDisturbOn"

    const-string v6, "NoDisturbStartTime"

    const-string v7, "NoDisturbStopTime"

    const-string v8, "SmartInterceptOn"

    const-string v9, "specialtype"

    const-string v10, "NoDisturbNotifyWhenScreenOn"

    const-string v11, "NoDisturbNotifyWhenSecondCall"

    const-string v12, "SmartInterceptOn"

    const-string v13, "SmartCallInterceptClassify"

    const-string v14, "launcher_app_lock_key"

    const-string v15, "LimitedNoDisturbOn"

    const-string v16, "743bd8680e21f1e22a9d76fdf1a41ee9efb503a2"

    const-string v17, "4e7cb907a3655ea11fee6898f196ffacf1ee6aea"

    const-string v18, "keyword_swtich_state"

    const-string v19, "show_virtual_ime_always"

    .line 1
    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/api/SettingsSmt$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
