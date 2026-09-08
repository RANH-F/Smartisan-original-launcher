.class public final Lsmartisan/api/SettingsSmt$BRIGHTNESS_KEY_FUNCTION_VALUE;
.super Ljava/lang/Object;
.source "SettingsSmt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/api/SettingsSmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BRIGHTNESS_KEY_FUNCTION_VALUE"
.end annotation


# static fields
.field public static final BRIGHTNESS_ADJUSTMENT:I = 0x1

.field public static final LIGHTEN_DARKEN_SCREEN:I = 0x2

.field public static final UNDEFINED:I = 0x0

.field public static final VOICE_ASSIST:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VOLUME_ADJUSTMENT:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
