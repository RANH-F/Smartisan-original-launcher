.class public Le/i;
.super Le/t;
.source "ForwardingTimeout.java"


# instance fields
.field private e:Le/t;


# direct methods
.method public constructor <init>(Le/t;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/t;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Le/i;->e:Le/t;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Le/t;)Le/i;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Le/i;->e:Le/t;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Le/t;
    .locals 1

    .line 5
    iget-object v0, p0, Le/i;->e:Le/t;

    invoke-virtual {v0}, Le/t;->a()Le/t;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Le/t;
    .locals 1

    .line 4
    iget-object v0, p0, Le/i;->e:Le/t;

    invoke-virtual {v0, p1, p2}, Le/t;->a(J)Le/t;

    move-result-object p1

    return-object p1
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Le/t;
    .locals 1

    .line 3
    iget-object v0, p0, Le/i;->e:Le/t;

    invoke-virtual {v0, p1, p2, p3}, Le/t;->a(JLjava/util/concurrent/TimeUnit;)Le/t;

    move-result-object p1

    return-object p1
.end method

.method public b()Le/t;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i;->e:Le/t;

    invoke-virtual {v0}, Le/t;->b()Le/t;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Le/i;->e:Le/t;

    invoke-virtual {v0}, Le/t;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/i;->e:Le/t;

    invoke-virtual {v0}, Le/t;->d()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/i;->e:Le/t;

    invoke-virtual {v0}, Le/t;->e()V

    return-void
.end method

.method public final g()Le/t;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i;->e:Le/t;

    return-object v0
.end method
