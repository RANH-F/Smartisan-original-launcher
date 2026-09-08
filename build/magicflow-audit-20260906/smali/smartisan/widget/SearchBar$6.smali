.class Lsmartisan/widget/SearchBar$6;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lsmartisan/widget/SearchBar$6;->this$0:Lsmartisan/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar$6;->this$0:Lsmartisan/widget/SearchBar;

    invoke-static {v0}, Lsmartisan/widget/SearchBar;->access$300(Lsmartisan/widget/SearchBar;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lsmartisan/widget/SearchBar$6;->this$0:Lsmartisan/widget/SearchBar;

    invoke-static {p2}, Lsmartisan/widget/SearchBar;->access$200(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$Listener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lsmartisan/widget/SearchBar$6;->this$0:Lsmartisan/widget/SearchBar;

    invoke-static {p2}, Lsmartisan/widget/SearchBar;->access$200(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$Listener;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lsmartisan/widget/SearchBar$Listener;->searchText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
