.class public Lc/a/a/o/k/d;
.super Ljava/lang/Object;
.source "UnitTransformation.java"

# interfaces
.implements Lc/a/a/o/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/a/a/o/g<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lc/a/a/o/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/a/a/o/k/d;

    invoke-direct {v0}, Lc/a/a/o/k/d;-><init>()V

    sput-object v0, Lc/a/a/o/k/d;->a:Lc/a/a/o/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/a/a/o/k/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/a/a/o/k/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/a/a/o/k/d;->a:Lc/a/a/o/g;

    check-cast v0, Lc/a/a/o/k/d;

    return-object v0
.end method


# virtual methods
.method public a(Lc/a/a/o/i/k;II)Lc/a/a/o/i/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/k<",
            "TT;>;II)",
            "Lc/a/a/o/i/k<",
            "TT;>;"
        }
    .end annotation

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
