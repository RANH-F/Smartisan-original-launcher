.class public Lc/a/a/o/k/j/e;
.super Ljava/lang/Object;
.source "UnitTranscoder.java"

# interfaces
.implements Lc/a/a/o/k/j/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/a/a/o/k/j/c<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final a:Lc/a/a/o/k/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/k/j/e<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/a/a/o/k/j/e;

    invoke-direct {v0}, Lc/a/a/o/k/j/e;-><init>()V

    sput-object v0, Lc/a/a/o/k/j/e;->a:Lc/a/a/o/k/j/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/a/a/o/k/j/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/a/a/o/k/j/c<",
            "TZ;TZ;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/a/a/o/k/j/e;->a:Lc/a/a/o/k/j/e;

    return-object v0
.end method


# virtual methods
.method public a(Lc/a/a/o/i/k;)Lc/a/a/o/i/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/k<",
            "TZ;>;)",
            "Lc/a/a/o/i/k<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
