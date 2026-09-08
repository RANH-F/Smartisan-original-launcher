.class public final Luk/co/senab/photoview/e/f;
.super Ljava/lang/Object;
.source "VersionedGestureDetector.java"


# direct methods
.method public static a(Landroid/content/Context;Luk/co/senab/photoview/e/e;)Luk/co/senab/photoview/e/d;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v0, Luk/co/senab/photoview/e/a;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/e/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 3
    new-instance v0, Luk/co/senab/photoview/e/b;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/e/b;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Luk/co/senab/photoview/e/c;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/e/c;-><init>(Landroid/content/Context;)V

    .line 5
    :goto_0
    invoke-interface {v0, p1}, Luk/co/senab/photoview/e/d;->a(Luk/co/senab/photoview/e/e;)V

    return-object v0
.end method
