.class public Lcom/bytedance/sdk/openadsdk/core/a/a;
.super Lcom/bytedance/sdk/openadsdk/core/a/b;
.source "ClickCreativeListener.java"


# instance fields
.field private A:I

.field private a:Z

.field private y:Z

.field private z:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->y:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "splash_ad"

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "slide_banner_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :sswitch_1
    const-string v0, "draw_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v6

    goto :goto_1

    :sswitch_2
    const-string v0, "interaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_4
    const-string v0, "embeded_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "banner_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v6, :cond_4

    const-string v0, "banner_call"

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    const-string p1, "interaction_call"

    return-object p1

    :cond_3
    return-object v0

    :cond_4
    const-string p1, "feed_call"

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x65146dea -> :sswitch_5
        -0x2a77c376 -> :sswitch_4
        0xa6dd8fb -> :sswitch_3
        0x6deace12 -> :sswitch_2
        0x72060cfe -> :sswitch_1
        0x7cab2108 -> :sswitch_0
    .end sparse-switch
.end method

.method private c(Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    const-string v2, "ClickCreativeListener"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string p1, "NativeVideoTsView...."

    .line 2
    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    const-string v5, "tt_video_ad_cover_center_layout"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_7

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    const-string v5, "tt_video_ad_logo_image"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_7

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    const-string v5, "tt_video_btn_ad_image_tv"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_7

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    const-string v5, "tt_video_ad_name"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_7

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    const-string v5, "tt_video_ad_button"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-ne v1, v4, :cond_2

    goto :goto_3

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    const-string v5, "tt_root_view"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eq v1, v4, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    const-string v5, "tt_video_play"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-ne v1, v4, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    move v1, v0

    .line 10
    :goto_0
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 11
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    const-string p1, "tt_root_view...."

    .line 12
    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_7
    :goto_3
    const-string p1, "tt_video_ad_cover_center_layout...."

    .line 13
    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->e()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->N()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->N()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private e()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private f()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->N()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->N()I

    move-result v0

    const/16 v3, 0xf

    if-eq v0, v3, :cond_2

    return v1

    .line 5
    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->A:I

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->A:I

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!isViewVisibility()="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isAutoPlay()="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",!isCoverPageVisibility()="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c()Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ClickCreativeListener"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->A:I

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 9
    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->A:I

    if-eq v0, v4, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_5

    return v1

    :cond_5
    return v4
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .locals 19

    move-object/from16 v11, p0

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/a/a;->f()Z

    move-result v0

    const-string v1, "ClickCreativeListener"

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u62e6\u622a\u539f\u751f\u89c6\u9891view\u8d70\u666e\u901a\u70b9\u51fb\u4e8b\u4ef6....."

    .line 4
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-super/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Landroid/view/View;IIII)V

    return-void

    :cond_0
    const-string v0, "\u8d70\u521b\u610f\u533a\u57df\u70b9\u51fb\u4e8b\u4ef6....."

    .line 6
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    .line 9
    :cond_1
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    if-nez v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-wide v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/c;->t:J

    iget-wide v7, v11, Lcom/bytedance/sdk/openadsdk/core/a/c;->u:J

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->f:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    move-object v9, v1

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v9, v0

    :goto_0
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->g:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_4

    move-object v10, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v10, v0

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 12
    invoke-virtual/range {v0 .. v10}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(IIIIJJLandroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/e/e;

    move-result-object v0

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Lcom/bytedance/sdk/openadsdk/core/e/e;

    .line 13
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->y()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/4 v0, -0x1

    goto/16 :goto_2

    .line 14
    :cond_5
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Ljava/lang/String;

    invoke-direct {v11, v1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 16
    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    iget-object v4, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Lcom/bytedance/sdk/openadsdk/core/e/e;

    const/4 v7, 0x1

    iget-object v8, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->n:Ljava/util/Map;

    const-string v3, "click_call"

    invoke-static/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;Lcom/bytedance/sdk/openadsdk/core/e/e;Ljava/lang/String;ZLjava/util/Map;)V

    .line 17
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/k;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 18
    iget-object v3, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    iget-object v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v6, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Lcom/bytedance/sdk/openadsdk/core/e/e;

    iget-object v7, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Ljava/lang/String;

    iget-object v9, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->n:Ljava/util/Map;

    const-string v4, "click"

    invoke-static/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;Lcom/bytedance/sdk/openadsdk/core/e/e;Ljava/lang/String;ZLjava/util/Map;)V

    goto/16 :goto_2

    .line 19
    :cond_7
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->o()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->j:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    if-nez v1, :cond_8

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->o:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v1, :cond_9

    .line 20
    :cond_8
    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    iget-object v3, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget v4, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->e:I

    iget-object v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->j:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    iget-object v6, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->o:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v7, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Ljava/lang/String;

    iget-object v8, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->m:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;Z)Z

    move-result v17

    .line 21
    iget-boolean v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    if-eqz v1, :cond_d

    .line 22
    iget-object v12, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    iget-object v14, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v15, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Lcom/bytedance/sdk/openadsdk/core/e/e;

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Ljava/lang/String;

    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->n:Ljava/util/Map;

    const-string v13, "click"

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    invoke-static/range {v12 .. v18}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;Lcom/bytedance/sdk/openadsdk/core/e/e;Ljava/lang/String;ZLjava/util/Map;)V

    goto :goto_2

    .line 23
    :cond_9
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->m:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v1, :cond_d

    .line 24
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->h()V

    .line 25
    iget-boolean v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    if-eqz v1, :cond_d

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->m:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->e()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 26
    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    iget-object v4, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Lcom/bytedance/sdk/openadsdk/core/e/e;

    iget-object v6, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v8, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->n:Ljava/util/Map;

    const-string v3, "click"

    invoke-static/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;Lcom/bytedance/sdk/openadsdk/core/e/e;Ljava/lang/String;ZLjava/util/Map;)V

    goto :goto_2

    .line 27
    :cond_a
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->j:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    if-nez v1, :cond_b

    iget-boolean v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->y:Z

    if-eqz v1, :cond_c

    .line 28
    :cond_b
    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    iget-object v4, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Lcom/bytedance/sdk/openadsdk/core/e/e;

    iget-object v6, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v8, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->n:Ljava/util/Map;

    const-string v3, "click_button"

    invoke-static/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;Lcom/bytedance/sdk/openadsdk/core/e/e;Ljava/lang/String;ZLjava/util/Map;)V

    :cond_c
    const/4 v1, 0x1

    .line 29
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Z)V

    .line 30
    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    iget-object v3, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget v4, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->e:I

    iget-object v5, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->j:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    iget-object v6, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->o:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 31
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->m:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    const/4 v9, 0x1

    .line 32
    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;Z)Z

    move-result v17

    .line 33
    iget-boolean v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    if-eqz v1, :cond_d

    .line 34
    iget-object v12, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    iget-object v14, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v15, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->h:Lcom/bytedance/sdk/openadsdk/core/e/e;

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->d:Ljava/lang/String;

    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->n:Ljava/util/Map;

    const-string v13, "click"

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    invoke-static/range {v12 .. v18}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;Lcom/bytedance/sdk/openadsdk/core/e/e;Ljava/lang/String;ZLjava/util/Map;)V

    .line 35
    :cond_d
    :goto_2
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->i:Lcom/bytedance/sdk/openadsdk/core/a/b$a;

    if-eqz v1, :cond_e

    move-object/from16 v2, p1

    .line 36
    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/a/b$a;->a(Landroid/view/View;I)V

    .line 37
    :cond_e
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 38
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/a/a;->z:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    if-eqz v0, :cond_f

    .line 39
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;->onClick()V

    :cond_f
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->z:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->a:Z

    return-void
.end method

.method protected a()Z
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 41
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v0

    .line 42
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->c(I)I

    move-result v0

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    :cond_1
    return v1

    :cond_2
    return v3

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v3

    :cond_5
    :goto_0
    return v1

    .line 44
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/a;->y:Z

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
