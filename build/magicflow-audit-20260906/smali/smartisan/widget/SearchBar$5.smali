.class Lsmartisan/widget/SearchBar$5;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    iput-object p1, p0, Lsmartisan/widget/SearchBar$5;->this$0:Lsmartisan/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SearchBar$5;->this$0:Lsmartisan/widget/SearchBar;

    invoke-virtual {p1}, Lsmartisan/widget/SearchBar;->hideKeyboard()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
