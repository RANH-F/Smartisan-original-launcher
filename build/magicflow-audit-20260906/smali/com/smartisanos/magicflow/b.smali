.class public Lcom/smartisanos/magicflow/b;
.super Ljava/lang/Object;
.source "MagicFlowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/b$h;
    }
.end annotation


# static fields
.field private static final a:Lcom/smartisanos/magicflow/LOG;

.field private static b:Landroid/view/WindowManager;

.field private static volatile c:Lcom/smartisanos/magicflow/view/RootView;

.field private static d:Landroid/view/ViewGroup;

.field private static e:Lcom/smartisanos/magicflow/view/MagicFlowActivity;

.field private static f:Landroid/app/Dialog;

.field public static g:Landroid/os/IBinder;

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Landroid/view/WindowManager$LayoutParams;

.field private static final l:Landroid/graphics/Rect;

.field private static m:Landroid/app/KeyguardManager;

.field private static n:I

.field private static o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/b;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/smartisanos/magicflow/b;->g:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/smartisanos/magicflow/b;->h:Z

    .line 4
    sput-boolean v0, Lcom/smartisanos/magicflow/b;->i:Z

    .line 5
    sput-boolean v0, Lcom/smartisanos/magicflow/b;->j:Z

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/b;->l:Landroid/graphics/Rect;

    .line 7
    new-instance v0, Lcom/smartisanos/magicflow/b$d;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/b$d;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/b;->o:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/smartisanos/magicflow/view/RootView;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    return-object v0
.end method

.method public static a(I)V
    .locals 1

    .line 146
    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/smartisanos/magicflow/b;->m()V

    .line 148
    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    invoke-virtual {v0, p0}, Lcom/smartisanos/magicflow/view/RootView;->reloadCards(I)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Dialog;)V
    .locals 0

    .line 149
    sput-object p0, Lcom/smartisanos/magicflow/b;->f:Landroid/app/Dialog;

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    const-string v0, "keyguard"

    .line 173
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    sput-object p0, Lcom/smartisanos/magicflow/b;->m:Landroid/app/KeyguardManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 2

    .line 139
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "showDetailsContent !!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 141
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/app/ActivityOptions;)Z

    return-void
.end method

