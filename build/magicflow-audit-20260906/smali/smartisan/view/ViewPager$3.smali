.class Lsmartisan/view/ViewPager$3;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/view/ViewPager;


# direct methods
.method constructor <init>(Lsmartisan/view/ViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/view/ViewPager$3;->this$0:Lsmartisan/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/view/ViewPager$3;->this$0:Lsmartisan/view/ViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsmartisan/view/ViewPager;->access$000(Lsmartisan/view/ViewPager;I)V

    .line 2
    iget-object v0, p0, Lsmartisan/view/ViewPager$3;->this$0:Lsmartisan/view/ViewPager;

    invoke-virtual {v0}, Lsmartisan/view/ViewPager;->populate()V

    return-void
.end method
