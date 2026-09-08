.class final Lcom/smartisanos/magicflow/f$a;
.super Ljava/lang/Object;
.source "ThreadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/f;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/f$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/f;->a()Lcom/smartisanos/magicflow/f;

    move-result-object v0

    iget-boolean v1, p0, Lcom/smartisanos/magicflow/f$a;->a:Z

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/f;->a(Lcom/smartisanos/magicflow/f;Z)V

    return-void
.end method
