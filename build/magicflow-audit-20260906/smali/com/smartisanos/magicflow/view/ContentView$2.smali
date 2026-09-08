.class Lcom/smartisanos/magicflow/view/ContentView$2;
.super Ljava/lang/Object;
.source "ContentView.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/ContentView;->addScrollListener()V
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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ContentView$2;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollerFinalY()I

    move-result p1

    if-ne p3, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ContentView$2;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/ContentView;->floatSearchLayoutReset()V

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ContentView$2;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    sub-int p2, p3, p5

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/view/ContentView;->access$002(Lcom/smartisanos/magicflow/view/ContentView;Z)Z

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ContentView$2;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/ContentView;->access$000(Lcom/smartisanos/magicflow/view/ContentView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ContentView$2;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/ContentView;->access$100(Lcom/smartisanos/magicflow/view/ContentView;)I

    move-result p1

    if-lt p3, p1, :cond_2

    int-to-float p1, p3

    .line 5
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/ContentView$2;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/ContentView;->access$100(Lcom/smartisanos/magicflow/view/ContentView;)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    sget p2, Lcom/smartisanos/magicflow/h/d;->u:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 6
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/ContentView$2;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/ContentView;->access$300(Lcom/smartisanos/magicflow/view/ContentView;)Lcom/smartisanos/magicflow/view/FloatSearchView;

    move-result-object p2

    iget-object p3, p0, Lcom/smartisanos/magicflow/view/ContentView$2;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {p3}, Lcom/smartisanos/magicflow/view/ContentView;->access$200(Lcom/smartisanos/magicflow/view/ContentView;)Lcom/smartisanos/magicflow/view/weather/HeadView;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/smartisanos/magicflow/view/FloatSearchView;->show(FLcom/smartisanos/magicflow/view/weather/HeadView;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ContentView$2;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/ContentView;->access$400(Lcom/smartisanos/magicflow/view/ContentView;)I

    move-result p1

    if-ge p3, p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ContentView$2;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/ContentView;->access$400(Lcom/smartisanos/magicflow/view/ContentView;)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    sub-float/2addr p1, p2

    sget p2, Lcom/smartisanos/magicflow/h/d;->u:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 9
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/ContentView$2;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/ContentView;->access$300(Lcom/smartisanos/magicflow/view/ContentView;)Lcom/smartisanos/magicflow/view/FloatSearchView;

    move-result-object p2

    iget-object p3, p0, Lcom/smartisanos/magicflow/view/ContentView$2;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {p3}, Lcom/smartisanos/magicflow/view/ContentView;->access$200(Lcom/smartisanos/magicflow/view/ContentView;)Lcom/smartisanos/magicflow/view/weather/HeadView;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/smartisanos/magicflow/view/FloatSearchView;->hide(FLcom/smartisanos/magicflow/view/weather/HeadView;)V

    :cond_3
    :goto_1
    return-void
.end method
