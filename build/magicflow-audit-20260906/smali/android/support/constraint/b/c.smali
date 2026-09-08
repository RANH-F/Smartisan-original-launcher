.class public Landroid/support/constraint/b/c;
.super Ljava/lang/Object;
.source "Cache.java"


# instance fields
.field a:Landroid/support/constraint/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/constraint/b/g<",
            "Landroid/support/constraint/b/b;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/support/constraint/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/constraint/b/g<",
            "Landroid/support/constraint/b/i;",
            ">;"
        }
    .end annotation
.end field

.field c:[Landroid/support/constraint/b/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/support/constraint/b/h;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroid/support/constraint/b/h;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/b/c;->a:Landroid/support/constraint/b/g;

    .line 3
    new-instance v0, Landroid/support/constraint/b/h;

    invoke-direct {v0, v1}, Landroid/support/constraint/b/h;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/b/c;->b:Landroid/support/constraint/b/g;

    const/16 v0, 0x20

    new-array v0, v0, [Landroid/support/constraint/b/i;

    .line 4
    iput-object v0, p0, Landroid/support/constraint/b/c;->c:[Landroid/support/constraint/b/i;

    return-void
.end method
