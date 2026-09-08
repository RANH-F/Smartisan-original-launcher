.class final Lc/a/a/o/i/m/i$b;
.super Ljava/lang/Object;
.source "SizeConfigStrategy.java"

# interfaces
.implements Lc/a/a/o/i/m/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/i/m/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lc/a/a/o/i/m/i$c;

.field private b:I

.field private c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lc/a/a/o/i/m/i$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/o/i/m/i$b;->a:Lc/a/a/o/i/m/i$c;

    return-void
.end method

.method static synthetic a(Lc/a/a/o/i/m/i$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/a/a/o/i/m/i$b;->b:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lc/a/a/o/i/m/i$b;->a:Lc/a/a/o/i/m/i$c;

    invoke-virtual {v0, p0}, Lc/a/a/o/i/m/b;->a(Lc/a/a/o/i/m/h;)V

    return-void
.end method

.method public a(ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 2
    iput p1, p0, Lc/a/a/o/i/m/i$b;->b:I

    .line 3
    iput-object p2, p0, Lc/a/a/o/i/m/i$b;->c:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lc/a/a/o/i/m/i$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lc/a/a/o/i/m/i$b;

    .line 3
    iget v0, p0, Lc/a/a/o/i/m/i$b;->b:I

    iget v2, p1, Lc/a/a/o/i/m/i$b;->b:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lc/a/a/o/i/m/i$b;->c:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lc/a/a/o/i/m/i$b;->c:Landroid/graphics/Bitmap$Config;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lc/a/a/o/i/m/i$b;->b:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lc/a/a/o/i/m/i$b;->c:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lc/a/a/o/i/m/i$b;->b:I

    iget-object v1, p0, Lc/a/a/o/i/m/i$b;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lc/a/a/o/i/m/i;->a(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
