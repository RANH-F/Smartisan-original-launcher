.class public Ld/y$a;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ld/s;

.field b:Ljava/lang/String;

.field c:Ld/r$a;

.field d:Ld/z;

.field e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 2
    iput-object v0, p0, Ld/y$a;->b:Ljava/lang/String;

    .line 3
    new-instance v0, Ld/r$a;

    invoke-direct {v0}, Ld/r$a;-><init>()V

    iput-object v0, p0, Ld/y$a;->c:Ld/r$a;

    return-void
.end method

.method constructor <init>(Ld/y;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object v0, p1, Ld/y;->a:Ld/s;

    iput-object v0, p0, Ld/y$a;->a:Ld/s;

    .line 6
    iget-object v0, p1, Ld/y;->b:Ljava/lang/String;

    iput-object v0, p0, Ld/y$a;->b:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Ld/y;->d:Ld/z;

    iput-object v0, p0, Ld/y$a;->d:Ld/z;

    .line 8
    iget-object v0, p1, Ld/y;->e:Ljava/lang/Object;

    iput-object v0, p0, Ld/y$a;->e:Ljava/lang/Object;

    .line 9
    iget-object p1, p1, Ld/y;->c:Ld/r;

    invoke-virtual {p1}, Ld/r;->a()Ld/r$a;

    move-result-object p1

    iput-object p1, p0, Ld/y$a;->c:Ld/r$a;

    return-void
.end method


# virtual methods
.method public a(Ld/r;)Ld/y$a;
    .locals 0

    .line 5
    invoke-virtual {p1}, Ld/r;->a()Ld/r$a;

    move-result-object p1

    iput-object p1, p0, Ld/y$a;->c:Ld/r$a;

    return-object p0
.end method

.method public a(Ld/s;)Ld/y$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Ld/y$a;->a:Ld/s;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ld/z;)Ld/y$a;
    .locals 1

    const-string v0, "DELETE"

    .line 6
    invoke-virtual {p0, v0, p1}, Ld/y$a;->a(Ljava/lang/String;Ld/z;)Ld/y$a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Ld/y$a;
    .locals 1

    .line 4
    iget-object v0, p0, Ld/y$a;->c:Ld/r$a;

    invoke-virtual {v0, p1}, Ld/r$a;->b(Ljava/lang/String;)Ld/r$a;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ld/z;)Ld/y$a;
    .locals 2

    if-eqz p1, :cond_5

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "method "

    if-eqz p2, :cond_1

    .line 8
    invoke-static {p1}, Ld/f0/g/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    .line 10
    invoke-static {p1}, Ld/f0/g/f;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :cond_3
    :goto_1
    iput-object p1, p0, Ld/y$a;->b:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Ld/y$a;->d:Ld/z;

    return-object p0

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ld/y$a;
    .locals 1

    .line 3
    iget-object v0, p0, Ld/y$a;->c:Ld/r$a;

    invoke-virtual {v0, p1, p2}, Ld/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Ld/r$a;

    return-object p0
.end method

.method public a()Ld/y;
    .locals 2

    .line 16
    iget-object v0, p0, Ld/y$a;->a:Ld/s;

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Ld/y;

    invoke-direct {v0, p0}, Ld/y;-><init>(Ld/y$a;)V

    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ld/y$a;
    .locals 1

    .line 10
    sget-object v0, Ld/f0/c;->d:Ld/z;

    invoke-virtual {p0, v0}, Ld/y$a;->a(Ld/z;)Ld/y$a;

    return-object p0
.end method

.method public b(Ld/z;)Ld/y$a;
    .locals 1

    const-string v0, "PATCH"

    .line 11
    invoke-virtual {p0, v0, p1}, Ld/y$a;->a(Ljava/lang/String;Ld/z;)Ld/y$a;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Ld/y$a;
    .locals 6

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v3, "ws:"

    move-object v0, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v3, "wss:"

    move-object v0, p1

    .line 3
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_1
    :goto_0
    invoke-static {p1}, Ld/s;->d(Ljava/lang/String;)Ld/s;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Ld/y$a;->a(Ld/s;)Ld/y$a;

    return-object p0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ld/y$a;
    .locals 1

    .line 9
    iget-object v0, p0, Ld/y$a;->c:Ld/r$a;

    invoke-virtual {v0, p1, p2}, Ld/r$a;->c(Ljava/lang/String;Ljava/lang/String;)Ld/r$a;

    return-object p0
.end method

.method public c()Ld/y$a;
    .locals 2

    const-string v0, "GET"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Ld/y$a;->a(Ljava/lang/String;Ld/z;)Ld/y$a;

    return-object p0
.end method

.method public c(Ld/z;)Ld/y$a;
    .locals 1

    const-string v0, "POST"

    .line 2
    invoke-virtual {p0, v0, p1}, Ld/y$a;->a(Ljava/lang/String;Ld/z;)Ld/y$a;

    return-object p0
.end method

.method public d()Ld/y$a;
    .locals 2

    const-string v0, "HEAD"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Ld/y$a;->a(Ljava/lang/String;Ld/z;)Ld/y$a;

    return-object p0
.end method

.method public d(Ld/z;)Ld/y$a;
    .locals 1

    const-string v0, "PUT"

    .line 2
    invoke-virtual {p0, v0, p1}, Ld/y$a;->a(Ljava/lang/String;Ld/z;)Ld/y$a;

    return-object p0
.end method
