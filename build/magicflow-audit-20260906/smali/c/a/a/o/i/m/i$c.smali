.class Lc/a/a/o/i/m/i$c;
.super Lc/a/a/o/i/m/b;
.source "SizeConfigStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/i/m/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/o/i/m/b<",
        "Lc/a/a/o/i/m/i$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/a/a/o/i/m/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Lc/a/a/o/i/m/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/a/a/o/i/m/i$c;->a()Lc/a/a/o/i/m/i$b;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lc/a/a/o/i/m/i$b;
    .locals 1

    .line 4
    new-instance v0, Lc/a/a/o/i/m/i$b;

    invoke-direct {v0, p0}, Lc/a/a/o/i/m/i$b;-><init>(Lc/a/a/o/i/m/i$c;)V

    return-object v0
.end method

.method public a(ILandroid/graphics/Bitmap$Config;)Lc/a/a/o/i/m/i$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/a/a/o/i/m/b;->b()Lc/a/a/o/i/m/h;

    move-result-object v0

    check-cast v0, Lc/a/a/o/i/m/i$b;

    .line 3
    invoke-virtual {v0, p1, p2}, Lc/a/a/o/i/m/i$b;->a(ILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
