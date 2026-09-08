.class Lsmartisan/view/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/view/ViewPager;


# direct methods
.method private constructor <init>(Lsmartisan/view/ViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/view/ViewPager$PagerObserver;->this$0:Lsmartisan/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsmartisan/view/ViewPager;Lsmartisan/view/ViewPager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsmartisan/view/ViewPager$PagerObserver;-><init>(Lsmartisan/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/view/ViewPager$PagerObserver;->this$0:Lsmartisan/view/ViewPager;

    invoke-virtual {v0}, Lsmartisan/view/ViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/view/ViewPager$PagerObserver;->this$0:Lsmartisan/view/ViewPager;

    invoke-virtual {v0}, Lsmartisan/view/ViewPager;->dataSetChanged()V

    return-void
.end method
