.class Lcom/bytedance/embed_device_register/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embed_device_register/e;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lcom/bytedance/embed_device_register/h;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/bytedance/embed_device_register/e;


# direct methods
.method constructor <init>(Lcom/bytedance/embed_device_register/e;Landroid/content/SharedPreferences;Lcom/bytedance/embed_device_register/h;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embed_device_register/e$a;->e:Lcom/bytedance/embed_device_register/e;

    iput-object p2, p0, Lcom/bytedance/embed_device_register/e$a;->a:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/bytedance/embed_device_register/e$a;->b:Lcom/bytedance/embed_device_register/h;

    iput-object p4, p0, Lcom/bytedance/embed_device_register/e$a;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/bytedance/embed_device_register/e$a;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/bytedance/embed_device_register/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embed_device_register/h<",
            "Lcom/bytedance/embed_device_register/e$c$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/embed_device_register/e$a$a;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/embed_device_register/e$a$a;-><init>(Lcom/bytedance/embed_device_register/e$a;Lcom/bytedance/embed_device_register/h;)V

    const-string p1, "TrackerDr-update"

    invoke-static {p1, v0}, Lcom/bytedance/embed_device_register/d;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$a;->a:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string v2, "oaid_req_id"

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
    iget-object v3, p0, Lcom/bytedance/embed_device_register/e$a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/bytedance/embed_device_register/e$a;->a:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    const-string v4, "oaid_query_hms_times"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/bytedance/embed_device_register/e$a;->a:Landroid/content/SharedPreferences;

    const-string v5, "oaid_last_success_query_oaid"

    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/bytedance/embed_device_register/e$c$a;->d(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$c$a;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/bytedance/embed_device_register/e$c$a;->b()Z

    move-result v3

    const-string v6, "TrackerDr"

    if-eqz v3, :cond_1

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/embed_device_register/e;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "fromJson.isOaidValid()=true, oaid="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/embed_device_register/e$c$a;->a()Lcom/bytedance/embed_device_register/e$c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/embed_device_register/e$c;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/bytedance/embed_device_register/e$a;->b:Lcom/bytedance/embed_device_register/h;

    iput-object v1, v3, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    .line 11
    invoke-direct {p0, v3}, Lcom/bytedance/embed_device_register/e$a;->a(Lcom/bytedance/embed_device_register/h;)V

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/bytedance/embed_device_register/e$a;->e:Lcom/bytedance/embed_device_register/e;

    iget-object v3, p0, Lcom/bytedance/embed_device_register/e$a;->c:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/bytedance/embed_device_register/e;->a(Lcom/bytedance/embed_device_register/e;Landroid/content/Context;)Lcom/bytedance/embed_device_register/e$c$a;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/bytedance/embed_device_register/e$c$a;->b(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$c$a;

    invoke-virtual {v1, v2}, Lcom/bytedance/embed_device_register/e$c$a;->a(I)Lcom/bytedance/embed_device_register/e$c$a;

    .line 14
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    invoke-static {v1}, Lcom/bytedance/embed_device_register/e$c$a;->a(Lcom/bytedance/embed_device_register/e$c$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 17
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/embed_device_register/e$c$a;->b(J)Lcom/bytedance/embed_device_register/e$c$a;

    .line 18
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$a;->e:Lcom/bytedance/embed_device_register/e;

    iget-object v2, p0, Lcom/bytedance/embed_device_register/e$a;->d:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/bytedance/embed_device_register/e;->b(Lcom/bytedance/embed_device_register/e;Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/embed_device_register/e$c$a;->c(J)Lcom/bytedance/embed_device_register/e$c$a;

    .line 19
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1}, Lcom/bytedance/embed_device_register/e$c$a;->a()Lcom/bytedance/embed_device_register/e$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/embed_device_register/e$c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/embed_device_register/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "saveOaid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/embed_device_register/e$c$a;->a()Lcom/bytedance/embed_device_register/e$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/embed_device_register/e$c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$a;->b:Lcom/bytedance/embed_device_register/h;

    iput-object v1, v0, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$a;->b:Lcom/bytedance/embed_device_register/h;

    invoke-direct {p0, v0}, Lcom/bytedance/embed_device_register/e$a;->a(Lcom/bytedance/embed_device_register/h;)V

    return-void
.end method
