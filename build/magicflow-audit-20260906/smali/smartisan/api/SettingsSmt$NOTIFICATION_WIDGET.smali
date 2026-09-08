.class public final Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;
.super Ljava/lang/Object;
.source "SettingsSmt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/api/SettingsSmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NOTIFICATION_WIDGET"
.end annotation


# static fields
.field public static final BUTTON_AIRPLANE:Ljava/lang/String; = "toggleAirplane"

.field public static final BUTTON_AUTOROTATE:Ljava/lang/String; = "toggleAutoRotate"

.field public static final BUTTON_AUTO_BRIGHTNESS:Ljava/lang/String; = "toggleAutoBrightness"

.field public static final BUTTON_BLUETOOTH:Ljava/lang/String; = "toggleBluetooth"

.field public static final BUTTON_DELIMITER:Ljava/lang/String; = "|"

.field public static final BUTTON_DISABLE_BUTTONS:Ljava/lang/String; = "toggleDisableButtons"

.field public static final BUTTON_EYES_PROTECTION:Ljava/lang/String; = "toggleProtectEyes"

.field public static final BUTTON_FAKE_CALL:Ljava/lang/String; = "toggleFakeCall"

.field public static final BUTTON_FLASHLIGHT:Ljava/lang/String; = "toggleFlashlight"

.field public static final BUTTON_GPS:Ljava/lang/String; = "toggleGPS"

.field public static final BUTTON_KEEP_SCREEN_ON:Ljava/lang/String; = "toggleKeepScreenOn"

.field public static final BUTTON_LOCKSCREEN:Ljava/lang/String; = "toggleLockScreen"

.field public static final BUTTON_MOBILEDATA:Ljava/lang/String; = "toggleMobileData"

.field public static final BUTTON_MUTE:Ljava/lang/String; = "toggleMute"

.field public static final BUTTON_NFC:Ljava/lang/String; = "toggleNFC"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUTTON_POWER_SAVE:Ljava/lang/String; = "togglepowersave"

.field public static final BUTTON_RECORD_SCREEN:Ljava/lang/String; = "togglerrecordscreen"

.field public static final BUTTON_SCREEN_SHOT:Ljava/lang/String; = "toggleScreenShot"

.field public static final BUTTON_VIBRATE:Ljava/lang/String; = "toggleVibrate"

.field public static final BUTTON_VPN:Ljava/lang/String; = "toggleVpn"

.field public static final BUTTON_WIFI:Ljava/lang/String; = "toggleWifi"

.field public static final BUTTON_WIFIAP:Ljava/lang/String; = "toggleWifiAp"

.field private static final sAllWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    .line 2
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "toggleAirplane"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "toggleWifi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "toggleMobileData"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "toggleVpn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "toggleWifiAp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "toggleBluetooth"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "toggleDisableButtons"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "toggleGPS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "toggleFlashlight"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "toggleAutoRotate"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "togglerrecordscreen"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "togglepowersave"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "toggleScreenShot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "toggleVibrate"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "toggleMute"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "toggleKeepScreenOn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "toggleLockScreen"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "toggleProtectEyes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "toggleFakeCall"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    const-string v1, "toggleAutoBrightness"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllWidgets()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static isWidgetButton(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/api/SettingsSmt$NOTIFICATION_WIDGET;->sAllWidgets:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
