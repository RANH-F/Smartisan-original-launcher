.class public Lc/a/a/g;
.super Lc/a/a/f;
.source "GenericTranscodeRequest.java"

# interfaces
.implements Lc/a/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        ">",
        "Lc/a/a/f<",
        "TModelType;TDataType;TResourceType;TResourceType;>;",
        "Lc/a/a/b;"
    }
.end annotation


# instance fields
.field private final D:Lc/a/a/o/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/j/l<",
            "TModelType;TDataType;>;"
        }
    .end annotation
.end field

.field private final E:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final F:Lc/a/a/k$d;


# direct methods
.method constructor <init>(Landroid/content/Context;Lc/a/a/h;Ljava/lang/Class;Lc/a/a/o/j/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/g;Lc/a/a/k$d;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/a/a/h;",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lc/a/a/o/j/l<",
            "TModelType;TDataType;>;",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Lcom/bumptech/glide/manager/l;",
            "Lcom/bumptech/glide/manager/g;",
            "Lc/a/a/k$d;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object v9, p4

    move-object/from16 v10, p5

    .line 5
    invoke-static {}, Lc/a/a/o/k/j/e;->a()Lc/a/a/o/k/j/c;

    move-result-object v0

    move-object v5, p2

    move-object/from16 v4, p6

    invoke-static {p2, p4, v10, v4, v0}, Lc/a/a/g;->a(Lc/a/a/h;Lc/a/a/o/j/l;Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/k/j/c;)Lc/a/a/q/f;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lc/a/a/f;-><init>(Landroid/content/Context;Ljava/lang/Class;Lc/a/a/q/f;Ljava/lang/Class;Lc/a/a/h;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/g;)V

    .line 6
    iput-object v9, v8, Lc/a/a/g;->D:Lc/a/a/o/j/l;

    .line 7
    iput-object v10, v8, Lc/a/a/g;->E:Ljava/lang/Class;

    move-object/from16 v0, p9

    .line 8
    iput-object v0, v8, Lc/a/a/g;->F:Lc/a/a/k$d;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lc/a/a/f;Lc/a/a/o/j/l;Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/k$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Lc/a/a/f<",
            "TModelType;***>;",
            "Lc/a/a/o/j/l<",
            "TModelType;TDataType;>;",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Lc/a/a/k$d;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lc/a/a/f;->c:Lc/a/a/h;

    invoke-static {}, Lc/a/a/o/k/j/e;->a()Lc/a/a/o/k/j/c;

    move-result-object v1

    invoke-static {v0, p3, p4, p5, v1}, Lc/a/a/g;->a(Lc/a/a/h;Lc/a/a/o/j/l;Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/k/j/c;)Lc/a/a/q/f;

    move-result-object p5

    invoke-direct {p0, p5, p1, p2}, Lc/a/a/f;-><init>(Lc/a/a/q/f;Ljava/lang/Class;Lc/a/a/f;)V

    .line 2
    iput-object p3, p0, Lc/a/a/g;->D:Lc/a/a/o/j/l;

    .line 3
    iput-object p4, p0, Lc/a/a/g;->E:Ljava/lang/Class;

    .line 4
    iput-object p6, p0, Lc/a/a/g;->F:Lc/a/a/k$d;

    return-void
.end method

.method private static a(Lc/a/a/h;Lc/a/a/o/j/l;Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/k/j/c;)Lc/a/a/q/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a/a/h;",
            "Lc/a/a/o/j/l<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Lc/a/a/o/k/j/c<",
            "TZ;TR;>;)",
            "Lc/a/a/q/f<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Lc/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;)Lc/a/a/q/b;

    move-result-object p0

    .line 2
    new-instance p2, Lc/a/a/q/e;

    invoke-direct {p2, p1, p4, p0}, Lc/a/a/q/e;-><init>(Lc/a/a/o/j/l;Lc/a/a/o/k/j/c;Lc/a/a/q/b;)V

    return-object p2
.end method

.method private d()Lc/a/a/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/f<",
            "TModelType;TDataType;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lc/a/a/o/k/j/e;->a()Lc/a/a/o/k/j/c;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/a/a/f;->c:Lc/a/a/h;

    iget-object v2, p0, Lc/a/a/g;->E:Ljava/lang/Class;

    const-class v3, Ljava/io/File;

    invoke-virtual {v1, v2, v3}, Lc/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;)Lc/a/a/q/b;

    move-result-object v1

    .line 3
    new-instance v2, Lc/a/a/q/e;

    iget-object v3, p0, Lc/a/a/g;->D:Lc/a/a/o/j/l;

    invoke-direct {v2, v3, v0, v1}, Lc/a/a/q/e;-><init>(Lc/a/a/o/j/l;Lc/a/a/o/k/j/c;Lc/a/a/q/b;)V

    .line 4
    iget-object v0, p0, Lc/a/a/g;->F:Lc/a/a/k$d;

    new-instance v1, Lc/a/a/f;

    const-class v3, Ljava/io/File;

    invoke-direct {v1, v2, v3, p0}, Lc/a/a/f;-><init>(Lc/a/a/q/f;Ljava/lang/Class;Lc/a/a/f;)V

    invoke-virtual {v0, v1}, Lc/a/a/k$d;->a(Lc/a/a/f;)Lc/a/a/f;

    sget-object v0, Lc/a/a/j;->d:Lc/a/a/j;

    invoke-virtual {v1, v0}, Lc/a/a/f;->a(Lc/a/a/j;)Lc/a/a/f;

    move-result-object v0

    sget-object v1, Lc/a/a/o/i/b;->e:Lc/a/a/o/i/b;

    invoke-virtual {v0, v1}, Lc/a/a/f;->a(Lc/a/a/o/i/b;)Lc/a/a/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/a/a/f;->a(Z)Lc/a/a/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b(Lc/a/a/r/h/j;)Lc/a/a/r/h/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lc/a/a/r/h/j<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc/a/a/g;->d()Lc/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/f;->a(Lc/a/a/r/h/j;)Lc/a/a/r/h/j;

    return-object p1
.end method
