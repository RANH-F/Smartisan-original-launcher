.class Lcom/smartisanos/magicflow/view/settings/MainSettingView$5;
.super Ljava/lang/Object;
.source "MainSettingView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$OnRemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/MainSettingView;->setViewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$5;->this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemove(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$5;->this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->access$400(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->add(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$5;->this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->access$500(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->remove(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$5;->this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->access$600(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$5;->this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->access$400(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/widget/ListView;Landroid/widget/BaseAdapter;)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$5;->this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->access$700(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$5;->this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->access$500(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/widget/ListView;Landroid/widget/BaseAdapter;)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$5;->this$0:Lcom/smartisanos/magicflow/view/settings/MainSettingView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->access$800(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)V

    return-void
.end method
