.class public Lcom/bytedance/sdk/openadsdk/core/w;
.super Ljava/lang/Object;
.source "TTAndroidObject.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/d/b;
.implements Lcom/bytedance/sdk/openadsdk/utils/ak$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/w$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:Z

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/bytedance/sdk/openadsdk/utils/ak;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/bytedance/sdk/openadsdk/d/c;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Lcom/bytedance/sdk/openadsdk/core/e/k;

.field private n:Z

.field private o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

.field private p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

.field private q:Lorg/json/JSONObject;

.field private r:Lcom/bytedance/sdk/openadsdk/d/d;

.field private s:Lcom/bytedance/sdk/openadsdk/e/a;

.field private t:Lcom/bytedance/sdk/openadsdk/e/b;

.field private u:Lorg/json/JSONObject;

.field private v:Lcom/bytedance/sdk/openadsdk/core/a/d;

.field private w:Z

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/w;->f:Ljava/util/Map;

    .line 2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/w;->f:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "log_event"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/w;->f:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "private"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/w;->f:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "dispatch_message"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/w;->f:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "custom_event"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/w;->f:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "log_event_v3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->n:Z

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->w:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->x:Z

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Z

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->g:Ljava/lang/ref/WeakReference;

    .line 7
    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/ak$a;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->e:Lcom/bytedance/sdk/openadsdk/utils/ak;

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/w$a;)V
    .locals 5

    .line 27
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->a:Ljava/lang/String;

    const-string v1, "call"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 29
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->c:Ljava/lang/String;

    const-string v2, "appInfo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    iget v1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->e:I

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lorg/json/JSONObject;I)V

    .line 32
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void

    .line 33
    :cond_2
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->c:Ljava/lang/String;

    const-string v2, "adInfo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 34
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 35
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->c(Lorg/json/JSONObject;)V

    .line 36
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    return-void

    .line 37
    :cond_4
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->c:Ljava/lang/String;

    const-string v2, "playable_style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 38
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 39
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->d(Lorg/json/JSONObject;)V

    .line 40
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_5
    return-void

    .line 41
    :cond_6
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->c:Ljava/lang/String;

    const-string v2, "getTemplateInfo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 42
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->q:Lorg/json/JSONObject;

    if-eqz v0, :cond_7

    .line 44
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "setting"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    :cond_7
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->q:Lorg/json/JSONObject;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_8
    return-void

    .line 46
    :cond_9
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->c:Ljava/lang/String;

    const-string v2, "getTeMaiAds"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 47
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->u:Lorg/json/JSONObject;

    if-eqz v1, :cond_a

    .line 48
    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/w;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 49
    :cond_a
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->c:Ljava/lang/String;

    const-string v2, "isViewable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 50
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 51
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->x:Z

    const-string v2, "viewStatus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_b
    return-void

    .line 53
    :cond_c
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->c:Ljava/lang/String;

    const-string v2, "getScreenSize"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 54
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 55
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->s:Lcom/bytedance/sdk/openadsdk/e/a;

    if-eqz v1, :cond_d

    .line 56
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/e/a;->b()I

    move-result v1

    .line 57
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->s:Lcom/bytedance/sdk/openadsdk/e/a;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/e/a;->a()I

    move-result v2

    const-string v3, "width"

    .line 58
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "height"

    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_d
    return-void

    .line 61
    :cond_e
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->c:Ljava/lang/String;

    const-string v2, "getVolume"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 62
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v3, -0x1

    if-eqz v1, :cond_f

    const/4 v3, 0x3

    .line 63
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u97f3\u4e50\u97f3\u91cf >>>> AudioManager-->currentVolume="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "TTAndroidObject"

    invoke-static {v4, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_f
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    if-gtz v3, :cond_10

    goto :goto_0

    :cond_10
    const/4 v2, 0x0

    :goto_0
    const-string v1, "endcard_mute"

    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 67
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_11
    return-void

    .line 68
    :cond_12
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->c:Ljava/lang/String;

    const-string v3, "sendReward"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 69
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Z

    .line 70
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->t:Lcom/bytedance/sdk/openadsdk/e/b;

    if-eqz v1, :cond_13

    .line 71
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/e/b;->a()V

    .line 72
    :cond_13
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/core/w$a;Lorg/json/JSONObject;)Z

    move-result v1

    .line 73
    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    return-void

    :cond_14
    if-eqz v1, :cond_15

    .line 74
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_15
    return-void
