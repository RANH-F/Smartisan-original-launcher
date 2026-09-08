.class final Lc/d/a/b/a/j/e$x;
.super Lc/d/a/b/a/c/q$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/e0;)Lc/d/a/b/a/c/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/c/e0;


# direct methods
.method constructor <init>(Lc/d/a/b/a/c/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$x;->a:Lc/d/a/b/a/c/e0;

    invoke-direct {p0}, Lc/d/a/b/a/c/q$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lc/d/a/b/a/j/e$x;->a:Lc/d/a/b/a/c/e0;

    invoke-interface {v0}, Lc/d/a/b/a/c/e0;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lc/d/a/b/a/j/e$x;->a:Lc/d/a/b/a/c/e0;

    invoke-interface {p1, v0}, Lc/d/a/b/a/c/e0;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$x;->a:Lc/d/a/b/a/c/e0;

    instance-of v1, v0, Lc/d/a/b/a/c/j;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lc/d/a/b/a/c/j;

    invoke-virtual {v0}, Lc/d/a/b/a/c/j;->a()[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
