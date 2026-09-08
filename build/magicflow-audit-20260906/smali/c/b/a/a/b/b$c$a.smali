.class Lc/b/a/a/b/b$c$a;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lc/b/a/a/b/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/a/b/b$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/b/a/a/b/b$c;


# direct methods
.method constructor <init>(Lc/b/a/a/b/b$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/a/b/b$c$a;->a:Lc/b/a/a/b/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/b/a/a/b/b$c$a;->a:Lc/b/a/a/b/b$c;

    iget-object v0, v0, Lc/b/a/a/b/b$c;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/a/b/c$a;

    .line 3
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lc/b/a/a/b/c$a;->a(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "file loader onDownloadProgress error"

    .line 4
    invoke-static {v1, v3, v2}, Lc/b/a/a/d/r;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lc/b/a/a/d/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lc/b/a/a/b/b$c$a;->a:Lc/b/a/a/b/b$c;

    iget-object v0, v0, Lc/b/a/a/b/b$c;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/a/b/b$b;

    const/4 v2, 0x0

    .line 7
    :try_start_0
    invoke-interface {v1, p1}, Lc/b/a/a/d/p$a;->a(Lc/b/a/a/d/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "file loader onResponse error"

    .line 8
    invoke-static {v3, v5, v4}, Lc/b/a/a/d/r;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :goto_1
    :try_start_1
    iget-object v3, p0, Lc/b/a/a/b/b$c$a;->a:Lc/b/a/a/b/b$c;

    iget-object v3, v3, Lc/b/a/a/b/b$c;->a:Ljava/lang/String;

    iget-object v4, p1, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    invoke-interface {v1, v3, v4}, Lc/b/a/a/b/b$b;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "file loader putFile error"

    .line 10
    invoke-static {v1, v3, v2}, Lc/b/a/a/d/r;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lc/b/a/a/b/b$c$a;->a:Lc/b/a/a/b/b$c;

    iget-object p1, p1, Lc/b/a/a/b/b$c;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 12
    :cond_1
    iget-object p1, p0, Lc/b/a/a/b/b$c$a;->a:Lc/b/a/a/b/b$c;

    iget-object p1, p1, Lc/b/a/a/b/b$c;->e:Lc/b/a/a/b/b;

    invoke-static {p1}, Lc/b/a/a/b/b;->a(Lc/b/a/a/b/b;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lc/b/a/a/b/b$c$a;->a:Lc/b/a/a/b/b$c;

    iget-object v0, v0, Lc/b/a/a/b/b$c;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lc/b/a/a/d/p;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/a/b/b$c$a;->a:Lc/b/a/a/b/b$c;

    iget-object v0, v0, Lc/b/a/a/b/b$c;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/a/b/c$a;

    .line 3
    :try_start_0
    invoke-interface {v1, p1}, Lc/b/a/a/d/p$a;->b(Lc/b/a/a/d/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "file loader onErrorResponse error"

    .line 4
    invoke-static {v1, v3, v2}, Lc/b/a/a/d/r;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lc/b/a/a/b/b$c$a;->a:Lc/b/a/a/b/b$c;

    iget-object p1, p1, Lc/b/a/a/b/b$c;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 6
    :cond_1
    iget-object p1, p0, Lc/b/a/a/b/b$c$a;->a:Lc/b/a/a/b/b$c;

    iget-object p1, p1, Lc/b/a/a/b/b$c;->e:Lc/b/a/a/b/b;

    invoke-static {p1}, Lc/b/a/a/b/b;->a(Lc/b/a/a/b/b;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lc/b/a/a/b/b$c$a;->a:Lc/b/a/a/b/b$c;

    iget-object v0, v0, Lc/b/a/a/b/b$c;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
