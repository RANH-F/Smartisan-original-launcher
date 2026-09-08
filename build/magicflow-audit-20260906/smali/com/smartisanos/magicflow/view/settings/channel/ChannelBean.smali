.class public Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;
.super Ljava/lang/Object;
.source "ChannelBean.java"


# instance fields
.field private isAdded:Z

.field private layoutType:I

.field private name:Ljava/lang/String;

.field private spanSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->name:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->spanSize:I

    .line 5
    iput p3, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->layoutType:I

    return-void
.end method


# virtual methods
.method public getLayoutType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->layoutType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSpanSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->spanSize:I

    return v0
.end method

.method public isAdded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->isAdded:Z

    return v0
.end method

.method public setAdded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->isAdded:Z

    return-void
.end method

.method public setLayoutType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->layoutType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setSpanSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->spanSize:I

    return-void
.end method
