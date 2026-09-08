.class Lcom/smartisanos/magicflow/view/ToolWebView$5;
.super Ljava/lang/Object;
.source "ToolWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/ToolWebView;->showDownDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/ToolWebView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/ToolWebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ToolWebView$5;->this$0:Lcom/smartisanos/magicflow/view/ToolWebView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/ToolWebView$5;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/ToolWebView$5;->this$0:Lcom/smartisanos/magicflow/view/ToolWebView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ToolWebView$5;->val$url:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/smartisanos/magicflow/view/ToolWebView;->access$600(Lcom/smartisanos/magicflow/view/ToolWebView;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
