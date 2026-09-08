.class Lcom/smartisanos/magicflow/d$a$a;
.super Ljava/lang/Object;
.source "ObserverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/d$a;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/a;->e(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/smartisanos/magicflow/h/d;->c:Z

    .line 3
    sget-boolean v1, Lcom/smartisanos/magicflow/h/d;->c:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/smartisanos/magicflow/h/d;->T:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/k/a;->d()Lcom/smartisanos/magicflow/k/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/k/a;->b()V

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/k/a;->d()Lcom/smartisanos/magicflow/k/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/k/a;->a(Landroid/content/Context;)V

    const/high16 v0, 0x40000

    .line 6
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/smartisanos/magicflow/d$a$a$a;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/d$a$a$a;-><init>(Lcom/smartisanos/magicflow/d$a$a;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/k/a;->d()Lcom/smartisanos/magicflow/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/k/a;->c()V

    :cond_1
    :goto_0
    return-void
.end method
