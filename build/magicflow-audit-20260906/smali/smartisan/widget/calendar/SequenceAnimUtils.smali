.class public Lsmartisan/widget/calendar/SequenceAnimUtils;
.super Ljava/lang/Object;
.source "SequenceAnimUtils.java"


# static fields
.field private static final accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private static final decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private static final linearInterpolator:Landroid/view/animation/LinearInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lsmartisan/widget/calendar/SequenceAnimUtils;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lsmartisan/widget/calendar/SequenceAnimUtils;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 3
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lsmartisan/widget/calendar/SequenceAnimUtils;->linearInterpolator:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDuration(II)I
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0xc8

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    const/16 p0, 0x96

    if-ne p1, v1, :cond_1

    return p0

    :cond_1
    if-ne p1, v0, :cond_2

    const/16 p0, 0x64

    :cond_2
    return p0

    :cond_3
    const/16 p0, 0x12c

    return p0
.end method

.method public static getInterpolator(II)Landroid/view/animation/Interpolator;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p0, Lsmartisan/widget/calendar/SequenceAnimUtils;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lsmartisan/widget/calendar/SequenceAnimUtils;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object p0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_4

    if-ne p1, v1, :cond_2

    .line 3
    sget-object p0, Lsmartisan/widget/calendar/SequenceAnimUtils;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-object p0

    :cond_2
    if-ne p1, v0, :cond_3

    .line 4
    sget-object p0, Lsmartisan/widget/calendar/SequenceAnimUtils;->linearInterpolator:Landroid/view/animation/LinearInterpolator;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lsmartisan/widget/calendar/SequenceAnimUtils;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method
