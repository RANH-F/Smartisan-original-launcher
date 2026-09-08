.class Lcom/smartisanos/magicflow/view/card/news/NewsCard$5$1;
.super Ljava/lang/Object;
.source "NewsCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/news/NewsCard$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/card/news/NewsCard$5;

.field final synthetic val$currentDay:Ljava/lang/String;

.field final synthetic val$currentMouth:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/news/NewsCard$5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard$5$1;->this$1:Lcom/smartisanos/magicflow/view/card/news/NewsCard$5;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard$5$1;->val$currentDay:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard$5$1;->val$currentMouth:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard$5$1;->this$1:Lcom/smartisanos/magicflow/view/card/news/NewsCard$5;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/news/NewsCard$5;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->access$300(Lcom/smartisanos/magicflow/view/card/news/NewsCard;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard$5$1;->val$currentDay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard$5$1;->this$1:Lcom/smartisanos/magicflow/view/card/news/NewsCard$5;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/news/NewsCard$5;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->access$400(Lcom/smartisanos/magicflow/view/card/news/NewsCard;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard$5$1;->val$currentMouth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
