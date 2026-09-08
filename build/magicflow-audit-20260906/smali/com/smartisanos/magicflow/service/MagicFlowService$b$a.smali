.class Lcom/smartisanos/magicflow/service/MagicFlowService$b$a;
.super Ljava/lang/Object;
.source "MagicFlowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/service/MagicFlowService$b;->attachToken(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/service/MagicFlowService$b;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/magicflow/service/MagicFlowService$b$a;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/service/MagicFlowService$b$a;->a:Landroid/os/IBinder;

    sput-object v0, Lcom/smartisanos/magicflow/b;->g:Landroid/os/IBinder;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/b;->b(I)V

    return-void
.end method
