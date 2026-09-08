.class Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ExpressAccountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field account:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field mark:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$ViewHolder;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/smartisanos/magicflow/h/e;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-wide v0, p1, Lcom/smartisanos/magicflow/h/e;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f07006f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f07014e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$ViewHolder;->account:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p1, Lcom/smartisanos/magicflow/h/e;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->getAccountMark(Ljava/lang/String;)I

    move-result p1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountAdapter$ViewHolder;->mark:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
