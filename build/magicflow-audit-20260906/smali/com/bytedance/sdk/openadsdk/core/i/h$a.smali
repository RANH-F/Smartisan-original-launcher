.class Lcom/bytedance/sdk/openadsdk/core/i/h$a;
.super Landroid/content/BroadcastReceiver;
.source "SdkDnsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/i/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/i/h;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/i/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/h$a;->a:Lcom/bytedance/sdk/openadsdk/core/i/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/i/h;Lcom/bytedance/sdk/openadsdk/core/i/h$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/h$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/i/h;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    const-string v0, "b_msg_id"

    .line 1
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "b_msg_data"

    .line 2
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/h$a;->a:Lcom/bytedance/sdk/openadsdk/core/i/h;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/h;->a(Lcom/bytedance/sdk/openadsdk/core/i/h;)Lcom/bytedance/sdk/openadsdk/core/i/e;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/h$a;->a:Lcom/bytedance/sdk/openadsdk/core/i/h;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/h;->a(Lcom/bytedance/sdk/openadsdk/core/i/h;)Lcom/bytedance/sdk/openadsdk/core/i/e;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/i/e;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
