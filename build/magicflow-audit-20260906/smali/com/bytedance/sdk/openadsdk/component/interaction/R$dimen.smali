.class public final Lcom/bytedance/sdk/openadsdk/component/interaction/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/interaction/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static tt_video_container_maxheight:I

.field public static tt_video_container_minheight:I

.field public static tt_video_cover_padding_horizon:I

.field public static tt_video_cover_padding_vertical:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$dimen;->tt_video_container_maxheight:I

    sput v0, Lcom/bytedance/sdk/openadsdk/component/interaction/R$dimen;->tt_video_container_maxheight:I

    .line 2
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$dimen;->tt_video_container_minheight:I

    sput v0, Lcom/bytedance/sdk/openadsdk/component/interaction/R$dimen;->tt_video_container_minheight:I

    .line 3
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$dimen;->tt_video_cover_padding_horizon:I

    sput v0, Lcom/bytedance/sdk/openadsdk/component/interaction/R$dimen;->tt_video_cover_padding_horizon:I

    .line 4
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$dimen;->tt_video_cover_padding_vertical:I

    sput v0, Lcom/bytedance/sdk/openadsdk/component/interaction/R$dimen;->tt_video_cover_padding_vertical:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
