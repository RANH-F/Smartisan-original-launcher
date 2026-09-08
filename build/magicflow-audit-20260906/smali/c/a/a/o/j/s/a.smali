.class public Lc/a/a/o/j/s/a;
.super Lc/a/a/o/j/b;
.source "FileDescriptorFileLoader.java"

# interfaces
.implements Lc/a/a/o/j/s/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/j/s/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/o/j/b<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lc/a/a/o/j/s/b<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/a/a/o/j/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/j/l<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lc/a/a/o/j/b;-><init>(Lc/a/a/o/j/l;)V

    return-void
.end method
