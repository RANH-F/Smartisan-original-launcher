.class Lcom/smartisanos/magicflow/b$h;
.super Landroid/app/TaskStackListener;
.source "MagicFlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/magicflow/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/b$h;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroid/app/TaskStackListener;->onTaskStackChanged()V

    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    invoke-static {v0}, Lsmartisanos/util/SidebarUtils;->isSidebarShowing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/b;->d()Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    const-string v1, "check if we need hide"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->info(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v1, v2, v2}, Landroid/app/IActivityManager;->getFilteredTasks(III)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v3, v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz v3, :cond_3

    .line 10
    invoke-static {v5}, Lcom/smartisanos/magicflow/b;->a(Landroid/app/WindowConfiguration;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 11
    iget-object v3, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {}, Lcom/smartisanos/magicflow/b;->e()I

    move-result v6

    iget v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eq v6, v7, :cond_2

    const-string v6, "com.smartisanos.magicflow"

    .line 13
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.smartisanos.launcher"

    .line 14
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 15
    invoke-static {}, Lcom/smartisanos/magicflow/b;->d()Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    const-string v2, "hide because smt launcher is occluded"

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/LOG;->info(Ljava/lang/String;)V

    .line 16
    invoke-static {v1}, Lcom/smartisanos/magicflow/b;->b(Z)V

    return-void

    :cond_2
    move v3, v2

    .line 17
    :cond_3
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-static {}, Lcom/smartisanos/magicflow/b;->e()I

    move-result v6

    if-ne v4, v6, :cond_1

    .line 18
    invoke-static {v5}, Lcom/smartisanos/magicflow/b;->a(Landroid/app/WindowConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 19
    invoke-static {}, Lcom/smartisanos/magicflow/b;->d()Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    const-string v2, "hide because dock target becomes free form"

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/LOG;->info(Ljava/lang/String;)V

    .line 20
    invoke-static {v1}, Lcom/smartisanos/magicflow/b;->b(Z)V

    :cond_4
    return-void
.end method
