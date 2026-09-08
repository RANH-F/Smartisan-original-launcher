.class Lcom/bytedance/embed_device_register/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embed_device_register/i;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lcom/bytedance/embed_device_register/h;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/bytedance/embed_device_register/i;


# direct methods
.method constructor <init>(Lcom/bytedance/embed_device_register/i;Landroid/content/SharedPreferences;Lcom/bytedance/embed_device_register/h;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embed_device_register/i$a;->d:Lcom/bytedance/embed_device_register/i;

    iput-object p2, p0, Lcom/bytedance/embed_device_register/i$a;->a:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/bytedance/embed_device_register/i$a;->b:Lcom/bytedance/embed_device_register/h;

    iput-object p4, p0, Lcom/bytedance/embed_device_register/i$a;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/bytedance/embed_device_register/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embed_device_register/h<",
            "Lcom/bytedance/embed_device_register/i$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/embed_device_register/i$a$a;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/embed_device_register/i$a$a;-><init>(Lcom/bytedance/embed_device_register/i$a;Lcom/bytedance/embed_device_register/h;)V

    invoke-static {v0}, Lcom/bytedance/embed_device_register/d;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/bytedance/embed_device_register/i$a;->a:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string v2, "oaid_xiaomi_reqId"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v3, p0, Lcom/bytedance/embed_device_register/i$a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    move-object v8, v0

    .line 5
    iget-object v0, p0, Lcom/bytedance/embed_device_register/i$a;->a:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string v3, "oaid_xiaomi_queryXiaomiTimes"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 6
    iget-object v2, p0, Lcom/bytedance/embed_device_register/i$a;->a:Landroid/content/SharedPreferences;

    const-string v13, "oaid_xiaomi_lastSuccessQueryOaid"

    invoke-interface {v2, v13, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/bytedance/embed_device_register/i$c;->a(Ljava/lang/String;)Lcom/bytedance/embed_device_register/i$c;

    move-result-object v1

    const-string v2, "TrackerDr"

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/bytedance/embed_device_register/i$c;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/embed_device_register/i;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "fromJson.isOaidValid()=true, oaid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/embed_device_register/i$c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v4, p0, Lcom/bytedance/embed_device_register/i$a;->b:Lcom/bytedance/embed_device_register/h;

    iput-object v1, v4, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    .line 11
    invoke-direct {p0, v4}, Lcom/bytedance/embed_device_register/i$a;->a(Lcom/bytedance/embed_device_register/h;)V

    .line 12
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 13
    new-instance v1, Lcom/bytedance/embed_device_register/i$b;

    iget-object v6, p0, Lcom/bytedance/embed_device_register/i$a;->c:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/bytedance/embed_device_register/i$b;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v11, v6, v4

    .line 15
    iget-object v4, p0, Lcom/bytedance/embed_device_register/i$a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    iget-object v0, v1, Lcom/bytedance/embed_device_register/i$b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 18
    new-instance v0, Lcom/bytedance/embed_device_register/i$c;

    iget-object v4, v1, Lcom/bytedance/embed_device_register/i$b;->a:Ljava/lang/String;

    iget-object v5, v1, Lcom/bytedance/embed_device_register/i$b;->b:Ljava/lang/String;

    iget-object v6, v1, Lcom/bytedance/embed_device_register/i$b;->c:Ljava/lang/String;

    iget-object v7, v1, Lcom/bytedance/embed_device_register/i$b;->d:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/bytedance/embed_device_register/i$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 19
    iget-object v1, p0, Lcom/bytedance/embed_device_register/i$a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/embed_device_register/i$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v13, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/embed_device_register/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "saveOaid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/embed_device_register/i$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/bytedance/embed_device_register/i$a;->b:Lcom/bytedance/embed_device_register/h;

    iput-object v0, v1, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/bytedance/embed_device_register/i$a;->b:Lcom/bytedance/embed_device_register/h;

    invoke-direct {p0, v0}, Lcom/bytedance/embed_device_register/i$a;->a(Lcom/bytedance/embed_device_register/h;)V

    return-void
.end method
