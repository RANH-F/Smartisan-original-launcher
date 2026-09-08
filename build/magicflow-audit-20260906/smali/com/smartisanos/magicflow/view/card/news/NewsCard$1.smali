.class Lcom/smartisanos/magicflow/view/card/news/NewsCard$1;
.super Ljava/lang/Object;
.source "NewsCard.java"

# interfaces
.implements Lcom/smartisanos/magicflow/cache/SettingChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/news/NewsCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCard;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/news/NewsCard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard$1;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Lcom/smartisanos/magicflow/h/u;Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard$1;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCard;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->access$000(Lcom/smartisanos/magicflow/view/card/news/NewsCard;Z)V

    return-void
.end method

.method public onSettingSaveFailed(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
