.class Lc/d/a/b/a/b/c$i;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/b/c;->a(IIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:Lc/d/a/b/a/b/c;


# direct methods
.method constructor <init>(Lc/d/a/b/a/b/c;IIIJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/b/c$i;->e:Lc/d/a/b/a/b/c;

    iput p2, p0, Lc/d/a/b/a/b/c$i;->a:I

    iput p3, p0, Lc/d/a/b/a/b/c$i;->b:I

    iput p4, p0, Lc/d/a/b/a/b/c$i;->c:I

    iput-wide p5, p0, Lc/d/a/b/a/b/c$i;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/b/c$i;->e:Lc/d/a/b/a/b/c;

    invoke-static {v0}, Lc/d/a/b/a/b/c;->b(Lc/d/a/b/a/b/c;)Lc/d/a/b/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/a/b/d;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    .line 2
    iget-object v1, p0, Lc/d/a/b/a/b/c$i;->e:Lc/d/a/b/a/b/c;

    iget v2, p0, Lc/d/a/b/a/b/c$i;->a:I

    iget v3, p0, Lc/d/a/b/a/b/c$i;->b:I

    iget v4, p0, Lc/d/a/b/a/b/c$i;->c:I

    iget-wide v5, p0, Lc/d/a/b/a/b/c$i;->d:J

    invoke-static/range {v1 .. v7}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/b/c;IIIJLandroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
