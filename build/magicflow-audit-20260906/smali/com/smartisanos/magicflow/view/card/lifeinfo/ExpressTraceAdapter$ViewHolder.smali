.class Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ExpressTraceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field date:Landroid/widget/TextView;

.field description:Landroid/widget/TextView;

.field line:Landroid/widget/ImageView;

.field status:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;

.field time:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/smartisanos/magicflow/h/x;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/x;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->date:Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 5
    aget-object v1, v1, v0

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->time:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v1, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->status:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;->access$000(Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/x;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStyle(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->time:Landroid/widget/TextView;

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->time:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressTraceAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void
.end method
