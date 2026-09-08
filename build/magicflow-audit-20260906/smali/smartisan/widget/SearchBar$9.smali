.class Lsmartisan/widget/SearchBar$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SearchBar;->startAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/SearchBar;

.field final synthetic val$toSearchMode:Z


# direct methods
.method constructor <init>(Lsmartisan/widget/SearchBar;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SearchBar$9;->this$0:Lsmartisan/widget/SearchBar;

    iput-boolean p2, p0, Lsmartisan/widget/SearchBar$9;->val$toSearchMode:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SearchBar$9;->this$0:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->access$200(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SearchBar$9;->this$0:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->access$200(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$Listener;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/SearchBar$Listener;->exeAnimationEnd()V

    .line 3
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/SearchBar$9;->this$0:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->access$700(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$AnimationListenr;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lsmartisan/widget/SearchBar$9;->this$0:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->access$700(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$AnimationListenr;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/SearchBar$AnimationListenr;->onAnimationEnd()V

    .line 5
    :cond_1
    iget-object p1, p0, Lsmartisan/widget/SearchBar$9;->this$0:Lsmartisan/widget/SearchBar;

    new-instance v0, Lsmartisan/widget/SearchBar$9$1;

    invoke-direct {v0, p0}, Lsmartisan/widget/SearchBar$9$1;-><init>(Lsmartisan/widget/SearchBar$9;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 6
    iget-object p1, p0, Lsmartisan/widget/SearchBar$9;->this$0:Lsmartisan/widget/SearchBar;

    iget-boolean v0, p0, Lsmartisan/widget/SearchBar$9;->val$toSearchMode:Z

    invoke-static {p1, v0}, Lsmartisan/widget/SearchBar;->access$800(Lsmartisan/widget/SearchBar;Z)V

    .line 7
    iget-boolean p1, p0, Lsmartisan/widget/SearchBar$9;->val$toSearchMode:Z

    if-nez p1, :cond_2

    .line 8
    iget-object v0, p0, Lsmartisan/widget/SearchBar$9;->this$0:Lsmartisan/widget/SearchBar;

    invoke-static {v0, p1}, Lsmartisan/widget/SearchBar;->access$900(Lsmartisan/widget/SearchBar;Z)V

    .line 9
    :cond_2
    iget-boolean p1, p0, Lsmartisan/widget/SearchBar$9;->val$toSearchMode:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lsmartisan/widget/SearchBar$9;->this$0:Lsmartisan/widget/SearchBar;

    invoke-virtual {p1}, Lsmartisan/widget/SearchBar;->isAutoFocus()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    :cond_3
    iget-object p1, p0, Lsmartisan/widget/SearchBar$9;->this$0:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->access$1000(Lsmartisan/widget/SearchBar;)V

    .line 11
    :cond_4
    iget-object p1, p0, Lsmartisan/widget/SearchBar$9;->this$0:Lsmartisan/widget/SearchBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsmartisan/widget/SearchBar;->access$402(Lsmartisan/widget/SearchBar;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SearchBar$9;->this$0:Lsmartisan/widget/SearchBar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lsmartisan/widget/SearchBar;->access$402(Lsmartisan/widget/SearchBar;Z)Z

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SearchBar$9;->this$0:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->access$200(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lsmartisan/widget/SearchBar$9;->this$0:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->access$200(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$Listener;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/SearchBar$Listener;->exeAnimationStart()V

    .line 4
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/SearchBar$9;->this$0:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->access$700(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$AnimationListenr;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lsmartisan/widget/SearchBar$9;->this$0:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->access$700(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$AnimationListenr;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/SearchBar$AnimationListenr;->onAnimationStart()V

    :cond_1
    return-void
.end method
