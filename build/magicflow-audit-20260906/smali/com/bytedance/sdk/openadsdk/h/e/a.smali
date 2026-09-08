.class public abstract Lcom/bytedance/sdk/openadsdk/h/e/a;
.super Ljava/lang/Object;
.source "AbsResponseWrapper.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/h/i$b;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/bytedance/sdk/openadsdk/h/e/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method protected a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/i$b;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/e/a;->a:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/e/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/h/i$b;

    .line 3
    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method protected a(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    const-string p1, ""

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "HTTP Version Not Supported"

    goto/16 :goto_0

    :pswitch_1
    const-string p1, "Gateway Timeout"

    goto/16 :goto_0

    :pswitch_2
    const-string p1, "Service Unavailable"

    goto/16 :goto_0

    :pswitch_3
    const-string p1, "Bad Gateway"

    goto/16 :goto_0

    :pswitch_4
    const-string p1, "Not Implemented"

    goto/16 :goto_0

    :pswitch_5
    const-string p1, "Internal Server Error"

    goto/16 :goto_0

    :pswitch_6
    const-string p1, "Unsupported Media Type"

    goto/16 :goto_0

    :pswitch_7
    const-string p1, "Request-URI Too Large"

    goto/16 :goto_0

    :pswitch_8
    const-string p1, "Request Entity Too Large"

    goto/16 :goto_0

    :pswitch_9
    const-string p1, "Precondition Failed"

    goto :goto_0

    :pswitch_a
    const-string p1, "Length Required"

    goto :goto_0

    :pswitch_b
    const-string p1, "Gone"

    goto :goto_0

    :pswitch_c
    const-string p1, "Conflict"

    goto :goto_0

    :pswitch_d
    const-string p1, "Request Time-Out"

    goto :goto_0

    :pswitch_e
    const-string p1, "Proxy Authentication Required"

    goto :goto_0

    :pswitch_f
    const-string p1, "Not Acceptable"

    goto :goto_0

    :pswitch_10
    const-string p1, "Method Not Allowed"

    goto :goto_0

    :pswitch_11
    const-string p1, "Not Found"

    goto :goto_0

    :pswitch_12
    const-string p1, "Forbidden"

    goto :goto_0

    :pswitch_13
    const-string p1, "Payment Required"

    goto :goto_0

    :pswitch_14
    const-string p1, "Unauthorized"

    goto :goto_0

    :pswitch_15
    const-string p1, "Bad Request"

    goto :goto_0

    :pswitch_16
    const-string p1, "Use Proxy"

    goto :goto_0

    :pswitch_17
    const-string p1, "Not Modified"

    goto :goto_0

    :pswitch_18
    const-string p1, "See Other"

    goto :goto_0

    :pswitch_19
    const-string p1, "Temporary Redirect"

    goto :goto_0

    :pswitch_1a
    const-string p1, "Moved Permanently"

    goto :goto_0

    :pswitch_1b
    const-string p1, "Multiple Choices"

    goto :goto_0

    :pswitch_1c
    const-string p1, "Partial Content"

    goto :goto_0

    :pswitch_1d
    const-string p1, "Reset Content"

    goto :goto_0

    :pswitch_1e
    const-string p1, "No Content"

    goto :goto_0

    :pswitch_1f
    const-string p1, "Non-Authoritative"

    goto :goto_0

    :pswitch_20
    const-string p1, "Accepted"

    goto :goto_0

    :pswitch_21
    const-string p1, "Created"

    goto :goto_0

    :pswitch_22
    const-string p1, "OK"

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x190
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1f4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract b()Z
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/h/i$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Ljava/io/InputStream;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public g()Lcom/bytedance/sdk/openadsdk/h/e/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/a;->b:Lcom/bytedance/sdk/openadsdk/h/e/f;

    return-object v0
.end method
