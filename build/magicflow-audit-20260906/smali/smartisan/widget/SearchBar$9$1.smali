.class Lsmartisan/widget/SearchBar$9$1;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SearchBar$9;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsmartisan/widget/SearchBar$9;


# direct methods
.method constructor <init>(Lsmartisan/widget/SearchBar$9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SearchBar$9$1;->this$1:Lsmartisan/widget/SearchBar$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar$9$1;->this$1:Lsmartisan/widget/SearchBar$9;

    iget-boolean v1, v0, Lsmartisan/widget/SearchBar$9;->val$toSearchMode:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lsmartisan/widget/SearchBar$9;->this$0:Lsmartisan/widget/SearchBar;

    invoke-virtual {v0}, Lsmartisan/widget/SearchBar;->showKeyboard()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lsmartisan/widget/SearchBar$9;->this$0:Lsmartisan/widget/SearchBar;

    invoke-virtual {v0}, Lsmartisan/widget/SearchBar;->hideKeyboard()V

    :goto_0
    return-void
.end method
