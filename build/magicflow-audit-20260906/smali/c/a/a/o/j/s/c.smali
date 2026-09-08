.class public Lc/a/a/o/j/s/c;
.super Lc/a/a/o/j/n;
.source "FileDescriptorResourceLoader.java"

# interfaces
.implements Lc/a/a/o/j/s/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/j/s/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/o/j/n<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lc/a/a/o/j/s/b<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/a/a/o/j/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/a/a/o/j/l<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lc/a/a/o/j/n;-><init>(Landroid/content/Context;Lc/a/a/o/j/l;)V

    return-void
.end method
