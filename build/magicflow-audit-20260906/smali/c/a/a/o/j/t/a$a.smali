.class public Lc/a/a/o/j/t/a$a;
.super Ljava/lang/Object;
.source "HttpUrlGlideUrlLoader.java"

# interfaces
.implements Lc/a/a/o/j/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/j/t/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/j/m<",
        "Lc/a/a/o/j/d;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/j/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/j/k<",
            "Lc/a/a/o/j/d;",
            "Lc/a/a/o/j/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/a/a/o/j/k;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lc/a/a/o/j/k;-><init>(I)V

    iput-object v0, p0, Lc/a/a/o/j/t/a$a;->a:Lc/a/a/o/j/k;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lc/a/a/o/j/c;)Lc/a/a/o/j/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/a/a/o/j/c;",
            ")",
            "Lc/a/a/o/j/l<",
            "Lc/a/a/o/j/d;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lc/a/a/o/j/t/a;

    iget-object p2, p0, Lc/a/a/o/j/t/a$a;->a:Lc/a/a/o/j/k;

    invoke-direct {p1, p2}, Lc/a/a/o/j/t/a;-><init>(Lc/a/a/o/j/k;)V

    return-object p1
.end method

.method public a()V
    .locals 0

    return-void
.end method
