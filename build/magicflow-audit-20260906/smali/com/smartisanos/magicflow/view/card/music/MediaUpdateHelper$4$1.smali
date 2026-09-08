.class Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4$1;
.super Ljava/lang/Object;
.source "MediaUpdateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4$1;->this$1:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4$1;->this$1:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper$4;->this$0:Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$1000(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;->access$1100(Lcom/smartisanos/magicflow/view/card/music/MediaUpdateHelper;I)Z

    return-void
.end method
