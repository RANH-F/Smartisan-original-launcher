.class Lcom/smartisanos/magicflow/d$b$a;
.super Ljava/lang/Object;
.source "ObserverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/d$b;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/d$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/a;->e(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/smartisanos/magicflow/h/d;->c:Z

    .line 3
    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->c:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/smartisanos/magicflow/h/d;->T:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->notifyDataChanged()V

    :cond_0
    return-void
.end method
