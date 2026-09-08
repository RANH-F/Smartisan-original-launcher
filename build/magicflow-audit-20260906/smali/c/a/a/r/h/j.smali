.class public interface abstract Lc/a/a/r/h/j;
.super Ljava/lang/Object;
.source "Target.java"

# interfaces
.implements Lcom/bumptech/glide/manager/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/manager/h;"
    }
.end annotation


# virtual methods
.method public abstract getRequest()Lc/a/a/r/b;
.end method

.method public abstract getSize(Lc/a/a/r/h/h;)V
.end method

.method public abstract onLoadCleared(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onLoadStarted(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onResourceReady(Ljava/lang/Object;Lc/a/a/r/g/c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lc/a/a/r/g/c<",
            "-TR;>;)V"
        }
    .end annotation
.end method

.method public abstract setRequest(Lc/a/a/r/b;)V
.end method
