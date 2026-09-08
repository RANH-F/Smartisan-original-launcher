.class public final Lsmartisan/api/SettingsSmt;
.super Ljava/lang/Object;
.source "SettingsSmt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/api/SettingsSmt$SLEEP_MODE;,
        Lsmartisan/api/SettingsSmt$SHORTCUT_BTN;,
        Lsmartisan/api/SettingsSmt$FORCE_TOUCH;,
        Lsmartisan/api/SettingsSmt$OCR_LANGUAGE;,
        Lsmartisan/api/SettingsSmt$LONG_CLICK_TYPE;,
        Lsmartisan/api/SettingsSmt$NAVBAR_STYLE;,
        Lsmartisan/api/SettingsSmt$NAVBAR_THEME;,
        Lsmartisan/api/SettingsSmt$NAVBAR_MODE;,
        Lsmartisan/api/SettingsSmt$HOME_TRIGGER_TYPE;,
        Lsmartisan/api/SettingsSmt$TEXT_BOOM_SEARCH_VALUE;,
        Lsmartisan/api/SettingsSmt$BRIGHTNESS_KEY_FUNCTION_VALUE;,
        Lsmartisan/api/SettingsSmt$LAUNCHER_FLIP_ANIM_VALUE;,
        Lsmartisan/api/SettingsSmt$LOCKSCREEN_STYLE_VALUE;,
        Lsmartisan/api/SettingsSmt$VOICE_SHOW_RESULT_CHANGED_BY;,
        Lsmartisan/api/SettingsSmt$VOICE_SHOW_RESULT_VALUE;,
        Lsmartisan/api/SettingsSmt$SHORTCUT_KEY_VALUE;,
        Lsmartisan/api/SettingsSmt$LAUNCHER_MULTI_BLOCK_MODE_VALUE;,
        Lsmartisan/api/SettingsSmt$LAUNCHER_MODE_VALUE;,
        Lsmartisan/api/SettingsSmt$SIDEBAR_TRIGGER_MODE;,
        Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;,
        Lsmartisan/api/SettingsSmt$SCREEN_COLOR_MODE_VALUE;,
        Lsmartisan/api/SettingsSmt$Ocean2KSwitchValue;,
        Lsmartisan/api/SettingsSmt$TabletWidgetShowValue;,
        Lsmartisan/api/SettingsSmt$TabletTitleBarModeValue;,
        Lsmartisan/api/SettingsSmt$TabletTitleBarLocationValue;,
        Lsmartisan/api/SettingsSmt$CustomKeyValue;,
        Lsmartisan/api/SettingsSmt$VoiceWaterDropValue;,
        Lsmartisan/api/SettingsSmt$PCMode;,
        Lsmartisan/api/SettingsSmt$ClockTheme;,
        Lsmartisan/api/SettingsSmt$KEYGUARD_STYLE_VALUE;,
        Lsmartisan/api/SettingsSmt$KEYBOARD_CUSTOM_KEY_VALUE;,
        Lsmartisan/api/SettingsSmt$KeyboardPreferenceValues;,
        Lsmartisan/api/SettingsSmt$Global;,
        Lsmartisan/api/SettingsSmt$Secure;,
        Lsmartisan/api/SettingsSmt$System;
    }
.end annotation


# static fields
.field public static final ACTION_WIFI_DISPLAY_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_DISPLAY_SETTINGS"

.field static final TAG:Ljava/lang/String; = "SettingsSmt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get_CALENDAR_FIRST_DAY_OF_WEEK_DEFAULT()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static get_CALENDAR_KEY_FIRST_DAY_OF_WEEK()Ljava/lang/String;
    .locals 1

    const-string v0, "calendar_key_first_day_of_week"

    return-object v0
.end method

.method public static get_CALENDAR_RINGTONE_URI()Ljava/lang/String;
    .locals 1

    const-string v0, "calendar_ringtone_uri"

    return-object v0
.end method

