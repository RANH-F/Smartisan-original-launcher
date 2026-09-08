.class public Lc/a/a/o/j/h;
.super Ljava/lang/Object;
.source "ImageVideoWrapperEncoder.java"

# interfaces
.implements Lc/a/a/o/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/b<",
        "Lc/a/a/o/j/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/b<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/a/a/o/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/b<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc/a/a/o/b;Lc/a/a/o/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/b<",
            "Ljava/io/InputStream;",
            ">;",
            "Lc/a/a/o/b<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/o/j/h;->a:Lc/a/a/o/b;

    .line 3
    iput-object p2, p0, Lc/a/a/o/j/h;->b:Lc/a/a/o/b;

    return-void
.end method


# virtual methods
.method public a(Lc/a/a/o/j/g;Ljava/io/OutputStream;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Lc/a/a/o/j/g;->b()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/a/a/o/j/h;->a:Lc/a/a/o/b;

    invoke-virtual {p1}, Lc/a/a/o/j/g;->b()Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lc/a/a/o/b;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lc/a/a/o/j/h;->b:Lc/a/a/o/b;

    invoke-virtual {p1}, Lc/a/a/o/j/g;->a()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lc/a/a/o/b;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 0

    .line 1
    check-cast p1, Lc/a/a/o/j/g;

    invoke-virtual {p0, p1, p2}, Lc/a/a/o/j/h;->a(Lc/a/a/o/j/g;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/o/j/h;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/a/a/o/j/h;->a:Lc/a/a/o/b;

    invoke-interface {v1}, Lc/a/a/o/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/a/o/j/h;->b:Lc/a/a/o/b;

    invoke-interface {v1}, Lc/a/a/o/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/o/j/h;->c:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lc/a/a/o/j/h;->c:Ljava/lang/String;

    return-object v0
.end method
