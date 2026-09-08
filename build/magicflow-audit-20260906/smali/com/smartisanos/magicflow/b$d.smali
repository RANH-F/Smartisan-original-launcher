.class final Lcom/smartisanos/magicflow/b$d;
.super Ljava/lang/Object;
.source "MagicFlowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v0, 0x4000

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    return-void
.end method