.method public static get_CONTACTS_DIALPAD_CHANGE_LAYOUT()Ljava/lang/String;
    .locals 1

    const-string v0, "contacts_dialpad_change_layout"

    return-object v0
.end method

.method public static get_CUSTOM_THUMB_PULLDOWN_WALLPAPER_URI()Ljava/lang/String;
    .locals 1

    const-string v0, "custom_thumb_pulldown_wallpaper_uri"

    return-object v0
.end method

.method public static get_DATA_USAGE_WARNING()Ljava/lang/String;
    .locals 1

    const-string v0, "data_usage_warning"

    return-object v0
.end method

.method public static get_DEFAULT_LOCKSCREEN_URI()Ljava/lang/String;
    .locals 1

    const-string v0, "default_lockscreen_uri"

    return-object v0
.end method

.method public static final get_DEVICE_OWNER()Ljava/lang/String;
    .locals 1

    const-string v0, "device_owner"

    return-object v0
.end method

.method public static get_DISABLE_NOTIFICATION()Ljava/lang/String;
    .locals 1

    const-string v0, "disable_notification"

    return-object v0
.end method

.method public static get_EMAIL_RECEIVE_RINGTONE_URI()Ljava/lang/String;
    .locals 1

    const-string v0, "email_receive_ringtone_uri"

    return-object v0
.end method

.method public static get_EMAIL_SEND_RINGTONE_URI()Ljava/lang/String;
    .locals 1

    const-string v0, "email_send_ringtone_uri"

    return-object v0
.end method

.method public static get_FACE_RECOGNITION_ENABLED()Ljava/lang/String;
    .locals 1

    const-string v0, "face_recognition_enabled"

    return-object v0
.end method

.method public static get_GLOBAL_VIBRATION_ENABLED()Ljava/lang/String;
    .locals 1

    const-string v0, "global_vibration_enabled"

    return-object v0
.end method

.method public static get_HIFI_ENABLE()Ljava/lang/String;
    .locals 1

    const-string v0, "hifi_enable"

    return-object v0
.end method

.method public static final get_JOIN_UE_ON()Ljava/lang/String;
    .locals 1

    const-string v0, "join_ue_on"

    return-object v0
.end method

.method public static get_LAUNCHER_BADGE_SWIPE_CLEAN()Ljava/lang/String;
    .locals 1

    const-string v0, "launcher_badge_swipe_clean"

    return-object v0
.end method

.method public static get_LAUNCHER_GRIDS_COUNT_X()Ljava/lang/String;
    .locals 1

    const-string v0, "launcher_grids_x"

    return-object v0
.end method

.method public static get_LAUNCHER_GRIDS_COUNT_Y()Ljava/lang/String;
    .locals 1

    const-string v0, "launcher_grids_y"

    return-object v0
.end method

.method public static get_LAUNCHER_HIDE_BADGE()Ljava/lang/String;
    .locals 1

    const-string v0, "launcher_hide_badge"

    return-object v0
.end method

.method public static get_LAUNCHER_HIDE_LABLE()Ljava/lang/String;
    .locals 1

    const-string v0, "launcher_hide_lable"

    return-object v0
.end method

.method public static get_LAUNCHER_MODE()Ljava/lang/String;
    .locals 1

    const-string v0, "launcher_mode"

    return-object v0
.end method

.method public static get_LAUNCHER_MODE_VALUE_LAUNCHER_MODE_GRIDS_16()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public static get_LAUNCHER_MODE_VALUE_LAUNCHER_MODE_GRIDS_9()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public static get_LAUNCHER_MODE_VALUE_LAUNCHER_MODE_ORIGINAL()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static get_LAUNCHER_MULTI_BLOCK_MODE()Ljava/lang/String;
    .locals 1

    const-string v0, "multi_block_mode"

    return-object v0
.end method

.method public static get_LAUNCHER_MULTI_BLOCK_MODE_VALUE_LAUNCHER_MULTI_BLOCK_MODE_GRIDS_36()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method public static get_LAUNCHER_THEME()Ljava/lang/String;
    .locals 1

    const-string v0, "launcher_theme"

    return-object v0
