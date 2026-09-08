.class public Lc/a/a/r/g/a;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lc/a/a/r/g/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/r/g/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lc/a/a/r/g/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/r/g/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/r/g/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:Lc/a/a/r/g/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/r/g/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:Lc/a/a/r/g/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/r/g/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x12c

    .line 1
    invoke-direct {p0, v0}, Lc/a/a/r/g/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    new-instance v0, Lc/a/a/r/g/g;

    new-instance v1, Lc/a/a/r/g/a$a;

    invoke-direct {v1, p1}, Lc/a/a/r/g/a$a;-><init>(I)V

    invoke-direct {v0, v1}, Lc/a/a/r/g/g;-><init>(Lc/a/a/r/g/f$a;)V

    invoke-direct {p0, v0, p1}, Lc/a/a/r/g/a;-><init>(Lc/a/a/r/g/g;I)V

    return-void
.end method

.method constructor <init>(Lc/a/a/r/g/g;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/g/g<",
            "TT;>;I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lc/a/a/r/g/a;->a:Lc/a/a/r/g/g;

    .line 5
    iput p2, p0, Lc/a/a/r/g/a;->b:I

    return-void
.end method

.method private a()Lc/a/a/r/g/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/r/g/c<",
            "TT;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lc/a/a/r/g/a;->c:Lc/a/a/r/g/b;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lc/a/a/r/g/a;->a:Lc/a/a/r/g/g;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lc/a/a/r/g/g;->a(ZZ)Lc/a/a/r/g/c;

    move-result-object v0

    .line 6
    new-instance v1, Lc/a/a/r/g/b;

    iget v2, p0, Lc/a/a/r/g/a;->b:I

    invoke-direct {v1, v0, v2}, Lc/a/a/r/g/b;-><init>(Lc/a/a/r/g/c;I)V

    iput-object v1, p0, Lc/a/a/r/g/a;->c:Lc/a/a/r/g/b;

    .line 7
    :cond_0
    iget-object v0, p0, Lc/a/a/r/g/a;->c:Lc/a/a/r/g/b;

    return-object v0
.end method

.method private b()Lc/a/a/r/g/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/r/g/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/r/g/a;->d:Lc/a/a/r/g/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/a/a/r/g/a;->a:Lc/a/a/r/g/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lc/a/a/r/g/g;->a(ZZ)Lc/a/a/r/g/c;

    move-result-object v0

    .line 3
    new-instance v1, Lc/a/a/r/g/b;

    iget v2, p0, Lc/a/a/r/g/a;->b:I

    invoke-direct {v1, v0, v2}, Lc/a/a/r/g/b;-><init>(Lc/a/a/r/g/c;I)V

    iput-object v1, p0, Lc/a/a/r/g/a;->d:Lc/a/a/r/g/b;

    .line 4
    :cond_0
    iget-object v0, p0, Lc/a/a/r/g/a;->d:Lc/a/a/r/g/b;

    return-object v0
.end method


# virtual methods
.method public a(ZZ)Lc/a/a/r/g/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lc/a/a/r/g/c<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lc/a/a/r/g/e;->b()Lc/a/a/r/g/c;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-direct {p0}, Lc/a/a/r/g/a;->a()Lc/a/a/r/g/c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    invoke-direct {p0}, Lc/a/a/r/g/a;->b()Lc/a/a/r/g/c;

    move-result-object p1

    return-object p1
.end method
