.class Lsmartisan/widget/search/OptionPopupWindow$ViewHolder;
.super Ljava/lang/Object;
.source "OptionPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/search/OptionPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mCheckedImageView:Landroid/widget/ImageView;

.field mIconImageView:Landroid/widget/ImageView;

.field mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lsmartisan/widget/search/OptionPopupWindow;


# direct methods
.method private constructor <init>(Lsmartisan/widget/search/OptionPopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/OptionPopupWindow$ViewHolder;->this$0:Lsmartisan/widget/search/OptionPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsmartisan/widget/search/OptionPopupWindow;Lsmartisan/widget/search/OptionPopupWindow$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsmartisan/widget/search/OptionPopupWindow$ViewHolder;-><init>(Lsmartisan/widget/search/OptionPopupWindow;)V

    return-void
.end method
