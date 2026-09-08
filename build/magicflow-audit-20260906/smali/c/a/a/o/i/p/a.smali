.class public final Lc/a/a/o/i/p/a;
.super Ljava/lang/Object;
.source "BitmapPreFiller.java"


# direct methods
.method public constructor <init>(Lc/a/a/o/i/n/h;Lc/a/a/o/i/m/c;Lc/a/a/o/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method
