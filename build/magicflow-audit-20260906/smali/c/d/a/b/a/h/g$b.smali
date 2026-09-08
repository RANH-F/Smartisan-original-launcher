.class Lc/d/a/b/a/h/g$b;
.super Ljava/lang/Object;
.source "NetTrafficManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/a/h/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field public static final a:Lc/d/a/b/a/h/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/d/a/b/a/h/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/d/a/b/a/h/g;-><init>(Lc/d/a/b/a/h/g$a;)V

    sput-object v0, Lc/d/a/b/a/h/g$b;->a:Lc/d/a/b/a/h/g;

    return-void
.end method
