.class final Lcom/smartisanos/magicflow/h/v$a;
.super Ljava/lang/Object;
.source "SettingInfoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/h/v;->c(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartisanos/magicflow/h/u;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/h/v$a;->a:Lcom/smartisanos/magicflow/h/u;

    iput-object p2, p0, Lcom/smartisanos/magicflow/h/v$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/v$a;->a:Lcom/smartisanos/magicflow/h/u;

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/v$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/h/v;->a(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/v$a;->a:Lcom/smartisanos/magicflow/h/u;

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/v$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->updateSettingInfoMap(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/v$a;->a:Lcom/smartisanos/magicflow/h/u;

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/v$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->saveDatabaseFailed(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
