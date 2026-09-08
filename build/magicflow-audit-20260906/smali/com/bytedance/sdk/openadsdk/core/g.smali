.class public Lcom/bytedance/sdk/openadsdk/core/g;
.super Ljava/lang/Object;
.source "ErrorCode.java"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_4

    const/16 v0, 0xca

    if-eq p0, v0, :cond_3

    const/16 v0, 0x4e21

    if-eq p0, v0, :cond_2

    const v0, 0xc351

    if-eq p0, v0, :cond_1

    const v0, 0xea67

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const-string p0, "\u672a\u77e5\u62a5\u9519"

    return-object p0

    :pswitch_0
    const-string p0, "click event\u5904\u7406\u9519\u8bef"

    return-object p0

    :pswitch_1
    const-string p0, "show event\u5904\u7406\u9519\u8bef"

    return-object p0

    :pswitch_2
    const-string p0, "sdk \u7248\u672c\u8fc7\u4f4e\u4e0d\u8fd4\u56de\u5e7f\u544a"

    return-object p0

    :pswitch_3
    const-string p0, "os\u5b57\u6bb5\u586b\u7684\u4e0d\u5bf9"

    return-object p0

    :pswitch_4
    const-string p0, "\u5a92\u4f53\u8bf7\u6c42\u7d20\u6750\u662f\u5426\u539f\u751f\u4e0e\u5a92\u4f53\u5e73\u53f0\u5f55\u5165\u4e0d\u4e00\u81f4"

    return-object p0

    :pswitch_5
    const-string p0, "apk\u7b7e\u540dsha1\u503c\u4e0e\u5a92\u4f53\u5e73\u53f0\u5f55\u5165\u4e0d\u4e00\u81f4"

    return-object p0

    :pswitch_6
    const-string p0, "\u5f00\u53d1\u6ce8\u518c\u65b0\u4e0a\u7ebf\u5e7f\u544a\u4f4d\u8d85\u51fa\u65e5\u8bf7\u6c42\u91cf\u9650\u5236"

    return-object p0

    :pswitch_7
    const-string p0, "\u5a92\u4f53\u914d\u7f6eadtype\u548c\u8bf7\u6c42\u4e0d\u4e00\u81f4"

    return-object p0

    :pswitch_8
    const-string p0, "\u5a92\u4f53\u5305\u540d\u5f02\u5e38"

    return-object p0

    :pswitch_9
    const-string p0, "SlotId\u548cAppId\u5339\u914d\u5f02\u5e38"

    return-object p0

    :pswitch_a
    const-string p0, "\u5a92\u4f53\u6574\u6539\u8d85\u8fc7\u671f\u9650\uff0c\u8bf7\u6c42\u975e\u6cd5"

    return-object p0

    :pswitch_b
    const-string p0, "redirect\u53c2\u6570\u4e0d\u6b63\u786e"

    return-object p0

    :pswitch_c
    const-string p0, "\u5f00\u5c4f\u5e7f\u544a\u7c7b\u578b\u5f02\u5e38"

    return-object p0

    :pswitch_d
    const-string p0, "\u5a92\u4f53\u63a5\u5165\u7c7b\u578b\u4e0d\u5408\u6cd5"

    return-object p0

    :pswitch_e
    const-string p0, "\u5e7f\u544a\u7c7b\u578b\u4e0d\u5408\u6cd5"

    return-object p0

    :pswitch_f
    const-string p0, "\u5a92\u4f53\u7c7b\u578b\u4e0d\u5408\u6cd5"

    return-object p0

    :pswitch_10
    const-string p0, "\u5a92\u4f53ID\u4e0d\u5408\u6cd5"

    return-object p0

    :pswitch_11
    const-string p0, "\u56fe\u7247\u5c3a\u5bf8\u9519\u8bef"

    return-object p0

    :pswitch_12
    const-string p0, "\u5e7f\u544a\u6570\u91cf\u9519\u8bef"

    return-object p0

    :pswitch_13
    const-string p0, "\u5e7f\u544a\u4f4dID\u4e0d\u5408\u6cd5"

    return-object p0

    :pswitch_14
    const-string p0, "\u5e7f\u544a\u4f4d\u5c3a\u5bf8\u4e0d\u80fd\u4e3a\u7a7a"

    return-object p0

    :pswitch_15
    const-string p0, "\u5e7f\u544a\u4f4d\u4e0d\u80fd\u4e3a\u7a7a"

    return-object p0

    :pswitch_16
    const-string p0, "\u8bf7\u6c42wap\u4e0d\u80fd\u4e3a\u7a7a"

    return-object p0

    :pswitch_17
    const-string p0, "\u8bf7\u6c42app\u4e0d\u80fd\u4e3a\u7a7a "

    return-object p0

    :pswitch_18
    const-string p0, "http request pb\u9519\u8bef"

    return-object p0

    :pswitch_19
    const-string p0, "http conent_type\u9519\u8bef"

    return-object p0

    :pswitch_1a
    const-string p0, "\u6a21\u677f\u5e7f\u544a\u52a0\u8f7d\u8d85\u65f6\u65e0\u8fd4\u56de"

    return-object p0

    :pswitch_1b
    const-string p0, "\u6e32\u67d3\u8d85\u65f6\u672a\u56de\u8c03"

    return-object p0

    :pswitch_1c
    const-string p0, "\u6e32\u67d3\u672a\u77e5\u62a5\u9519"

    return-object p0

    :pswitch_1d
    const-string p0, "\u6a21\u677f\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    return-object p0

    :pswitch_1e
    const-string p0, "\u6a21\u677f\u7269\u6599\u6570\u636e\u5f02\u5e38"

    return-object p0

    :pswitch_1f
    const-string p0, "\u6a21\u677f\u5dee\u91cf\u65e0\u6548"

    return-object p0

    :pswitch_20
    const-string p0, "\u4e3b\u6a21\u677f\u65e0\u6548"

    return-object p0

    :pswitch_21
    const-string p0, "\u6e32\u67d3\u7ed3\u679c\u6570\u636e\u89e3\u6790\u5931\u8d25"

    return-object p0

    :pswitch_22
    const-string p0, "\u89e3\u6790\u5931\u8d25"

    return-object p0

    :pswitch_23
    const-string p0, "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25"

    return-object p0

    :pswitch_24
    const-string p0, "\u6ca1\u6709\u89e3\u6790\u5230\u5e7f\u544a"

    return-object p0

    :pswitch_25
    const-string p0, "\u8fd4\u56de\u6570\u636e\u7f3a\u5c11\u5fc5\u8981\u5b57\u6bb5"

    return-object p0

    :pswitch_26
    const-string p0, "Banner\u5e7f\u544a\u52a0\u8f7d\u56fe\u7247\u5931\u8d25"

    return-object p0

    :pswitch_27
    const-string p0, "\u63d2\u5c4f\u5e7f\u544a\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    return-object p0

    :pswitch_28
    const-string p0, "\u5f00\u5c4f\u5e7f\u544a\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    return-object p0

    :pswitch_29
    const-string p0, "\u5e7f\u544a\u8bf7\u6c42\u9891\u7387\u8fc7\u9ad8"

    return-object p0

    :pswitch_2a
    const-string p0, "\u8bf7\u6c42\u5b9e\u4f53\u4e3a\u7a7a"

    return-object p0

    :pswitch_2b
    const-string p0, "\u7f13\u5b58\u89e3\u6790\u5931\u8d25"

    return-object p0

    :pswitch_2c
    const-string p0, "\u7f13\u5b58\u8fc7\u671f"

    return-object p0

    :pswitch_2d
    const-string p0, "\u7f13\u5b58\u4e2d\u6ca1\u6709\u5f00\u5c4f\u5e7f\u544a"

    return-object p0

    :pswitch_2e
    const-string p0, "\u5e7f\u544a\u8bf7\u6c42\u4f7f\u7528\u4e86\u9519\u8bef\u4ee3\u7801\u4f4d"

    return-object p0

    :cond_0
    const-string p0, "\u6fc0\u52b1\u89c6\u9891\u9a8c\u8bc1\u670d\u52a1\u5668\u5f02\u5e38\u6216\u5904\u7406\u5931\u8d25"

    return-object p0

    :cond_1
    const-string p0, "\u670d\u52a1\u5668\u9519\u8bef"

    return-object p0

    :cond_2
    const-string p0, "\u6ca1\u6709\u5e7f\u544a"

    return-object p0

    :cond_3
    const-string p0, "icon\u56fe\u6807\u52a0\u8f7d\u5931\u8d25"

    return-object p0

    :cond_4
    const-string p0, "icon\u52a0\u8f7dresponse\u9519\u8bef"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0xd
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9c40
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
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
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xea61
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
