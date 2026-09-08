.class Lc/a/a/o/i/m/a$b;
.super Lc/a/a/o/i/m/b;
.source "AttributeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/i/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/o/i/m/b<",
        "Lc/a/a/o/i/m/a$a;",
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
.method protected a()Lc/a/a/o/i/m/a$a;
    .locals 1

    .line 4
    new-instance v0, Lc/a/a/o/i/m/a$a;

    invoke-direct {v0, p0}, Lc/a/a/o/i/m/a$a;-><init>(Lc/a/a/o/i/m/a$b;)V

    return-object v0
.end method

.method public a(IILandroid/graphics/Bitmap$Config;)Lc/a/a/o/i/m/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/a/a/o/i/m/b;->b()Lc/a/a/o/i/m/h;

    move-result-object v0

    check-cast v0, Lc/a/a/o/i/m/a$a;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lc/a/a/o/i/m/a$a;->a(IILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method protected bridge synthetic a()Lc/a/a/o/i/m/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/a/a/o/i/m/a$b;->a()Lc/a/a/o/i/m/a$a;

    move-result-object v0

    return-object v0
.end method
