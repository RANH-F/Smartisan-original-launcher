.class Lc/a/a/k$d;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lc/a/a/k;


# direct methods
.method constructor <init>(Lc/a/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/a/a/k$d;->a:Lc/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/a/a/f;)Lc/a/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "X:",
            "Lc/a/a/f<",
            "TA;***>;>(TX;)TX;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/k$d;->a:Lc/a/a/k;

    invoke-static {v0}, Lc/a/a/k;->f(Lc/a/a/k;)Lc/a/a/k$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/a/a/k$d;->a:Lc/a/a/k;

    invoke-static {v0}, Lc/a/a/k;->f(Lc/a/a/k;)Lc/a/a/k$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/a/a/k$b;->a(Lc/a/a/f;)V

    :cond_0
    return-object p1
.end method
