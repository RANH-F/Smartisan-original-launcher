.class public Lcom/smartisanos/magicflow/o/b;
.super Ljava/lang/Object;
.source "ColorPicker.java"


# static fields
.field private static final a:Lcom/smartisanos/magicflow/LOG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/o/b;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/o/b;->a:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;IIIIZF)I
    .locals 8

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/o/b;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPrimaryColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2

    if-lez p3, :cond_3

    if-lez p4, :cond_3

    mul-int p2, p3, p4

    .line 4
    :try_start_0
    new-array p2, p2, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v6, p3

    move v7, p4

    .line 5
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 6
    invoke-static {p2, p6}, Lcom/smartisanos/magicflow/o/b;->a([IF)I

    move-result p1

    .line 7
    sget-object p2, Lcom/smartisanos/magicflow/o/b;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getPrimaryColor color = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    if-eqz p5, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    sget-object p2, Lcom/smartisanos/magicflow/o/b;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getPrimaryColor err="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    sget-object p0, Lcom/smartisanos/magicflow/o/b;->a:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "getPrimaryColor bitmap is invalid"

    invoke-virtual {p0, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return p1
.end method

.method public static a([IF)I
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 12
    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 13
    aget v0, p0, v0

    goto :goto_0

    .line 14
    :cond_2
    aget v0, p0, v2

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    sub-int/2addr v1, v2

    sub-int/2addr v1, v2

    aget v3, p0, v1

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    add-int/2addr v0, v3

    const/4 v3, 0x2

    div-int/2addr v0, v3

    .line 15
    aget v4, p0, v2

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    aget v5, p0, v1

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    add-int/2addr v4, v5

    div-int/2addr v4, v3

    .line 16
    aget v5, p0, v2

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    aget v6, p0, v1

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    add-int/2addr v5, v6

    div-int/2addr v5, v3

    .line 17
    aget v2, p0, v2

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    aget p0, p0, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    add-int/2addr v2, p0

    div-int/2addr v2, v3

    const/4 p0, 0x3

    new-array p0, p0, [F

    .line 18
    invoke-static {v4, v5, v2, p0}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 19
    aget v1, p0, v3

    const/high16 v2, 0x3e800000    # 0.25f

    sub-float/2addr v1, v2

    aput v1, p0, v3

    .line 20
    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 21
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    :goto_0
    return v0
.end method
