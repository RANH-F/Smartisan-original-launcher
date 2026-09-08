.class Lc/b/a/a/b/d$d$b;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/a/b/d$d;->b(Lc/b/a/a/d/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/b/a/a/d/p;

.field final synthetic b:Lc/b/a/a/b/d$d;


# direct methods
.method constructor <init>(Lc/b/a/a/b/d$d;Lc/b/a/a/d/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/a/b/d$d$b;->b:Lc/b/a/a/b/d$d;

    iput-object p2, p0, Lc/b/a/a/b/d$d$b;->a:Lc/b/a/a/d/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/b/a/a/b/d$d$b;->b:Lc/b/a/a/b/d$d;

    iget-object v1, v0, Lc/b/a/a/b/d$d;->b:Lc/b/a/a/b/d;

    iget-object v0, v0, Lc/b/a/a/b/d$d;->a:Ljava/lang/String;

    iget-object v2, p0, Lc/b/a/a/b/d$d$b;->a:Lc/b/a/a/d/p;

    invoke-virtual {v1, v0, v2}, Lc/b/a/a/b/d;->b(Ljava/lang/String;Lc/b/a/a/d/p;)V

    return-void
.end method
