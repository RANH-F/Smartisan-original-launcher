.class Lc/a/a/o/i/c$e;
.super Ljava/lang/ref/WeakReference;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lc/a/a/o/i/h<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/c;


# direct methods
.method public constructor <init>(Lc/a/a/o/c;Lc/a/a/o/i/h;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/c;",
            "Lc/a/a/o/i/h<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lc/a/a/o/i/h<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    iput-object p1, p0, Lc/a/a/o/i/c$e;->a:Lc/a/a/o/c;

    return-void
.end method

.method static synthetic a(Lc/a/a/o/i/c$e;)Lc/a/a/o/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a/a/o/i/c$e;->a:Lc/a/a/o/c;

    return-object p0
.end method
