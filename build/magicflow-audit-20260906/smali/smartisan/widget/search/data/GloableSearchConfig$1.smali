.class Lsmartisan/widget/search/data/GloableSearchConfig$1;
.super Ljava/lang/Object;
.source "GloableSearchConfig.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/search/data/GloableSearchConfig;->setConfigTypes(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lsmartisan/widget/search/data/SearchConfigType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/search/data/GloableSearchConfig;


# direct methods
.method constructor <init>(Lsmartisan/widget/search/data/GloableSearchConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/data/GloableSearchConfig$1;->this$0:Lsmartisan/widget/search/data/GloableSearchConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lsmartisan/widget/search/data/SearchConfigType;

    check-cast p2, Lsmartisan/widget/search/data/SearchConfigType;

    invoke-virtual {p0, p1, p2}, Lsmartisan/widget/search/data/GloableSearchConfig$1;->compare(Lsmartisan/widget/search/data/SearchConfigType;Lsmartisan/widget/search/data/SearchConfigType;)I

    move-result p1

    return p1
.end method

.method public compare(Lsmartisan/widget/search/data/SearchConfigType;Lsmartisan/widget/search/data/SearchConfigType;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Lsmartisan/widget/search/data/SearchConfigType;->getOrder()I

    move-result v0

    invoke-virtual {p2}, Lsmartisan/widget/search/data/SearchConfigType;->getOrder()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lsmartisan/widget/search/data/SearchConfigType;->getOrder()I

    move-result p1

    invoke-virtual {p2}, Lsmartisan/widget/search/data/SearchConfigType;->getOrder()I

    move-result p2

    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
