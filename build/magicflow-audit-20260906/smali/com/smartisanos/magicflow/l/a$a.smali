.class Lcom/smartisanos/magicflow/l/a$a;
.super Ljava/lang/Object;
.source "NewsInfoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/l/a;->a(Lcom/smartisanos/magicflow/h/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartisanos/magicflow/h/l;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/l/a;Lcom/smartisanos/magicflow/h/l;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/magicflow/l/a$a;->a:Lcom/smartisanos/magicflow/h/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/l/a$a;->a:Lcom/smartisanos/magicflow/h/l;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/l;->f()Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/z/i;->a(Landroid/content/ContentValues;)I

    return-void
.end method
