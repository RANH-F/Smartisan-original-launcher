.class public Lc/a/a/o/k/b;
.super Ljava/lang/Object;
.source "NullResourceEncoder.java"

# interfaces
.implements Lc/a/a/o/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/a/a/o/f<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lc/a/a/o/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/k/b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/a/a/o/k/b;

    invoke-direct {v0}, Lc/a/a/o/k/b;-><init>()V

    sput-object v0, Lc/a/a/o/k/b;->a:Lc/a/a/o/k/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/a/a/o/k/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/a/a/o/k/b<",
            "TT;>;"
        }
    .end annotation

    .line 2
    sget-object v0, Lc/a/a/o/k/b;->a:Lc/a/a/o/k/b;

    return-object v0
.end method


# virtual methods
.method public a(Lc/a/a/o/i/k;Ljava/io/OutputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/k<",
            "TT;>;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 0

    .line 1
    check-cast p1, Lc/a/a/o/i/k;

    invoke-virtual {p0, p1, p2}, Lc/a/a/o/k/b;->a(Lc/a/a/o/i/k;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
