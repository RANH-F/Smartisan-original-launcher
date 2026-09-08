.class Lcom/smartisanos/magicflow/view/ContentView$4;
.super Ljava/lang/Object;
.source "ContentView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/ContentView;->addGlobalLayoutListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/ContentView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/ContentView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ContentView$4;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView$4;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView$4;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/ContentView;->access$200(Lcom/smartisanos/magicflow/view/ContentView;)Lcom/smartisanos/magicflow/view/weather/HeadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/weather/HeadView;->getSearchLayoutHeight()I

    move-result v0

    sput v0, Lcom/smartisanos/magicflow/h/d;->t:I

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView$4;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/ContentView;->access$200(Lcom/smartisanos/magicflow/view/ContentView;)Lcom/smartisanos/magicflow/view/weather/HeadView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/ContentView$4;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/ContentView;->access$200(Lcom/smartisanos/magicflow/view/ContentView;)Lcom/smartisanos/magicflow/view/weather/HeadView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/weather/HeadView;->getSearchLayoutHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/smartisanos/magicflow/h/d;->s:I

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/view/ContentView;->access$900()Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEARCH_LAYOUT_HEIGHT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/smartisanos/magicflow/h/d;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " SEARCH_LAYOUT_TOP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/smartisanos/magicflow/h/d;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void
.end method
