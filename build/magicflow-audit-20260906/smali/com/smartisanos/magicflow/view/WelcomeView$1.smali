.class Lcom/smartisanos/magicflow/view/WelcomeView$1;
.super Ljava/lang/Object;
.source "WelcomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/WelcomeView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/WelcomeView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/WelcomeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/WelcomeView$1;->this$0:Lcom/smartisanos/magicflow/view/WelcomeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView$1;->this$0:Lcom/smartisanos/magicflow/view/WelcomeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070510

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/smartisanos/magicflow/view/WelcomeView$1$1;

    invoke-direct {v1, p0, v0}, Lcom/smartisanos/magicflow/view/WelcomeView$1$1;-><init>(Lcom/smartisanos/magicflow/view/WelcomeView$1;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
