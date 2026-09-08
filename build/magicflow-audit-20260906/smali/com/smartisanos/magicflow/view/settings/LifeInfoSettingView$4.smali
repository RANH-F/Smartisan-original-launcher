.class Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView$4;
.super Ljava/lang/Object;
.source "LifeInfoSettingView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;

.field final synthetic val$button:Landroid/widget/CompoundButton;

.field final synthetic val$ke:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;Landroid/widget/CompoundButton;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView$4;->this$0:Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView$4;->val$button:Landroid/widget/CompoundButton;

    iput-object p3, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView$4;->val$ke:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView$4;->val$button:Landroid/widget/CompoundButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView$4;->val$ke:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Z)V

    return-void
.end method
