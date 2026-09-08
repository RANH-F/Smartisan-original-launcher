.class final Lcom/smartisanos/magicflow/cache/SettingDataCache$2;
.super Ljava/lang/Object;
.source "SettingDataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/SettingDataCache;->saveDatabaseFailed(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Lcom/smartisanos/magicflow/h/u;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/SettingDataCache$2;->val$info:Lcom/smartisanos/magicflow/h/u;

    iput-object p2, p0, Lcom/smartisanos/magicflow/cache/SettingDataCache$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/SettingDataCache$2;->val$info:Lcom/smartisanos/magicflow/h/u;

    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/SettingDataCache$2;->val$key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->access$000(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V

    return-void
.end method