.method private static a(Landroid/os/IBinder;)V
    .locals 10

    const-string v0, "PRIVATE_FLAG_SMARTISAN_DRAW_NAVIGATION_BAR_BACKGROUND"

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "init failed, token is null !"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->d()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    sget-object p0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "init return by MagicFlowService context is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    sget v2, Lcom/smartisanos/magicflow/h/d;->T:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 7
    invoke-static {v1}, Lcom/smartisanos/magicflow/i/a;->c(Landroid/content/Context;)V

    :cond_2
    const-string v2, "window"

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    sput-object v2, Lcom/smartisanos/magicflow/b;->b:Landroid/view/WindowManager;

    .line 9
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0082

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/view/RootView;

    sput-object v2, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    .line 10
    sget-object v2, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->e()I

    move-result v7

    .line 12
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const v8, 0x5040508

    const/4 v9, -0x3

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    sput-object v2, Lcom/smartisanos/magicflow/b;->k:Landroid/view/WindowManager$LayoutParams;

    .line 13
    sget-object v2, Lcom/smartisanos/magicflow/b;->k:Landroid/view/WindowManager$LayoutParams;

    iput-object p0, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 p0, 0x0

    .line 14
    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 p0, 0x33

    .line 15
    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string p0, "magic_flow"

    .line 16
    invoke-virtual {v2, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 17
    sget-object p0, Lcom/smartisanos/magicflow/b;->k:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 18
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ne p0, v2, :cond_3

    .line 19
    sget-object p0, Lcom/smartisanos/magicflow/b;->k:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 20
    :cond_3
    :try_start_0
    sget-boolean p0, Lcom/smartisanos/magicflow/h/d;->C:Z

    if-eqz p0, :cond_6

    const-string p0, "android.view.WindowManager$LayoutParams"

    .line 21
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/o/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    const-string p0, "smartisanos.api.LayoutParamsSmt"

    .line 22
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/o/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :cond_4
    const/4 v0, -0x1

    if-eqz p0, :cond_5

    .line 23
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_5
    move p0, v0

    :goto_0
    if-eq p0, v0, :cond_6

    .line 24
    sget-object v0, Lcom/smartisanos/magicflow/b;->k:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr p0, v2

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 25
    :cond_6
    sget-object p0, Lcom/smartisanos/magicflow/b;->b:Landroid/view/WindowManager;

    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    sget-object v2, Lcom/smartisanos/magicflow/b;->k:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p0, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-static {v1}, Lcom/smartisanos/magicflow/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 27
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "add window failed, try again !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    new-instance p0, Lcom/smartisanos/magicflow/b$a;

    invoke-direct {p0}, Lcom/smartisanos/magicflow/b$a;-><init>()V

    const-wide/16 v0, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/smartisanos/magicflow/o/m;->a(Ljava/lang/Runnable;J)V

    :goto_1
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .locals 0

    .line 172
    sput-object p0, Lcom/smartisanos/magicflow/b;->d:Landroid/view/ViewGroup;

    return-void
.end method

.method public static a(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V
    .locals 1

    const/4 v0, 0x1

    .line 142
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    if-nez p1, :cond_0

    .line 143
    sget-object p0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "enterView return by openView is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 144
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/b;->e:Lcom/smartisanos/magicflow/view/MagicFlowActivity;

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0, p0, p1}, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->enterView(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/smartisanos/magicflow/view/MagicFlowActivity;I)V
    .locals 1

    const/4 v0, 0x1

    .line 134
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    if-nez p0, :cond_1

    .line 135
    sget-object p0, Lcom/smartisanos/magicflow/b;->e:Lcom/smartisanos/magicflow/view/MagicFlowActivity;

    if-nez p0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    if-ne p0, p1, :cond_2

    const/4 p0, 0x0

    .line 137
    sput-object p0, Lcom/smartisanos/magicflow/b;->e:Lcom/smartisanos/magicflow/view/MagicFlowActivity;

    goto :goto_0

    .line 138
    :cond_1
    sput-object p0, Lcom/smartisanos/magicflow/b;->e:Lcom/smartisanos/magicflow/view/MagicFlowActivity;

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "===================================================="

    const-string v3, "com.smartisanos.launcher"

    const-string v4, "]"

    const/16 v5, 0x4000

    const/16 v6, 0x1000

    const/4 v7, 0x0

    const-wide/16 v8, 0x320

    .line 35
    :try_start_0
    invoke-static {v5}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 36
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "requestShow return by FLAG_REQUEST_SHOW_RUNNING true"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_0
    sget-object v0, Lcom/smartisanos/magicflow/b;->o:Ljava/lang/Runnable;

    invoke-static {v0, v8, v9}, Lcom/smartisanos/magicflow/o/m;->a(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    const/4 v10, 0x1

    .line 38
    :try_start_1
    invoke-static {v5, v10}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    const/high16 v5, 0x400000

    .line 39
    invoke-static {v5, v7}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 40
    sget-boolean v5, Lcom/smartisanos/magicflow/h/d;->S:Z

    if-nez v5, :cond_1

    .line 41
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "requestShow return by SETUP_COMPLETE false"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    sget-boolean v5, Lcom/smartisanos/magicflow/h/d;->c:Z

    if-nez v5, :cond_2

    .line 43
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "requestShow return by LeftScreen not open in systemsetting !!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v5, 0x20

    .line 44
    invoke-static {v5}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 45
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "requestShow return by FLAG_VIEW_ATTACHED false"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1d

    if-ge v5, v11, :cond_4

    invoke-static {v6}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 47
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "requestShow return by FLAG_ACTIVATE true"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v5, 0x10

    .line 48
    invoke-static {v5}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 49
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "abandon requestShow by FLAG_PROCESSING_TOUCH_UP running"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 v5, 0x800

    .line 50
    invoke-static {v5}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 51
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "abandon requestShow by FLAG_REQUEST_SHOW_ANIM_RUNNING running"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_6
    sget-object v5, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    if-nez v5, :cond_7

    .line 53
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "abandon requestShow by sRootView is null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/16 v5, 0x100

    .line 54
    invoke-static {v5}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 55
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "abandon requestShow by configurationChanged"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 56
    :cond_8
    sget-boolean v5, Lcom/smartisanos/magicflow/h/d;->k:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v12, "Android"

    if-eqz v5, :cond_b

    :try_start_2
    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 57
    sget-boolean v5, Lcom/smartisanos/magicflow/h/d;->l:Z

    if-nez v5, :cond_9

    .line 58
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "abandon requestShow by sGlobalLeftScreenOpened false"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 59
    :cond_9
    sget-object v5, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/smartisanos/magicflow/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 60
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "abandon requestShow by availableToShow false"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    :cond_a
    sput-object v1, Lcom/smartisanos/magicflow/h/d;->m:Ljava/lang/String;

    :cond_b
    const/high16 v5, 0x200000

    .line 62
    invoke-static {v5, v10}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 63
    invoke-static {v6, v10}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    const/high16 v5, 0x1000000

    .line 64
    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v5, v12}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    const/high16 v5, 0x800000

    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_1

    :cond_c
    move v1, v7

    goto :goto_2

    :cond_d
    :goto_1
    move v1, v10

    .line 66
    :goto_2
    invoke-static {v5, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 67
    sput p2, Lcom/smartisanos/magicflow/b;->n:I

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sput-wide v12, Lcom/smartisanos/magicflow/h/d;->e:J

    .line 69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v11, :cond_e

    .line 70
    new-instance v1, Landroid/graphics/Region;

    sget v3, Lcom/smartisanos/magicflow/h/d;->H:I

    sget v5, Lcom/smartisanos/magicflow/h/d;->I:I

    invoke-direct {v1, v7, v7, v3, v5}, Landroid/graphics/Region;-><init>(IIII)V

    .line 71
    sget-object v3, Lcom/smartisanos/magicflow/b;->l:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 72
    sget-object v3, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    invoke-static {v3, v1}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/view/View;Landroid/graphics/Region;)V

    .line 73
    :cond_e
    invoke-static {v10}, Lcom/smartisanos/magicflow/o/n;->a(Z)V

    .line 74
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v11, :cond_f

    .line 75
    sget-object v1, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/view/View;)Z

    move-result v1

    .line 76
    sget-object v3, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestShow result ="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 77
    :cond_f
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ImageCache;->recycleAll()V

    .line 78
    sget-object v1, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestShow caller ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 79
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_10

    .line 80
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "==================== REQUEST SHOW =================="

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 83
    :cond_10
    new-instance v0, Lcom/smartisanos/magicflow/b$b;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/b$b;-><init>()V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    .line 84
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 86
    invoke-static {v0, v7}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshot:Landroid/graphics/Bitmap;

    .line 87
    sget-boolean v3, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v3, :cond_11

    .line 88
    sget-object v3, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screenshotApplication ["

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v1

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 89
    :cond_11
    sget-object v1, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshot:Landroid/graphics/Bitmap;

    if-nez v1, :cond_12

    .line 90
    sget-object v1, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v2, "screenshotWithWithoutThumbModeArea return null"

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 91
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 92
    sget-object v3, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshot:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/graphics/Bitmap;)V

    .line 93
    sget-boolean v3, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v3, :cond_13

    .line 94
    sget-object v3, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scale bitmap ["

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v1

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 95
    :cond_13
    sget-object v1, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/smartisanos/magicflow/cache/ImageCache;->isEffectiveBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 96
    sget-object v11, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v1, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    .line 97
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    sget-object v1, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    .line 98
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v15, v1, 0x4

    const/16 v16, 0x0

    const v17, 0x3f333333    # 0.7f

    .line 99
    invoke-static/range {v11 .. v17}, Lcom/smartisanos/magicflow/o/b;->a(Landroid/graphics/Bitmap;IIIIZF)I

    move-result v1

    sput v1, Lcom/smartisanos/magicflow/h/d;->v:I

    .line 100
    sget v1, Lcom/smartisanos/magicflow/h/d;->v:I

    if-nez v1, :cond_14

    .line 101
    sget-object v1, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v2, "screenshot color is transparent, shot screen again"

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ImageCache;->recycleAll()V

    .line 103
    invoke-static {v0, v10}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshot:Landroid/graphics/Bitmap;

    .line 104
    sget-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshot:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/graphics/Bitmap;)V

    .line 105
    :cond_14
    sget-object v0, Lcom/smartisanos/magicflow/cache/ImageCache;->screenshotThumbnail:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ImageCache;->initBlurImageCache(Landroid/graphics/Bitmap;)V

    .line 106
    new-instance v0, Lcom/smartisanos/magicflow/b$c;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/b$c;-><init>()V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 107
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    invoke-static {v6, v7}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    const/16 v0, 0x2000

    .line 109
    invoke-static {v0, v7}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    :goto_3
    sget-object v0, Lcom/smartisanos/magicflow/b;->o:Ljava/lang/Runnable;

    invoke-static {v0, v8, v9}, Lcom/smartisanos/magicflow/o/m;->a(Ljava/lang/Runnable;J)V

    return-void

    :goto_4
    sget-object v1, Lcom/smartisanos/magicflow/b;->o:Ljava/lang/Runnable;

    invoke-static {v1, v8, v9}, Lcom/smartisanos/magicflow/o/m;->a(Ljava/lang/Runnable;J)V

    .line 111
    throw v0
