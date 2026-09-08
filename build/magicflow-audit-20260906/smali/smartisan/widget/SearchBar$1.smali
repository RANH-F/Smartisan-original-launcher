.class Lsmartisan/widget/SearchBar$1;
.super Lsmartisan/widget/SearchBarEditText$ListenerAdapter;
.source "SearchBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SearchBar;->initViews(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/SearchBar;


# direct methods
.method constructor <init>(Lsmartisan/widget/SearchBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SearchBar$1;->this$0:Lsmartisan/widget/SearchBar;

    invoke-direct {p0}, Lsmartisan/widget/SearchBarEditText$ListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lsmartisan/widget/SearchBarEditText$ListenerAdapter;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SearchBar$1;->this$0:Lsmartisan/widget/SearchBar;

    invoke-static {v0}, Lsmartisan/widget/SearchBar;->access$000(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$OnCommitCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SearchBar$1;->this$0:Lsmartisan/widget/SearchBar;

    invoke-static {v0}, Lsmartisan/widget/SearchBar;->access$000(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$OnCommitCompletionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lsmartisan/widget/SearchBar$OnCommitCompletionListener;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    :cond_0
    return-void
.end method
