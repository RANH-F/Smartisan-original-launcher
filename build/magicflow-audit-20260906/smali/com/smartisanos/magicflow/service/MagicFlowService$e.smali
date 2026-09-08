.class Lcom/smartisanos/magicflow/service/MagicFlowService$e;
.super Ljava/lang/Object;
.source "MagicFlowService.java"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/service/MagicFlowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/service/MagicFlowService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsChanged(I)V
    .locals 2

    .line 1
    sget v0, Lcom/smartisanos/magicflow/h/d;->b:I

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->a()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/j;->l(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->b()Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    const-string v0, "onPermissionsChanged updateWeatherData"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->a()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/h;->a(Landroid/content/Context;Z)V

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/b;->j()Lcom/smartisanos/magicflow/view/MagicFlowActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->onLocationPermissionStateChanged()V

    .line 7
    :cond_1
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->a()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/j;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->b()Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    const-string v0, "onPermissionsChanged updateContactsData"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 9
    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/ContactsDataCache;->updateContactsData(Z)V

    .line 10
    :cond_2
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->a()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/j;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->b()Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    const-string v0, "onPermissionsChanged updateCalendarData"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 12
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/cache/CalendarDataCache;->updateCalendarData(J)V

    .line 13
    :cond_3
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->a()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/j;->b(Landroid/content/Context;)Z

    .line 14
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->a()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/j;->o(Landroid/content/Context;)Z

    return-void
.end method
