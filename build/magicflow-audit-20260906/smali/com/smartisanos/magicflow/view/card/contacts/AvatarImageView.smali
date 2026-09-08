.class public Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;
.super Landroid/widget/ImageView;
.source "AvatarImageView.java"


# instance fields
.field private mAvatar:Landroid/graphics/Bitmap;

.field private mDrawName:Ljava/lang/String;

.field private mDrawPaint:Landroid/graphics/Paint;

.field private mDrawText:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mDrawName:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mAvatar:Landroid/graphics/Bitmap;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mDrawPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mDrawName:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mAvatar:Landroid/graphics/Bitmap;

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mDrawPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mDrawText:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mWidth:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mDrawText:Z

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setName(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mDrawText:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lsmartisanos/util/NameAvatarController;->getContactPhotoName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mDrawName:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mWidth:I

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mAvatar:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mAvatar:Landroid/graphics/Bitmap;

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mDrawName:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mAvatar:Landroid/graphics/Bitmap;

    invoke-static {p1, p2, v1}, Lcom/smartisanos/magicflow/o/e;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 7
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mAvatar:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 8
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/contacts/AvatarImageView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
