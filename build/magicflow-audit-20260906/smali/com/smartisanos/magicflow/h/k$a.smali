.class public Lcom/smartisanos/magicflow/h/k$a;
.super Ljava/lang/Object;
.source "HotelListItemInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/h/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/smartisanos/magicflow/h/k;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/magicflow/h/k;Lcom/smartisanos/magicflow/h/k;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    iget-wide v1, p1, Lcom/smartisanos/magicflow/h/k;->p:J

    iget-wide p1, p2, Lcom/smartisanos/magicflow/h/k;->p:J

    sub-long/2addr v1, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v1, p1

    if-lez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/magicflow/h/k;

    check-cast p2, Lcom/smartisanos/magicflow/h/k;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/h/k$a;->a(Lcom/smartisanos/magicflow/h/k;Lcom/smartisanos/magicflow/h/k;)I

    move-result p1

    return p1
.end method
