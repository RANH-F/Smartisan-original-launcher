.class Lcom/smartisanos/magicflow/view/WelcomeView$1$1;
.super Ljava/lang/Object;
.source "WelcomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/WelcomeView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/WelcomeView$1;

.field final synthetic val$welcome:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/WelcomeView$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/WelcomeView$1$1;->this$1:Lcom/smartisanos/magicflow/view/WelcomeView$1;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/WelcomeView$1$1;->val$welcome:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView$1$1;->this$1:Lcom/smartisanos/magicflow/view/WelcomeView$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/WelcomeView$1;->this$0:Lcom/smartisanos/magicflow/view/WelcomeView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/WelcomeView;->access$000(Lcom/smartisanos/magicflow/view/WelcomeView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView$1$1;->this$1:Lcom/smartisanos/magicflow/view/WelcomeView$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/WelcomeView$1;->this$0:Lcom/smartisanos/magicflow/view/WelcomeView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/WelcomeView;->access$000(Lcom/smartisanos/magicflow/view/WelcomeView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/WelcomeView$1$1;->val$welcome:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
