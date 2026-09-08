.class public Lc/b/a/a/b/f;
.super Lc/b/a/a/b/g;
.source "JsonObjectRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/a/b/g<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lc/b/a/a/d/p$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lc/b/a/a/d/p$a<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lc/b/a/a/b/g;-><init>(ILjava/lang/String;Ljava/lang/String;Lc/b/a/a/d/p$a;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lc/b/a/a/d/p$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lc/b/a/a/d/p$a<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lc/b/a/a/b/f;-><init>(ILjava/lang/String;Ljava/lang/String;Lc/b/a/a/d/p$a;)V

    return-void
.end method


# virtual methods
.method protected a(Lc/b/a/a/d/m;)Lc/b/a/a/d/p;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/m;",
            ")",
            "Lc/b/a/a/d/p<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lc/b/a/a/d/m;->b:[B

    iget-object v2, p1, Lc/b/a/a/d/m;->c:Ljava/util/Map;

    const-string v3, "utf-8"

    .line 2
    invoke-static {v2, v3}, Lc/b/a/a/e/c;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lc/b/a/a/e/c;->a(Lc/b/a/a/d/m;)Lc/b/a/a/g/b$a;

    move-result-object p1

    .line 5
    invoke-static {v1, p1}, Lc/b/a/a/d/p;->a(Ljava/lang/Object;Lc/b/a/a/g/b$a;)Lc/b/a/a/d/p;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Lc/b/a/a/f/f;

    invoke-direct {v0, p1}, Lc/b/a/a/f/f;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lc/b/a/a/d/p;->a(Lc/b/a/a/f/a;)Lc/b/a/a/d/p;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 7
    new-instance v0, Lc/b/a/a/f/f;

    invoke-direct {v0, p1}, Lc/b/a/a/f/f;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lc/b/a/a/d/p;->a(Lc/b/a/a/f/a;)Lc/b/a/a/d/p;

    move-result-object p1

    return-object p1
.end method
