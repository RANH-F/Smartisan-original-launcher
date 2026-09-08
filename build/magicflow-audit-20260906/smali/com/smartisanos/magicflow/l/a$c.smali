.class final Lcom/smartisanos/magicflow/l/a$c;
.super Ljava/lang/Object;
.source "NewsInfoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/l/a;->a(Lcom/smartisanos/magicflow/h/l;Z)V
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
    iput-object p1, p0, Lcom/smartisanos/magicflow/l/a$c;->a:Lcom/smartisanos/magicflow/h/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/l/a$c;->a:Lcom/smartisanos/magicflow/h/l;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/l;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/z/d;->b(Ljava/lang/String;)Z

    return-void
.end method
