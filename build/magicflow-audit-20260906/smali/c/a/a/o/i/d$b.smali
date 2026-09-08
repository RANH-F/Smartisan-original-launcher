.class Lc/a/a/o/i/d$b;
.super Ljava/lang/Object;
.source "EngineJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/a/a/o/i/k;Z)Lc/a/a/o/i/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a/a/o/i/k<",
            "TR;>;Z)",
            "Lc/a/a/o/i/h<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/a/a/o/i/h;

    invoke-direct {v0, p1, p2}, Lc/a/a/o/i/h;-><init>(Lc/a/a/o/i/k;Z)V

    return-object v0
.end method
