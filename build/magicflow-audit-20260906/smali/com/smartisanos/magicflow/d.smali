.class public Lcom/smartisanos/magicflow/d;
.super Ljava/lang/Object;
.source "ObserverManager.java"


# static fields
.field private static a:Lcom/smartisanos/magicflow/LOG;

.field private static b:Landroid/net/Uri;

.field private static c:Landroid/net/Uri;

.field private static d:Landroid/net/Uri;

.field private static e:Landroid/net/Uri;

.field private static f:Landroid/net/Uri;

.field private static g:Landroid/net/Uri;

.field private static h:Landroid/net/Uri;

.field private static i:Landroid/os/Handler;

.field private static j:Landroid/database/ContentObserver;

.field private static k:Landroid/database/ContentObserver;

.field private static l:Landroid/database/ContentObserver;

.field private static m:Landroid/database/ContentObserver;

.field private static n:Landroid/database/ContentObserver;

.field private static o:Landroid/database/ContentObserver;

.field private static p:Landroid/database/ContentObserver;

.field private static q:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/d;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/d;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "sm_launcher_left_screen_state"

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/d;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/d;->b:Landroid/net/Uri;

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/d;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/d;->c:Landroid/net/Uri;

    const-string v0, "navigationbar_trigger_mode"

    .line 4
    invoke-static {v0}, Lcom/smartisanos/magicflow/d;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/d;->d:Landroid/net/Uri;

    const-string v0, "nav_fixed_mode"

    .line 5
    invoke-static {v0}, Lcom/smartisanos/magicflow/d;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/d;->e:Landroid/net/Uri;

    const-string v0, "spacial_nav_bar_state"

    .line 6
    invoke-static {v0}, Lcom/smartisanos/magicflow/d;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/d;->f:Landroid/net/Uri;

    const-string v0, "user_setup_complete"

    .line 7
    invoke-static {v0}, Lcom/smartisanos/magicflow/d;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/d;->g:Landroid/net/Uri;

    const-string v0, "feature_phone_mode"

    .line 8
    invoke-static {v0}, Lcom/smartisanos/magicflow/d;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/d;->h:Landroid/net/Uri;

    .line 9
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/d;->i:Landroid/os/Handler;

    .line 10
    new-instance v0, Lcom/smartisanos/magicflow/d$a;

    sget-object v1, Lcom/smartisanos/magicflow/d;->i:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/smartisanos/magicflow/d$a;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/smartisanos/magicflow/d;->j:Landroid/database/ContentObserver;

    .line 11
    new-instance v0, Lcom/smartisanos/magicflow/d$b;

    sget-object v1, Lcom/smartisanos/magicflow/d;->i:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/smartisanos/magicflow/d$b;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/smartisanos/magicflow/d;->k:Landroid/database/ContentObserver;

    .line 12
    new-instance v0, Lcom/smartisanos/magicflow/d$c;

    sget-object v1, Lcom/smartisanos/magicflow/d;->i:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/smartisanos/magicflow/d$c;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/smartisanos/magicflow/d;->l:Landroid/database/ContentObserver;

    .line 13
    new-instance v0, Lcom/smartisanos/magicflow/d$d;

    sget-object v1, Lcom/smartisanos/magicflow/d;->i:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/smartisanos/magicflow/d$d;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/smartisanos/magicflow/d;->m:Landroid/database/ContentObserver;

    .line 14
    new-instance v0, Lcom/smartisanos/magicflow/d$e;

    sget-object v1, Lcom/smartisanos/magicflow/d;->i:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/smartisanos/magicflow/d$e;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/smartisanos/magicflow/d;->n:Landroid/database/ContentObserver;

    .line 15
    new-instance v0, Lcom/smartisanos/magicflow/d$f;

    sget-object v1, Lcom/smartisanos/magicflow/d;->i:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/smartisanos/magicflow/d$f;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/smartisanos/magicflow/d;->o:Landroid/database/ContentObserver;

    .line 16
    new-instance v0, Lcom/smartisanos/magicflow/d$g;

    sget-object v1, Lcom/smartisanos/magicflow/d;->i:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/smartisanos/magicflow/d$g;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/smartisanos/magicflow/d;->p:Landroid/database/ContentObserver;

    .line 17
    new-instance v0, Lcom/smartisanos/magicflow/d$h;

    sget-object v1, Lcom/smartisanos/magicflow/d;->i:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/smartisanos/magicflow/d$h;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/smartisanos/magicflow/d;->q:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 15
    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/d;->a:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/d;->b:Landroid/net/Uri;

    sget-object v1, Lcom/smartisanos/magicflow/d;->j:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4
    sget-object v0, Lcom/smartisanos/magicflow/d;->c:Landroid/net/Uri;

    sget-object v1, Lcom/smartisanos/magicflow/d;->k:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5
    sget-object v0, Lcom/smartisanos/magicflow/d;->d:Landroid/net/Uri;

    sget-object v1, Lcom/smartisanos/magicflow/d;->l:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6
    sget-object v0, Lcom/smartisanos/magicflow/d;->e:Landroid/net/Uri;

    sget-object v1, Lcom/smartisanos/magicflow/d;->m:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7
    sget-object v0, Lcom/smartisanos/magicflow/d;->f:Landroid/net/Uri;

    sget-object v1, Lcom/smartisanos/magicflow/d;->n:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 8
    sget-object v0, Lcom/smartisanos/magicflow/d;->g:Landroid/net/Uri;

    sget-object v1, Lcom/smartisanos/magicflow/d;->o:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 9
    sget-object v0, Lcom/smartisanos/magicflow/d;->h:Landroid/net/Uri;

    sget-object v1, Lcom/smartisanos/magicflow/d;->p:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 10
    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "sm_global_launcher_left_screen_state"

    .line 11
    invoke-static {v0}, Lcom/smartisanos/magicflow/d;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/magicflow/d;->q:Landroid/database/ContentObserver;

    .line 12
    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 13
    sget-object p0, Lcom/smartisanos/magicflow/d;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "register sGlobalLeftScreenObserver"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static b(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 10
    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/d;->j:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/d;->k:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4
    sget-object v0, Lcom/smartisanos/magicflow/d;->l:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 5
    sget-object v0, Lcom/smartisanos/magicflow/d;->m:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6
    sget-object v0, Lcom/smartisanos/magicflow/d;->n:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 7
    sget-object v0, Lcom/smartisanos/magicflow/d;->o:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 8
    sget-object v0, Lcom/smartisanos/magicflow/d;->p:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
