.class Lsmartisan/widget/ListContentItem$1;
.super Landroid/database/ContentObserver;
.source "ListContentItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/ListContentItem;->registerContentObserverForLongLifeApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/ListContentItem;


# direct methods
.method constructor <init>(Lsmartisan/widget/ListContentItem;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/ListContentItem$1;->this$0:Lsmartisan/widget/ListContentItem;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/ListContentItem$1;->this$0:Lsmartisan/widget/ListContentItem;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "global_pc_mode_settings"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lsmartisan/widget/ListContentItem$1;->this$0:Lsmartisan/widget/ListContentItem;

    invoke-static {p1}, Lsmartisan/widget/ListContentItem;->access$000(Lsmartisan/widget/ListContentItem;)V

    :cond_1
    return-void
.end method
