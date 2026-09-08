.class public Lcom/ss/android/downloadlib/e/f;
.super Ljava/lang/Object;
.source "RomUtils.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# direct methods
.method public static a()Z
    .locals 1

    const-string v0, "EMUI"

    .line 1
    invoke-static {v0}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 2
    sget-object v0, Lcom/ss/android/downloadlib/e/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "ro.miui.ui.version.name"

    .line 4
    invoke-static {v0}, Lcom/ss/android/downloadlib/e/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/e/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MIUI"

    .line 5
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->a:Ljava/lang/String;

    const-string v0, "com.xiaomi.market"

    .line 6
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    const-string v0, "ro.build.version.emui"

    .line 7
    invoke-static {v0}, Lcom/ss/android/downloadlib/e/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/e/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "EMUI"

    .line 8
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->a:Ljava/lang/String;

    const-string v0, "com.huawei.appmarket"

    .line 9
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    const-string v0, "ro.build.version.opporom"

    .line 10
    invoke-static {v0}, Lcom/ss/android/downloadlib/e/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/e/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "OPPO"

    .line 11
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->a:Ljava/lang/String;

    const-string v0, "com.oppo.market"

    .line 12
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    const-string v0, "ro.vivo.os.version"

    .line 13
    invoke-static {v0}, Lcom/ss/android/downloadlib/e/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/e/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "VIVO"

    .line 14
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->a:Ljava/lang/String;

    const-string v0, "com.bbk.appstore"

    .line 15
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string v0, "ro.smartisan.version"

    .line 16
    invoke-static {v0}, Lcom/ss/android/downloadlib/e/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/e/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "SMARTISAN"

    .line 17
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->a:Ljava/lang/String;

    const-string v0, "com.smartisanos.appstore"

    .line 18
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string v0, "ro.gn.sv.version"

    .line 19
    invoke-static {v0}, Lcom/ss/android/downloadlib/e/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/e/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "QIONEE"

    .line 20
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->a:Ljava/lang/String;

    const-string v0, "com.gionee.aora.market"

    .line 21
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string v0, "ro.lenovo.lvp.version"

    .line 22
    invoke-static {v0}, Lcom/ss/android/downloadlib/e/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/e/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "LENOVO"

    .line 23
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->a:Ljava/lang/String;

    const-string v0, "com.lenovo.leos.appstore"

    .line 24
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->c:Ljava/lang/String;

    goto :goto_0

    .line 25
    :cond_7
    invoke-static {}, Lcom/ss/android/downloadlib/e/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAMSUNG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    sput-object v1, Lcom/ss/android/downloadlib/e/f;->a:Ljava/lang/String;

    const-string v0, "com.sec.android.app.samsungapps"

    .line 27
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->c:Ljava/lang/String;

    goto :goto_0

    .line 28
    :cond_8
    invoke-static {}, Lcom/ss/android/downloadlib/e/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 29
    sput-object v1, Lcom/ss/android/downloadlib/e/f;->a:Ljava/lang/String;

    const-string v0, "zte.com.market"

    .line 30
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->c:Ljava/lang/String;

    goto :goto_0

    .line 31
    :cond_9
    invoke-static {}, Lcom/ss/android/downloadlib/e/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NUBIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    sput-object v1, Lcom/ss/android/downloadlib/e/f;->a:Ljava/lang/String;

    const-string v0, "cn.nubia.neostore"

    .line 33
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->c:Ljava/lang/String;

    goto :goto_0

    .line 34
    :cond_a
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lcom/ss/android/downloadlib/e/f;->b:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/ss/android/downloadlib/e/f;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEIZU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 36
    sput-object v1, Lcom/ss/android/downloadlib/e/f;->a:Ljava/lang/String;

    const-string v0, "com.meizu.mstore"

    .line 37
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->c:Ljava/lang/String;

    goto :goto_0

    :cond_b
    const-string v0, "unknown"

    .line 38
    sput-object v0, Lcom/ss/android/downloadlib/e/f;->b:Ljava/lang/String;

    .line 39
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/e/f;->a:Ljava/lang/String;

    .line 40
    :goto_0
    sget-object v0, Lcom/ss/android/downloadlib/e/f;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x400

    invoke-direct {v1, v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_0

    .line 8
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    :cond_0
    :goto_2
    throw p0

    :catch_2
    move-object v1, v0

    :catch_3
    if-eqz v1, :cond_1

    .line 11
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    return-object v0
.end method

.method public static b()Z
    .locals 1

    const-string v0, "VIVO"

    .line 1
    invoke-static {v0}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 1

    const-string v0, "OPPO"

    .line 1
    invoke-static {v0}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/e/f;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 2
    invoke-static {v0}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;)Z

    .line 3
    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/e/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static final e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
