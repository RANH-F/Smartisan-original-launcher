.class Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard$1;
.super Ljava/lang/Object;
.source "LifeInfoCard.java"

# interfaces
.implements Lcom/smartisanos/magicflow/cache/SettingChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard$1;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Lcom/smartisanos/magicflow/h/u;Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard$1;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->access$000(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;)V

    return-void
.end method

.method public onSettingSaveFailed(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
