.class final Lcom/smartisanos/magicflow/o/h$a;
.super Ljava/lang/Object;
.source "LocationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/o/h;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/o/h$a;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/smartisanos/magicflow/o/h$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/j;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/o/h$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/smartisanos/magicflow/o/h$a;->b:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/o/h$a;->a:Landroid/content/Context;

    const v2, 0x7f0d01e3

    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/o/h$a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/o/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
