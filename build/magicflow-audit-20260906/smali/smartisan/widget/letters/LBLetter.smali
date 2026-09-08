.class public Lsmartisan/widget/letters/LBLetter;
.super Ljava/lang/Object;
.source "LBLetter.java"


# static fields
.field public static final ICON_STATUS_HOLDER:I = 0x1

.field public static final ICON_STATUS_NORMAL:I = 0x0

.field public static final ICON_STATUS_TOUCHED:I = 0x2

.field public static POUND:Lsmartisan/widget/letters/LBLetter; = null

.field public static final TYPE_LETTER:I = 0x0

.field public static final TYPE_LOCALE_LETTER:I = 0x1

.field public static final TYPE_SYMBOL:I = 0x2


# instance fields
.field private letter:Ljava/lang/String;

.field private letterBitmaps:[Landroid/graphics/Bitmap;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#"

    .line 1
    invoke-static {v0}, Lsmartisan/widget/letters/LBLetter;->fromLetter(Ljava/lang/String;)Lsmartisan/widget/letters/LBLetter;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/letters/LBLetter;->POUND:Lsmartisan/widget/letters/LBLetter;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;[Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lsmartisan/widget/letters/LBLetter;->type:I

    .line 3
    iput-object p2, p0, Lsmartisan/widget/letters/LBLetter;->letter:Ljava/lang/String;

    .line 4
    iget p1, p0, Lsmartisan/widget/letters/LBLetter;->type:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    .line 5
    array-length p1, p3

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 6
    iput-object p3, p0, Lsmartisan/widget/letters/LBLetter;->letterBitmaps:[Landroid/graphics/Bitmap;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "symbol must have 3 bitmaps!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static fromLetter(Ljava/lang/String;)Lsmartisan/widget/letters/LBLetter;
    .locals 3

    .line 1
    new-instance v0, Lsmartisan/widget/letters/LBLetter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lsmartisan/widget/letters/LBLetter;-><init>(ILjava/lang/String;[Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static fromLocaleLetter(Ljava/lang/String;)Lsmartisan/widget/letters/LBLetter;
    .locals 3

    .line 1
    new-instance v0, Lsmartisan/widget/letters/LBLetter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lsmartisan/widget/letters/LBLetter;-><init>(ILjava/lang/String;[Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static fromSymbol(Ljava/lang/String;[Landroid/graphics/Bitmap;)Lsmartisan/widget/letters/LBLetter;
    .locals 2

    .line 1
    new-instance v0, Lsmartisan/widget/letters/LBLetter;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lsmartisan/widget/letters/LBLetter;-><init>(ILjava/lang/String;[Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public getLetter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/letters/LBLetter;->letter:Ljava/lang/String;

    return-object v0
.end method

.method public getLetterBitmaps()[Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/letters/LBLetter;->letterBitmaps:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/letters/LBLetter;->type:I

    return v0
.end method
