.class public Lc/a/a/o/k/i/b;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResource.java"

# interfaces
.implements Lc/a/a/o/i/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/i/k<",
        "Lc/a/a/o/k/i/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/k/i/a;


# direct methods
.method public constructor <init>(Lc/a/a/o/k/i/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lc/a/a/o/k/i/b;->a:Lc/a/a/o/k/i/a;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Data must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/i/b;->a:Lc/a/a/o/k/i/a;

    invoke-virtual {v0}, Lc/a/a/o/k/i/a;->a()Lc/a/a/o/i/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lc/a/a/o/i/k;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lc/a/a/o/k/i/b;->a:Lc/a/a/o/k/i/a;

    invoke-virtual {v0}, Lc/a/a/o/k/i/a;->b()Lc/a/a/o/i/k;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lc/a/a/o/i/k;->a()V

    :cond_1
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/i/b;->a:Lc/a/a/o/k/i/a;

    invoke-virtual {v0}, Lc/a/a/o/k/i/a;->c()I

    move-result v0

    return v0
.end method

.method public get()Lc/a/a/o/k/i/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/a/a/o/k/i/b;->a:Lc/a/a/o/k/i/a;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/a/a/o/k/i/b;->get()Lc/a/a/o/k/i/a;

    move-result-object v0

    return-object v0
.end method
