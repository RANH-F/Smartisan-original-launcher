.class public Lsmartisan/widget/BottomBar$BarItem;
.super Ljava/lang/Object;
.source "BottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/BottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BarItem"
.end annotation


# instance fields
.field private mColorStateList:I

.field private mContentDescription:I

.field private mDrawableId:I

.field private mTabId:I

.field private mTabName:Ljava/lang/String;

.field private mTextColorStateList:Landroid/content/res/ColorStateList;

.field private mTextSize:I

.field final synthetic this$0:Lsmartisan/widget/BottomBar;


# direct methods
.method private constructor <init>(Lsmartisan/widget/BottomBar;ILjava/lang/String;IILandroid/content/res/ColorStateList;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lsmartisan/widget/BottomBar$BarItem;->this$0:Lsmartisan/widget/BottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lsmartisan/widget/BottomBar$BarItem;->mContentDescription:I

    .line 4
    iput p1, p0, Lsmartisan/widget/BottomBar$BarItem;->mTextSize:I

    .line 5
    iput p2, p0, Lsmartisan/widget/BottomBar$BarItem;->mTabId:I

    .line 6
    iput-object p3, p0, Lsmartisan/widget/BottomBar$BarItem;->mTabName:Ljava/lang/String;

    .line 7
    iput p4, p0, Lsmartisan/widget/BottomBar$BarItem;->mDrawableId:I

    .line 8
    iput p5, p0, Lsmartisan/widget/BottomBar$BarItem;->mColorStateList:I

    .line 9
    iput-object p6, p0, Lsmartisan/widget/BottomBar$BarItem;->mTextColorStateList:Landroid/content/res/ColorStateList;

    return-void
.end method

.method synthetic constructor <init>(Lsmartisan/widget/BottomBar;ILjava/lang/String;IILandroid/content/res/ColorStateList;Lsmartisan/widget/BottomBar$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lsmartisan/widget/BottomBar$BarItem;-><init>(Lsmartisan/widget/BottomBar;ILjava/lang/String;IILandroid/content/res/ColorStateList;)V

    return-void
.end method

.method static synthetic access$1000(Lsmartisan/widget/BottomBar$BarItem;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/BottomBar$BarItem;->mColorStateList:I

    return p0
.end method

.method static synthetic access$400(Lsmartisan/widget/BottomBar$BarItem;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/BottomBar$BarItem;->mTabId:I

    return p0
.end method

.method static synthetic access$500(Lsmartisan/widget/BottomBar$BarItem;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/BottomBar$BarItem;->mDrawableId:I

    return p0
.end method

.method static synthetic access$600(Lsmartisan/widget/BottomBar$BarItem;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/BottomBar$BarItem;->mContentDescription:I

    return p0
.end method

.method static synthetic access$700(Lsmartisan/widget/BottomBar$BarItem;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/BottomBar$BarItem;->mTabName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lsmartisan/widget/BottomBar$BarItem;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/BottomBar$BarItem;->mTextColorStateList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$900(Lsmartisan/widget/BottomBar$BarItem;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/BottomBar$BarItem;->mTextSize:I

    return p0
.end method


# virtual methods
.method public setContentDescription(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/BottomBar$BarItem;->mContentDescription:I

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/BottomBar$BarItem;->mTextSize:I

    return-void
.end method
