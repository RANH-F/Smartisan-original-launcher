.class final Lcom/smartisanos/magicflow/l/a$b;
.super Ljava/lang/Object;
.source "NewsInfoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/l/a;->c(Lcom/smartisanos/magicflow/h/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartisanos/magicflow/h/l;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/h/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/l/a$b;->a:Lcom/smartisanos/magicflow/h/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/l/a$b;->a:Lcom/smartisanos/magicflow/h/l;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/l;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/z/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/l/a$b;->a:Lcom/smartisanos/magicflow/h/l;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/l;->d()Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/z/d;->a(Landroid/content/ContentValues;)I

    :cond_0
    return-void
.end method
