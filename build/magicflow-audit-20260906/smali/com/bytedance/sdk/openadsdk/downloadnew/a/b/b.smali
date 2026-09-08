.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;
.super Ljava/lang/Object;
.source "LibModelFactory.java"


# direct methods
.method private static a(I)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lc/d/a/a/a/c/g$b;
    .locals 1

    .line 1
    new-instance p1, Lc/d/a/a/a/c/g$b;

    invoke-direct {p1}, Lc/d/a/a/a/c/g$b;-><init>()V

    .line 2
    invoke-virtual {p1, p0}, Lc/d/a/a/a/c/g$b;->a(Ljava/lang/String;)Lc/d/a/a/a/c/g$b;

    const/4 p0, 0x1

    .line 3
    invoke-virtual {p1, p0}, Lc/d/a/a/a/c/g$b;->a(Z)Lc/d/a/a/a/c/g$b;

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Lc/d/a/a/a/c/g$b;->b(Z)Lc/d/a/a/a/c/g$b;

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->j()Z

    move-result v0

    xor-int/2addr v0, p0

    invoke-virtual {p1, v0}, Lc/d/a/a/a/c/g$b;->d(Z)Lc/d/a/a/a/c/g$b;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Lc/d/a/a/a/c/g$b;->b(Ljava/lang/String;)Lc/d/a/a/a/c/g$b;

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1, p0}, Lc/d/a/a/a/c/g$b;->c(Z)Lc/d/a/a/a/c/g$b;

    :cond_0
    return-object p1
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/e/k;)Lcom/ss/android/downloadad/a/a/a$b;
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->s()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-nez p0, :cond_1

    move v3, v2

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->t()I

    move-result v3

    .line 43
    :goto_1
    new-instance v4, Lcom/ss/android/downloadad/a/a/a$b;

    invoke-direct {v4}, Lcom/ss/android/downloadad/a/a/a$b;-><init>()V

    .line 44
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->b(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/ss/android/downloadad/a/a/a$b;->a(I)Lcom/ss/android/downloadad/a/a/a$b;

    .line 45
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/ss/android/downloadad/a/a/a$b;->b(I)Lcom/ss/android/downloadad/a/a/a$b;

    .line 46
    invoke-virtual {v4, v0}, Lcom/ss/android/downloadad/a/a/a$b;->a(Z)Lcom/ss/android/downloadad/a/a/a$b;

    if-eqz p0, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/k;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Lcom/ss/android/downloadad/a/a/a$b;->c(Z)Lcom/ss/android/downloadad/a/a/a$b;

    .line 48
    invoke-virtual {v4, v2}, Lcom/ss/android/downloadad/a/a/a$b;->b(Z)Lcom/ss/android/downloadad/a/a/a$b;

    .line 49
    invoke-virtual {v4, p0}, Lcom/ss/android/downloadad/a/a/a$b;->a(Ljava/lang/Object;)Lcom/ss/android/downloadad/a/a/a$b;

    return-object v4
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;
    .locals 1

    .line 50
    new-instance p0, Lcom/ss/android/downloadad/a/a/b$b;

    invoke-direct {p0}, Lcom/ss/android/downloadad/a/a/b$b;-><init>()V

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/a/b$b;->a(Z)Lcom/ss/android/downloadad/a/a/b$b;

    .line 52
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/a/b$b;->c(Z)Lcom/ss/android/downloadad/a/a/b$b;

    .line 53
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/a/b$b;->b(Z)Lcom/ss/android/downloadad/a/a/b$b;

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/a/b$b;->d(Z)Lcom/ss/android/downloadad/a/a/b$b;

    .line 55
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$b;->d(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    const-string v0, "click_start"

    .line 56
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/a/b$b;->k(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    .line 57
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$b;->f(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    const-string v0, "click_continue"

    .line 58
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/a/b$b;->m(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    .line 59
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$b;->e(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    const-string v0, "click_pause"

    .line 60
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/a/b$b;->l(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    const-string v0, "download_failed"

    .line 61
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/a/b$b;->r(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    .line 62
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$b;->j(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    .line 63
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/a/b$b;->q(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    .line 64
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$b;->g(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    const-string v0, "click_install"

    .line 65
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/a/b$b;->n(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    .line 66
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$b;->h(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    const-string v0, "click_open"

    .line 67
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/a/b$b;->o(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    .line 68
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$b;->i(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    const-string v0, "open_url_app"

    .line 69
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadad/a/a/b$b;->p(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    .line 70
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$b;->c(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    .line 71
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$b;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    .line 72
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/b$b;->b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$b;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$b;
    .locals 4

    if-eqz p1, :cond_6

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->K()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->K()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v0

    .line 11
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 12
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a()Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object p0

    const-string p2, "open_ad_sdk_download_extra"

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    new-instance p0, Lcom/ss/android/downloadad/a/a/c$b;

    invoke-direct {p0}, Lcom/ss/android/downloadad/a/a/c$b;-><init>()V

    .line 15
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->J()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/ss/android/downloadad/a/a/c$b;->a(J)Lcom/ss/android/downloadad/a/a/c$b;

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/a/a/c$b;->d(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    .line 17
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->z()Lcom/bytedance/sdk/openadsdk/core/e/j;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->z()Lcom/bytedance/sdk/openadsdk/core/e/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/j;->a()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/a/a/c$b;->c(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/a/a/c$b;->f(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/h;->j()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/a/a/c$b;->c(Z)Lcom/ss/android/downloadad/a/a/c$b;

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/h;->j()Z

    move-result p2

    const/4 v2, 0x1

    xor-int/2addr p2, v2

    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/a/a/c$b;->f(Z)Lcom/ss/android/downloadad/a/a/c$b;

    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/a/a/c$b;->b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    .line 22
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->M()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/a/a/c$b;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    .line 23
    invoke-virtual {p0, v1}, Lcom/ss/android/downloadad/a/a/c$b;->a(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$b;

    sget-object p2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/a/a/c$b;->h(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 26
    invoke-virtual {p0, v2}, Lcom/ss/android/downloadad/a/a/c$b;->e(Z)Lcom/ss/android/downloadad/a/a/c$b;

    .line 27
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->L()Lcom/bytedance/sdk/openadsdk/core/e/f;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 28
    new-instance p2, Lc/d/a/a/a/d/b;

    invoke-direct {p2}, Lc/d/a/a/a/d/b;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lc/d/a/a/a/d/b;->a(J)V

    .line 30
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lc/d/a/a/a/d/b;->d(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->L()Lcom/bytedance/sdk/openadsdk/core/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lc/d/a/a/a/d/b;->b(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lc/d/a/a/a/d/b;->c(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->L()Lcom/bytedance/sdk/openadsdk/core/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/f;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 34
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->N()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 35
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->N()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 36
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->L()Lcom/bytedance/sdk/openadsdk/core/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/f;->c()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 37
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->L()Lcom/bytedance/sdk/openadsdk/core/e/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lc/d/a/a/a/d/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 38
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->B()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lc/d/a/a/a/d/b;->a(Ljava/lang/String;)V

    .line 39
    :goto_1
    invoke-virtual {p0, p2}, Lcom/ss/android/downloadad/a/a/c$b;->a(Lc/d/a/a/a/d/b;)Lcom/ss/android/downloadad/a/a/c$b;

    :cond_5
    return-object p0

    .line 40
    :cond_6
    :goto_2
    new-instance p0, Lcom/ss/android/downloadad/a/a/c$b;

    invoke-direct {p0}, Lcom/ss/android/downloadad/a/a/c$b;-><init>()V

    return-object p0
.end method

.method private static b(I)I
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
