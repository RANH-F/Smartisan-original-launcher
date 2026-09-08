.class public Lc/a/a/o/k/a;
.super Ljava/lang/Object;
.source "NullEncoder.java"

# interfaces
.implements Lc/a/a/o/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/a/a/o/b<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lc/a/a/o/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/k/a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/a/a/o/k/a;

    invoke-direct {v0}, Lc/a/a/o/k/a;-><init>()V

    sput-object v0, Lc/a/a/o/k/a;->a:Lc/a/a/o/k/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/a/a/o/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/a/a/o/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/a/a/o/k/a;->a:Lc/a/a/o/k/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