.end method

.method private a(Lorg/json/JSONObject;I)V
    .locals 2

    .line 15
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 16
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->g()Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appName"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "innerAppName"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdkEdition"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appVersion"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "netType"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "supportList"

    .line 25
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "deviceId"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/w$a;Lorg/json/JSONObject;)Z
    .locals 11

    .line 75
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Z

    const-string v1, "download_app_ad"

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u66ff\u6362 download_url \u524d appAdJson:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "download_url"

    .line 78
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/w;->m:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/k;->K()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u66ff\u6362 download_url \u540e appAdJson::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :catchall_0
    :cond_0
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->c:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "landscape_click"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "skipVideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "renderDidFinish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x6

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "muteVideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_4
    const-string v1, "getCurrentVideoState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0xb

    goto :goto_0

    :sswitch_5
    const-string v1, "cancel_download_app_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_6
    const-string v1, "dynamicTrack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_7
    const-string v1, "unsubscribe_app_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_9
    const-string v1, "send_temai_product_ids"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0xc

    goto :goto_0

    :sswitch_a
    const-string v1, "clickEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_b
    const-string v1, "changeVideoState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0xa

    goto :goto_0

    :sswitch_c
    const-string v1, "subscribe_app_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v4

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 81
    :pswitch_0
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->k(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 82
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->g(Lorg/json/JSONObject;)Z

    move-result p1

    return p1

    .line 83
    :pswitch_2
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->f(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 84
    :pswitch_3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->e(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 85
    :pswitch_4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->h()V

    goto/16 :goto_1

    .line 86
    :pswitch_5
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->j(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 87
    :pswitch_6
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->i(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 88
    :pswitch_7
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->h(Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 89
    :pswitch_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->g:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_6

    .line 90
    instance-of p2, p1, Lcom/bytedance/sdk/openadsdk/core/video/b/b;

    if-eqz p2, :cond_6

    .line 91
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/b/b;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/b/b;->N()V

    goto :goto_1

    .line 92
    :pswitch_9
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez p2, :cond_2

    return v4

    .line 93
    :cond_2
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 94
    :pswitch_a
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez p2, :cond_3

    return v4

    .line 95
    :cond_3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/d/c;->b(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 96
    :pswitch_b
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->v:Lcom/bytedance/sdk/openadsdk/core/a/d;

    if-eqz p2, :cond_4

    .line 97
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->w:Z

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/a/d;->a(Z)V

    return v4

    .line 98
    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez p2, :cond_5

    return v4

    .line 99
    :cond_5
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->g:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    if-eqz p2, :cond_6

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-interface {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 101
    :pswitch_c
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->j()V

    .line 102
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->g:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Landroid/content/Context;

    if-eqz v6, :cond_6

    .line 103
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    iget-object v7, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/w;->j:Ljava/lang/String;

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/w;->k:I

    iget-boolean v10, p0, Lcom/bytedance/sdk/openadsdk/core/w;->n:Z

    invoke-interface/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;IZ)V

    :cond_6
    :goto_1
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7966d06a -> :sswitch_c
        -0x45af975a -> :sswitch_b
        -0x2fbc0e0e -> :sswitch_a
        -0x1097c80a -> :sswitch_9
        0x1a8c298 -> :sswitch_8
        0x642ec2f -> :sswitch_7
        0x220cf04c -> :sswitch_6
        0x281c12d3 -> :sswitch_5
        0x2a6ab279 -> :sswitch_4
        0x44a639e2 -> :sswitch_3
        0x49bca8fc -> :sswitch_2
        0x7c55d63c -> :sswitch_1
        0x7d77e304 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "__msg_type"

    const-string v2, "callback"

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "__callback_id"

    .line 7
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "__params"

    .line 8
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    :cond_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->l(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 9
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "__msg_type"

    const-string v2, "event"

    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "__event_id"

    .line 12
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    const-string p1, "__params"

    .line 13
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    :cond_1
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->l(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->i:Ljava/lang/String;

    const-string v1, "cid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->j:Ljava/lang/String;

    const-string v1, "log_extra"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->l:Ljava/lang/String;

    const-string v1, "download_url"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 8

    const-string v0, "TTAndroidObject"

    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 4
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 7
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/w$a;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/w$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "__msg_type"

    const/4 v7, 0x0

    .line 9
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/w$a;->a:Ljava/lang/String;

    const-string v6, "__callback_id"

    .line 10
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    const-string v6, "func"

    .line 11
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/w$a;->c:Ljava/lang/String;

    const-string v6, "params"

    .line 12
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iput-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    const-string v6, "JSSDK"

    .line 13
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/bytedance/sdk/openadsdk/core/w$a;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :catchall_0
    :cond_0
    :try_start_2
    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/w$a;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/w$a;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/w;->e:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 16
    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/w;->e:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :catch_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to parse jsbridge msg queue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, "failed to parse jsbridge msg queue"

    .line 20
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->m:Lcom/bytedance/sdk/openadsdk/core/e/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->m:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playable_style"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    if-nez v0, :cond_0

    .line 5
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->k:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "mute"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->d(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private f()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "bytedance://"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "bytedance://dispatch_message/"

    const-string v1, "bytedance://private/setresult/"

    .line 6
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->f()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "javascript:ToutiaoJSBridge._fetchQueue()"

    .line 8
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/s;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1e

    const/16 v1, 0x26

    .line 10
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gtz v1, :cond_3

    return-void

    .line 11
    :cond_3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SCENE_FETCHQUEUE"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 14
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method private f(Lorg/json/JSONObject;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "stateType"

    const/4 v1, -0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private g()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "appInfo"

    const-string v1, "adInfo"

    const-string v2, "getTemplateInfo"

    const-string v3, "getTeMaiAds"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private g(Lorg/json/JSONObject;)Z
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->I()J

    move-result-wide v2

    long-to-double v2, v2

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->J()I

    move-result v0

    :try_start_0
    const-string v4, "currentTime"

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v5

    .line 5
    invoke-virtual {p1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "state"

    .line 6
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "TTAndroidObject"

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTime,state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method private h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->H()V

    :cond_0
    return-void
.end method

.method private h(Lorg/json/JSONObject;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/w;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    const-string v2, "areaType"

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "clickInfo"

    .line 5
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_1

    const-string v5, "down_x"

    .line 6
    invoke-virtual {v1, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    const-string v7, "down_y"

    .line 7
    invoke-virtual {v1, v7, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    const-string v9, "up_x"

    .line 8
    invoke-virtual {v1, v9, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-string v11, "up_y"

    .line 9
    invoke-virtual {v1, v11, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    const-string v13, "down_time"

    .line 10
    invoke-virtual {v1, v13, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    const-string v15, "up_time"

    .line 11
    invoke-virtual {v1, v15, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v15

    move-wide/from16 v17, v5

    const-string v5, "button_x"

    .line 12
    invoke-virtual {v1, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    move-wide/from16 v19, v5

    const-string v5, "button_y"

    .line 13
    invoke-virtual {v1, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    move-wide/from16 v21, v5

    const-string v5, "button_width"

    .line 14
    invoke-virtual {v1, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    move-wide/from16 v23, v5

    const-string v5, "button_height"

    .line 15
    invoke-virtual {v1, v5, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    move/from16 p1, v2

    move-wide/from16 v29, v3

    move-wide v5, v15

    move-wide/from16 v3, v17

    move-wide/from16 v1, v19

    move-wide/from16 v25, v21

    move-wide/from16 v27, v23

    goto :goto_0

    :cond_1
    move/from16 p1, v2

    move-wide v1, v3

    move-wide v5, v1

    move-wide v7, v5

    move-wide v9, v7

    move-wide v11, v9

    move-wide v13, v11

    move-wide/from16 v25, v13

    move-wide/from16 v27, v25

    move-wide/from16 v29, v27

    .line 16
    :goto_0
    new-instance v15, Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    invoke-direct {v15}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;-><init>()V

    double-to-int v3, v3

    .line 17
    invoke-virtual {v15, v3}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v3

    double-to-int v4, v7

    .line 18
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v3

    double-to-int v4, v9

    .line 19
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v3

    double-to-int v4, v11

    .line 20
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v3

    double-to-long v7, v13

    .line 21
    invoke-virtual {v3, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v3

    double-to-long v4, v5

    .line 22
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->a(J)Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v3

    double-to-int v1, v1

    .line 23
    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v1

    move-wide/from16 v3, v25

    double-to-int v2, v3

    .line 24
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->f(I)Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v1

    move-wide/from16 v3, v27

    double-to-int v2, v3

    .line 25
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->g(I)Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v1

    move-wide/from16 v3, v29

    double-to-int v2, v3

    .line 26
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->h(I)Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->a()Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object v1

    .line 28
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/w;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    move/from16 v3, p1

    invoke-interface {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(ILcom/bytedance/sdk/openadsdk/core/e/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 29
    :catch_0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/w;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(ILcom/bytedance/sdk/openadsdk/core/e/i;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private i()Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v1

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/i/l;->g(Ljava/lang/String;)I

    move-result v2

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/i/l;->b(Ljava/lang/String;)Z

    move-result v3

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/i/l;->b(I)Z

    move-result v1

    const-string v4, "voice_control"

    .line 7
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "rv_skip_time"

    .line 8
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fv_skip_show"

    .line 9
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "show_dislike"

    .line 10
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->m:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->m:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/k;->Y()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "video_adaptation"

    .line 11
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->m:Lcom/bytedance/sdk/openadsdk/core/e/k;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->m:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/k;->f()I

    move-result v3

    :cond_1
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method private i(Lorg/json/JSONObject;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 12
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/w;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    if-eqz v2, :cond_3

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 13
    :cond_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/e/m;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/e/m;-><init>()V

    :try_start_0
    const-string v4, "isRenderSuc"

    .line 14
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "AdSize"

    .line 15
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "height"

    const-string v7, "width"

    const-wide/16 v8, 0x0

    if-eqz v5, :cond_1

    .line 16
    :try_start_1
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 17
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    goto :goto_0

    :cond_1
    move-wide v10, v8

    :goto_0
    const-string v5, "videoInfo"

    .line 18
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v12, "x"

    .line 19
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-string v14, "y"

    .line 20
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    move/from16 v16, v4

    .line 21
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 22
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 23
    invoke-virtual {v2, v12, v13}, Lcom/bytedance/sdk/openadsdk/core/e/m;->c(D)V

    .line 24
    invoke-virtual {v2, v14, v15}, Lcom/bytedance/sdk/openadsdk/core/e/m;->d(D)V

    .line 25
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/e/m;->e(D)V

    .line 26
    invoke-virtual {v2, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/e/m;->f(D)V

    goto :goto_1

    :cond_2
    move/from16 v16, v4

    :goto_1
    const-string v3, "message"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v4, 0x65

    .line 27
    :try_start_2
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "code"

    .line 28
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v4, v16

    .line 29
    :try_start_3
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/e/m;->a(Z)V

    .line 30
    invoke-virtual {v2, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/e/m;->a(D)V

    .line 31
    invoke-virtual {v2, v10, v11}, Lcom/bytedance/sdk/openadsdk/core/e/m;->b(D)V

    .line 32
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/e/m;->a(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/e/m;->a(I)V

    .line 34
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/w;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(Lcom/bytedance/sdk/openadsdk/core/e/m;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_0
    move v1, v4

    goto :goto_2

    :catch_1
    const/16 v1, 0x65

    .line 35
    :goto_2
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/e/m;->a(I)V

    .line 36
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/e/m;->a(Ljava/lang/String;)V

    .line 37
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/w;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(Lcom/bytedance/sdk/openadsdk/core/e/m;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private j()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->m:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Lcom/bytedance/sdk/openadsdk/d/b;Lcom/bytedance/sdk/openadsdk/core/e/k;)Lcom/bytedance/sdk/openadsdk/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    :cond_0
    return-void
.end method

.method private j(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "trackData"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bytedance"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/w;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private k(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->r:Lcom/bytedance/sdk/openadsdk/d/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "temaiProductIds"

    .line 2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->r:Lcom/bytedance/sdk/openadsdk/d/d;

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/d/d;->a(ZLorg/json/JSONArray;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->r:Lcom/bytedance/sdk/openadsdk/d/d;

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/d/d;->a(ZLorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->r:Lcom/bytedance/sdk/openadsdk/d/d;

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/d/d;->a(ZLorg/json/JSONArray;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private l(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->f()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:ToutiaoJSBridge._handleMessageFromToutiao("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/s;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "js_msg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTAndroidObject"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private m(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "ad_extra_data"

    .line 1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->a:Ljava/util/Map;

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 7
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object p1
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 6
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->k:I

    return-object p0
.end method

.method public a(Landroid/webkit/WebView;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->d:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/a/d;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->v:Lcom/bytedance/sdk/openadsdk/core/a/d;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/k;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->m:Lcom/bytedance/sdk/openadsdk/core/e/k;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->o:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/d/d;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->r:Lcom/bytedance/sdk/openadsdk/d/d;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/e/a;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->s:Lcom/bytedance/sdk/openadsdk/e/a;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/e/b;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->t:Lcom/bytedance/sdk/openadsdk/e/b;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->i:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/w;"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->a:Ljava/util/Map;

    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->q:Lorg/json/JSONObject;

    return-object p0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Z

    return-object p0
.end method

.method public a(Landroid/os/Message;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;

    if-eqz v0, :cond_2

    .line 109
    :try_start_0
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/w$a;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/core/w$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->m:Lcom/bytedance/sdk/openadsdk/core/e/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "bytedance"

    .line 104
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 105
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 106
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/w;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_2
    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->j:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->u:Lorg/json/JSONObject;

    return-object p0
.end method

.method public b(Z)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->x:Z

    return-object p0
.end method

.method public b(Landroid/net/Uri;)V
    .locals 11

    const-string v0, "TTAndroidObject"

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "log_event"

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "custom_event"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "log_event_v3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "private"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "dispatch_message"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "handlrUir: not match schema host"

    .line 13
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->f(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    :goto_1
    const-string v1, "category"

    .line 15
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "tag"

    .line 16
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "label"

    .line 17
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-wide/16 v5, 0x0

    :try_start_1
    const-string v3, "value"

    .line 18
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-wide v7, v5

    :goto_2
    :try_start_2
    const-string v3, "ext_value"

    .line 19
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-wide v9, v5

    const/4 v3, 0x0

    :try_start_3
    const-string v5, "extra"

    .line 20
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v5, :cond_4

    .line 22
    :try_start_4
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v3, v5

    :catch_2
    :cond_4
    :try_start_5
    const-string p1, "click"

    .line 23
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 24
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/w;->m(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, v3

    .line 25
    :goto_3
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/w;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-wide v5, v7

    move-wide v7, v9

    move-object v9, p1

    .line 26
    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    const-string v1, "handleUri exception: "

    .line 27
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public b()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Z

    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->l:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->w:Z

    return-object p0
.end method

.method public c()V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->a()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->b()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/d/c;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->c()V

    :cond_0
    return-void
.end method
