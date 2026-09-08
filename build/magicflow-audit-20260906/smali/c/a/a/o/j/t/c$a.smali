.class public Lc/a/a/o/j/t/c$a;
.super Ljava/lang/Object;
.source "StreamFileLoader.java"

# interfaces
.implements Lc/a/a/o/j/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/j/t/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/j/m<",
        "Ljava/io/File;",
        "Ljava/io/InputStream;",
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/a/a/o/j/c;",
            ")",
            "Lc/a/a/o/j/l<",
            "Ljava/io/File;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lc/a/a/o/j/t/c;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    invoke-virtual {p2, v0, v1}, Lc/a/a/o/j/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lc/a/a/o/j/l;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/a/a/o/j/t/c;-><init>(Lc/a/a/o/j/l;)V

    return-object p1
.end method

.method public a()V
    .locals 0

    return-void
.end method
