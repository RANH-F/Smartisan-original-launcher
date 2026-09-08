.class public Lc/a/a/o/k/e/s;
.super Ljava/lang/Object;
.source "VideoBitmapDecoder.java"

# interfaces
.implements Lc/a/a/o/k/e/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/k/e/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/k/e/a<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lc/a/a/o/k/e/s$a;


# instance fields
.field private a:Lc/a/a/o/k/e/s$a;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/a/a/o/k/e/s$a;

    invoke-direct {v0}, Lc/a/a/o/k/e/s$a;-><init>()V

    sput-object v0, Lc/a/a/o/k/e/s;->c:Lc/a/a/o/k/e/s$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lc/a/a/o/k/e/s;->c:Lc/a/a/o/k/e/s$a;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lc/a/a/o/k/e/s;-><init>(Lc/a/a/o/k/e/s$a;I)V

    return-void
.end method

.method constructor <init>(Lc/a/a/o/k/e/s$a;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/a/a/o/k/e/s;->a:Lc/a/a/o/k/e/s$a;

    .line 4
    iput p2, p0, Lc/a/a/o/k/e/s;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;Lc/a/a/o/i/m/c;IILc/a/a/o/a;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p2, p0, Lc/a/a/o/k/e/s;->a:Lc/a/a/o/k/e/s$a;

    invoke-virtual {p2}, Lc/a/a/o/k/e/s$a;->a()Landroid/media/MediaMetadataRetriever;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 3
    iget p3, p0, Lc/a/a/o/k/e/s;->b:I

    if-ltz p3, :cond_0

    int-to-long p3, p3

    .line 4
    invoke-virtual {p2, p3, p4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object p3

    .line 6
    :goto_0
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    return-object p3
.end method
