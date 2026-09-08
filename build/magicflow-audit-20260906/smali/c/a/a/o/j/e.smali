.class public interface abstract Lc/a/a/o/j/e;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final a:Lc/a/a/o/j/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/a/a/o/j/e$a;

    invoke-direct {v0}, Lc/a/a/o/j/e$a;-><init>()V

    .line 2
    new-instance v0, Lc/a/a/o/j/j$a;

    invoke-direct {v0}, Lc/a/a/o/j/j$a;-><init>()V

    invoke-virtual {v0}, Lc/a/a/o/j/j$a;->a()Lc/a/a/o/j/j;

    move-result-object v0

    sput-object v0, Lc/a/a/o/j/e;->a:Lc/a/a/o/j/e;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
