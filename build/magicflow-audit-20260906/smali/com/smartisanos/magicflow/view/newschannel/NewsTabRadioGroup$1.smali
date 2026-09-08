.class Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup$1;
.super Landroid/database/DataSetObserver;
.source "NewsTabRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;->updateAdapter(Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup$1;->this$0:Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup$1;->this$0:Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;->reLayout()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup$1;->this$0:Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;->setCurrentItem(I)V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    return-void
.end method
