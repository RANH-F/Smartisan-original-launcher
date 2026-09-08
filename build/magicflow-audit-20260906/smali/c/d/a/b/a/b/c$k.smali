.class Lc/d/a/b/a/b/c$k;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/b/c;->c(Lc/d/a/b/a/f/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/f/c;

.field final synthetic b:Lc/d/a/b/a/b/c;


# direct methods
.method constructor <init>(Lc/d/a/b/a/b/c;Lc/d/a/b/a/f/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/b/c$k;->b:Lc/d/a/b/a/b/c;

    iput-object p2, p0, Lc/d/a/b/a/b/c$k;->a:Lc/d/a/b/a/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/b/c$k;->b:Lc/d/a/b/a/b/c;

    iget-object v1, p0, Lc/d/a/b/a/b/c$k;->a:Lc/d/a/b/a/f/c;

    iget-object v2, p0, Lc/d/a/b/a/b/c$k;->b:Lc/d/a/b/a/b/c;

    invoke-static {v2}, Lc/d/a/b/a/b/c;->c(Lc/d/a/b/a/b/c;)Lc/d/a/b/a/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lc/d/a/b/a/b/d;->a()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/b/c;Lc/d/a/b/a/f/c;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
