.class Landroid/support/constraint/b/j/p$a;
.super Ljava/lang/Object;
.source "Snapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/b/j/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/support/constraint/b/j/e;

.field private b:Landroid/support/constraint/b/j/e;

.field private c:I

.field private d:Landroid/support/constraint/b/j/e$c;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/b/j/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/constraint/b/j/p$a;->a:Landroid/support/constraint/b/j/e;

    .line 3
    invoke-virtual {p1}, Landroid/support/constraint/b/j/e;->g()Landroid/support/constraint/b/j/e;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/b/j/p$a;->b:Landroid/support/constraint/b/j/e;

    .line 4
    invoke-virtual {p1}, Landroid/support/constraint/b/j/e;->b()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/b/j/p$a;->c:I

    .line 5
    invoke-virtual {p1}, Landroid/support/constraint/b/j/e;->f()Landroid/support/constraint/b/j/e$c;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/b/j/p$a;->d:Landroid/support/constraint/b/j/e$c;

    .line 6
    invoke-virtual {p1}, Landroid/support/constraint/b/j/e;->a()I

    move-result p1

    iput p1, p0, Landroid/support/constraint/b/j/p$a;->e:I

    return-void
.end method


# virtual methods
.method public a(Landroid/support/constraint/b/j/f;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/j/p$a;->a:Landroid/support/constraint/b/j/e;

    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->h()Landroid/support/constraint/b/j/e$d;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/b/j/f;->a(Landroid/support/constraint/b/j/e$d;)Landroid/support/constraint/b/j/e;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroid/support/constraint/b/j/p$a;->b:Landroid/support/constraint/b/j/e;

    iget v1, p0, Landroid/support/constraint/b/j/p$a;->c:I

    iget-object v2, p0, Landroid/support/constraint/b/j/p$a;->d:Landroid/support/constraint/b/j/e$c;

    iget v3, p0, Landroid/support/constraint/b/j/p$a;->e:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/constraint/b/j/e;->a(Landroid/support/constraint/b/j/e;ILandroid/support/constraint/b/j/e$c;I)Z

    return-void
.end method

.method public b(Landroid/support/constraint/b/j/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/constraint/b/j/p$a;->a:Landroid/support/constraint/b/j/e;

    invoke-virtual {v0}, Landroid/support/constraint/b/j/e;->h()Landroid/support/constraint/b/j/e$d;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/b/j/f;->a(Landroid/support/constraint/b/j/e$d;)Landroid/support/constraint/b/j/e;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/b/j/p$a;->a:Landroid/support/constraint/b/j/e;

    .line 2
    iget-object p1, p0, Landroid/support/constraint/b/j/p$a;->a:Landroid/support/constraint/b/j/e;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/support/constraint/b/j/e;->g()Landroid/support/constraint/b/j/e;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/b/j/p$a;->b:Landroid/support/constraint/b/j/e;

    .line 4
    iget-object p1, p0, Landroid/support/constraint/b/j/p$a;->a:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1}, Landroid/support/constraint/b/j/e;->b()I

    move-result p1

    iput p1, p0, Landroid/support/constraint/b/j/p$a;->c:I

    .line 5
    iget-object p1, p0, Landroid/support/constraint/b/j/p$a;->a:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1}, Landroid/support/constraint/b/j/e;->f()Landroid/support/constraint/b/j/e$c;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/b/j/p$a;->d:Landroid/support/constraint/b/j/e$c;

    .line 6
    iget-object p1, p0, Landroid/support/constraint/b/j/p$a;->a:Landroid/support/constraint/b/j/e;

    invoke-virtual {p1}, Landroid/support/constraint/b/j/e;->a()I

    move-result p1

    iput p1, p0, Landroid/support/constraint/b/j/p$a;->e:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroid/support/constraint/b/j/p$a;->b:Landroid/support/constraint/b/j/e;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Landroid/support/constraint/b/j/p$a;->c:I

    .line 9
    sget-object v0, Landroid/support/constraint/b/j/e$c;->b:Landroid/support/constraint/b/j/e$c;

    iput-object v0, p0, Landroid/support/constraint/b/j/p$a;->d:Landroid/support/constraint/b/j/e$c;

    .line 10
    iput p1, p0, Landroid/support/constraint/b/j/p$a;->e:I

    :goto_0
    return-void
.end method
