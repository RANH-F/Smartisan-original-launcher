.class public Lc/a/a/o/j/s/e$a;
.super Ljava/lang/Object;
.source "FileDescriptorUriLoader.java"

# interfaces
.implements Lc/a/a/o/j/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/j/s/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/j/m<",
        "Landroid/net/Uri;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lc/a/a/o/j/c;)Lc/a/a/o/j/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/a/a/o/j/c;",
            ")",
            "Lc/a/a/o/j/l<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/a/a/o/j/s/e;

    const-class v1, Lc/a/a/o/j/d;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v1, v2}, Lc/a/a/o/j/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lc/a/a/o/j/l;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lc/a/a/o/j/s/e;-><init>(Landroid/content/Context;Lc/a/a/o/j/l;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method
