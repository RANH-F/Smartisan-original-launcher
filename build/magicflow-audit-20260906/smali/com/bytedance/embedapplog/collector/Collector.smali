.class public Lcom/bytedance/embedapplog/collector/Collector;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "EMBED_K_DATA"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    array-length p2, p1

    if-lez p2, :cond_0

    .line 3
    invoke-static {p1}, Lcom/bytedance/embedapplog/a/e;->a([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
