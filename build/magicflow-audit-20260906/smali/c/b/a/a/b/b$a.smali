.class Lc/b/a/a/b/b$a;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/a/b/b;->a(Ljava/lang/String;Lc/b/a/a/b/b$b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/b/a/a/b/b$b;

.field final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lc/b/a/a/b/b;Lc/b/a/a/b/b$b;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lc/b/a/a/b/b$a;->a:Lc/b/a/a/b/b$b;

    iput-object p3, p0, Lc/b/a/a/b/b$a;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/b/a/a/b/b$a;->a:Lc/b/a/a/b/b$b;

    iget-object v1, p0, Lc/b/a/a/b/b$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, p0, Lc/b/a/a/b/b$a;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lc/b/a/a/b/c$a;->a(JJ)V

    .line 2
    iget-object v0, p0, Lc/b/a/a/b/b$a;->a:Lc/b/a/a/b/b$b;

    iget-object v1, p0, Lc/b/a/a/b/b$a;->b:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc/b/a/a/d/p;->a(Ljava/lang/Object;Lc/b/a/a/g/b$a;)Lc/b/a/a/d/p;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/b/a/a/d/p$a;->a(Lc/b/a/a/d/p;)V

    return-void
.end method
