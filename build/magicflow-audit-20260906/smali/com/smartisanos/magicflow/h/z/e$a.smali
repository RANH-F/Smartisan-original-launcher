.class public Lcom/smartisanos/magicflow/h/z/e$a;
.super Ljava/lang/Object;
.source "DatabaseTransactionTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/h/z/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/magicflow/h/z/e$a;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/h/z/e$a;->a:I

    iput v0, p1, Lcom/smartisanos/magicflow/h/z/e$a;->a:I

    .line 2
    iget-wide v0, p0, Lcom/smartisanos/magicflow/h/z/e$a;->b:J

    iput-wide v0, p1, Lcom/smartisanos/magicflow/h/z/e$a;->b:J

    .line 3
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/h/z/e$a;->c:Z

    iput-boolean v0, p1, Lcom/smartisanos/magicflow/h/z/e$a;->c:Z

    return-void
.end method
