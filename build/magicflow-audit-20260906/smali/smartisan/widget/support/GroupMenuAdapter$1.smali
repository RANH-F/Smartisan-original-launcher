.class Lsmartisan/widget/support/GroupMenuAdapter$1;
.super Ljava/lang/Object;
.source "GroupMenuAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/support/GroupMenuAdapter;->sortByGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/MenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/support/GroupMenuAdapter;


# direct methods
.method constructor <init>(Lsmartisan/widget/support/GroupMenuAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/support/GroupMenuAdapter$1;->this$0:Lsmartisan/widget/support/GroupMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/MenuItem;Landroid/view/MenuItem;)I
    .locals 2

    .line 2
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/view/MenuItem;

    check-cast p2, Landroid/view/MenuItem;

    invoke-virtual {p0, p1, p2}, Lsmartisan/widget/support/GroupMenuAdapter$1;->compare(Landroid/view/MenuItem;Landroid/view/MenuItem;)I

    move-result p1

    return p1
.end method
