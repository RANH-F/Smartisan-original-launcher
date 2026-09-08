.class Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1$1;
.super Ljava/lang/Object;
.source "CalendarRecentEventsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;

.field final synthetic val$finalCalendarIconDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$finalTitleIconDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1$1;->val$finalCalendarIconDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1$1;->val$finalTitleIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1$1;->val$finalCalendarIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;

    iget-object v1, v1, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->val$eventLeftImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->val$eventLeftImageView:Landroid/widget/ImageView;

    const v1, 0x7f0700ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1$1;->val$finalTitleIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->val$eventTitleIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->val$eventTitleIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1$1;->val$finalTitleIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->val$eventTitleIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method
