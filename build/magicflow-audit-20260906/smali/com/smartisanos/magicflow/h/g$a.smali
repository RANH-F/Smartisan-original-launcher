.class public Lcom/smartisanos/magicflow/h/g$a;
.super Ljava/lang/Object;
.source "ExpressListItemInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/h/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/smartisanos/magicflow/h/g;",
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
.method public a(Lcom/smartisanos/magicflow/h/g;Lcom/smartisanos/magicflow/h/g;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1
    iget v1, p1, Lcom/smartisanos/magicflow/h/g;->w:I

    iget v2, p2, Lcom/smartisanos/magicflow/h/g;->w:I

    const/4 v3, 0x1

    if-le v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v4, -0x1

    if-ge v1, v2, :cond_1

    return v4

    .line 2
    :cond_1
    iget-wide v1, p1, Lcom/smartisanos/magicflow/h/g;->s:J

    iget-wide p1, p2, Lcom/smartisanos/magicflow/h/g;->s:J

    cmp-long v5, v1, p1

    if-lez v5, :cond_2

    return v3

    :cond_2
    cmp-long p1, v1, p1

    if-gez p1, :cond_3

    return v4

    :cond_3
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/magicflow/h/g;

    check-cast p2, Lcom/smartisanos/magicflow/h/g;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/h/g$a;->a(Lcom/smartisanos/magicflow/h/g;Lcom/smartisanos/magicflow/h/g;)I

    move-result p1

    return p1
.end method
