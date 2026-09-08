.class Lsmartisan/widget/BottomBar$1;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Lsmartisan/widget/BottomBarItemView$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/BottomBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/BottomBar;


# direct methods
.method constructor <init>(Lsmartisan/widget/BottomBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BottomBar$1;->this$0:Lsmartisan/widget/BottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lsmartisan/widget/BottomBarItemView;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lsmartisan/widget/BottomBarItemView;->isChecked()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lsmartisan/widget/BottomBar$1;->this$0:Lsmartisan/widget/BottomBar;

    invoke-static {p2}, Lsmartisan/widget/BottomBar;->access$000(Lsmartisan/widget/BottomBar;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lsmartisan/widget/BottomBar$1;->this$0:Lsmartisan/widget/BottomBar;

    invoke-static {p2}, Lsmartisan/widget/BottomBar;->access$000(Lsmartisan/widget/BottomBar;)I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 3
    iget-object p2, p0, Lsmartisan/widget/BottomBar$1;->this$0:Lsmartisan/widget/BottomBar;

    invoke-static {p2}, Lsmartisan/widget/BottomBar;->access$000(Lsmartisan/widget/BottomBar;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lsmartisan/widget/BottomBar;->access$100(Lsmartisan/widget/BottomBar;IZ)V

    .line 4
    :cond_1
    iget-object p2, p0, Lsmartisan/widget/BottomBar$1;->this$0:Lsmartisan/widget/BottomBar;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result p1

    invoke-static {p2, p1}, Lsmartisan/widget/BottomBar;->access$002(Lsmartisan/widget/BottomBar;I)I

    .line 5
    iget-object p1, p0, Lsmartisan/widget/BottomBar$1;->this$0:Lsmartisan/widget/BottomBar;

    invoke-static {p1}, Lsmartisan/widget/BottomBar;->access$200(Lsmartisan/widget/BottomBar;)Lsmartisan/widget/BottomBar$OnCheckedChangeListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lsmartisan/widget/BottomBar$1;->this$0:Lsmartisan/widget/BottomBar;

    invoke-static {p1}, Lsmartisan/widget/BottomBar;->access$200(Lsmartisan/widget/BottomBar;)Lsmartisan/widget/BottomBar$OnCheckedChangeListener;

    move-result-object p1

    iget-object p2, p0, Lsmartisan/widget/BottomBar$1;->this$0:Lsmartisan/widget/BottomBar;

    invoke-static {p2}, Lsmartisan/widget/BottomBar;->access$300(Lsmartisan/widget/BottomBar;)Landroid/widget/LinearLayout;

    move-result-object p2

    iget-object v0, p0, Lsmartisan/widget/BottomBar$1;->this$0:Lsmartisan/widget/BottomBar;

    invoke-static {v0}, Lsmartisan/widget/BottomBar;->access$000(Lsmartisan/widget/BottomBar;)I

    move-result v0

    invoke-interface {p1, p2, v0}, Lsmartisan/widget/BottomBar$OnCheckedChangeListener;->onCheckedChanged(Landroid/view/ViewGroup;I)V

    :cond_2
    return-void
.end method
