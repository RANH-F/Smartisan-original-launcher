.class Lsmartisan/widget/SearchBar$3;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lsmartisan/widget/SearchBar$3;->this$0:Lsmartisan/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SearchBar$3;->this$0:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->access$100(Lsmartisan/widget/SearchBar;)V

    return-void
.end method
