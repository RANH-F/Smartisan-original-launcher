.class Lcom/smartisanos/magicflow/view/NewsWebView$4;
.super Ljava/lang/Object;
.source "NewsWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/NewsWebView;->showDownDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

.field final synthetic val$contentDisposition:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/NewsWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$4;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/magicflow/view/NewsWebView$4;->val$contentDisposition:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/NewsWebView$4;->this$0:Lcom/smartisanos/magicflow/view/NewsWebView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsWebView$4;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsWebView$4;->val$contentDisposition:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lcom/smartisanos/magicflow/view/NewsWebView;->access$700(Lcom/smartisanos/magicflow/view/NewsWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
