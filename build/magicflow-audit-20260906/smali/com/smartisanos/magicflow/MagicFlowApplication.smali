.class public Lcom/smartisanos/magicflow/MagicFlowApplication;
.super Landroid/app/Application;
.source "MagicFlowApplication.java"


# static fields
.field private static a:Lcom/smartisanos/magicflow/MagicFlowApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Lcom/smartisanos/magicflow/MagicFlowApplication;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/MagicFlowApplication;->a:Lcom/smartisanos/magicflow/MagicFlowApplication;

    return-object v0
.end method

.method private static a(Landroid/app/Application;)V
    .locals 0

    .line 2
    check-cast p0, Lcom/smartisanos/magicflow/MagicFlowApplication;

    sput-object p0, Lcom/smartisanos/magicflow/MagicFlowApplication;->a:Lcom/smartisanos/magicflow/MagicFlowApplication;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    sget-object v2, Lcom/smartisanos/magicflow/h/d;->G:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    sput-object v0, Lcom/smartisanos/magicflow/h/d;->G:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    sget v2, Lcom/smartisanos/magicflow/h/d;->F:F

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_1

    .line 7
    sput p1, Lcom/smartisanos/magicflow/h/d;->F:F

    const/4 p1, 0x2

    move v0, v1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 8
    invoke-static {p1}, Lcom/smartisanos/magicflow/b;->a(I)V

    :cond_2
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    invoke-static {p0}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a(Landroid/app/Application;)V

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;->b()V

    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
