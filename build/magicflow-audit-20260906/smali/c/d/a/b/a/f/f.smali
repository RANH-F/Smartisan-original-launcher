.class public Lc/d/a/b/a/f/f;
.super Ljava/lang/Object;
.source "RandomAccessOutputStream.java"


# instance fields
.field private a:Ljava/io/BufferedOutputStream;

.field private b:Ljava/io/FileDescriptor;

.field private c:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lc/d/a/b/a/f/f;->c:Ljava/io/RandomAccessFile;

    .line 3
    iget-object p1, p0, Lc/d/a/b/a/f/f;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/b/a/f/f;->b:Ljava/io/FileDescriptor;

    .line 4
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lc/d/a/b/a/f/f;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lc/d/a/b/a/f/f;->a:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x40f

    invoke-direct {v0, v1, p1}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/f/f;->a:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 4
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/f/f;->b:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 6
    iget-object v0, p0, Lc/d/a/b/a/f/f;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public a([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/f;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/f;->c:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/f/f;->a:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void
.end method

.method public b(J)V
    .locals 1

    .line 4
    iget-object v0, p0, Lc/d/a/b/a/f/f;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    return-void
.end method
