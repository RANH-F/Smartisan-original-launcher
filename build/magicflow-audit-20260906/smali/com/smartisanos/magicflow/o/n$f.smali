.class final Lcom/smartisanos/magicflow/o/n$f;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/o/n$f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/smartisanos/magicflow/o/n$f;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/o/n$f;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/smartisanos/magicflow/o/n$f;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Landroid/content/Context;I)V

    return-void
.end method
