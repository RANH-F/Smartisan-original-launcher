.class Lcom/bytedance/sdk/openadsdk/d/a$3;
.super Ljava/lang/Object;
.source "JsAppAdDownloadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/e/k;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/d/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/d/a;ZLandroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a$3;->d:Lcom/bytedance/sdk/openadsdk/d/a;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/d/a$3;->a:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/d/a$3;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/d/a$3;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5

    const/4 p5, 0x3

    const/4 v0, 0x1

    if-eq p1, p5, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_5

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/d/a$3;->a:Z

    const-string p2, "click_start_detail"

    const-string v1, "click_start"

    const/4 v2, 0x0

    if-nez p1, :cond_4

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v3, 0x4

    const/4 v4, 0x2

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p1, v0

    goto :goto_0

    :sswitch_1
    const-string p2, "click_pause"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p1, v4

    goto :goto_0

    :sswitch_2
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p1, v2

    goto :goto_0

    :sswitch_3
    const-string p2, "click_open"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p1, v3

    goto :goto_0

    :sswitch_4
    const-string p2, "click_continue"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p1, p5

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_3

    if-eq p1, v4, :cond_3

    if-eq p1, p5, :cond_3

    if-eq p1, v3, :cond_3

    move v2, v0

    :cond_3
    return v2

    .line 4
    :cond_4
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a$3;->b:Landroid/content/Context;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/d/a$3;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const/4 p5, 0x0

    invoke-static {p1, p4, p3, p2, p5}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return v2

    :cond_5
    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x4d5dae82 -> :sswitch_4
        -0x2e50b15f -> :sswitch_3
        0x21b2e025 -> :sswitch_2
        0x6442087f -> :sswitch_1
        0x6474a6eb -> :sswitch_0
    .end sparse-switch
.end method
