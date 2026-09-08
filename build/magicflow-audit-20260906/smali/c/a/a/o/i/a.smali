.class Lc/a/a/o/i/a;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/i/a$b;,
        Lc/a/a/o/i/a$a;,
        Lc/a/a/o/i/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final m:Lc/a/a/o/i/a$b;


# instance fields
.field private final a:Lc/a/a/o/i/f;

.field private final b:I

.field private final c:I

.field private final d:Lc/a/a/o/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/h/c<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final e:Lc/a/a/q/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/q/b<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field private final f:Lc/a/a/o/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final g:Lc/a/a/o/k/j/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/k/j/c<",
            "TT;TZ;>;"
        }
    .end annotation
.end field

.field private final h:Lc/a/a/o/i/a$a;

.field private final i:Lc/a/a/o/i/b;

.field private final j:Lc/a/a/j;

.field private final k:Lc/a/a/o/i/a$b;

.field private volatile l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/a/a/o/i/a$b;

    invoke-direct {v0}, Lc/a/a/o/i/a$b;-><init>()V

    sput-object v0, Lc/a/a/o/i/a;->m:Lc/a/a/o/i/a$b;

    return-void
.end method

.method public constructor <init>(Lc/a/a/o/i/f;IILc/a/a/o/h/c;Lc/a/a/q/b;Lc/a/a/o/g;Lc/a/a/o/k/j/c;Lc/a/a/o/i/a$a;Lc/a/a/o/i/b;Lc/a/a/j;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/f;",
            "II",
            "Lc/a/a/o/h/c<",
            "TA;>;",
            "Lc/a/a/q/b<",
            "TA;TT;>;",
            "Lc/a/a/o/g<",
            "TT;>;",
            "Lc/a/a/o/k/j/c<",
            "TT;TZ;>;",
            "Lc/a/a/o/i/a$a;",
            "Lc/a/a/o/i/b;",
            "Lc/a/a/j;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v11, Lc/a/a/o/i/a;->m:Lc/a/a/o/i/a$b;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lc/a/a/o/i/a;-><init>(Lc/a/a/o/i/f;IILc/a/a/o/h/c;Lc/a/a/q/b;Lc/a/a/o/g;Lc/a/a/o/k/j/c;Lc/a/a/o/i/a$a;Lc/a/a/o/i/b;Lc/a/a/j;Lc/a/a/o/i/a$b;)V

    return-void
.end method

.method constructor <init>(Lc/a/a/o/i/f;IILc/a/a/o/h/c;Lc/a/a/q/b;Lc/a/a/o/g;Lc/a/a/o/k/j/c;Lc/a/a/o/i/a$a;Lc/a/a/o/i/b;Lc/a/a/j;Lc/a/a/o/i/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/f;",
            "II",
            "Lc/a/a/o/h/c<",
            "TA;>;",
            "Lc/a/a/q/b<",
            "TA;TT;>;",
            "Lc/a/a/o/g<",
            "TT;>;",
            "Lc/a/a/o/k/j/c<",
            "TT;TZ;>;",
            "Lc/a/a/o/i/a$a;",
            "Lc/a/a/o/i/b;",
            "Lc/a/a/j;",
            "Lc/a/a/o/i/a$b;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/a/a/o/i/a;->a:Lc/a/a/o/i/f;

    .line 4
    iput p2, p0, Lc/a/a/o/i/a;->b:I

    .line 5
    iput p3, p0, Lc/a/a/o/i/a;->c:I

    .line 6
    iput-object p4, p0, Lc/a/a/o/i/a;->d:Lc/a/a/o/h/c;

    .line 7
    iput-object p5, p0, Lc/a/a/o/i/a;->e:Lc/a/a/q/b;

    .line 8
    iput-object p6, p0, Lc/a/a/o/i/a;->f:Lc/a/a/o/g;

    .line 9
    iput-object p7, p0, Lc/a/a/o/i/a;->g:Lc/a/a/o/k/j/c;

    .line 10
    iput-object p8, p0, Lc/a/a/o/i/a;->h:Lc/a/a/o/i/a$a;

    .line 11
    iput-object p9, p0, Lc/a/a/o/i/a;->i:Lc/a/a/o/i/b;

    .line 12
    iput-object p10, p0, Lc/a/a/o/i/a;->j:Lc/a/a/j;

    .line 13
    iput-object p11, p0, Lc/a/a/o/i/a;->k:Lc/a/a/o/i/a$b;

    return-void
.end method

.method static synthetic a(Lc/a/a/o/i/a;)Lc/a/a/o/i/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a/a/o/i/a;->k:Lc/a/a/o/i/a$b;

    return-object p0
.end method

.method private a(Lc/a/a/o/c;)Lc/a/a/o/i/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/c;",
            ")",
            "Lc/a/a/o/i/k<",
            "TT;>;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lc/a/a/o/i/a;->h:Lc/a/a/o/i/a$a;

    invoke-interface {v0}, Lc/a/a/o/i/a$a;->a()Lc/a/a/o/i/n/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/a/a/o/i/n/a;->b(Lc/a/a/o/c;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 14
    :cond_0
    :try_start_0
    iget-object v1, p0, Lc/a/a/o/i/a;->e:Lc/a/a/q/b;

    invoke-interface {v1}, Lc/a/a/q/b;->a()Lc/a/a/o/e;

    move-result-object v1

    iget v2, p0, Lc/a/a/o/i/a;->b:I

    iget v3, p0, Lc/a/a/o/i/a;->c:I

    invoke-interface {v1, v0, v2, v3}, Lc/a/a/o/e;->a(Ljava/lang/Object;II)Lc/a/a/o/i/k;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 15
    iget-object v1, p0, Lc/a/a/o/i/a;->h:Lc/a/a/o/i/a$a;

    invoke-interface {v1}, Lc/a/a/o/i/a$a;->a()Lc/a/a/o/i/n/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lc/a/a/o/i/n/a;->a(Lc/a/a/o/c;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/a/a/o/i/a;->h:Lc/a/a/o/i/a$a;

    invoke-interface {v1}, Lc/a/a/o/i/a$a;->a()Lc/a/a/o/i/n/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lc/a/a/o/i/n/a;->a(Lc/a/a/o/c;)V

    throw v0
.end method

.method private a(Lc/a/a/o/i/k;)Lc/a/a/o/i/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/k<",
            "TT;>;)",
            "Lc/a/a/o/i/k<",
            "TZ;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 16
    :cond_0
    iget-object v0, p0, Lc/a/a/o/i/a;->g:Lc/a/a/o/k/j/c;

    invoke-interface {v0, p1}, Lc/a/a/o/k/j/c;->a(Lc/a/a/o/i/k;)Lc/a/a/o/i/k;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/Object;)Lc/a/a/o/i/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lc/a/a/o/i/k<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {}, Lc/a/a/t/d;->a()J

    move-result-wide v0

    .line 5
    new-instance v2, Lc/a/a/o/i/a$c;

    iget-object v3, p0, Lc/a/a/o/i/a;->e:Lc/a/a/q/b;

    invoke-interface {v3}, Lc/a/a/q/b;->b()Lc/a/a/o/b;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lc/a/a/o/i/a$c;-><init>(Lc/a/a/o/i/a;Lc/a/a/o/b;Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lc/a/a/o/i/a;->h:Lc/a/a/o/i/a$a;

    invoke-interface {p1}, Lc/a/a/o/i/a$a;->a()Lc/a/a/o/i/n/a;

    move-result-object p1

    iget-object v3, p0, Lc/a/a/o/i/a;->a:Lc/a/a/o/i/f;

    invoke-virtual {v3}, Lc/a/a/o/i/f;->a()Lc/a/a/o/c;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Lc/a/a/o/i/n/a;->a(Lc/a/a/o/c;Lc/a/a/o/i/n/a$b;)V

    const/4 p1, 0x2

    const-string v2, "DecodeJob"

    .line 7
    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Wrote source to cache"

    .line 8
    invoke-direct {p0, v3, v0, v1}, Lc/a/a/o/i/a;->a(Ljava/lang/String;J)V

    .line 9
    :cond_0
    invoke-static {}, Lc/a/a/t/d;->a()J

    move-result-wide v0

    .line 10
    iget-object v3, p0, Lc/a/a/o/i/a;->a:Lc/a/a/o/i/f;

    invoke-virtual {v3}, Lc/a/a/o/i/f;->a()Lc/a/a/o/c;

    move-result-object v3

    invoke-direct {p0, v3}, Lc/a/a/o/i/a;->a(Lc/a/a/o/c;)Lc/a/a/o/i/k;

    move-result-object v3

    .line 11
    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v3, :cond_1

    const-string p1, "Decoded source from cache"

    .line 12
    invoke-direct {p0, p1, v0, v1}, Lc/a/a/o/i/a;->a(Ljava/lang/String;J)V

    :cond_1
    return-object v3
.end method

.method private a(Ljava/lang/String;J)V
    .locals 1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lc/a/a/t/d;->a(J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lc/a/a/o/i/a;->a:Lc/a/a/o/i/f;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DecodeJob"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Lc/a/a/o/i/k;)Lc/a/a/o/i/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/k<",
            "TT;>;)",
            "Lc/a/a/o/i/k<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lc/a/a/o/i/a;->f:Lc/a/a/o/g;

    iget v1, p0, Lc/a/a/o/i/a;->b:I

    iget v2, p0, Lc/a/a/o/i/a;->c:I

    invoke-interface {v0, p1, v1, v2}, Lc/a/a/o/g;->a(Lc/a/a/o/i/k;II)Lc/a/a/o/i/k;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    invoke-interface {p1}, Lc/a/a/o/i/k;->a()V

    :cond_1
    return-object v0
.end method

.method private b(Ljava/lang/Object;)Lc/a/a/o/i/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lc/a/a/o/i/k<",
            "TT;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lc/a/a/o/i/a;->i:Lc/a/a/o/i/b;

    invoke-virtual {v0}, Lc/a/a/o/i/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lc/a/a/o/i/a;->a(Ljava/lang/Object;)Lc/a/a/o/i/k;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lc/a/a/t/d;->a()J

    move-result-wide v0

    .line 6
    iget-object v2, p0, Lc/a/a/o/i/a;->e:Lc/a/a/q/b;

    invoke-interface {v2}, Lc/a/a/q/b;->f()Lc/a/a/o/e;

    move-result-object v2

    iget v3, p0, Lc/a/a/o/i/a;->b:I

    iget v4, p0, Lc/a/a/o/i/a;->c:I

    invoke-interface {v2, p1, v3, v4}, Lc/a/a/o/e;->a(Ljava/lang/Object;II)Lc/a/a/o/i/k;

    move-result-object p1

    const/4 v2, 0x2

    const-string v3, "DecodeJob"

    .line 7
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Decoded from source"

    .line 8
    invoke-direct {p0, v2, v0, v1}, Lc/a/a/o/i/a;->a(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private c(Lc/a/a/o/i/k;)Lc/a/a/o/i/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/k<",
            "TT;>;)",
            "Lc/a/a/o/i/k<",
            "TZ;>;"
        }
    .end annotation

    .line 10
    invoke-static {}, Lc/a/a/t/d;->a()J

    move-result-wide v0

    .line 11
    invoke-direct {p0, p1}, Lc/a/a/o/i/a;->b(Lc/a/a/o/i/k;)Lc/a/a/o/i/k;

    move-result-object p1

    const/4 v2, 0x2

    const-string v3, "DecodeJob"

    .line 12
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Transformed resource from source"

    .line 13
    invoke-direct {p0, v4, v0, v1}, Lc/a/a/o/i/a;->a(Ljava/lang/String;J)V

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lc/a/a/o/i/a;->d(Lc/a/a/o/i/k;)V

    .line 15
    invoke-static {}, Lc/a/a/t/d;->a()J

    move-result-wide v0

    .line 16
    invoke-direct {p0, p1}, Lc/a/a/o/i/a;->a(Lc/a/a/o/i/k;)Lc/a/a/o/i/k;

    move-result-object p1

    .line 17
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Transcoded transformed from source"

    .line 18
    invoke-direct {p0, v2, v0, v1}, Lc/a/a/o/i/a;->a(Ljava/lang/String;J)V

    :cond_1
    return-object p1
.end method

.method private d(Lc/a/a/o/i/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/k<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lc/a/a/o/i/a;->i:Lc/a/a/o/i/b;

    invoke-virtual {v0}, Lc/a/a/o/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lc/a/a/t/d;->a()J

    move-result-wide v0

    .line 9
    new-instance v2, Lc/a/a/o/i/a$c;

    iget-object v3, p0, Lc/a/a/o/i/a;->e:Lc/a/a/q/b;

    invoke-interface {v3}, Lc/a/a/q/b;->e()Lc/a/a/o/f;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lc/a/a/o/i/a$c;-><init>(Lc/a/a/o/i/a;Lc/a/a/o/b;Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lc/a/a/o/i/a;->h:Lc/a/a/o/i/a$a;

    invoke-interface {p1}, Lc/a/a/o/i/a$a;->a()Lc/a/a/o/i/n/a;

    move-result-object p1

    iget-object v3, p0, Lc/a/a/o/i/a;->a:Lc/a/a/o/i/f;

    invoke-interface {p1, v3, v2}, Lc/a/a/o/i/n/a;->a(Lc/a/a/o/c;Lc/a/a/o/i/n/a$b;)V

    const/4 p1, 0x2

    const-string v2, "DecodeJob"

    .line 11
    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Wrote transformed from source to cache"

    .line 12
    invoke-direct {p0, p1, v0, v1}, Lc/a/a/o/i/a;->a(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private e()Lc/a/a/o/i/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/i/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lc/a/a/t/d;->a()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lc/a/a/o/i/a;->d:Lc/a/a/o/h/c;

    iget-object v3, p0, Lc/a/a/o/i/a;->j:Lc/a/a/j;

    invoke-interface {v2, v3}, Lc/a/a/o/h/c;->a(Lc/a/a/j;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "DecodeJob"

    const/4 v4, 0x2

    .line 3
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Fetched data"

    .line 4
    invoke-direct {p0, v3, v0, v1}, Lc/a/a/o/i/a;->a(Ljava/lang/String;J)V

    .line 5
    :cond_0
    iget-boolean v0, p0, Lc/a/a/o/i/a;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lc/a/a/o/i/a;->d:Lc/a/a/o/h/c;

    invoke-interface {v1}, Lc/a/a/o/h/c;->a()V

    return-object v0

    .line 7
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Lc/a/a/o/i/a;->b(Ljava/lang/Object;)Lc/a/a/o/i/k;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    iget-object v1, p0, Lc/a/a/o/i/a;->d:Lc/a/a/o/h/c;

    invoke-interface {v1}, Lc/a/a/o/h/c;->a()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/a/a/o/i/a;->d:Lc/a/a/o/h/c;

    invoke-interface {v1}, Lc/a/a/o/h/c;->a()V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/a/a/o/i/a;->l:Z

    .line 3
    iget-object v0, p0, Lc/a/a/o/i/a;->d:Lc/a/a/o/h/c;

    invoke-interface {v0}, Lc/a/a/o/h/c;->cancel()V

    return-void
.end method

.method public b()Lc/a/a/o/i/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/i/k<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc/a/a/o/i/a;->e()Lc/a/a/o/i/k;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lc/a/a/o/i/a;->c(Lc/a/a/o/i/k;)Lc/a/a/o/i/k;

    move-result-object v0

    return-object v0
.end method

.method public c()Lc/a/a/o/i/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/i/k<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/i/a;->i:Lc/a/a/o/i/b;

    invoke-virtual {v0}, Lc/a/a/o/i/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lc/a/a/t/d;->a()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lc/a/a/o/i/a;->a:Lc/a/a/o/i/f;

    invoke-direct {p0, v2}, Lc/a/a/o/i/a;->a(Lc/a/a/o/c;)Lc/a/a/o/i/k;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "DecodeJob"

    .line 4
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Decoded transformed from cache"

    .line 5
    invoke-direct {p0, v5, v0, v1}, Lc/a/a/o/i/a;->a(Ljava/lang/String;J)V

    .line 6
    :cond_1
    invoke-static {}, Lc/a/a/t/d;->a()J

    move-result-wide v0

    .line 7
    invoke-direct {p0, v2}, Lc/a/a/o/i/a;->a(Lc/a/a/o/i/k;)Lc/a/a/o/i/k;

    move-result-object v2

    .line 8
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Transcoded transformed from cache"

    .line 9
    invoke-direct {p0, v3, v0, v1}, Lc/a/a/o/i/a;->a(Ljava/lang/String;J)V

    :cond_2
    return-object v2
.end method

.method public d()Lc/a/a/o/i/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/i/k<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/i/a;->i:Lc/a/a/o/i/b;

    invoke-virtual {v0}, Lc/a/a/o/i/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lc/a/a/t/d;->a()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lc/a/a/o/i/a;->a:Lc/a/a/o/i/f;

    invoke-virtual {v2}, Lc/a/a/o/i/f;->a()Lc/a/a/o/c;

    move-result-object v2

    invoke-direct {p0, v2}, Lc/a/a/o/i/a;->a(Lc/a/a/o/c;)Lc/a/a/o/i/k;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "DecodeJob"

    .line 4
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Decoded source from cache"

    .line 5
    invoke-direct {p0, v3, v0, v1}, Lc/a/a/o/i/a;->a(Ljava/lang/String;J)V

    .line 6
    :cond_1
    invoke-direct {p0, v2}, Lc/a/a/o/i/a;->c(Lc/a/a/o/i/k;)Lc/a/a/o/i/k;

    move-result-object v0

    return-object v0
.end method
