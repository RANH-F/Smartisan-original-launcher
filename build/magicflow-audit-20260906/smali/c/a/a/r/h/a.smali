.class public abstract Lc/a/a/r/h/a;
.super Ljava/lang/Object;
.source "BaseTarget.java"

# interfaces
.implements Lc/a/a/r/h/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/a/a/r/h/j<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private request:Lc/a/a/r/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lc/a/a/r/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/r/h/a;->request:Lc/a/a/r/b;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public setRequest(Lc/a/a/r/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/a/a/r/h/a;->request:Lc/a/a/r/b;

    return-void
.end method
