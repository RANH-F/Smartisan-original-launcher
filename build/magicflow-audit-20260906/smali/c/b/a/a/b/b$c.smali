.class Lc/b/a/a/b/b$c;
.super Ljava/lang/Object;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/a/b/b$b;",
            ">;"
        }
    .end annotation
.end field

.field d:Lc/b/a/a/b/c;

.field final synthetic e:Lc/b/a/a/b/b;


# direct methods
.method constructor <init>(Lc/b/a/a/b/b;Ljava/lang/String;Ljava/lang/String;Lc/b/a/a/b/b$b;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/a/b/b$c;->e:Lc/b/a/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lc/b/a/a/b/b$c;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lc/b/a/a/b/b$c;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p4}, Lc/b/a/a/b/b$c;->a(Lc/b/a/a/b/b$b;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 4
    new-instance v0, Lc/b/a/a/b/c;

    iget-object v1, p0, Lc/b/a/a/b/b$c;->b:Ljava/lang/String;

    iget-object v2, p0, Lc/b/a/a/b/b$c;->a:Ljava/lang/String;

    new-instance v3, Lc/b/a/a/b/b$c$a;

    invoke-direct {v3, p0}, Lc/b/a/a/b/b$c$a;-><init>(Lc/b/a/a/b/b$c;)V

    invoke-direct {v0, v1, v2, v3}, Lc/b/a/a/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lc/b/a/a/d/p$a;)V

    iput-object v0, p0, Lc/b/a/a/b/b$c;->d:Lc/b/a/a/b/c;

    .line 5
    iget-object v0, p0, Lc/b/a/a/b/b$c;->d:Lc/b/a/a/b/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileLoader#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/b/a/a/b/b$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/b/a/a/d/c;->setTag(Ljava/lang/Object;)Lc/b/a/a/d/c;

    .line 6
    iget-object v0, p0, Lc/b/a/a/b/b$c;->e:Lc/b/a/a/b/b;

    invoke-static {v0}, Lc/b/a/a/b/b;->b(Lc/b/a/a/b/b;)Lc/b/a/a/d/o;

    move-result-object v0

    iget-object v1, p0, Lc/b/a/a/b/b$c;->d:Lc/b/a/a/b/c;

    invoke-virtual {v0, v1}, Lc/b/a/a/d/o;->a(Lc/b/a/a/d/c;)Lc/b/a/a/d/c;

    return-void
.end method

.method a(Lc/b/a/a/b/b$b;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lc/b/a/a/b/b$c;->c:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/a/b/b$c;->c:Ljava/util/List;

    .line 3
    :cond_1
    iget-object v0, p0, Lc/b/a/a/b/b$c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lc/b/a/a/b/b$c;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lc/b/a/a/b/b$c;

    iget-object p1, p1, Lc/b/a/a/b/b$c;->a:Ljava/lang/String;

    iget-object v0, p0, Lc/b/a/a/b/b$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
