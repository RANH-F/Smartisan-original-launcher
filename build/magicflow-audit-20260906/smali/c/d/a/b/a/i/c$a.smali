.class Lc/d/a/b/a/i/c$a;
.super Lc/d/a/b/a/c/a;
.source "DownloadRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/i/c;->a(Lc/d/a/b/a/d/a;J)Lc/d/a/b/a/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lc/d/a/b/a/i/c;


# direct methods
.method constructor <init>(Lc/d/a/b/a/i/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/i/c$a;->b:Lc/d/a/b/a/i/c;

    invoke-direct {p0}, Lc/d/a/b/a/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/d/a/b/a/c/a;->a(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/i/c$a;->b:Lc/d/a/b/a/i/c;

    invoke-static {v0, p1}, Lc/d/a/b/a/i/c;->a(Lc/d/a/b/a/i/c;Ljava/util/List;)V

    return-void
.end method
