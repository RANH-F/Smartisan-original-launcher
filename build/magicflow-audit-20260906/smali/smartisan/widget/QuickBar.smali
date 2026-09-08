.class public Lsmartisan/widget/QuickBar;
.super Landroid/view/View;
.source "QuickBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/QuickBar$SurnameAdapter;,
        Lsmartisan/widget/QuickBar$SurnameListener;,
        Lsmartisan/widget/QuickBar$QBTouchListener;,
        Lsmartisan/widget/QuickBar$QBHideListener;,
        Lsmartisan/widget/QuickBar$QBListener;
    }
.end annotation


# static fields
.field private static final BACK_INDEX:I = 0x1b

.field private static final COLUMN_COUNT:I = 0x3

.field private static final DEBUG:Z = true

.field public static final ICON_STATUS_HOLDER:I = 0x1

.field public static final ICON_STATUS_NORMAL:I = 0x0

.field public static final ICON_STATUS_TOUCHED:I = 0x2

.field private static JAPANESE_LETTERS:[Ljava/lang/String; = null

.field private static KOREA_LETTERS:[Ljava/lang/String; = null

.field public static LETTER_CHANGED_CLICK:I = 0x1

.field public static LETTER_CHANGED_SLIDE:I = 0x0

.field private static final POPUP_WINDOW_ARROW_WIDTH_DIP:F = 17.33f

.field private static final POUND:Ljava/lang/String; = "#"

.field public static POUND_POSITION_BOTTOM:I = 0x2

.field public static POUND_POSITION_TOP:I = 0x1

.field private static final SECOND_POPUP_HEIGHT_OFFSET_DIP:F = 6.78f

.field public static SPECIAL_ICON_POSITION_BOTTOM:I = 0x2

.field public static SPECIAL_ICON_POSITION_TOP:I = 0x1

.field private static final STATE_END:I = 0x4

.field private static final STATE_MOVE:I = 0x1

.field private static final STATE_START:I = 0x3

.field private static final SURNAME_DEBUG:Z = false

.field private static final SURNAME_NUM_COLUMNS_THRESHOLD:I = 0x8

.field private static final SURNAME_NUM_ROWS_THRESHOLD:I = 0x8

.field private static final SURNAME_NUM_ROWS_TOP_THRESHOLD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "QuickBar"

.field private static final VISIBILITY_FLAG_GONE:I = 0x2

.field private static final VISIBILITY_FLAG_NON_CHANGE:I = 0x0

.field private static final VISIBILITY_FLAG_VISIBLE:I = 0x1

.field public static final VISIBILITY_LIMIT:I = 0x1e


# instance fields
.field private ENGLISH_LETTERS:[Ljava/lang/String;

.field private mBg:Landroid/graphics/drawable/NinePatchDrawable;

.field private mBgDownNinePatch:Landroid/graphics/NinePatch;

.field private mBgLeftInvisiblePadding:I

.field private mChoose:I

.field private mContext:Landroid/content/Context;

.field private mDividerHeight:F

.field private mDrawTouchX:F

.field private mDrawTouchY:F

.field private mDuration:J

.field private mEndX:I

.field private mFontY:I

.field private mHasChooseColor:I

.field private mHasDismissedSurnamePopupWindow:Z

.field private mHasPerformedLongPress:Z

.field private mHighlight:Landroid/graphics/Bitmap;

.field private mHighlightX:I

.field private mHighlightY:I

.field private mIconDot:Landroid/graphics/Bitmap;

.field private mIconDotYOffset:I

.field private mIconX:I

.field private mIconY:I

.field private mIsDrawDownBg:Z

.field private mIsFixedHeight:Z

.field private mIsInterception:Z

.field private mIsPerformingHideAnim:Z

.field private mIsPerformingShowAnim:Z

.field private mIsStateChanged:Z

.field private mIsVisible:Z

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLastX:F

.field private mLetterMinHeight:I

.field private mLetters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLongPressEnabled:Z

.field private mLongPressMotionEvent:Landroid/view/MotionEvent;

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field private mMeasuredHeight:I

.field private mMissX:F

.field private mMoveIndex:I

.field private mNoChooseColor:I

.field private mNowX:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupGridView:Lsmartisan/widget/SurnameGridView;

.field private mPopupViewMaxHeight:I

.field private mPopupViewPendingHorizontal:I

.field private mPopupViewPendingVertical:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupYOffset:I

.field private mPoundPosition:I

.field private mPoundVisibility:Z

.field private mPrePosition:I

.field private mQBHideListener:Lsmartisan/widget/QuickBar$QBHideListener;

.field private mQBListener:Lsmartisan/widget/QuickBar$QBListener;

.field private mQBTouchListener:Lsmartisan/widget/QuickBar$QBTouchListener;

.field private mQuickBarFontSize:I

.field private mQuickBarFontX:I

.field private mQuickBarWidth:I

.field private mQuickBarX:I

.field private mScreenWidth:I

.field private mSecondPopup:Landroid/widget/PopupWindow;

.field private mSecondPopupView:Landroid/widget/TextView;

.field mShowBg:Z

.field private mSingleHeight:F

.field private mSingleItemHeight:F

.field private mSingleWidth:F

.field private mSpecailIconPosition:I

.field private mSpecialIcons:[[Landroid/graphics/Bitmap;

.field private mSpecialPosition:I

.field private mSpecialSymbol:[I

.field private mStartIndex:I

.field private mStartX:I

.field private mState:I

.field private mStateActionDown:I

.field private mSurnameListener:Lsmartisan/widget/QuickBar$SurnameListener;

.field private mThumbModeYDiff:I

.field private mToastSurnameNotFound:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 33

    const-string v0, "\u3131"

    const-string v1, "\u3134"

    const-string v2, "\u3137"

    const-string v3, "\u3139"

    const-string v4, "\u3141"

    const-string v5, "\u3142"

    const-string v6, "\u3145"

    const-string v7, "\u3147"

    const-string v8, "\u3148"

    const-string v9, "\u314a"

    const-string v10, "\u314b"

    const-string v11, "\u314c"

    const-string v12, "\u314d"

    const-string v13, "\u314e"

    const-string v14, "A"

    const-string v15, ".B"

    const-string v16, "D"

    const-string v17, ".E"

    const-string v18, "G"

    const-string v19, ".F"

    const-string v20, "J"

    const-string v21, ".K"

    const-string v22, "M"

    const-string v23, ".N"

    const-string v24, "P"

    const-string v25, ".Q"

    const-string v26, "S"

    const-string v27, ".T"

    const-string v28, "V"

    const-string v29, ".W"

    const-string v30, "Y"

    const-string v31, ".Z"

    const-string v32, "#"

    .line 1
    filled-new-array/range {v0 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/QuickBar;->KOREA_LETTERS:[Ljava/lang/String;

    const-string v1, "\u3042"

    const-string v2, "\u304b"

    const-string v3, "\u3055"

    const-string v4, "\u305f"

    const-string v5, "\u306a"

    const-string v6, "\u306f"

    const-string v7, "\u307e"

    const-string v8, "\u3084"

    const-string v9, "\u3089"

    const-string v10, "\u308f"

    const-string v11, "A"

    const-string v12, ".B"

    const-string v13, "D"

    const-string v14, ".E"

    const-string v15, "G"

    const-string v16, ".F"

    const-string v17, "J"

    const-string v18, ".K"

    const-string v19, "M"

    const-string v20, ".N"

    const-string v21, "P"

    const-string v22, ".Q"

    const-string v23, "S"

    const-string v24, ".T"

    const-string v25, "V"

    const-string v26, ".W"

    const-string v27, "Y"

    const-string v28, ".Z"

    const-string v29, "#"

    .line 2
    filled-new-array/range {v1 .. v29}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/QuickBar;->JAPANESE_LETTERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 31

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lsmartisan/widget/QuickBar;->mPoundVisibility:Z

    .line 3
    sget v2, Lsmartisan/widget/QuickBar;->POUND_POSITION_BOTTOM:I

    iput v2, v0, Lsmartisan/widget/QuickBar;->mPoundPosition:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lsmartisan/widget/QuickBar;->mThumbModeYDiff:I

    .line 5
    sget v3, Lsmartisan/widget/QuickBar;->SPECIAL_ICON_POSITION_TOP:I

    iput v3, v0, Lsmartisan/widget/QuickBar;->mSpecailIconPosition:I

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    const-string v4, "A"

    const-string v5, "B"

    const-string v6, "C"

    const-string v7, "D"

    const-string v8, "E"

    const-string v9, "F"

    const-string v10, "G"

    const-string v11, "H"

    const-string v12, "I"

    const-string v13, "J"

    const-string v14, "K"

    const-string v15, "L"

    const-string v16, "M"

    const-string v17, "N"

    const-string v18, "O"

    const-string v19, "P"

    const-string v20, "Q"

    const-string v21, "R"

    const-string v22, "S"

    const-string v23, "T"

    const-string v24, "U"

    const-string v25, "V"

    const-string v26, "W"

    const-string v27, "X"

    const-string v28, "Y"

    const-string v29, "Z"

    const-string v30, "#"

    .line 7
    filled-new-array/range {v4 .. v30}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lsmartisan/widget/QuickBar;->ENGLISH_LETTERS:[Ljava/lang/String;

    const/4 v3, -0x1

    .line 8
    iput v3, v0, Lsmartisan/widget/QuickBar;->mChoose:I

    .line 9
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lsmartisan/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    .line 10
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mShowBg:Z

    const/4 v4, 0x0

    .line 11
    iput-object v4, v0, Lsmartisan/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v4, 0x3

    .line 12
    iput v4, v0, Lsmartisan/widget/QuickBar;->mState:I

    const/4 v4, 0x0

    .line 13
    iput v4, v0, Lsmartisan/widget/QuickBar;->mMissX:F

    .line 14
    iput v4, v0, Lsmartisan/widget/QuickBar;->mLastX:F

    .line 15
    iput v4, v0, Lsmartisan/widget/QuickBar;->mNowX:F

    .line 16
    iput v2, v0, Lsmartisan/widget/QuickBar;->mMeasuredHeight:I

    const-wide/16 v4, 0xc8

    .line 17
    iput-wide v4, v0, Lsmartisan/widget/QuickBar;->mDuration:J

    .line 18
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mIsPerformingHideAnim:Z

    .line 19
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mIsPerformingShowAnim:Z

    const/16 v4, 0xa

    .line 20
    iput v4, v0, Lsmartisan/widget/QuickBar;->mBgLeftInvisiblePadding:I

    .line 21
    iput v3, v0, Lsmartisan/widget/QuickBar;->mSpecialPosition:I

    .line 22
    iput-boolean v1, v0, Lsmartisan/widget/QuickBar;->mIsStateChanged:Z

    .line 23
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mIsDrawDownBg:Z

    .line 24
    iput v3, v0, Lsmartisan/widget/QuickBar;->mStartIndex:I

    .line 25
    iput v3, v0, Lsmartisan/widget/QuickBar;->mMoveIndex:I

    .line 26
    iput-boolean v1, v0, Lsmartisan/widget/QuickBar;->mIsVisible:Z

    .line 27
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mIsInterception:Z

    .line 28
    iput-boolean v1, v0, Lsmartisan/widget/QuickBar;->mIsFixedHeight:Z

    .line 29
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mHasDismissedSurnamePopupWindow:Z

    .line 30
    iput-boolean v1, v0, Lsmartisan/widget/QuickBar;->mLongPressEnabled:Z

    .line 31
    iput v3, v0, Lsmartisan/widget/QuickBar;->mPrePosition:I

    .line 32
    new-instance v1, Lsmartisan/widget/QuickBar$3;

    invoke-direct {v1, v0}, Lsmartisan/widget/QuickBar$3;-><init>(Lsmartisan/widget/QuickBar;)V

    iput-object v1, v0, Lsmartisan/widget/QuickBar;->mLongPressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 31

    move-object/from16 v0, p0

    .line 33
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, v0, Lsmartisan/widget/QuickBar;->mPoundVisibility:Z

    .line 35
    sget v2, Lsmartisan/widget/QuickBar;->POUND_POSITION_BOTTOM:I

    iput v2, v0, Lsmartisan/widget/QuickBar;->mPoundPosition:I

    const/4 v2, 0x0

    .line 36
    iput v2, v0, Lsmartisan/widget/QuickBar;->mThumbModeYDiff:I

    .line 37
    sget v3, Lsmartisan/widget/QuickBar;->SPECIAL_ICON_POSITION_TOP:I

    iput v3, v0, Lsmartisan/widget/QuickBar;->mSpecailIconPosition:I

    .line 38
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    const-string v4, "A"

    const-string v5, "B"

    const-string v6, "C"

    const-string v7, "D"

    const-string v8, "E"

    const-string v9, "F"

    const-string v10, "G"

    const-string v11, "H"

    const-string v12, "I"

    const-string v13, "J"

    const-string v14, "K"

    const-string v15, "L"

    const-string v16, "M"

    const-string v17, "N"

    const-string v18, "O"

    const-string v19, "P"

    const-string v20, "Q"

    const-string v21, "R"

    const-string v22, "S"

    const-string v23, "T"

    const-string v24, "U"

    const-string v25, "V"

    const-string v26, "W"

    const-string v27, "X"

    const-string v28, "Y"

    const-string v29, "Z"

    const-string v30, "#"

    .line 39
    filled-new-array/range {v4 .. v30}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lsmartisan/widget/QuickBar;->ENGLISH_LETTERS:[Ljava/lang/String;

    const/4 v3, -0x1

    .line 40
    iput v3, v0, Lsmartisan/widget/QuickBar;->mChoose:I

    .line 41
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lsmartisan/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    .line 42
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mShowBg:Z

    const/4 v4, 0x0

    .line 43
    iput-object v4, v0, Lsmartisan/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v4, 0x3

    .line 44
    iput v4, v0, Lsmartisan/widget/QuickBar;->mState:I

    const/4 v4, 0x0

    .line 45
    iput v4, v0, Lsmartisan/widget/QuickBar;->mMissX:F

    .line 46
    iput v4, v0, Lsmartisan/widget/QuickBar;->mLastX:F

    .line 47
    iput v4, v0, Lsmartisan/widget/QuickBar;->mNowX:F

    .line 48
    iput v2, v0, Lsmartisan/widget/QuickBar;->mMeasuredHeight:I

    const-wide/16 v4, 0xc8

    .line 49
    iput-wide v4, v0, Lsmartisan/widget/QuickBar;->mDuration:J

    .line 50
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mIsPerformingHideAnim:Z

    .line 51
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mIsPerformingShowAnim:Z

    const/16 v4, 0xa

    .line 52
    iput v4, v0, Lsmartisan/widget/QuickBar;->mBgLeftInvisiblePadding:I

    .line 53
    iput v3, v0, Lsmartisan/widget/QuickBar;->mSpecialPosition:I

    .line 54
    iput-boolean v1, v0, Lsmartisan/widget/QuickBar;->mIsStateChanged:Z

    .line 55
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mIsDrawDownBg:Z

    .line 56
    iput v3, v0, Lsmartisan/widget/QuickBar;->mStartIndex:I

    .line 57
    iput v3, v0, Lsmartisan/widget/QuickBar;->mMoveIndex:I

    .line 58
    iput-boolean v1, v0, Lsmartisan/widget/QuickBar;->mIsVisible:Z

    .line 59
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mIsInterception:Z

    .line 60
    iput-boolean v1, v0, Lsmartisan/widget/QuickBar;->mIsFixedHeight:Z

    .line 61
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mHasDismissedSurnamePopupWindow:Z

    .line 62
    iput-boolean v1, v0, Lsmartisan/widget/QuickBar;->mLongPressEnabled:Z

    .line 63
    iput v3, v0, Lsmartisan/widget/QuickBar;->mPrePosition:I

    .line 64
    new-instance v1, Lsmartisan/widget/QuickBar$3;

    invoke-direct {v1, v0}, Lsmartisan/widget/QuickBar$3;-><init>(Lsmartisan/widget/QuickBar;)V

    iput-object v1, v0, Lsmartisan/widget/QuickBar;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 65
    invoke-direct/range {p0 .. p1}, Lsmartisan/widget/QuickBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 31

    move-object/from16 v0, p0

    .line 66
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, v0, Lsmartisan/widget/QuickBar;->mPoundVisibility:Z

    .line 68
    sget v2, Lsmartisan/widget/QuickBar;->POUND_POSITION_BOTTOM:I

    iput v2, v0, Lsmartisan/widget/QuickBar;->mPoundPosition:I

    const/4 v2, 0x0

    .line 69
    iput v2, v0, Lsmartisan/widget/QuickBar;->mThumbModeYDiff:I

    .line 70
    sget v3, Lsmartisan/widget/QuickBar;->SPECIAL_ICON_POSITION_TOP:I

    iput v3, v0, Lsmartisan/widget/QuickBar;->mSpecailIconPosition:I

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    const-string v4, "A"

    const-string v5, "B"

    const-string v6, "C"

    const-string v7, "D"

    const-string v8, "E"

    const-string v9, "F"

    const-string v10, "G"

    const-string v11, "H"

    const-string v12, "I"

    const-string v13, "J"

    const-string v14, "K"

    const-string v15, "L"

    const-string v16, "M"

    const-string v17, "N"

    const-string v18, "O"

    const-string v19, "P"

    const-string v20, "Q"

    const-string v21, "R"

    const-string v22, "S"

    const-string v23, "T"

    const-string v24, "U"

    const-string v25, "V"

    const-string v26, "W"

    const-string v27, "X"

    const-string v28, "Y"

    const-string v29, "Z"

    const-string v30, "#"

    .line 72
    filled-new-array/range {v4 .. v30}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lsmartisan/widget/QuickBar;->ENGLISH_LETTERS:[Ljava/lang/String;

    const/4 v3, -0x1

    .line 73
    iput v3, v0, Lsmartisan/widget/QuickBar;->mChoose:I

    .line 74
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lsmartisan/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    .line 75
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mShowBg:Z

    const/4 v4, 0x0

    .line 76
    iput-object v4, v0, Lsmartisan/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v4, 0x3

    .line 77
    iput v4, v0, Lsmartisan/widget/QuickBar;->mState:I

    const/4 v4, 0x0

    .line 78
    iput v4, v0, Lsmartisan/widget/QuickBar;->mMissX:F

    .line 79
    iput v4, v0, Lsmartisan/widget/QuickBar;->mLastX:F

    .line 80
    iput v4, v0, Lsmartisan/widget/QuickBar;->mNowX:F

    .line 81
    iput v2, v0, Lsmartisan/widget/QuickBar;->mMeasuredHeight:I

    const-wide/16 v4, 0xc8

    .line 82
    iput-wide v4, v0, Lsmartisan/widget/QuickBar;->mDuration:J

    .line 83
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mIsPerformingHideAnim:Z

    .line 84
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mIsPerformingShowAnim:Z

    const/16 v4, 0xa

    .line 85
    iput v4, v0, Lsmartisan/widget/QuickBar;->mBgLeftInvisiblePadding:I

    .line 86
    iput v3, v0, Lsmartisan/widget/QuickBar;->mSpecialPosition:I

    .line 87
    iput-boolean v1, v0, Lsmartisan/widget/QuickBar;->mIsStateChanged:Z

    .line 88
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mIsDrawDownBg:Z

    .line 89
    iput v3, v0, Lsmartisan/widget/QuickBar;->mStartIndex:I

    .line 90
    iput v3, v0, Lsmartisan/widget/QuickBar;->mMoveIndex:I

    .line 91
    iput-boolean v1, v0, Lsmartisan/widget/QuickBar;->mIsVisible:Z

    .line 92
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mIsInterception:Z

    .line 93
    iput-boolean v1, v0, Lsmartisan/widget/QuickBar;->mIsFixedHeight:Z

    .line 94
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mHasDismissedSurnamePopupWindow:Z

    .line 95
    iput-boolean v1, v0, Lsmartisan/widget/QuickBar;->mLongPressEnabled:Z

    .line 96
    iput v3, v0, Lsmartisan/widget/QuickBar;->mPrePosition:I

    .line 97
    new-instance v1, Lsmartisan/widget/QuickBar$3;

    invoke-direct {v1, v0}, Lsmartisan/widget/QuickBar$3;-><init>(Lsmartisan/widget/QuickBar;)V

    iput-object v1, v0, Lsmartisan/widget/QuickBar;->mLongPressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lsmartisan/widget/QuickBar;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/QuickBar;->mIsPerformingShowAnim:Z

    return p1
.end method

.method static synthetic access$100(Lsmartisan/widget/QuickBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/QuickBar;->onShowLetterGridAnimationEnd()V

    return-void
.end method

.method static synthetic access$1000(Lsmartisan/widget/QuickBar;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/QuickBar;->mItemHeight:I

    return p0
.end method

.method static synthetic access$202(Lsmartisan/widget/QuickBar;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/QuickBar;->mIsPerformingHideAnim:Z

    return p1
.end method

.method static synthetic access$300(Lsmartisan/widget/QuickBar;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/QuickBar;->onHideLetterGridAnimationEnd(I)V

    return-void
.end method

.method static synthetic access$400(Lsmartisan/widget/QuickBar;)Lsmartisan/widget/QuickBar$QBHideListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/QuickBar;->mQBHideListener:Lsmartisan/widget/QuickBar$QBHideListener;

    return-object p0
.end method

.method static synthetic access$500(Lsmartisan/widget/QuickBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/QuickBar;->showPopupWindow()V

    return-void
.end method

.method static synthetic access$600(Lsmartisan/widget/QuickBar;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/QuickBar;->showSecondPopupWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lsmartisan/widget/QuickBar;)Lsmartisan/widget/SurnameGridView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/QuickBar;->mPopupGridView:Lsmartisan/widget/SurnameGridView;

    return-object p0
.end method

.method static synthetic access$800(Lsmartisan/widget/QuickBar;)Lsmartisan/widget/QuickBar$SurnameListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/QuickBar;->mSurnameListener:Lsmartisan/widget/QuickBar$SurnameListener;

    return-object p0
.end method

.method static synthetic access$900(Lsmartisan/widget/QuickBar;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/QuickBar;->mItemWidth:I

    return p0
.end method

.method private calculateDotAlignmentHeight(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/QuickBar;->mIsFixedHeight:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne p1, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 6
    :cond_2
    iget p1, p0, Lsmartisan/widget/QuickBar;->mMeasuredHeight:I

    iget v1, p0, Lsmartisan/widget/QuickBar;->mLetterMinHeight:I

    mul-int/2addr v1, v0

    sub-int/2addr p1, v1

    div-int/2addr p1, v0

    if-ltz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    :goto_0
    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method private calculateVisibleLettersIndex()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-boolean v1, p0, Lsmartisan/widget/QuickBar;->mIsFixedHeight:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v1, :cond_0

    iget v1, p0, Lsmartisan/widget/QuickBar;->mMeasuredHeight:I

    iget-object v4, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/2addr v1, v4

    iget v4, p0, Lsmartisan/widget/QuickBar;->mLetterMinHeight:I

    if-ge v1, v4, :cond_0

    .line 3
    iget-object v1, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lsmartisan/widget/QuickBar;->mMeasuredHeight:I

    iget v5, p0, Lsmartisan/widget/QuickBar;->mLetterMinHeight:I

    div-int/2addr v4, v5

    sub-int/2addr v4, v3

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    mul-int/2addr v1, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v4, 0x0

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v4, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/2addr v4, v3

    if-ge v1, v4, :cond_1

    move v3, v1

    .line 6
    :goto_1
    iget-object v4, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_1

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v3, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 9
    iget-object v1, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private dipToPx(D)I
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int p1, p1

    return p1
.end method

.method private dismissPopupWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3
    iput-object v1, p0, Lsmartisan/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 4
    iput-object v1, p0, Lsmartisan/widget/QuickBar;->mPopupGridView:Lsmartisan/widget/SurnameGridView;

    .line 5
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7
    iput-object v1, p0, Lsmartisan/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    .line 8
    iput-object v1, p0, Lsmartisan/widget/QuickBar;->mSecondPopupView:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private drawSpecialLetters(ILandroid/graphics/Canvas;FF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mSpecialSymbol:[I

    if-eqz v0, :cond_5

    array-length v0, v0

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mSpecialIcons:[[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lsmartisan/widget/QuickBar;->mIconX:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    .line 3
    iget v0, p0, Lsmartisan/widget/QuickBar;->mIconY:I

    int-to-float v0, v0

    sub-float/2addr p4, v0

    .line 4
    iget v0, p0, Lsmartisan/widget/QuickBar;->mChoose:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, p1, :cond_1

    iget v0, p0, Lsmartisan/widget/QuickBar;->mState:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lsmartisan/widget/QuickBar;->mSpecailIconPosition:I

    sget v3, Lsmartisan/widget/QuickBar;->SPECIAL_ICON_POSITION_TOP:I

    if-eq v0, v3, :cond_2

    :cond_1
    iget v0, p0, Lsmartisan/widget/QuickBar;->mChoose:I

    iget v3, p0, Lsmartisan/widget/QuickBar;->mSpecialPosition:I

    add-int/2addr v3, p1

    if-ne v0, v3, :cond_3

    iget v0, p0, Lsmartisan/widget/QuickBar;->mState:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lsmartisan/widget/QuickBar;->mSpecailIconPosition:I

    sget v1, Lsmartisan/widget/QuickBar;->SPECIAL_ICON_POSITION_BOTTOM:I

    if-ne v0, v1, :cond_3

    .line 5
    :cond_2
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mSpecialIcons:[[Landroid/graphics/Bitmap;

    aget-object p1, v0, p1

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {p2, p1, p3, p4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 6
    :cond_3
    iget v0, p0, Lsmartisan/widget/QuickBar;->mChoose:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 7
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mSpecialIcons:[[Landroid/graphics/Bitmap;

    aget-object p1, v0, p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p2, p1, p3, p4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mSpecialIcons:[[Landroid/graphics/Bitmap;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p2, p1, p3, p4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private drawTouchBg(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget v0, p0, Lsmartisan/widget/QuickBar;->mDrawTouchX:F

    iget v1, p0, Lsmartisan/widget/QuickBar;->mQuickBarWidth:I

    int-to-float v2, v1

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    return-void

    :cond_0
    int-to-float v2, v1

    sub-float/2addr v0, v2

    .line 2
    iget v2, p0, Lsmartisan/widget/QuickBar;->mSingleWidth:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 3
    iget v3, p0, Lsmartisan/widget/QuickBar;->mDrawTouchY:F

    iget v4, p0, Lsmartisan/widget/QuickBar;->mSingleHeight:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v1, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    add-float/2addr v2, v1

    int-to-float v0, v3

    mul-float/2addr v0, v4

    const/16 v5, 0x8

    if-ne v3, v5, :cond_1

    .line 4
    iget v3, p0, Lsmartisan/widget/QuickBar;->mMeasuredHeight:I

    int-to-float v3, v3

    goto :goto_0

    :cond_1
    add-float v3, v0, v4

    .line 5
    :goto_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mBgDownNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v0, p1, v4}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    return-void
.end method

.method private getIndex(FF)I
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/QuickBar;->mQuickBarWidth:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 2
    iget v0, p0, Lsmartisan/widget/QuickBar;->mSingleHeight:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    mul-int/lit8 p2, p2, 0x3

    iget v0, p0, Lsmartisan/widget/QuickBar;->mSingleWidth:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    float-to-int p1, p1

    add-int/2addr p2, p1

    return p2
.end method

.method private getSingleLetterHeight(I)F
    .locals 2

    int-to-float p1, p1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    div-float/2addr p1, v0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lsmartisan/widget/QuickBar;->mIsFixedHeight:Z

    .line 3
    iget-boolean v0, p0, Lsmartisan/widget/QuickBar;->mIsFixedHeight:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lsmartisan/widget/QuickBar;->mLetterMinHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :goto_0
    return p1
.end method

.method private hideLetterGridWithAnim(I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/QuickBar;->dismissPopupWindow()V

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/QuickBar;->removeLongPressCallback()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lsmartisan/widget/QuickBar;->mIsInterception:Z

    .line 4
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lsmartisan/widget/QuickBar;->mStartX:I

    int-to-float v3, v3

    aput v3, v2, v0

    const-string v3, "x"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v4

    .line 6
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 8
    iget-wide v2, p0, Lsmartisan/widget/QuickBar;->mDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 9
    new-instance v0, Lsmartisan/widget/QuickBar$2;

    invoke-direct {v0, p0, p1}, Lsmartisan/widget/QuickBar$2;-><init>(Lsmartisan/widget/QuickBar;I)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lsmartisan/widget/QuickBar;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 3
    sget v0, Lsmartisan/widget/R$dimen;->quickbartable_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/QuickBar;->mWidth:I

    .line 4
    sget v0, Lsmartisan/widget/R$dimen;->quickbar_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/QuickBar;->mQuickBarWidth:I

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    .line 5
    invoke-direct {p0, v0, v1}, Lsmartisan/widget/QuickBar;->dipToPx(D)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/QuickBar;->mLetterMinHeight:I

    .line 6
    sget v0, Lsmartisan/widget/R$dimen;->quickbar_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lsmartisan/widget/QuickBar;->mDividerHeight:F

    .line 7
    sget v0, Lsmartisan/widget/R$dimen;->quickbar_single_item_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lsmartisan/widget/QuickBar;->mSingleItemHeight:F

    .line 8
    sget v0, Lsmartisan/widget/R$dimen;->quickbar_font_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/QuickBar;->mQuickBarFontSize:I

    .line 9
    sget v0, Lsmartisan/widget/R$dimen;->quickbar_font_x:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/QuickBar;->mQuickBarFontX:I

    .line 10
    iget v0, p0, Lsmartisan/widget/QuickBar;->mWidth:I

    iget v1, p0, Lsmartisan/widget/QuickBar;->mQuickBarWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iput v0, p0, Lsmartisan/widget/QuickBar;->mSingleWidth:F

    .line 11
    sget v0, Lsmartisan/widget/R$dimen;->quickbar_font_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/QuickBar;->mFontY:I

    .line 12
    sget v0, Lsmartisan/widget/R$dimen;->quickbar_x:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/QuickBar;->mQuickBarX:I

    .line 13
    sget v0, Lsmartisan/widget/R$drawable;->quickbar_highlight:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/QuickBar;->mHighlight:Landroid/graphics/Bitmap;

    .line 14
    sget v0, Lsmartisan/widget/R$dimen;->quickbar_highlight_x:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/QuickBar;->mHighlightX:I

    .line 15
    sget v0, Lsmartisan/widget/R$dimen;->quickbar_highlight_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/QuickBar;->mHighlightY:I

    .line 16
    sget v0, Lsmartisan/widget/R$dimen;->quickbar_iconme_x:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/QuickBar;->mIconX:I

    .line 17
    sget v0, Lsmartisan/widget/R$dimen;->quickbar_iconme_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/QuickBar;->mIconY:I

    .line 18
    sget v0, Lsmartisan/widget/R$drawable;->quickbar_dot:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/QuickBar;->mIconDot:Landroid/graphics/Bitmap;

    const-wide v0, 0x3fe570a3d70a3d71L    # 0.67

    .line 19
    invoke-direct {p0, v0, v1}, Lsmartisan/widget/QuickBar;->dipToPx(D)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/QuickBar;->mIconDotYOffset:I

    const-string p1, "#989898"

    .line 20
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/QuickBar;->mHasChooseColor:I

    const-string p1, "#b2b2b2"

    .line 21
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/QuickBar;->mNoChooseColor:I

    .line 22
    iget-object p1, p0, Lsmartisan/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 23
    iget-object p1, p0, Lsmartisan/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lsmartisan/widget/QuickBar;->mQuickBarFontSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 24
    iget-object p1, p0, Lsmartisan/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    invoke-virtual {p0}, Lsmartisan/widget/QuickBar;->initLetters()V

    return-void
.end method

.method public static isJapaneseLetter(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 1
    sget-object v2, Lsmartisan/widget/QuickBar;->JAPANESE_LETTERS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isKoreaLetter(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 1
    sget-object v2, Lsmartisan/widget/QuickBar;->KOREA_LETTERS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private letterChanged(IIFIZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 1
    iput-boolean v0, p0, Lsmartisan/widget/QuickBar;->mIsDrawDownBg:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 3
    :cond_0
    iget p5, p0, Lsmartisan/widget/QuickBar;->mQuickBarWidth:I

    int-to-float p5, p5

    cmpg-float p3, p3, p5

    if-gez p3, :cond_1

    return-void

    :cond_1
    const/4 p3, 0x4

    if-ne p1, p3, :cond_4

    if-ne p2, p3, :cond_4

    const/16 p1, 0x1b

    if-ne p4, p1, :cond_2

    .line 4
    invoke-direct {p0, v0}, Lsmartisan/widget/QuickBar;->hideLetterGridWithAnim(I)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lsmartisan/widget/QuickBar;->mQBListener:Lsmartisan/widget/QuickBar$QBListener;

    if-eqz p1, :cond_5

    if-ltz p4, :cond_5

    .line 6
    iget-object p2, p0, Lsmartisan/widget/QuickBar;->ENGLISH_LETTERS:[Ljava/lang/String;

    array-length p3, p2

    if-ge p4, p3, :cond_5

    add-int/lit8 p3, p4, -0x1

    .line 7
    aget-object p2, p2, p3

    sget p3, Lsmartisan/widget/QuickBar;->LETTER_CHANGED_CLICK:I

    invoke-interface {p1, p2, p3}, Lsmartisan/widget/QuickBar$QBListener;->onLetterChanged(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget p1, p0, Lsmartisan/widget/QuickBar;->mSpecialPosition:I

    sub-int/2addr p4, p1

    iput p4, p0, Lsmartisan/widget/QuickBar;->mChoose:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    :cond_3
    invoke-direct {p0, v0}, Lsmartisan/widget/QuickBar;->hideLetterGridWithAnim(I)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_0
    return-void
.end method

.method private loadResource()V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$drawable;->quickbar_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lsmartisan/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$drawable;->quickbar_bg_down:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v1, p0, Lsmartisan/widget/QuickBar;->mBgDownNinePatch:Landroid/graphics/NinePatch;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lsmartisan/widget/QuickBar;->mWidth:I

    iget v2, p0, Lsmartisan/widget/QuickBar;->mMeasuredHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6
    iget-object v1, p0, Lsmartisan/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 7
    invoke-direct {p0}, Lsmartisan/widget/QuickBar;->measureSingleHeight()V

    :cond_0
    return-void
.end method

.method private measureHeight(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private measureSingleHeight()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lsmartisan/widget/QuickBar;->mMeasuredHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x41900000    # 18.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lsmartisan/widget/QuickBar;->mSingleItemHeight:F

    iget v2, p0, Lsmartisan/widget/QuickBar;->mDividerHeight:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iput v1, p0, Lsmartisan/widget/QuickBar;->mSingleHeight:F

    return-void
.end method

.method private moveQuickBar(FF)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    sub-float/2addr p1, p2

    .line 2
    iget p2, p0, Lsmartisan/widget/QuickBar;->mStartX:I

    int-to-float v0, p2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    int-to-float p1, p2

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    const/4 p1, 0x3

    .line 4
    iput p1, p0, Lsmartisan/widget/QuickBar;->mState:I

    goto :goto_0

    .line 5
    :cond_0
    iget p2, p0, Lsmartisan/widget/QuickBar;->mEndX:I

    int-to-float v0, p2

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    int-to-float p1, p2

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    const/4 p1, 0x4

    .line 7
    iput p1, p0, Lsmartisan/widget/QuickBar;->mState:I

    goto :goto_0

    :cond_1
    int-to-float p2, p2

    cmpl-float p2, p1, p2

    if-lez p2, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lsmartisan/widget/QuickBar;->mState:I

    :cond_2
    :goto_0
    return-void
.end method

.method private onHideLetterGridAnimationEnd(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lsmartisan/widget/QuickBar;->mIsStateChanged:Z

    .line 2
    iput-boolean v0, p0, Lsmartisan/widget/QuickBar;->mIsDrawDownBg:Z

    .line 3
    iput-boolean v0, p0, Lsmartisan/widget/QuickBar;->mShowBg:Z

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lsmartisan/widget/QuickBar;->mChoose:I

    const/4 v1, 0x3

    .line 5
    iput v1, p0, Lsmartisan/widget/QuickBar;->mState:I

    .line 6
    iget v1, p0, Lsmartisan/widget/QuickBar;->mStartX:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setX(F)V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 7
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private onMoveInLongPressState(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 4
    iget-object v1, p0, Lsmartisan/widget/QuickBar;->mPopupGridView:Lsmartisan/widget/SurnameGridView;

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getLocationOnScreen([I)V

    .line 6
    iget-object v1, p0, Lsmartisan/widget/QuickBar;->mPopupGridView:Lsmartisan/widget/SurnameGridView;

    const/4 v3, 0x0

    aget v4, v2, v3

    sub-int/2addr v0, v4

    const/4 v4, 0x1

    aget v2, v2, v4

    sub-int/2addr p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 7
    iget v1, p0, Lsmartisan/widget/QuickBar;->mPrePosition:I

    if-eq v1, p1, :cond_3

    .line 8
    iget-object v2, p0, Lsmartisan/widget/QuickBar;->mPopupGridView:Lsmartisan/widget/SurnameGridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 10
    invoke-direct {p0, v0}, Lsmartisan/widget/QuickBar;->showSecondPopupWindow(Landroid/view/View;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mPopupGridView:Lsmartisan/widget/SurnameGridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 13
    iget-object v1, p0, Lsmartisan/widget/QuickBar;->mPopupGridView:Lsmartisan/widget/SurnameGridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    invoke-direct {p0, v0}, Lsmartisan/widget/QuickBar;->showSecondPopupWindow(Landroid/view/View;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v1, p0, Lsmartisan/widget/QuickBar;->mPopupGridView:Lsmartisan/widget/SurnameGridView;

    iget v2, p0, Lsmartisan/widget/QuickBar;->mPrePosition:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 18
    invoke-direct {p0, v0}, Lsmartisan/widget/QuickBar;->showSecondPopupWindow(Landroid/view/View;)V

    .line 19
    :cond_3
    :goto_0
    iput p1, p0, Lsmartisan/widget/QuickBar;->mPrePosition:I

    :cond_4
    :goto_1
    return-void
.end method

.method private onShowLetterGridAnimationEnd()V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/QuickBar;->mEndX:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setX(F)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lsmartisan/widget/QuickBar;->mShowBg:Z

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lsmartisan/widget/QuickBar;->mState:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private postLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/QuickBar;->mLongPressEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/QuickBar;->mLongPressMotionEvent:Landroid/view/MotionEvent;

    .line 3
    iget-object p1, p0, Lsmartisan/widget/QuickBar;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private removeLongPressCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lsmartisan/widget/QuickBar;->mLongPressMotionEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method private setHostWidth(I)V
    .locals 1

    .line 1
    iput p1, p0, Lsmartisan/widget/QuickBar;->mScreenWidth:I

    .line 2
    iget p1, p0, Lsmartisan/widget/QuickBar;->mScreenWidth:I

    iget v0, p0, Lsmartisan/widget/QuickBar;->mQuickBarWidth:I

    sub-int v0, p1, v0

    iput v0, p0, Lsmartisan/widget/QuickBar;->mStartX:I

    .line 3
    iget v0, p0, Lsmartisan/widget/QuickBar;->mWidth:I

    sub-int/2addr p1, v0

    iput p1, p0, Lsmartisan/widget/QuickBar;->mEndX:I

    .line 4
    iget p1, p0, Lsmartisan/widget/QuickBar;->mStartX:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private showLetterGridWithAnim()V
    .locals 5

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lsmartisan/widget/QuickBar;->mEndX:I

    int-to-float v2, v2

    const/4 v4, 0x1

    aput v2, v1, v4

    const-string v2, "x"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v3

    .line 3
    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 5
    iget-wide v1, p0, Lsmartisan/widget/QuickBar;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6
    new-instance v1, Lsmartisan/widget/QuickBar$1;

    invoke-direct {v1, p0}, Lsmartisan/widget/QuickBar$1;-><init>(Lsmartisan/widget/QuickBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private showPopupWindow()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lsmartisan/widget/QuickBar;->mLongPressMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2
    iget-object v2, v0, Lsmartisan/widget/QuickBar;->mLongPressMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 3
    invoke-direct {v0, v1, v2}, Lsmartisan/widget/QuickBar;->getIndex(FF)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ltz v1, :cond_e

    .line 4
    iget-object v3, v0, Lsmartisan/widget/QuickBar;->ENGLISH_LETTERS:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-lt v1, v3, :cond_0

    goto/16 :goto_6

    .line 5
    :cond_0
    iput-boolean v2, v0, Lsmartisan/widget/QuickBar;->mHasPerformedLongPress:Z

    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    .line 6
    invoke-direct {v0, v3, v4}, Lsmartisan/widget/QuickBar;->dipToPx(D)I

    move-result v3

    iput v3, v0, Lsmartisan/widget/QuickBar;->mItemWidth:I

    const-wide v3, 0x4040800000000000L    # 33.0

    .line 7
    invoke-direct {v0, v3, v4}, Lsmartisan/widget/QuickBar;->dipToPx(D)I

    move-result v3

    iput v3, v0, Lsmartisan/widget/QuickBar;->mItemHeight:I

    const-wide/high16 v3, 0x401c000000000000L    # 7.0

    .line 8
    invoke-direct {v0, v3, v4}, Lsmartisan/widget/QuickBar;->dipToPx(D)I

    move-result v3

    iput v3, v0, Lsmartisan/widget/QuickBar;->mPopupYOffset:I

    const-wide v3, 0x4071b00000000000L    # 283.0

    .line 9
    invoke-direct {v0, v3, v4}, Lsmartisan/widget/QuickBar;->dipToPx(D)I

    move-result v3

    iput v3, v0, Lsmartisan/widget/QuickBar;->mPopupViewMaxHeight:I

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    .line 10
    invoke-direct {v0, v3, v4}, Lsmartisan/widget/QuickBar;->dipToPx(D)I

    move-result v3

    iput v3, v0, Lsmartisan/widget/QuickBar;->mPopupViewPendingVertical:I

    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    .line 11
    invoke-direct {v0, v3, v4}, Lsmartisan/widget/QuickBar;->dipToPx(D)I

    move-result v3

    iput v3, v0, Lsmartisan/widget/QuickBar;->mPopupViewPendingHorizontal:I

    .line 12
    iget-object v3, v0, Lsmartisan/widget/QuickBar;->mSurnameListener:Lsmartisan/widget/QuickBar$SurnameListener;

    if-eqz v3, :cond_d

    .line 13
    iget-object v4, v0, Lsmartisan/widget/QuickBar;->ENGLISH_LETTERS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Lsmartisan/widget/QuickBar$SurnameListener;->getMatchedSurnames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_5

    .line 15
    :cond_1
    new-instance v4, Lsmartisan/widget/QuickBar$SurnameAdapter;

    iget-object v5, v0, Lsmartisan/widget/QuickBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0, v5, v3}, Lsmartisan/widget/QuickBar$SurnameAdapter;-><init>(Lsmartisan/widget/QuickBar;Landroid/content/Context;Ljava/util/List;)V

    .line 16
    iget-object v5, v0, Lsmartisan/widget/QuickBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lsmartisan/widget/R$layout;->surname_popup:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 17
    sget v6, Lsmartisan/widget/R$id;->surname_content:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lsmartisan/widget/SurnameGridView;

    iput-object v6, v0, Lsmartisan/widget/QuickBar;->mPopupGridView:Lsmartisan/widget/SurnameGridView;

    .line 18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x8

    if-lt v6, v7, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 19
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-double v8, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    int-to-double v10, v6

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v3, v8

    .line 20
    iget-object v8, v0, Lsmartisan/widget/QuickBar;->mPopupGridView:Lsmartisan/widget/SurnameGridView;

    invoke-virtual {v8, v6}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 21
    iget v8, v0, Lsmartisan/widget/QuickBar;->mItemWidth:I

    mul-int/2addr v8, v6

    iget v9, v0, Lsmartisan/widget/QuickBar;->mPopupViewPendingHorizontal:I

    const/4 v10, 0x2

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    if-le v3, v7, :cond_3

    .line 22
    iget v9, v0, Lsmartisan/widget/QuickBar;->mPopupViewMaxHeight:I

    goto :goto_1

    :cond_3
    iget v9, v0, Lsmartisan/widget/QuickBar;->mItemHeight:I

    mul-int/2addr v9, v3

    .line 23
    :goto_1
    iget v11, v0, Lsmartisan/widget/QuickBar;->mPopupViewPendingVertical:I

    mul-int/2addr v11, v10

    add-int/2addr v11, v9

    .line 24
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "surname GridView, width = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", height = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lsmartisan/widget/QuickBar;->printLog(Ljava/lang/String;)V

    .line 25
    iget-object v9, v0, Lsmartisan/widget/QuickBar;->mPopupGridView:Lsmartisan/widget/SurnameGridView;

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v12}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    iget-object v8, v0, Lsmartisan/widget/QuickBar;->mPopupGridView:Lsmartisan/widget/SurnameGridView;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setGravity(I)V

    .line 27
    iget-object v8, v0, Lsmartisan/widget/QuickBar;->mPopupGridView:Lsmartisan/widget/SurnameGridView;

    invoke-virtual {v8, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 28
    iget-object v4, v0, Lsmartisan/widget/QuickBar;->mPopupGridView:Lsmartisan/widget/SurnameGridView;

    new-instance v8, Lsmartisan/widget/QuickBar$4;

    invoke-direct {v8, v0}, Lsmartisan/widget/QuickBar$4;-><init>(Lsmartisan/widget/QuickBar;)V

    invoke-virtual {v4, v8}, Lsmartisan/widget/SurnameGridView;->setOnPressChangeListener(Lsmartisan/widget/SurnameGridView$OnPressChangeListener;)V

    .line 29
    iget-object v4, v0, Lsmartisan/widget/QuickBar;->mPopupGridView:Lsmartisan/widget/SurnameGridView;

    new-instance v8, Lsmartisan/widget/QuickBar$5;

    invoke-direct {v8, v0}, Lsmartisan/widget/QuickBar$5;-><init>(Lsmartisan/widget/QuickBar;)V

    invoke-virtual {v4, v8}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 30
    iget-object v4, v0, Lsmartisan/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v4, :cond_4

    .line 31
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v4, v0, Lsmartisan/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 32
    iget-object v4, v0, Lsmartisan/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    invoke-virtual {v4, v8, v8}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 33
    iget-object v4, v0, Lsmartisan/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x106000d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object v4, v0, Lsmartisan/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 35
    :cond_4
    iget-object v4, v0, Lsmartisan/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    new-array v4, v10, [I

    new-array v8, v10, [I

    .line 36
    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 37
    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 38
    aget v8, v8, v2

    aget v9, v4, v2

    sub-int/2addr v8, v9

    iput v8, v0, Lsmartisan/widget/QuickBar;->mThumbModeYDiff:I

    const/4 v8, 0x0

    .line 39
    aget v9, v4, v8

    int-to-float v9, v9

    .line 40
    aget v4, v4, v2

    int-to-float v4, v4

    .line 41
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "index = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", quickBarX = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", quickBarY = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lsmartisan/widget/QuickBar;->printLog(Ljava/lang/String;)V

    .line 42
    iget v11, v0, Lsmartisan/widget/QuickBar;->mQuickBarWidth:I

    int-to-float v11, v11

    add-float/2addr v9, v11

    float-to-double v11, v9

    rem-int/lit8 v9, v1, 0x3

    int-to-double v13, v9

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    add-double/2addr v13, v15

    iget v9, v0, Lsmartisan/widget/QuickBar;->mSingleWidth:F

    move/from16 v17, v3

    float-to-double v2, v9

    mul-double/2addr v13, v2

    add-double/2addr v11, v13

    double-to-int v2, v11

    float-to-double v3, v4

    .line 43
    div-int/lit8 v9, v1, 0x3

    int-to-double v11, v9

    add-double/2addr v11, v15

    iget v9, v0, Lsmartisan/widget/QuickBar;->mSingleHeight:F

    float-to-double v13, v9

    mul-double/2addr v11, v13

    add-double/2addr v3, v11

    double-to-int v3, v3

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "anchorX = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", anchorY = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lsmartisan/widget/QuickBar;->printLog(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v5, v8, v8}, Landroid/view/View;->measure(II)V

    .line 46
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 47
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 48
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "popMeasureWidth = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", popMeasureHeight = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lsmartisan/widget/QuickBar;->printLog(Ljava/lang/String;)V

    .line 49
    iget v11, v0, Lsmartisan/widget/QuickBar;->mScreenWidth:I

    sub-int/2addr v11, v2

    div-int/lit8 v12, v4, 0x2

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int/2addr v2, v12

    sub-int/2addr v4, v11

    const-wide v11, 0x4031547ae0000000L    # 17.329999923706055

    .line 50
    invoke-direct {v0, v11, v12}, Lsmartisan/widget/QuickBar;->dipToPx(D)I

    move-result v11

    div-int/2addr v11, v10

    sub-int/2addr v4, v11

    .line 51
    sget v10, Lsmartisan/widget/R$id;->surname_top_mask:I

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 52
    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 53
    iget v12, v0, Lsmartisan/widget/QuickBar;->mItemWidth:I

    mul-int/2addr v12, v6

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 54
    sget v12, Lsmartisan/widget/R$id;->surname_bottom_mask:I

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 55
    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 56
    iget v14, v0, Lsmartisan/widget/QuickBar;->mItemWidth:I

    mul-int/2addr v14, v6

    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 57
    sget v14, Lsmartisan/widget/R$id;->surname_container:I

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    if-ne v6, v7, :cond_5

    const-wide/high16 v6, 0x402c000000000000L    # 14.0

    .line 58
    invoke-direct {v0, v6, v7}, Lsmartisan/widget/QuickBar;->dipToPx(D)I

    move-result v6

    move v15, v9

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    .line 59
    invoke-direct {v0, v8, v9}, Lsmartisan/widget/QuickBar;->dipToPx(D)I

    move-result v8

    move/from16 v16, v8

    const-wide/high16 v7, 0x4031000000000000L    # 17.0

    .line 60
    invoke-direct {v0, v7, v8}, Lsmartisan/widget/QuickBar;->dipToPx(D)I

    move-result v7

    move-object v8, v10

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    .line 61
    invoke-direct {v0, v9, v10}, Lsmartisan/widget/QuickBar;->dipToPx(D)I

    move-result v9

    move/from16 v10, v16

    .line 62
    invoke-virtual {v14, v6, v10, v7, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lsmartisan/widget/R$dimen;->arrow_translation_x:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v4, v6

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    .line 64
    invoke-direct {v0, v6, v7}, Lsmartisan/widget/QuickBar;->dipToPx(D)I

    move-result v9

    iput v9, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 65
    invoke-direct {v0, v6, v7}, Lsmartisan/widget/QuickBar;->dipToPx(D)I

    move-result v6

    iput v6, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_5
    move v15, v9

    move-object v8, v10

    add-int/lit8 v2, v2, -0x1

    .line 66
    :goto_2
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x3

    move/from16 v7, v17

    const/4 v8, 0x1

    if-ge v1, v6, :cond_6

    if-gt v7, v8, :cond_a

    :cond_6
    const/4 v9, 0x6

    if-lt v1, v6, :cond_7

    if-ge v1, v9, :cond_7

    if-gt v7, v6, :cond_a

    :cond_7
    const/16 v6, 0x9

    if-lt v1, v9, :cond_8

    if-ge v1, v6, :cond_8

    const/4 v9, 0x5

    if-gt v7, v9, :cond_a

    :cond_8
    if-lt v1, v6, :cond_9

    const/16 v6, 0xc

    if-ge v1, v6, :cond_9

    const/4 v1, 0x7

    if-le v7, v1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :cond_a
    :goto_3
    if-eqz v8, :cond_b

    .line 68
    sget v1, Lsmartisan/widget/R$id;->surname_popup_top_arrow:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    int-to-float v4, v4

    .line 69
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    const/4 v6, 0x0

    .line 70
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget v1, v0, Lsmartisan/widget/QuickBar;->mPopupYOffset:I

    add-int/2addr v3, v1

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    .line 72
    sget v1, Lsmartisan/widget/R$id;->surname_popup_bottom_arrow:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    int-to-float v4, v4

    .line 73
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 74
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    sub-int/2addr v3, v15

    .line 75
    iget v1, v0, Lsmartisan/widget/QuickBar;->mPopupYOffset:I

    sub-int/2addr v3, v1

    .line 76
    :goto_4
    iget-object v1, v0, Lsmartisan/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, v0, Lsmartisan/widget/QuickBar;->mThumbModeYDiff:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v0, v6, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_c
    :goto_5
    return-void

    .line 77
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You must implements SurnameListener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_6
    return-void
.end method

.method private showSecondPopupWindow(Landroid/view/View;)V
    .locals 7

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    .line 5
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lsmartisan/widget/R$layout;->surname_second_popup:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisan/widget/QuickBar;->mSecondPopupView:Landroid/widget/TextView;

    .line 9
    :cond_2
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lsmartisan/widget/QuickBar;->mSecondPopupView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 10
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object v3, p0, Lsmartisan/widget/QuickBar;->mSecondPopupView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lsmartisan/widget/QuickBar;->mSecondPopupView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 14
    iget-object p1, p0, Lsmartisan/widget/QuickBar;->mSecondPopupView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    .line 15
    iget-object v4, p0, Lsmartisan/widget/QuickBar;->mSecondPopupView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    .line 16
    aget v5, v2, v1

    iget v6, p0, Lsmartisan/widget/QuickBar;->mThumbModeYDiff:I

    add-int/2addr v5, v6

    aput v5, v2, v1

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjusted anchorViewLocation[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", anchorViewLocation[1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "QuickBar"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    aget v3, v2, v3

    iget v5, p0, Lsmartisan/widget/QuickBar;->mItemWidth:I

    div-int/2addr v5, v0

    add-int/2addr v3, v5

    .line 19
    aget v1, v2, v1

    iget v2, p0, Lsmartisan/widget/QuickBar;->mItemHeight:I

    div-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 20
    div-int/2addr p1, v0

    sub-int/2addr v3, p1

    sub-int/2addr v1, v4

    const-wide v4, 0x401b1eb860000000L    # 6.78000020980835

    .line 21
    invoke-direct {p0, v4, v5}, Lsmartisan/widget/QuickBar;->dipToPx(D)I

    move-result p1

    sub-int/2addr v1, p1

    .line 22
    iget-object p1, p0, Lsmartisan/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    const/16 v0, 0x33

    invoke-virtual {p1, p0, v0, v3, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public clearSpecialIcons()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lsmartisan/widget/QuickBar;->mSpecialSymbol:[I

    .line 2
    iput-object v0, p0, Lsmartisan/widget/QuickBar;->mSpecialIcons:[[Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lsmartisan/widget/QuickBar;->mSpecialPosition:I

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3
    iget-boolean v1, p0, Lsmartisan/widget/QuickBar;->mIsVisible:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lsmartisan/widget/QuickBar;->mIsInterception:Z

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    if-eq v0, v3, :cond_1b

    :cond_0
    iget-boolean v1, p0, Lsmartisan/widget/QuickBar;->mIsPerformingHideAnim:Z

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lsmartisan/widget/QuickBar;->mIsInterception:Z

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lsmartisan/widget/QuickBar;->mDrawTouchX:F

    .line 8
    iput v4, p0, Lsmartisan/widget/QuickBar;->mDrawTouchY:F

    .line 9
    iget v6, p0, Lsmartisan/widget/QuickBar;->mChoose:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v4, v7

    iget-object v7, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v4, v7

    float-to-int v4, v4

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eqz v0, :cond_15

    if-eq v0, v2, :cond_d

    if-eq v0, v3, :cond_2

    if-eq v0, v9, :cond_d

    goto/16 :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mQBTouchListener:Lsmartisan/widget/QuickBar$QBTouchListener;

    if-eqz v0, :cond_3

    .line 12
    invoke-interface {v0}, Lsmartisan/widget/QuickBar$QBTouchListener;->onQBTouchMove()V

    .line 13
    :cond_3
    iget-boolean v0, p0, Lsmartisan/widget/QuickBar;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_4

    .line 14
    invoke-direct {p0, p1}, Lsmartisan/widget/QuickBar;->onMoveInLongPressState(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 15
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p1

    iget v0, p0, Lsmartisan/widget/QuickBar;->mEndX:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_5

    .line 16
    invoke-direct {p0}, Lsmartisan/widget/QuickBar;->removeLongPressCallback()V

    .line 17
    :cond_5
    iput-boolean v2, p0, Lsmartisan/widget/QuickBar;->mShowBg:Z

    .line 18
    iget p1, p0, Lsmartisan/widget/QuickBar;->mNowX:F

    iput p1, p0, Lsmartisan/widget/QuickBar;->mLastX:F

    .line 19
    iput v5, p0, Lsmartisan/widget/QuickBar;->mNowX:F

    .line 20
    iget p1, p0, Lsmartisan/widget/QuickBar;->mDrawTouchX:F

    iget v0, p0, Lsmartisan/widget/QuickBar;->mDrawTouchY:F

    invoke-direct {p0, p1, v0}, Lsmartisan/widget/QuickBar;->getIndex(FF)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/QuickBar;->mMoveIndex:I

    .line 21
    iget-boolean p1, p0, Lsmartisan/widget/QuickBar;->mIsStateChanged:Z

    if-nez p1, :cond_6

    .line 22
    iget p1, p0, Lsmartisan/widget/QuickBar;->mMoveIndex:I

    iget v0, p0, Lsmartisan/widget/QuickBar;->mStartIndex:I

    if-eq p1, v0, :cond_6

    .line 23
    iput-boolean v2, p0, Lsmartisan/widget/QuickBar;->mIsStateChanged:Z

    .line 24
    iput-boolean v1, p0, Lsmartisan/widget/QuickBar;->mIsDrawDownBg:Z

    .line 25
    invoke-direct {p0}, Lsmartisan/widget/QuickBar;->removeLongPressCallback()V

    .line 26
    :cond_6
    iget p1, p0, Lsmartisan/widget/QuickBar;->mState:I

    if-ne p1, v9, :cond_7

    .line 27
    iget p1, p0, Lsmartisan/widget/QuickBar;->mStartX:I

    int-to-float p1, p1

    cmpg-float p1, v5, p1

    if-gez p1, :cond_9

    .line 28
    iput v2, p0, Lsmartisan/widget/QuickBar;->mState:I

    .line 29
    iget p1, p0, Lsmartisan/widget/QuickBar;->mMissX:F

    invoke-direct {p0, v5, p1}, Lsmartisan/widget/QuickBar;->moveQuickBar(FF)V

    .line 30
    iget-object p1, p0, Lsmartisan/widget/QuickBar;->mQBListener:Lsmartisan/widget/QuickBar$QBListener;

    if-eqz p1, :cond_9

    .line 31
    invoke-interface {p1}, Lsmartisan/widget/QuickBar$QBListener;->onLetterGridShow()V

    goto :goto_0

    :cond_7
    if-ne p1, v8, :cond_8

    .line 32
    iget p1, p0, Lsmartisan/widget/QuickBar;->mNowX:F

    iget v0, p0, Lsmartisan/widget/QuickBar;->mLastX:F

    sub-float/2addr p1, v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_9

    iget p1, p0, Lsmartisan/widget/QuickBar;->mEndX:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_9

    .line 33
    iput v2, p0, Lsmartisan/widget/QuickBar;->mState:I

    .line 34
    iget p1, p0, Lsmartisan/widget/QuickBar;->mMissX:F

    invoke-direct {p0, v5, p1}, Lsmartisan/widget/QuickBar;->moveQuickBar(FF)V

    goto :goto_0

    :cond_8
    if-ne p1, v2, :cond_9

    .line 35
    iget p1, p0, Lsmartisan/widget/QuickBar;->mMissX:F

    invoke-direct {p0, v5, p1}, Lsmartisan/widget/QuickBar;->moveQuickBar(FF)V

    .line 36
    iget p1, p0, Lsmartisan/widget/QuickBar;->mState:I

    if-ne p1, v9, :cond_9

    .line 37
    iget-object p1, p0, Lsmartisan/widget/QuickBar;->mQBHideListener:Lsmartisan/widget/QuickBar$QBHideListener;

    if-eqz p1, :cond_9

    .line 38
    invoke-interface {p1}, Lsmartisan/widget/QuickBar$QBHideListener;->onLetterGridHidden()V

    .line 39
    :cond_9
    :goto_0
    iget p1, p0, Lsmartisan/widget/QuickBar;->mState:I

    if-eq p1, v8, :cond_a

    if-ne p1, v2, :cond_b

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p1

    iget v0, p0, Lsmartisan/widget/QuickBar;->mScreenWidth:I

    add-int/lit8 v0, v0, -0x64

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c

    :cond_b
    if-eq v6, v4, :cond_c

    .line 40
    iget-object p1, p0, Lsmartisan/widget/QuickBar;->mQBListener:Lsmartisan/widget/QuickBar$QBListener;

    if-eqz p1, :cond_c

    if-ltz v4, :cond_c

    .line 41
    iget-object p1, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v4, p1, :cond_c

    .line 42
    iget-object p1, p0, Lsmartisan/widget/QuickBar;->mQBListener:Lsmartisan/widget/QuickBar$QBListener;

    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v1, Lsmartisan/widget/QuickBar;->LETTER_CHANGED_SLIDE:I

    invoke-interface {p1, v0, v1}, Lsmartisan/widget/QuickBar$QBListener;->onLetterChanged(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 43
    iput v4, p0, Lsmartisan/widget/QuickBar;->mChoose:I

    .line 44
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    .line 45
    :cond_d
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mQBTouchListener:Lsmartisan/widget/QuickBar$QBTouchListener;

    if-eqz v0, :cond_e

    .line 46
    invoke-interface {v0}, Lsmartisan/widget/QuickBar$QBTouchListener;->onQBTouchUp()V

    .line 47
    :cond_e
    invoke-direct {p0}, Lsmartisan/widget/QuickBar;->removeLongPressCallback()V

    .line 48
    iget-boolean v0, p0, Lsmartisan/widget/QuickBar;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_10

    .line 49
    iget p1, p0, Lsmartisan/widget/QuickBar;->mPrePosition:I

    if-ltz p1, :cond_f

    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mPopupGridView:Lsmartisan/widget/SurnameGridView;

    if-eqz v0, :cond_f

    .line 50
    invoke-virtual {v0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 52
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mPopupGridView:Lsmartisan/widget/SurnameGridView;

    iget v3, p0, Lsmartisan/widget/QuickBar;->mPrePosition:I

    const-wide/16 v4, -0x1

    invoke-virtual {v0, p1, v3, v4, v5}, Landroid/widget/GridView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_f
    const/4 p1, -0x1

    .line 53
    iput p1, p0, Lsmartisan/widget/QuickBar;->mPrePosition:I

    .line 54
    iput-boolean v1, p0, Lsmartisan/widget/QuickBar;->mIsDrawDownBg:Z

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    .line 56
    :cond_10
    iget-boolean v0, p0, Lsmartisan/widget/QuickBar;->mHasDismissedSurnamePopupWindow:Z

    if-eqz v0, :cond_11

    .line 57
    iput-boolean v1, p0, Lsmartisan/widget/QuickBar;->mHasDismissedSurnamePopupWindow:Z

    .line 58
    iget v0, p0, Lsmartisan/widget/QuickBar;->mState:I

    if-ne v0, v8, :cond_11

    .line 59
    iput-boolean v1, p0, Lsmartisan/widget/QuickBar;->mIsDrawDownBg:Z

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    .line 61
    :cond_11
    iget v0, p0, Lsmartisan/widget/QuickBar;->mState:I

    if-ne v0, v9, :cond_12

    .line 62
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mQBListener:Lsmartisan/widget/QuickBar$QBListener;

    if-eqz v0, :cond_12

    if-ltz v4, :cond_12

    .line 63
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_12

    .line 64
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mQBListener:Lsmartisan/widget/QuickBar$QBListener;

    iget-object v3, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget v5, Lsmartisan/widget/QuickBar;->LETTER_CHANGED_SLIDE:I

    invoke-interface {v0, v3, v5}, Lsmartisan/widget/QuickBar$QBListener;->onLetterChanged(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 65
    iput v4, p0, Lsmartisan/widget/QuickBar;->mChoose:I

    .line 66
    :cond_12
    iget v9, p0, Lsmartisan/widget/QuickBar;->mStateActionDown:I

    iget v10, p0, Lsmartisan/widget/QuickBar;->mState:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iget v12, p0, Lsmartisan/widget/QuickBar;->mStartIndex:I

    iget-boolean v13, p0, Lsmartisan/widget/QuickBar;->mIsStateChanged:Z

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lsmartisan/widget/QuickBar;->letterChanged(IIFIZ)V

    .line 67
    iput v7, p0, Lsmartisan/widget/QuickBar;->mMissX:F

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p1

    iget v0, p0, Lsmartisan/widget/QuickBar;->mStartX:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_13

    .line 69
    invoke-virtual {p0}, Lsmartisan/widget/QuickBar;->resetBackground()V

    goto/16 :goto_1

    .line 70
    :cond_13
    iget p1, p0, Lsmartisan/widget/QuickBar;->mState:I

    if-ne p1, v2, :cond_1b

    .line 71
    iput-boolean v1, p0, Lsmartisan/widget/QuickBar;->mIsDrawDownBg:Z

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 73
    iget p1, p0, Lsmartisan/widget/QuickBar;->mNowX:F

    iget v0, p0, Lsmartisan/widget/QuickBar;->mLastX:F

    sub-float/2addr p1, v0

    cmpg-float p1, p1, v7

    if-gtz p1, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p1

    iget v0, p0, Lsmartisan/widget/QuickBar;->mScreenWidth:I

    iget v3, p0, Lsmartisan/widget/QuickBar;->mQuickBarX:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_14

    .line 74
    invoke-direct {p0}, Lsmartisan/widget/QuickBar;->showLetterGridWithAnim()V

    goto :goto_1

    .line 75
    :cond_14
    invoke-direct {p0, v1}, Lsmartisan/widget/QuickBar;->hideLetterGridWithAnim(I)V

    goto :goto_1

    .line 76
    :cond_15
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mQBTouchListener:Lsmartisan/widget/QuickBar$QBTouchListener;

    if-eqz v0, :cond_16

    .line 77
    invoke-interface {v0}, Lsmartisan/widget/QuickBar$QBTouchListener;->onQBTouchDown()V

    .line 78
    :cond_16
    iput-boolean v1, p0, Lsmartisan/widget/QuickBar;->mHasPerformedLongPress:Z

    .line 79
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_17

    .line 80
    invoke-direct {p0}, Lsmartisan/widget/QuickBar;->loadResource()V

    .line 81
    :cond_17
    iput v5, p0, Lsmartisan/widget/QuickBar;->mLastX:F

    .line 82
    iput v5, p0, Lsmartisan/widget/QuickBar;->mNowX:F

    .line 83
    iget v0, p0, Lsmartisan/widget/QuickBar;->mDrawTouchX:F

    iget v3, p0, Lsmartisan/widget/QuickBar;->mDrawTouchY:F

    invoke-direct {p0, v0, v3}, Lsmartisan/widget/QuickBar;->getIndex(FF)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/QuickBar;->mStartIndex:I

    .line 84
    iput-boolean v1, p0, Lsmartisan/widget/QuickBar;->mIsStateChanged:Z

    .line 85
    iput-boolean v2, p0, Lsmartisan/widget/QuickBar;->mIsDrawDownBg:Z

    .line 86
    iget v0, p0, Lsmartisan/widget/QuickBar;->mState:I

    iput v0, p0, Lsmartisan/widget/QuickBar;->mStateActionDown:I

    .line 87
    iput-boolean v2, p0, Lsmartisan/widget/QuickBar;->mShowBg:Z

    if-ne v0, v8, :cond_18

    .line 88
    iget v0, p0, Lsmartisan/widget/QuickBar;->mEndX:I

    int-to-float v0, v0

    sub-float/2addr v5, v0

    iput v5, p0, Lsmartisan/widget/QuickBar;->mMissX:F

    .line 89
    :cond_18
    iget v0, p0, Lsmartisan/widget/QuickBar;->mState:I

    if-ne v0, v9, :cond_19

    .line 90
    iput v7, p0, Lsmartisan/widget/QuickBar;->mMissX:F

    if-eq v6, v4, :cond_19

    .line 91
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mQBListener:Lsmartisan/widget/QuickBar$QBListener;

    if-eqz v0, :cond_19

    if-ltz v4, :cond_19

    .line 92
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_19

    .line 93
    iput v4, p0, Lsmartisan/widget/QuickBar;->mChoose:I

    .line 94
    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 95
    iget v0, p0, Lsmartisan/widget/QuickBar;->mState:I

    if-ne v0, v8, :cond_1b

    .line 96
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 97
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 98
    iput-boolean v2, p0, Lsmartisan/widget/QuickBar;->mHasDismissedSurnamePopupWindow:Z

    .line 99
    :cond_1a
    invoke-direct {p0, p1}, Lsmartisan/widget/QuickBar;->postLongPress(Landroid/view/MotionEvent;)V

    :cond_1b
    :goto_1
    return v2
.end method

.method public hideLetterGrid()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lsmartisan/widget/QuickBar;->hideLetterGrid(Z)V

    return-void
.end method

.method public hideLetterGrid(Z)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/QuickBar;->mIsVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lsmartisan/widget/QuickBar;->isLetterGridHide()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lsmartisan/widget/QuickBar;->hideLetterGridWithAnim(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Lsmartisan/widget/QuickBar;->onHideLetterGridAnimationEnd(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initLetters()V
    .locals 6

    .line 1
    iget-object v0, p0, Lsmartisan/widget/QuickBar;->mSpecialSymbol:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget v2, p0, Lsmartisan/widget/QuickBar;->mSpecialPosition:I

    if-ne v2, v0, :cond_2

    :cond_1
    iget v2, p0, Lsmartisan/widget/QuickBar;->mPoundPosition:I

    sget v3, Lsmartisan/widget/QuickBar;->POUND_POSITION_TOP:I

    if-eq v2, v3, :cond_2

    return-void

    .line 3
    :cond_2
    iget v2, p0, Lsmartisan/widget/QuickBar;->mSpecailIconPosition:I

    sget v3, Lsmartisan/widget/QuickBar;->SPECIAL_ICON_POSITION_TOP:I

    if-ne v2, v3, :cond_3

    .line 4
    iput v0, p0, Lsmartisan/widget/QuickBar;->mSpecialPosition:I

    .line 5
    :cond_3
    iget-object v2, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v2, p0, Lsmartisan/widget/QuickBar;->ENGLISH_LETTERS:[Ljava/lang/String;

    move v3, v1

    .line 7
    :goto_1
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_4

    .line 8
    iget-object v4, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_4
    iget v2, p0, Lsmartisan/widget/QuickBar;->mSpecailIconPosition:I

    sget v3, Lsmartisan/widget/QuickBar;->SPECIAL_ICON_POSITION_TOP:I

    if-ne v2, v3, :cond_5

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_5

    .line 10
    iget-object v3, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    iget-object v4, p0, Lsmartisan/widget/QuickBar;->mSpecialSymbol:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 11
    :cond_5
    iget-boolean v2, p0, Lsmartisan/widget/QuickBar;->mPoundVisibility:Z

    if-eqz v2, :cond_8

    .line 12
    iget v2, p0, Lsmartisan/widget/QuickBar;->mPoundPosition:I

    sget v3, Lsmartisan/widget/QuickBar;->POUND_POSITION_TOP:I

    const-string v4, "#"

    if-ne v2, v3, :cond_7

    .line 13
    iget v2, p0, Lsmartisan/widget/QuickBar;->mSpecailIconPosition:I

    sget v3, Lsmartisan/widget/QuickBar;->SPECIAL_ICON_POSITION_TOP:I

    if-ne v2, v3, :cond_6

    .line 14
    iget-object v2, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 15
    :cond_6
    iget-object v2, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 16
    :cond_7
    iget-object v2, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_8
    :goto_3
    iget v2, p0, Lsmartisan/widget/QuickBar;->mSpecailIconPosition:I

    sget v3, Lsmartisan/widget/QuickBar;->SPECIAL_ICON_POSITION_BOTTOM:I

    if-ne v2, v3, :cond_9

    .line 18
    iget-object v2, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lsmartisan/widget/QuickBar;->mSpecialPosition:I

    :goto_4
    if-ge v1, v0, :cond_9

    .line 19
    iget-object v2, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    iget-object v3, p0, Lsmartisan/widget/QuickBar;->mSpecialSymbol:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 20
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLetters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsmartisan/widget/QuickBar;->printLog(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public initSpecialIcons([I[[Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    array-length v0, p1

    if-eqz v0, :cond_4

    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 3
    aget-object v0, p2, v0

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 4
    iput-object p1, p0, Lsmartisan/widget/QuickBar;->mSpecialSymbol:[I

    .line 5
    iput-object p2, p0, Lsmartisan/widget/QuickBar;->mSpecialIcons:[[Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {p0}, Lsmartisan/widget/QuickBar;->initLetters()V

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Paramer iconsBitmaps[x][y], y must is 3 !!!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The symbols.length must equals iconsBitmap.length !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public isLetterGridHidden()Z
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/QuickBar;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLetterGridHide()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/QuickBar;->mIsPerformingHideAnim:Z

    if-nez v0, :cond_1

    iget v0, p0, Lsmartisan/widget/QuickBar;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isLetterGridShow()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/QuickBar;->mIsPerformingShowAnim:Z

    if-nez v0, :cond_1

    iget v0, p0, Lsmartisan/widget/QuickBar;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isLetterGridShown()Z
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/QuickBar;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPerformingAnim()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/QuickBar;->mIsPerformingShowAnim:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lsmartisan/widget/QuickBar;->mIsPerformingHideAnim:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 3
    iget-boolean v3, v0, Lsmartisan/widget/QuickBar;->mShowBg:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v3

    iget v5, v0, Lsmartisan/widget/QuickBar;->mStartX:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, v0, Lsmartisan/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v3, :cond_2

    .line 4
    iget v5, v0, Lsmartisan/widget/QuickBar;->mMeasuredHeight:I

    invoke-virtual {v3}, Landroid/graphics/drawable/NinePatchDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v5, v3, :cond_1

    .line 5
    new-instance v3, Landroid/graphics/Rect;

    iget v5, v0, Lsmartisan/widget/QuickBar;->mWidth:I

    iget v6, v0, Lsmartisan/widget/QuickBar;->mMeasuredHeight:I

    invoke-direct {v3, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6
    iget-object v5, v0, Lsmartisan/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 7
    :cond_1
    iget-object v3, v0, Lsmartisan/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 8
    :cond_2
    invoke-direct {v0, v2}, Lsmartisan/widget/QuickBar;->getSingleLetterHeight(I)F

    move-result v2

    .line 9
    invoke-direct/range {p0 .. p0}, Lsmartisan/widget/QuickBar;->calculateVisibleLettersIndex()Ljava/util/ArrayList;

    move-result-object v3

    .line 10
    invoke-direct {v0, v3}, Lsmartisan/widget/QuickBar;->calculateDotAlignmentHeight(Ljava/util/ArrayList;)I

    move-result v5

    const/4 v6, 0x1

    if-ltz v5, :cond_3

    .line 11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, v0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    move v7, v4

    .line 12
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v8, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 13
    iget v10, v0, Lsmartisan/widget/QuickBar;->mQuickBarFontX:I

    int-to-float v10, v10

    iget-object v11, v0, Lsmartisan/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    iget-object v12, v0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    int-to-float v11, v5

    add-float/2addr v11, v2

    int-to-float v13, v8

    mul-float/2addr v13, v11

    div-float v12, v2, v12

    add-float/2addr v13, v12

    .line 14
    iget v14, v0, Lsmartisan/widget/QuickBar;->mChoose:I

    const/4 v15, -0x1

    if-ne v9, v14, :cond_4

    iget v14, v0, Lsmartisan/widget/QuickBar;->mState:I

    const/4 v4, 0x3

    if-ne v14, v4, :cond_4

    .line 15
    iget-object v4, v0, Lsmartisan/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget-object v4, v0, Lsmartisan/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 17
    iget-object v4, v0, Lsmartisan/widget/QuickBar;->mHighlight:Landroid/graphics/Bitmap;

    iget v14, v0, Lsmartisan/widget/QuickBar;->mHighlightX:I

    int-to-float v14, v14

    iget v15, v0, Lsmartisan/widget/QuickBar;->mHighlightY:I

    int-to-float v15, v15

    sub-float v15, v13, v15

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v14, v15, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    goto :goto_3

    .line 18
    :cond_4
    iget-object v4, v0, Lsmartisan/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    iget v6, v0, Lsmartisan/widget/QuickBar;->mChoose:I

    if-ne v6, v15, :cond_5

    iget v6, v0, Lsmartisan/widget/QuickBar;->mNoChooseColor:I

    goto :goto_2

    :cond_5
    iget v6, v0, Lsmartisan/widget/QuickBar;->mHasChooseColor:I

    :goto_2
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object v4, v0, Lsmartisan/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 20
    :goto_3
    iget v4, v0, Lsmartisan/widget/QuickBar;->mSpecialPosition:I

    if-ge v8, v4, :cond_6

    iget v4, v0, Lsmartisan/widget/QuickBar;->mSpecailIconPosition:I

    sget v14, Lsmartisan/widget/QuickBar;->SPECIAL_ICON_POSITION_TOP:I

    if-ne v4, v14, :cond_6

    .line 21
    invoke-direct {v0, v8, v1, v10, v13}, Lsmartisan/widget/QuickBar;->drawSpecialLetters(ILandroid/graphics/Canvas;FF)V

    :goto_4
    const/4 v15, 0x1

    goto :goto_7

    .line 22
    :cond_6
    iget v4, v0, Lsmartisan/widget/QuickBar;->mSpecialPosition:I

    if-lt v8, v4, :cond_7

    iget v14, v0, Lsmartisan/widget/QuickBar;->mSpecailIconPosition:I

    sget v15, Lsmartisan/widget/QuickBar;->SPECIAL_ICON_POSITION_BOTTOM:I

    if-ne v14, v15, :cond_7

    sub-int v4, v8, v4

    .line 23
    invoke-direct {v0, v4, v1, v10, v13}, Lsmartisan/widget/QuickBar;->drawSpecialLetters(ILandroid/graphics/Canvas;FF)V

    goto :goto_4

    .line 24
    :cond_7
    iget-object v4, v0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v14, "."

    .line 25
    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 26
    iget v4, v0, Lsmartisan/widget/QuickBar;->mQuickBarWidth:I

    iget v10, v0, Lsmartisan/widget/QuickBar;->mBgLeftInvisiblePadding:I

    add-int/2addr v4, v10

    iget-object v10, v0, Lsmartisan/widget/QuickBar;->mIconDot:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v4, v10

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 27
    iget v10, v0, Lsmartisan/widget/QuickBar;->mIconDotYOffset:I

    int-to-float v10, v10

    sub-float/2addr v13, v10

    .line 28
    iget-object v10, v0, Lsmartisan/widget/QuickBar;->mIconDot:Landroid/graphics/Bitmap;

    const/4 v14, 0x0

    invoke-virtual {v1, v10, v4, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 29
    :cond_8
    invoke-direct {v0, v4}, Lsmartisan/widget/QuickBar;->isKoreaLetter(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    invoke-static {v4}, Lsmartisan/widget/QuickBar;->isJapaneseLetter(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    goto :goto_5

    .line 30
    :cond_9
    iget-object v14, v0, Lsmartisan/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    iget v15, v0, Lsmartisan/widget/QuickBar;->mQuickBarFontSize:I

    int-to-float v15, v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v15, 0x1

    goto :goto_6

    .line 31
    :cond_a
    :goto_5
    iget-object v14, v0, Lsmartisan/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v15, 0x42080000    # 34.0f

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    iget-object v14, v0, Lsmartisan/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 33
    :goto_6
    iget v14, v0, Lsmartisan/widget/QuickBar;->mFontY:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    iget-object v14, v0, Lsmartisan/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v10, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_7
    add-int/lit8 v8, v8, 0x1

    if-eqz v7, :cond_b

    .line 34
    iget-object v4, v0, Lsmartisan/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-eq v9, v4, :cond_b

    int-to-float v4, v8

    mul-float/2addr v11, v4

    add-float/2addr v11, v12

    .line 35
    iget v4, v0, Lsmartisan/widget/QuickBar;->mQuickBarWidth:I

    iget v9, v0, Lsmartisan/widget/QuickBar;->mBgLeftInvisiblePadding:I

    add-int/2addr v4, v9

    iget-object v9, v0, Lsmartisan/widget/QuickBar;->mIconDot:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v4, v9

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 36
    iget v9, v0, Lsmartisan/widget/QuickBar;->mIconDotYOffset:I

    int-to-float v9, v9

    sub-float/2addr v11, v9

    .line 37
    iget-object v9, v0, Lsmartisan/widget/QuickBar;->mIconDot:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v4, v11, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    :cond_b
    move v4, v6

    move v6, v15

    goto/16 :goto_1

    .line 38
    :cond_c
    iget-boolean v2, v0, Lsmartisan/widget/QuickBar;->mShowBg:Z

    if-eqz v2, :cond_d

    iget-boolean v2, v0, Lsmartisan/widget/QuickBar;->mIsDrawDownBg:Z

    if-eqz v2, :cond_d

    .line 39
    invoke-direct/range {p0 .. p1}, Lsmartisan/widget/QuickBar;->drawTouchBg(Landroid/graphics/Canvas;)V

    :cond_d
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    invoke-direct {p0, p2}, Lsmartisan/widget/QuickBar;->measureHeight(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/QuickBar;->mMeasuredHeight:I

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/QuickBar;->measureSingleHeight()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 6
    invoke-direct {p0, p1}, Lsmartisan/widget/QuickBar;->setHostWidth(I)V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    if-ne p1, p0, :cond_1

    .line 2
    iget-object p1, p0, Lsmartisan/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lsmartisan/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lsmartisan/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public resetBackground()V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/QuickBar;->mStartX:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setX(F)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lsmartisan/widget/QuickBar;->mShowBg:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lsmartisan/widget/QuickBar;->mChoose:I

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lsmartisan/widget/QuickBar;->mState:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHeightFixed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/QuickBar;->mIsFixedHeight:Z

    return-void
.end method

.method public setLongPressEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/QuickBar;->mLongPressEnabled:Z

    return-void
.end method

.method public setPoundPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/QuickBar;->mPoundPosition:I

    return-void
.end method

.method public setPoundVisibility(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/QuickBar;->mPoundVisibility:Z

    return-void
.end method

.method public setQBHideListener(Lsmartisan/widget/QuickBar$QBHideListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/QuickBar;->mQBHideListener:Lsmartisan/widget/QuickBar$QBHideListener;

    return-void
.end method

.method public setQBListener(Lsmartisan/widget/QuickBar$QBListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/QuickBar;->mQBListener:Lsmartisan/widget/QuickBar$QBListener;

    return-void
.end method

.method public setQBTouchListener(Lsmartisan/widget/QuickBar$QBTouchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/QuickBar;->mQBTouchListener:Lsmartisan/widget/QuickBar$QBTouchListener;

    return-void
.end method

.method public setSpecailIconPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/QuickBar;->mSpecailIconPosition:I

    return-void
.end method

.method public setSurnameListener(Lsmartisan/widget/QuickBar$SurnameListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/QuickBar;->mSurnameListener:Lsmartisan/widget/QuickBar$SurnameListener;

    return-void
.end method