.end method

.method private static a(Z)V
    .locals 5

    .line 112
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWindowShow, flag changed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/RootView;->showFloatSearchMask()V

    .line 115
    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/RootView;->floatSearchLayoutReset()V

    .line 116
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 117
    invoke-static {}, Lcom/smartisanos/magicflow/n/a;->d()Lcom/smartisanos/magicflow/n/a;

    move-result-object p0

    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->d()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object v0

    const-string v1, "com.smartisanos.magicflow"

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/magicflow/n/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p0

    sget-object v0, Lcom/smartisanos/magicflow/h/d;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/c;->j(Ljava/lang/String;)V

    .line 119
    sget p0, Lcom/smartisanos/magicflow/h/d;->T:I

    if-nez p0, :cond_1

    .line 120
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p0

    const-string v0, "A350054"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    .line 121
    sget-object p0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/RootView;->startScrollWelcomeDetailsView()V

    .line 122
    :cond_1
    sget p0, Lcom/smartisanos/magicflow/h/d;->T:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 123
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/c;->d()V

    .line 124
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/c;->f()V

    .line 125
    invoke-static {}, Lcom/smartisanos/magicflow/b;->q()V

    .line 126
    invoke-static {}, Lcom/smartisanos/magicflow/h/c;->g()Lcom/smartisanos/magicflow/h/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/c;->c()V

    .line 127
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->getExpressAccountInfoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_2

    .line 128
    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->unRegisterAllAccount()V

    :cond_2
    const/16 p0, 0x8

    const/4 v0, 0x0

    .line 129
    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/b;->a(ZI)V

    const/16 p0, 0x4000

    .line 130
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    const/16 p0, 0x10

    .line 131
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 132
    sget-boolean p0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p0, :cond_3

    .line 133
    sget-object p0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show window spend time ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/smartisanos/magicflow/h/d;->e:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static a(ZI)V
    .locals 1

    .line 30
    :try_start_0
    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_0

    .line 31
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p0, p1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 32
    :cond_0
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int p1, p1

    and-int/2addr p0, p1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 33
    :goto_0
    sget-object p0, Lcom/smartisanos/magicflow/b;->b:Landroid/view/WindowManager;

    sget-object p1, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    invoke-interface {p0, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic a(Landroid/app/WindowConfiguration;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/magicflow/b;->b(Landroid/app/WindowConfiguration;)Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 150
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->k()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 151
    sget-object p0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "availableToShow false, keyguard locked"

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v0

    .line 152
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/n;->o(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 153
    sget-object p0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "availableToShow false, landscape true"

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v0

    .line 154
    :cond_1
    sget-boolean p1, Lcom/smartisanos/magicflow/h/d;->j:Z

    if-eqz p1, :cond_2

    .line 155
    sget-object p0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "availableToShow false, feature phone mode true"

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v0

    .line 156
    :cond_2
    sget-boolean p1, Lcom/smartisanos/magicflow/h/d;->S:Z

    if-nez p1, :cond_3

    .line 157
    sget-object p0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "availableToShow false, setup complete false"

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v0

    :cond_3
    const-string p1, "activity"

    .line 158
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 159
    invoke-static {p1}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/app/ActivityManager;)Landroid/content/ComponentName;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/smartisanos/magicflow/h/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 162
    sget-object p0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "availableToShow false, in forbidden list"

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v0

    .line 163
    :cond_5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 165
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 166
    invoke-static {}, Lsmartisanos/api/ApplicationInfoSmt;->getInstance()Lsmartisanos/api/ApplicationInfoSmt;

    move-result-object v1

    invoke-virtual {v1, p1}, Lsmartisanos/api/ApplicationInfoSmt;->isGameApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 167
    sget-object p1, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "availableToShow false, is game"

    invoke-virtual {p1, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 168
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :try_start_1
    const-string p1, "accessibility"

    .line 169
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 170
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p0, :cond_7

    return v0

    :catch_1
    move-exception p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic b()Landroid/view/WindowManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/b;->b:Landroid/view/WindowManager;

    return-object v0
.end method

.method public static b(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sput-boolean v0, Lcom/smartisanos/magicflow/b;->i:Z

    goto :goto_0

    .line 3
    :cond_1
    sput-boolean v0, Lcom/smartisanos/magicflow/b;->h:Z

    .line 4
    sget p0, Lcom/smartisanos/magicflow/h/d;->T:I

    if-nez p0, :cond_2

    .line 5
    sput-boolean v0, Lcom/smartisanos/magicflow/b;->i:Z

    .line 6
    sget-object p0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "requestInit token ready, user not agree to use, don\'t load data"

    invoke-virtual {p0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 7
    :cond_2
    :goto_0
    sget-boolean p0, Lcom/smartisanos/magicflow/b;->h:Z

    if-eqz p0, :cond_3

    sget-boolean p0, Lcom/smartisanos/magicflow/b;->i:Z

    if-eqz p0, :cond_3

    sget-boolean p0, Lcom/smartisanos/magicflow/b;->j:Z

    if-nez p0, :cond_3

    .line 8
    sput-boolean v0, Lcom/smartisanos/magicflow/b;->j:Z

    .line 9
    sget-object p0, Lcom/smartisanos/magicflow/b;->g:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/smartisanos/magicflow/b;->a(Landroid/os/IBinder;)V

    .line 10
    invoke-static {}, Lcom/smartisanos/magicflow/b;->r()V

    .line 11
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->c()V

    :cond_3
    return-void
.end method

.method public static b(Z)V
    .locals 1

    .line 12
    new-instance v0, Lcom/smartisanos/magicflow/b$g;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/b$g;-><init>(Z)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(Landroid/app/WindowConfiguration;)Z
    .locals 4

    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getSmtEx"

    new-array v3, v0, [Ljava/lang/Class;

    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isFreeform"

    new-array v3, v0, [Ljava/lang/Class;

    .line 17
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    .line 19
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method static synthetic c()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/b;->k:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public static c(Z)V
    .locals 1

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    invoke-virtual {v0, p0}, Lcom/smartisanos/magicflow/view/RootView;->setNavigationBarMaskStatus(Z)V

    :cond_0
    return-void
.end method

.method static synthetic d()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method public static d(Z)V
    .locals 5

    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v0

    .line 3
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v2, "##################################"

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### updateVisibleStatus ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 7
    invoke-static {p0}, Lcom/smartisanos/magicflow/b;->a(Z)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/smartisanos/magicflow/b;->l()V

    :goto_0
    return-void
.end method

.method static synthetic e()I
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/magicflow/b;->n:I

    return v0
.end method

.method public static f()V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/b;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/b;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/smartisanos/magicflow/b;->f:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public static g()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/b;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static h()Lcom/smartisanos/magicflow/view/DetailsContentView;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/RootView;->getDetailsContentView()Lcom/smartisanos/magicflow/view/DetailsContentView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static i()Z
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/smartisanos/magicflow/b;->m:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static j()Lcom/smartisanos/magicflow/view/MagicFlowActivity;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/b;->e:Lcom/smartisanos/magicflow/view/MagicFlowActivity;

    return-object v0
.end method

.method public static k()Lcom/smartisanos/magicflow/view/RootView;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    return-object v0
.end method

.method private static l()V
    .locals 6

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "handleWindowHide !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/smartisanos/magicflow/h/d;->m:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/b;->f()V

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Lcom/smartisanos/magicflow/f;->a(Z)V

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/n/a;->d()Lcom/smartisanos/magicflow/n/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/n/a;->a()V

    .line 6
    sget-object v1, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    if-eqz v1, :cond_0

    .line 7
    sget-object v1, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/RootView;->resetWelcomeDetailsView()V

    .line 8
    sget-object v1, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/RootView;->destroy()V

    .line 9
    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->delPushAllFailMailNoSet()V

    .line 10
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ImageCache;->recycleAll()V

    .line 11
    invoke-static {}, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;->a()V

    const/16 v1, 0x8

    .line 12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    .line 13
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2, v4, v4, v0, v0}, Landroid/graphics/Region;-><init>(IIII)V

    .line 14
    sget-object v3, Lcom/smartisanos/magicflow/b;->l:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 15
    sget-object v3, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    invoke-static {v3, v2}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/view/View;Landroid/graphics/Region;)V

    .line 16
    :cond_1
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/b;->a(ZI)V

    const/16 v0, 0x4000

    .line 17
    invoke-static {v0, v4}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    const/16 v0, 0x10

    .line 18
    invoke-static {v0, v4}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    const/high16 v0, 0x200000

    .line 19
    invoke-static {v0, v4}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    const/16 v0, 0x1000

    .line 20
    invoke-static {v0, v4}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    const/16 v0, 0x2000

    .line 21
    invoke-static {v0, v4}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    const/high16 v0, 0x20000

    .line 22
    invoke-static {v0, v4}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 23
    sget-object v0, Lcom/smartisanos/magicflow/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "handleWindowHide finish !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void
.end method

.method public static m()V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/RootView;->forceHide()V

    :cond_0
    return-void
.end method

.method public static n()V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/RootView;->hideWithAnim()V

    :cond_0
    return-void
.end method

.method public static o()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/b$e;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/b$e;-><init>()V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static p()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/b$f;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/b$f;-><init>()V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static q()V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/b;->c:Lcom/smartisanos/magicflow/view/RootView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/RootView;->refreshHeadViewData()V

    return-void
.end method

.method private static r()V
    .locals 3

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/magicflow/b$h;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/smartisanos/magicflow/b$h;-><init>(Lcom/smartisanos/magicflow/b$a;)V

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
