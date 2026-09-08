.class public Lcom/smartisanos/magicflow/h/o;
.super Ljava/lang/Object;
.source "NewsChannelInfo.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/smartisanos/magicflow/h/o;->b:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/smartisanos/magicflow/h/o;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/magicflow/h/o;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/smartisanos/magicflow/h/o;->b:Ljava/lang/String;

    return-void
.end method
