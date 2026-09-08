.class final Lcom/smartisanos/magicflow/o/j$a;
.super Ljava/lang/Object;
.source "PermissionHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/o/j;->a(Landroid/content/Context;ILcom/smartisanos/magicflow/o/j$c;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartisanos/magicflow/o/j$c;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/o/j$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/o/j$a;->a:Lcom/smartisanos/magicflow/o/j$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/o/j$a;->a:Lcom/smartisanos/magicflow/o/j$c;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 3
    invoke-interface {p1, p2}, Lcom/smartisanos/magicflow/o/j$c;->a(Z)V

    :cond_0
    return-void
.end method
