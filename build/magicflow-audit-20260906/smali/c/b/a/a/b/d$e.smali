.class Lc/b/a/a/b/d$e;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/a/b/d;->a(Ljava/lang/String;Lc/b/a/a/b/d$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lc/b/a/a/b/d;


# direct methods
.method constructor <init>(Lc/b/a/a/b/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/a/b/d$e;->b:Lc/b/a/a/b/d;

    iput-object p2, p0, Lc/b/a/a/b/d$e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/b/a/a/b/d$e;->b:Lc/b/a/a/b/d;

    invoke-static {v0}, Lc/b/a/a/b/d;->b(Lc/b/a/a/b/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lc/b/a/a/b/d$e;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/a/b/d$f;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v0}, Lc/b/a/a/b/d$f;->a(Lc/b/a/a/b/d$f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/b/a/a/b/d$h;

    .line 3
    invoke-static {v2}, Lc/b/a/a/b/d$h;->a(Lc/b/a/a/b/d$h;)Lc/b/a/a/b/d$i;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lc/b/a/a/b/d$f;->a()Lc/b/a/a/f/a;

    move-result-object v3

    if-nez v3, :cond_1

    .line 5
    invoke-static {v0}, Lc/b/a/a/b/d$f;->b(Lc/b/a/a/b/d$f;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lc/b/a/a/b/d$h;->a(Lc/b/a/a/b/d$h;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 6
    invoke-static {v2}, Lc/b/a/a/b/d$h;->a(Lc/b/a/a/b/d$h;)Lc/b/a/a/b/d$i;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lc/b/a/a/b/d$i;->a(Lc/b/a/a/b/d$h;Z)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v2}, Lc/b/a/a/b/d$h;->a(Lc/b/a/a/b/d$h;)Lc/b/a/a/b/d$i;

    move-result-object v3

    invoke-virtual {v0}, Lc/b/a/a/b/d$f;->b()Lc/b/a/a/d/p;

    move-result-object v4

    invoke-interface {v3, v4}, Lc/b/a/a/d/p$a;->b(Lc/b/a/a/d/p;)V

    .line 8
    :goto_1
    invoke-static {v2}, Lc/b/a/a/b/d$h;->a(Lc/b/a/a/b/d$h;)Lc/b/a/a/b/d$i;

    move-result-object v2

    invoke-interface {v2}, Lc/b/a/a/b/d$i;->b()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lc/b/a/a/b/d$e;->b:Lc/b/a/a/b/d;

    invoke-static {v0}, Lc/b/a/a/b/d;->b(Lc/b/a/a/b/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lc/b/a/a/b/d$e;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
