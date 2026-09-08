.class public final Lsmartisan/api/SettingsSmt$FORCE_TOUCH;
.super Ljava/lang/Object;
.source "SettingsSmt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/api/SettingsSmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FORCE_TOUCH"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isForceTouch(Landroid/content/ContentResolver;F)Z
    .locals 2

    const-string v0, "pressure_of_forcetouch"

    const v1, 0x3f19999a    # 0.6f

    .line 1
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
