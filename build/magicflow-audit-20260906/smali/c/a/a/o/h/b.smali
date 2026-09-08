.class public Lc/a/a/o/h/b;
.super Ljava/lang/Object;
.source "ByteArrayFetcher.java"

# interfaces
.implements Lc/a/a/o/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/h/c<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/o/h/b;->a:[B

    .line 3
    iput-object p2, p0, Lc/a/a/o/h/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lc/a/a/j;)Ljava/io/InputStream;
    .locals 1

    .line 2
    new-instance p1, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lc/a/a/o/h/b;->a:[B

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method

.method public bridge synthetic a(Lc/a/a/j;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/a/a/o/h/b;->a(Lc/a/a/j;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/h/b;->b:Ljava/lang/String;

    return-object v0
.end method
