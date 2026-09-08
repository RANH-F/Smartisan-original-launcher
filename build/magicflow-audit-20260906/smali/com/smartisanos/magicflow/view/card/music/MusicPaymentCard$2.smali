.class Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;
.super Lcom/smartisanos/magicflow/view/card/music/MediaListener;
.source "MusicPaymentCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/music/MediaListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClear()V
    .locals 0

    return-void
.end method

.method public onMediaStateUpdate(I)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$200(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaStateUpdate state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_3

    const/4 v4, 0x7

    if-eq p1, v4, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-eq p1, v2, :cond_2

    if-ne p1, v0, :cond_4

    .line 3
    :cond_2
    invoke-static {v2}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->setMediaState(I)V

    goto :goto_1

    .line 4
    :cond_3
    :goto_0
    invoke-static {v3}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->setMediaState(I)V

    :cond_4
    :goto_1
    if-eq p1, v3, :cond_8

    if-eq p1, v1, :cond_8

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    if-eq p1, v2, :cond_6

    if-ne p1, v0, :cond_a

    .line 5
    :cond_6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$900(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$400(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 6
    :cond_7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$400(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$900(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$400(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$1000(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$700(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$1100(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$800(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$1200(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)V

    goto :goto_3

    .line 11
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$300(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$400(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 12
    :cond_9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$400(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$300(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$400(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$500(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$700(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$600(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$800(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public onTrackUpdate(Lcom/smartisanos/magicflow/view/card/music/Track;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$000(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;Lcom/smartisanos/magicflow/view/card/music/Track;)V

    return-void
.end method
