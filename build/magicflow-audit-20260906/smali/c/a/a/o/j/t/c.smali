.class public Lc/a/a/o/j/t/c;
.super Lc/a/a/o/j/b;
.source "StreamFileLoader.java"

# interfaces
.implements Lc/a/a/o/j/t/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/j/t/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/o/j/b<",
        "Ljava/io/InputStream;",
        ">;",
        "Lc/a/a/o/j/t/d<",
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
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lc/a/a/o/j/b;-><init>(Lc/a/a/o/j/l;)V

    return-void
.end method
