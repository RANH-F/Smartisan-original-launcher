.class La/a/a/b/b$b;
.super La/a/a/b/b$f;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "La/a/a/b/b$f<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(La/a/a/b/b$d;La/a/a/b/b$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/b/b$d<",
            "TK;TV;>;",
            "La/a/a/b/b$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, La/a/a/b/b$f;-><init>(La/a/a/b/b$d;La/a/a/b/b$d;)V

    return-void
.end method


# virtual methods
.method b(La/a/a/b/b$d;)La/a/a/b/b$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/b/b$d<",
            "TK;TV;>;)",
            "La/a/a/b/b$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, La/a/a/b/b$d;->d:La/a/a/b/b$d;

    return-object p1
.end method

.method c(La/a/a/b/b$d;)La/a/a/b/b$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/b/b$d<",
            "TK;TV;>;)",
            "La/a/a/b/b$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, La/a/a/b/b$d;->c:La/a/a/b/b$d;

    return-object p1
.end method
