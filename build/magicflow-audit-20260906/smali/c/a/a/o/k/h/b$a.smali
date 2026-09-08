.class Lc/a/a/o/k/h/b$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/k/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lc/a/a/m/c;

.field b:[B

.field c:Landroid/content/Context;

.field d:Lc/a/a/o/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/g<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field g:Lc/a/a/m/a$a;

.field h:Lc/a/a/o/i/m/c;

.field i:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lc/a/a/m/c;[BLandroid/content/Context;Lc/a/a/o/g;IILc/a/a/m/a$a;Lc/a/a/o/i/m/c;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/m/c;",
            "[B",
            "Landroid/content/Context;",
            "Lc/a/a/o/g<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lc/a/a/m/a$a;",
            "Lc/a/a/o/i/m/c;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p9, :cond_0

    .line 2
    iput-object p1, p0, Lc/a/a/o/k/h/b$a;->a:Lc/a/a/m/c;

    .line 3
    iput-object p2, p0, Lc/a/a/o/k/h/b$a;->b:[B

    .line 4
    iput-object p8, p0, Lc/a/a/o/k/h/b$a;->h:Lc/a/a/o/i/m/c;

    .line 5
    iput-object p9, p0, Lc/a/a/o/k/h/b$a;->i:Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/o/k/h/b$a;->c:Landroid/content/Context;

    .line 7
    iput-object p4, p0, Lc/a/a/o/k/h/b$a;->d:Lc/a/a/o/g;

    .line 8
    iput p5, p0, Lc/a/a/o/k/h/b$a;->e:I

    .line 9
    iput p6, p0, Lc/a/a/o/k/h/b$a;->f:I

    .line 10
    iput-object p7, p0, Lc/a/a/o/k/h/b$a;->g:Lc/a/a/m/a$a;

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The first frame of the GIF must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    new-instance v0, Lc/a/a/o/k/h/b;

    invoke-direct {v0, p0}, Lc/a/a/o/k/h/b;-><init>(Lc/a/a/o/k/h/b$a;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/a/a/o/k/h/b$a;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
