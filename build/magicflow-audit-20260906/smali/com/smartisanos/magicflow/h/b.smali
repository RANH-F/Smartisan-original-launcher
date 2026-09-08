.class public Lcom/smartisanos/magicflow/h/b;
.super Ljava/lang/Object;
.source "CardInfo.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/smartisanos/magicflow/h/b;->a:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/smartisanos/magicflow/h/b;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/smartisanos/magicflow/h/b;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/b;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/b;->b:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/smartisanos/magicflow/h/b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/b;->b:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
