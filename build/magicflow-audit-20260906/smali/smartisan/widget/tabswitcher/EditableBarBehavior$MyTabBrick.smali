.class Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;
.super Ljava/lang/Object;
.source "EditableBarBehavior.java"

# interfaces
.implements Lsmartisan/widget/tabswitcher/model/TabBrick;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/tabswitcher/EditableBarBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTabBrick"
.end annotation


# instance fields
.field final drawable:Landroid/graphics/Bitmap;

.field final drawableOffsetX:I

.field final index:I

.field final rect:Landroid/graphics/Rect;

.field final tab:Lsmartisan/widget/tabswitcher/model/Tab;

.field final synthetic this$0:Lsmartisan/widget/tabswitcher/EditableBarBehavior;


# direct methods
.method constructor <init>(Lsmartisan/widget/tabswitcher/EditableBarBehavior;Landroid/graphics/Rect;Lsmartisan/widget/tabswitcher/model/Tab;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;->this$0:Lsmartisan/widget/tabswitcher/EditableBarBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;->rect:Landroid/graphics/Rect;

    .line 3
    iput-object p3, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;->tab:Lsmartisan/widget/tabswitcher/model/Tab;

    .line 4
    iput p4, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;->index:I

    if-eqz p5, :cond_0

    .line 5
    invoke-interface {p3}, Lsmartisan/widget/tabswitcher/model/Tab;->getMoreTabDrawableResId()I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lsmartisan/widget/tabswitcher/model/Tab;->getDrawableResId()I

    move-result p3

    .line 6
    :goto_0
    invoke-static {p1}, Lsmartisan/widget/tabswitcher/EditableBarBehavior;->access$100(Lsmartisan/widget/tabswitcher/EditableBarBehavior;)Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;->drawable:Landroid/graphics/Bitmap;

    .line 8
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;->drawable:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;->drawableOffsetX:I

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;->drawable:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDrawableOffsetX()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;->drawableOffsetX:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;->index:I

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTab()Lsmartisan/widget/tabswitcher/model/Tab;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/EditableBarBehavior$MyTabBrick;->tab:Lsmartisan/widget/tabswitcher/model/Tab;

    return-object v0
.end method
