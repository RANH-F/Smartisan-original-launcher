.class Lcom/smartisanos/magicflow/service/MagicFlowService$f$a;
.super Ljava/lang/Object;
.source "MagicFlowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/service/MagicFlowService$f;->onActivitiesForeground(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/service/MagicFlowService$f;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/magicflow/service/MagicFlowService$f$a;->a:Ljava/lang/String;

    iput p3, p0, Lcom/smartisanos/magicflow/service/MagicFlowService$f$a;->b:I

    iput p4, p0, Lcom/smartisanos/magicflow/service/MagicFlowService$f$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/service/MagicFlowService$f$a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/smartisanos/magicflow/service/MagicFlowService$f$a;->b:I

    iget v2, p0, Lcom/smartisanos/magicflow/service/MagicFlowService$f$a;->c:I

    invoke-static {v0, v1, v2}, Lcom/smartisanos/magicflow/service/MagicFlowService;->a(Ljava/lang/String;II)V

    return-void
.end method
