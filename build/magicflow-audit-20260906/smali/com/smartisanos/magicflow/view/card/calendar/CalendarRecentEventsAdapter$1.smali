.class Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;
.super Ljava/lang/Object;
.source "CalendarRecentEventsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->setEventViewBackground(ILandroid/widget/ImageView;ILandroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

.field final synthetic val$calendarIconRes:I

.field final synthetic val$eventIconRes:I

.field final synthetic val$eventLeftImageView:Landroid/widget/ImageView;

.field final synthetic val$eventTitleIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;IILandroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    iput p2, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->val$calendarIconRes:I

    iput p3, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->val$eventIconRes:I

    iput-object p4, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->val$eventLeftImageView:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->val$eventTitleIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->access$100(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.calendar"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->val$calendarIconRes:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->val$calendarIconRes:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4
    sget-boolean v3, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    invoke-static {v3}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->access$400(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CalendarIconDrawableResource:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->val$calendarIconRes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 6
    :cond_1
    :goto_0
    iget v3, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->val$eventIconRes:I

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->val$eventIconRes:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 8
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->access$400(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CalendarEventDrawableResource:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;->val$eventIconRes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 10
    :cond_2
    new-instance v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1$1;-><init>(Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter$1;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
