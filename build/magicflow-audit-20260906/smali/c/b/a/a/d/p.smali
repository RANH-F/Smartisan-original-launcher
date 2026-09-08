.class public Lc/b/a/a/d/p;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/a/d/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lc/b/a/a/g/b$a;

.field public final c:Lc/b/a/a/f/a;

.field public d:Z

.field public e:J

.field public f:J

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public h:J


# direct methods
.method private constructor <init>(Lc/b/a/a/f/a;)V
    .locals 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lc/b/a/a/d/p;->d:Z

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lc/b/a/a/d/p;->e:J

    .line 12
    iput-wide v0, p0, Lc/b/a/a/d/p;->f:J

    .line 13
    iput-wide v0, p0, Lc/b/a/a/d/p;->h:J

    const/4 v2, 0x0

    .line 14
    iput-object v2, p0, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    .line 15
    iput-object v2, p0, Lc/b/a/a/d/p;->b:Lc/b/a/a/g/b$a;

    .line 16
    iput-object p1, p0, Lc/b/a/a/d/p;->c:Lc/b/a/a/f/a;

    .line 17
    iget-wide v2, p0, Lc/b/a/a/d/p;->h:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lc/b/a/a/f/a;->a:Lc/b/a/a/d/m;

    if-eqz p1, :cond_0

    .line 18
    iget p1, p1, Lc/b/a/a/d/m;->a:I

    int-to-long v0, p1

    iput-wide v0, p0, Lc/b/a/a/d/p;->h:J

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lc/b/a/a/g/b$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/b/a/a/g/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/b/a/a/d/p;->d:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lc/b/a/a/d/p;->e:J

    .line 4
    iput-wide v0, p0, Lc/b/a/a/d/p;->f:J

    .line 5
    iput-wide v0, p0, Lc/b/a/a/d/p;->h:J

    .line 6
    iput-object p1, p0, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lc/b/a/a/d/p;->b:Lc/b/a/a/g/b$a;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lc/b/a/a/d/p;->c:Lc/b/a/a/f/a;

    return-void
.end method

.method public static a(Lc/b/a/a/f/a;)Lc/b/a/a/d/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/a/f/a;",
            ")",
            "Lc/b/a/a/d/p<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lc/b/a/a/d/p;

    invoke-direct {v0, p0}, Lc/b/a/a/d/p;-><init>(Lc/b/a/a/f/a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lc/b/a/a/g/b$a;)Lc/b/a/a/d/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lc/b/a/a/g/b$a;",
            ")",
            "Lc/b/a/a/d/p<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/a/d/p;

    invoke-direct {v0, p0, p1}, Lc/b/a/a/d/p;-><init>(Ljava/lang/Object;Lc/b/a/a/g/b$a;)V

    return-object v0
.end method


# virtual methods
.method public a(J)Lc/b/a/a/d/p;
    .locals 0

    .line 6
    iput-wide p1, p0, Lc/b/a/a/d/p;->e:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/b/a/a/d/p;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lc/b/a/a/d/p;->b:Lc/b/a/a/g/b$a;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lc/b/a/a/g/b$a;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    return-object p1

    :cond_2
    :goto_1
    return-object p2
.end method

.method public a()Z
    .locals 1

    .line 5
    iget-object v0, p0, Lc/b/a/a/d/p;->c:Lc/b/a/a/f/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(J)Lc/b/a/a/d/p;
    .locals 0

    .line 1
    iput-wide p1, p0, Lc/b/a/a/d/p;->f:J

    return-object p0
.end method
