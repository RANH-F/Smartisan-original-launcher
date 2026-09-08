.class Lc/d/a/b/a/b/c$b;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/b/c;->b(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lc/d/a/b/a/b/c;


# direct methods
.method constructor <init>(Lc/d/a/b/a/b/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/b/c$b;->b:Lc/d/a/b/a/b/c;

    iput p2, p0, Lc/d/a/b/a/b/c$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/b/c$b;->b:Lc/d/a/b/a/b/c;

    iget v1, p0, Lc/d/a/b/a/b/c$b;->a:I

    invoke-virtual {v0, v1}, Lc/d/a/b/a/b/c;->f(I)Z

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/b/c$b;->b:Lc/d/a/b/a/b/c;

    iget v1, p0, Lc/d/a/b/a/b/c$b;->a:I

    invoke-virtual {v0, v1}, Lc/d/a/b/a/b/c;->h(I)V

    return-void
.end method
