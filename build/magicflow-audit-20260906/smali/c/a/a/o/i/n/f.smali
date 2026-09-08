.class public final Lc/a/a/o/i/n/f;
.super Lc/a/a/o/i/n/d;
.source "InternalCacheDiskCacheFactory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "image_manager_disk_cache"

    const/high16 v1, 0xfa00000

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lc/a/a/o/i/n/f;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 2
    new-instance v0, Lc/a/a/o/i/n/f$a;

    invoke-direct {v0, p1, p2}, Lc/a/a/o/i/n/f$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lc/a/a/o/i/n/d;-><init>(Lc/a/a/o/i/n/d$a;I)V

    return-void
.end method
