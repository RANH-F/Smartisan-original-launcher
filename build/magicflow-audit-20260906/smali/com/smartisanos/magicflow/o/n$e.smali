.class final Lcom/smartisanos/magicflow/o/n$e;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Context;Lcom/smartisanos/magicflow/h/l;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/smartisanos/magicflow/h/l;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/o/n$e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/smartisanos/magicflow/o/n$e;->b:Lcom/smartisanos/magicflow/h/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/o/n$e;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/smartisanos/magicflow/o/n$e;->b:Lcom/smartisanos/magicflow/h/l;

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Context;Lcom/smartisanos/magicflow/h/l;)V

    return-void
.end method
