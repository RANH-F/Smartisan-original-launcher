.class public Lc/a/a/e;
.super Lc/a/a/d;
.source "DrawableTypeRequest.java"

# interfaces
.implements Lc/a/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lc/a/a/d<",
        "TModelType;>;",
        "Lc/a/a/b;"
    }
.end annotation


# instance fields
.field private final D:Lc/a/a/o/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/j/l<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final E:Lc/a/a/k$d;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lc/a/a/o/j/l;Lc/a/a/o/j/l;Landroid/content/Context;Lc/a/a/h;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/g;Lc/a/a/k$d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lc/a/a/o/j/l<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lc/a/a/o/j/l<",
            "TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Landroid/content/Context;",
            "Lc/a/a/h;",
            "Lcom/bumptech/glide/manager/l;",
            "Lcom/bumptech/glide/manager/g;",
            "Lc/a/a/k$d;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    .line 1
    const-class v3, Lc/a/a/o/k/i/a;

    const-class v4, Lc/a/a/o/k/f/b;

    const/4 v5, 0x0

    move-object v0, p5

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lc/a/a/e;->a(Lc/a/a/h;Lc/a/a/o/j/l;Lc/a/a/o/j/l;Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/k/j/c;)Lc/a/a/q/e;

    move-result-object v3

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lc/a/a/d;-><init>(Landroid/content/Context;Ljava/lang/Class;Lc/a/a/q/f;Lc/a/a/h;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/g;)V

    move-object v0, p2

    .line 2
    iput-object v0, v7, Lc/a/a/e;->D:Lc/a/a/o/j/l;

    move-object/from16 v0, p8

    .line 3
    iput-object v0, v7, Lc/a/a/e;->E:Lc/a/a/k$d;

    return-void
.end method

.method private static a(Lc/a/a/h;Lc/a/a/o/j/l;Lc/a/a/o/j/l;Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/o/k/j/c;)Lc/a/a/q/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a/a/h;",
            "Lc/a/a/o/j/l<",
            "TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lc/a/a/o/j/l<",
            "TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lc/a/a/o/k/j/c<",
            "TZ;TR;>;)",
            "Lc/a/a/q/e<",
            "TA;",
            "Lc/a/a/o/j/g;",
            "TZ;TR;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p5, :cond_1

    .line 1
    invoke-virtual {p0, p3, p4}, Lc/a/a/h;->b(Ljava/lang/Class;Ljava/lang/Class;)Lc/a/a/o/k/j/c;

    move-result-object p5

    .line 2
    :cond_1
    const-class p4, Lc/a/a/o/j/g;

    invoke-virtual {p0, p4, p3}, Lc/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;)Lc/a/a/q/b;

    move-result-object p0

    .line 3
    new-instance p3, Lc/a/a/o/j/f;

    invoke-direct {p3, p1, p2}, Lc/a/a/o/j/f;-><init>(Lc/a/a/o/j/l;Lc/a/a/o/j/l;)V

    .line 4
    new-instance p1, Lc/a/a/q/e;

    invoke-direct {p1, p3, p5, p0}, Lc/a/a/q/e;-><init>(Lc/a/a/o/j/l;Lc/a/a/o/k/j/c;Lc/a/a/q/b;)V

    return-object p1
.end method

.method private g()Lc/a/a/g;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/g<",
            "TModelType;",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v7, p0, Lc/a/a/e;->E:Lc/a/a/k$d;

    new-instance v8, Lc/a/a/g;

    const-class v1, Ljava/io/File;

    iget-object v3, p0, Lc/a/a/e;->D:Lc/a/a/o/j/l;

    const-class v4, Ljava/io/InputStream;

    const-class v5, Ljava/io/File;

    move-object v0, v8

    move-object v2, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lc/a/a/g;-><init>(Ljava/lang/Class;Lc/a/a/f;Lc/a/a/o/j/l;Ljava/lang/Class;Ljava/lang/Class;Lc/a/a/k$d;)V

    invoke-virtual {v7, v8}, Lc/a/a/k$d;->a(Lc/a/a/f;)Lc/a/a/f;

    check-cast v8, Lc/a/a/g;

    return-object v8
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
    invoke-direct {p0}, Lc/a/a/e;->g()Lc/a/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/g;->b(Lc/a/a/r/h/j;)Lc/a/a/r/h/j;

    return-object p1
.end method
