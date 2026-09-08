.class public abstract Lsmartisan/widget/calendar/DayCellViewDrawer;
.super Ljava/lang/Object;
.source "DayCellViewDrawer.java"


# static fields
.field public static VIEW_TYPE_DAY_NO_VALID:I = 0x40

.field public static VIEW_TYPE_DAY_OUT_OF_RANGE:I = 0x20

.field public static VIEW_TYPE_NORMAL:I = 0x2

.field public static VIEW_TYPE_NOT_FOCUS_MONTH:I = 0x10

.field public static VIEW_TYPE_SELECTED:I = 0x4

.field public static VIEW_TYPE_TODAY:I = 0x8


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


# virtual methods
.method public abstract drawView(ILjava/lang/String;Ljava/lang/String;IILandroid/graphics/Canvas;F)V
.end method

.method public abstract setHasFocus(Z)V
.end method
