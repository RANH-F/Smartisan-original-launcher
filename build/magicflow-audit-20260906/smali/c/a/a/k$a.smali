.class Lc/a/a/k$a;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a/a/k;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/g;Lcom/bumptech/glide/manager/k;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/manager/g;

.field final synthetic b:Lc/a/a/k;


# direct methods
.method constructor <init>(Lc/a/a/k;Lcom/bumptech/glide/manager/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/a/a/k$a;->b:Lc/a/a/k;

    iput-object p2, p0, Lc/a/a/k$a;->a:Lcom/bumptech/glide/manager/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/k$a;->a:Lcom/bumptech/glide/manager/g;

    iget-object v1, p0, Lc/a/a/k$a;->b:Lc/a/a/k;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/g;->a(Lcom/bumptech/glide/manager/h;)V

    return-void
.end method
