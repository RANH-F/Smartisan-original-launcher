.class Lcom/smartisanos/magicflow/view/pictureview/ViewPager$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/pictureview/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/pictureview/ViewPager;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$1;->this$0:Lcom/smartisanos/magicflow/view/pictureview/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;)I
    .locals 0

    .line 2
    iget p1, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    iget p2, p2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    check-cast p2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$1;->compare(Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;)I

    move-result p1

    return p1
.end method
