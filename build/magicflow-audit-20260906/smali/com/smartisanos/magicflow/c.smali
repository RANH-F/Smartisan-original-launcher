.class public Lcom/smartisanos/magicflow/c;
.super Ljava/lang/Object;
.source "MagicflowTracker.java"


# static fields
.field private static final b:Lcom/smartisanos/magicflow/LOG;

.field private static c:Lcom/smartisanos/magicflow/c;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/c;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/magicflow/c;)Landroid/content/Context;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/magicflow/c;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/smartisanos/magicflow/c;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/magicflow/c;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .line 13
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "open"

    invoke-static {v1, p2}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lsmartisanos/app/tracker/Agent;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 21
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 23
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 25
    :cond_1
    sget-object p1, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static b(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 11
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 13
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 16
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 18
    :cond_2
    sget-object v1, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method static synthetic g()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method public static h()Lcom/smartisanos/magicflow/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/c;->c:Lcom/smartisanos/magicflow/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/c;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/c;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/c;->c:Lcom/smartisanos/magicflow/c;

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/c;->c:Lcom/smartisanos/magicflow/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/16 v0, 0x80

    .line 34
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/c;->e()V

    .line 36
    new-instance v0, Lcom/smartisanos/magicflow/c$i;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/c$i;-><init>(Lcom/smartisanos/magicflow/c;)V

    .line 37
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/o/d;->send()V

    return-void
.end method

.method public a(I)V
    .locals 2

    :try_start_0
    const-string v0, "A350044"

    const-string v1, "cardType"

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 3

    const/4 v0, 0x1

    const-string v1, ""

    const-string v2, "source"

    if-ne p1, v0, :cond_0

    :try_start_0
    const-string p1, "A350032"

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string p1, "A350037"

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 19
    :goto_0
    sget-boolean p2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p2, :cond_1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 21
    :cond_1
    sget-object p2, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 2

    .line 26
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "adType"

    .line 27
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "creativeType"

    .line 28
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "dsp"

    .line 29
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "A350045"

    .line 30
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    sget-boolean p2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 33
    :cond_0
    sget-object p2, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/app/Application;)V
    .locals 1

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/c;->a:Landroid/content/Context;

    .line 6
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsmartisanos/app/tracker/Agent;->init(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/c$e;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/c$e;-><init>(Lcom/smartisanos/magicflow/c;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/o/d;->send()V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 2

    .line 47
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "aid"

    .line 48
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "success"

    .line 49
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "networkType"

    .line 50
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "A350047"

    .line 51
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    sget-boolean p2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 54
    :cond_0
    sget-object p2, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/c$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/smartisanos/magicflow/c$b;-><init>(Lcom/smartisanos/magicflow/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/o/d;->send()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 38
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    .line 39
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 40
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "event"

    .line 41
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "dsp"

    .line 42
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "A350046"

    .line 43
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    sget-boolean p2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 46
    :cond_0
    sget-object p2, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "type"

    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A350078"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, "A350084"

    .line 38
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 3

    :try_start_0
    const-string v0, "A350043"

    const-string v1, "position"

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 29
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(II)V
    .locals 2

    .line 4
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "toutiao_position"

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "yuedu_position"

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "A350048"

    .line 7
    invoke-static {v0}, Lcom/smartisanos/magicflow/c;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    sget-boolean p2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 10
    :cond_0
    sget-object p2, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(IILjava/lang/String;)V
    .locals 2

    .line 32
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "adType"

    .line 33
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "creativeType"

    .line 34
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "dsp"

    .line 35
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "A350083"

    .line 36
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "status"

    .line 30
    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A350067"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/c$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/smartisanos/magicflow/c$d;-><init>(Lcom/smartisanos/magicflow/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/o/d;->send()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "result"

    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A350073"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    const-string v0, "A350053"

    .line 16
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    :try_start_0
    const-string v0, "A350052"

    const-string v1, "card_type"

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c(II)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "jumpType"

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "A350020"

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    sget-boolean p2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 7
    :cond_0
    sget-object p2, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    .line 17
    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A350064"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    xor-int/lit8 p1, p1, 0x1

    :try_start_0
    const-string v0, "A350049"

    const-string v1, "left_screen_switch"

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/c$a;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/c$a;-><init>(Lcom/smartisanos/magicflow/c;)V

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/o/d;->send()V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "enterType"

    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A350066"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "toolName"

    .line 3
    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A350065"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/c$h;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/c$h;-><init>(Lcom/smartisanos/magicflow/c;)V

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/o/d;->send()V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type"

    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A350019"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "A350025"

    const-string v1, "source"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/c$f;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/c$f;-><init>(Lcom/smartisanos/magicflow/c;)V

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/o/d;->send()V

    return-void
.end method

.method public f(I)V
    .locals 1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type"

    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A350060"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/c$g;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/c$g;-><init>(Lcom/smartisanos/magicflow/c;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/o/d;->send()V

    return-void
.end method

.method public g(I)V
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "A350027"

    .line 5
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "A350034"

    .line 6
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const-string p1, "A350039"

    .line 7
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 8
    :goto_0
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 10
    :cond_2
    sget-object v0, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/c$c;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/c$c;-><init>(Lcom/smartisanos/magicflow/c;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/o/d;->send()V

    return-void
.end method

.method public h(I)V
    .locals 2

    :try_start_0
    const-string v0, "A350051"

    const-string v1, "news_type"

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardType"

    .line 8
    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A350075"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i(I)V
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "A350026"

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "A350033"

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const-string p1, "A350038"

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4
    :goto_0
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 6
    :cond_2
    sget-object v0, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "source"

    .line 7
    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A350081"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j(I)V
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "A350028"

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "A350035"

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const-string p1, "A350040"

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4
    :goto_0
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 6
    :cond_2
    sget-object v0, Lcom/smartisanos/magicflow/c;->b:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "packageName"

    .line 8
    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A350063"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k(I)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type"

    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A350055"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "daily_count"

    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A350079"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "type"

    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A350071"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public n(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "result"

    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "A350074"

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
