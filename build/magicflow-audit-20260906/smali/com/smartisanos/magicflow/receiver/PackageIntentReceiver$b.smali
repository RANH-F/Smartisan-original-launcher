.class Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver$b;
.super Lcom/smartisanos/magicflow/o/d;
.source "PackageIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/smartisanos/magicflow/o/d;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver$b;->a:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->onAppPackageChanged(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/receiver/PackageIntentReceiver$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->onAppSuggestionUninstall(Ljava/lang/String;)V

    return-void
.end method
