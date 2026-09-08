.class Lc/b/a/a/e/d$d;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/a/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static final a:Lc/b/a/a/e/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/b/a/a/e/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/b/a/a/e/d;-><init>(Lc/b/a/a/e/d$a;)V

    sput-object v0, Lc/b/a/a/e/d$d;->a:Lc/b/a/a/e/d;

    return-void
.end method

.method static synthetic a()Lc/b/a/a/e/d;
    .locals 1

    .line 1
    sget-object v0, Lc/b/a/a/e/d$d;->a:Lc/b/a/a/e/d;

    return-object v0
.end method
