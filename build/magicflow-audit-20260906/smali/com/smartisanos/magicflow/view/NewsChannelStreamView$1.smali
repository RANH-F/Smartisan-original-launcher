.class Lcom/smartisanos/magicflow/view/NewsChannelStreamView$1;
.super Ljava/lang/Object;
.source "NewsChannelStreamView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/cache/SettingChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/NewsChannelStreamView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Lcom/smartisanos/magicflow/h/u;Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p1, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    iget-object p2, p2, Lcom/smartisanos/magicflow/h/u;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/NewsChannelStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->access$000(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)V

    :cond_1
    return-void
.end method

.method public onSettingSaveFailed(Lcom/smartisanos/magicflow/h/u;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