.end method

.method public static get_LOCKSCREEN_BACKGROUND()Ljava/lang/String;
    .locals 1

    const-string v0, "lockscreen_background"

    return-object v0
.end method

.method public static get_MMS_RINGTONE_URI()Ljava/lang/String;
    .locals 1

    const-string v0, "mms_ringtone_uri"

    return-object v0
.end method

.method public static get_MUSIC_VOICE_SEARCH_BTN_ENABLED()Ljava/lang/String;
    .locals 1

    const-string v0, "music_voice_search_btn_enabled"

    return-object v0
.end method

.method public static get_ONE_HAND_MODE()Ljava/lang/String;
    .locals 1

    const-string v0, "one_hand_mode"

    return-object v0
.end method

.method public static get_ORIGINAL_LAUNCHER_WALLPAPER_BLUR_ON()Ljava/lang/String;
    .locals 1

    const-string v0, "original_launcher_wallpaper_blur_on"

    return-object v0
.end method

.method public static final get_PHONE_LOCKED_BY_CLOUDSERVICE()Ljava/lang/String;
    .locals 1

    const-string v0, "phone_locked_by_cloud"

    return-object v0
.end method

.method public static get_POPCORN_SOUND()Ljava/lang/String;
    .locals 1

    const-string v0, "popcorn_sound"

    return-object v0
.end method

.method public static get_SCRATCHING_RECORDS()Ljava/lang/String;
    .locals 1

    const-string v0, "scratching_records"

    return-object v0
.end method

.method public static get_SCREENSHOT_NOTIFICATION()Ljava/lang/String;
    .locals 1

    const-string v0, "screenshot_notification_enabled"

    return-object v0
.end method

.method public static get_STATUS_BAR_BATTERY()Ljava/lang/String;
    .locals 1

    const-string v0, "status_bar_battery"

    return-object v0
.end method

.method public static get_TEMPERATURE_UNIT()Ljava/lang/String;
    .locals 1

    const-string v0, "temperature_unit"

    return-object v0
.end method

.method public static get_TEMPERATURE_UNIT_CELSIUS()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static get_TEMPERATURE_UNIT_FAHRENHEIT()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static get_THUMB_PUSH_DOWN()Ljava/lang/String;
    .locals 1

    const-string v0, "thumb_push_down"

    return-object v0
.end method

.method public static get_THUMB_TRIGGER_AREA()Ljava/lang/String;
    .locals 1

    const-string v0, "thumb_trigger_area"

    return-object v0
.end method

.method public static get_THUMB_TRIGGER_AREA_MIDDLE()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static get_TIMER_RING_PULL()Ljava/lang/String;
    .locals 1

    const-string v0, "timer_ring_pull"

    return-object v0
.end method

.method public static get_TORCH_STATE()Ljava/lang/String;
    .locals 1

    const-string v0, "torch_state"

    return-object v0
.end method

.method public static get_VOICE_DIAL()Ljava/lang/String;
    .locals 1

    const-string v0, "voice_dial"

    return-object v0
.end method

.method public static get_VOLUME_LIMIT()Ljava/lang/String;
    .locals 1

    const-string v0, "volume_limit"

    return-object v0
.end method

.method public static get_VOLUME_PANEL_MUTE_ENABLE()Ljava/lang/String;
    .locals 1

    const-string v0, "volume_panel_mute_enable"

    return-object v0
.end method

.method public static get_WIFI_DISPLAY_RECEIVE_SMS_SETTING()Ljava/lang/String;
    .locals 1

    const-string v0, "wifi_display_while_receive_sms"

    return-object v0
.end method

.method public static get_WORLD_CLOCK_SECOND_HAND_CONSISTENT()Ljava/lang/String;
    .locals 1

    const-string v0, "world_clock_second_hand_consistent"

    return-object v0
.end method
