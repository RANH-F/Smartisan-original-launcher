.class public Lcom/smartisanos/magicflow/n/a;
.super Ljava/lang/Object;
.source "AutoUpdateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/n/a$a;
    }
.end annotation


# static fields
.field private static b:Lcom/smartisanos/magicflow/LOG;

.field private static final c:Landroid/net/Uri;

.field private static d:Lcom/smartisanos/magicflow/n/a;


# instance fields
.field private a:Lcom/smartisanos/magicflow/n/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/n/a;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/n/a;->b:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "content://com.smartisanos.appstore.auto_update"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/n/a;->c:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/smartisanos/magicflow/n/a;->d:Lcom/smartisanos/magicflow/n/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/n/a;->b:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method static synthetic c()Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/n/a;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public static d()Lcom/smartisanos/magicflow/n/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/n/a;->d:Lcom/smartisanos/magicflow/n/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/n/a;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/n/a;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/n/a;->d:Lcom/smartisanos/magicflow/n/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/n/a;->d:Lcom/smartisanos/magicflow/n/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "auto_update_pkg"

    .line 11
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 13
    :try_start_0
    sget-object p2, Lcom/smartisanos/magicflow/n/a;->c:Landroid/net/Uri;

    const-string v1, "getDownloadProgress"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "auto_update_progress"

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 15
    :cond_0
    sget-object p1, Lcom/smartisanos/magicflow/n/a;->b:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "getDownloadProgress:extrais null"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public a()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/smartisanos/magicflow/n/a;->a:Lcom/smartisanos/magicflow/n/a$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/smartisanos/magicflow/n/a;->a:Lcom/smartisanos/magicflow/n/a$a;

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "auto_update_pkg"

    .line 19
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "auto_update_version_code"

    .line 20
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    :try_start_0
    sget-object p2, Lcom/smartisanos/magicflow/n/a;->c:Landroid/net/Uri;

    const-string p3, "delayUpdate"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "auto_update_name"

    .line 2
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object p2, Lcom/smartisanos/magicflow/n/a;->c:Landroid/net/Uri;

    const-string v0, "installApp"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "auto_update_name"

    .line 6
    invoke-virtual {p4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "useMobile"

    .line 7
    invoke-virtual {p4, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    :try_start_0
    sget-object p2, Lcom/smartisanos/magicflow/n/a;->c:Landroid/net/Uri;

    const-string p3, "startDownload"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, p4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/n/a;->a:Lcom/smartisanos/magicflow/n/a$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/magicflow/n/a;->a:Lcom/smartisanos/magicflow/n/a$a;

    .line 5
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/n/a$a;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/n/a$a;-><init>(Lcom/smartisanos/magicflow/n/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/n/a;->a:Lcom/smartisanos/magicflow/n/a$a;

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/n/a;->a:Lcom/smartisanos/magicflow/n/a$a;

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "auto_update_pkg"

    .line 4
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :try_start_0
    sget-object p2, Lcom/smartisanos/magicflow/n/a;->c:Landroid/net/Uri;

    const-string v1, "stopDownload"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
