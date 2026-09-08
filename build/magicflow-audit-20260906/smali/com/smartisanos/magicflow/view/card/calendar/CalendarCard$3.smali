.class Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard$3;
.super Ljava/lang/Object;
.source "CalendarCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->onReadyToLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard$3;->this$0:Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/j;->b(Landroid/content/Context;Z)V

    return-void
.end method
