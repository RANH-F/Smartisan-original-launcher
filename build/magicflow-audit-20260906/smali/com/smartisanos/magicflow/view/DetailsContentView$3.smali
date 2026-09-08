.class Lcom/smartisanos/magicflow/view/DetailsContentView$3;
.super Ljava/lang/Object;
.source "DetailsContentView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/DetailsContentView;->enterView(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/DetailsContentView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/DetailsContentView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView$3;->this$0:Lcom/smartisanos/magicflow/view/DetailsContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    return-void
.end method

.method public onEnd()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    return-void
.end method

.method public onRepeat()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
