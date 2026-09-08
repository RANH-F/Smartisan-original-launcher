.class Lc/b/a/a/d/c$a;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/a/d/c;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lc/b/a/a/d/c;


# direct methods
.method constructor <init>(Lc/b/a/a/d/c;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/a/d/c$a;->c:Lc/b/a/a/d/c;

    iput-object p2, p0, Lc/b/a/a/d/c$a;->a:Ljava/lang/String;

    iput-wide p3, p0, Lc/b/a/a/d/c$a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/c$a;->c:Lc/b/a/a/d/c;

    invoke-static {v0}, Lc/b/a/a/d/c;->a(Lc/b/a/a/d/c;)Lc/b/a/a/d/r$a;

    move-result-object v0

    iget-object v1, p0, Lc/b/a/a/d/c$a;->a:Ljava/lang/String;

    iget-wide v2, p0, Lc/b/a/a/d/c$a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lc/b/a/a/d/r$a;->a(Ljava/lang/String;J)V

    .line 2
    iget-object v0, p0, Lc/b/a/a/d/c$a;->c:Lc/b/a/a/d/c;

    invoke-static {v0}, Lc/b/a/a/d/c;->a(Lc/b/a/a/d/c;)Lc/b/a/a/d/r$a;

    move-result-object v0

    iget-object v1, p0, Lc/b/a/a/d/c$a;->c:Lc/b/a/a/d/c;

    invoke-virtual {v1}, Lc/b/a/a/d/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/b/a/a/d/r$a;->a(Ljava/lang/String;)V

    return-void
.end method
