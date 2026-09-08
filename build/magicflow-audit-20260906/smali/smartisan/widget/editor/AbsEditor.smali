.class public abstract Lsmartisan/widget/editor/AbsEditor;
.super Landroid/widget/LinearLayout;
.source "AbsEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final BG_STYLE_BOTTOM:I = 0x4

.field public static final BG_STYLE_MIDDLE:I = 0x3

.field public static final BG_STYLE_SINGLE:I = 0x1

.field public static final BG_STYLE_TOP:I = 0x2

.field private static final EDITOR_TYPE_DEFAULT:I = 0x0

.field private static final EDITOR_TYPE_PASSWORD:I = 0x1

.field private static final EDITOR_TYPE_QUICK_DELETE:I = 0x2


# instance fields
.field protected mBackgroundStyle:I

.field protected mEditor:Landroid/widget/EditText;

.field private mEditorType:I

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLeftContainer:Landroid/widget/FrameLayout;

.field protected mMidContainer:Landroid/widget/LinearLayout;

.field private mRightContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/editor/AbsEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/editor/AbsEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 6
    sget v2, Lsmartisan/widget/R$layout;->abs_editor_layout:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    sget v2, Lsmartisan/widget/R$id;->left_container:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lsmartisan/widget/editor/AbsEditor;->mLeftContainer:Landroid/widget/FrameLayout;

    .line 8
    sget v2, Lsmartisan/widget/R$id;->mid_container:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lsmartisan/widget/editor/AbsEditor;->mMidContainer:Landroid/widget/LinearLayout;

    .line 9
    sget v2, Lsmartisan/widget/R$id;->right_container:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lsmartisan/widget/editor/AbsEditor;->mRightContainer:Landroid/widget/LinearLayout;

    .line 10
    sget-object v2, Lsmartisan/widget/R$styleable;->AbsEditor:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    sget p2, Lsmartisan/widget/R$styleable;->AbsEditor_editorType:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/editor/AbsEditor;->mEditorType:I

    .line 12
    sget p2, Lsmartisan/widget/R$styleable;->AbsEditor_backgroundStyle:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/editor/AbsEditor;->mBackgroundStyle:I

    .line 13
    invoke-virtual {p0}, Lsmartisan/widget/editor/AbsEditor;->getDefaultLeftLayout()I

    move-result p2

    .line 14
    invoke-virtual {p0}, Lsmartisan/widget/editor/AbsEditor;->getDefaultMidLayout()I

    move-result p3

    .line 15
    invoke-virtual {p0}, Lsmartisan/widget/editor/AbsEditor;->getDefaultRightLayout()I

    move-result v2

    if-lez p2, :cond_0

    .line 16
    iget-object v4, p0, Lsmartisan/widget/editor/AbsEditor;->mLeftContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move p2, v0

    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0, v0}, Lsmartisan/widget/editor/AbsEditor;->setLeftContainerVisible(Z)V

    move p2, v3

    .line 18
    :goto_0
    iget-object v4, p0, Lsmartisan/widget/editor/AbsEditor;->mMidContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    if-lez v2, :cond_1

    .line 19
    iget-object p2, p0, Lsmartisan/widget/editor/AbsEditor;->mRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move p2, v0

    .line 20
    :cond_1
    invoke-direct {p0}, Lsmartisan/widget/editor/AbsEditor;->initViews()V

    .line 21
    iget-object p3, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    if-eqz p3, :cond_2

    .line 22
    sget v0, Lsmartisan/widget/R$styleable;->AbsEditor_android_hint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 23
    sget p3, Lsmartisan/widget/R$styleable;->AbsEditor_singleLine:I

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lsmartisan/widget/editor/AbsEditor;->setSingleLine(Z)V

    .line 24
    sget p3, Lsmartisan/widget/R$styleable;->AbsEditor_editable:I

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 25
    invoke-virtual {p0, p3}, Lsmartisan/widget/editor/AbsEditor;->setEditable(Z)V

    if-eqz p2, :cond_2

    .line 26
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method private initViews()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/editor/AbsEditor;->initLeftWidget()V

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/editor/AbsEditor;->initMidWidget()V

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/editor/AbsEditor;->initRightWidget()V

    return-void
.end method

.method private setLeftContainerVisible(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mLeftContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mMidContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x9

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 p1, 0x1

    .line 4
    sget v1, Lsmartisan/widget/R$id;->left_container:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6
    :goto_1
    iget-object p1, p0, Lsmartisan/widget/editor/AbsEditor;->mMidContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setRightPaddingForSpecialEditor()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->editor_text_icon_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    instance-of v2, v1, Lsmartisan/widget/PasswordEditText;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lsmartisan/widget/PasswordEditText;

    invoke-virtual {v1, v0}, Lsmartisan/widget/PasswordEditText;->setEyePaddingLeft(I)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    check-cast v0, Lsmartisan/widget/PasswordEditText;

    invoke-virtual {v0, v3}, Lsmartisan/widget/PasswordEditText;->setEyePaddingRight(I)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v2, v1, Lsmartisan/widget/QuickDeleteEditText;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Lsmartisan/widget/QuickDeleteEditText;

    invoke-virtual {v1, v0}, Lsmartisan/widget/QuickDeleteEditText;->setIconPaddingLeft(I)V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    check-cast v0, Lsmartisan/widget/QuickDeleteEditText;

    invoke-virtual {v0, v3}, Lsmartisan/widget/QuickDeleteEditText;->setIconPaddingRight(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addRightViewComponent(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget v0, Lsmartisan/widget/R$id;->right_view_component:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected abstract getDefaultLeftLayout()I
.end method

.method protected getDefaultMidLayout()I
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditorType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    sget v0, Lsmartisan/widget/R$layout;->edit_text:I

    return v0

    .line 3
    :cond_0
    sget v0, Lsmartisan/widget/R$layout;->quick_del_edit_text:I

    return v0

    .line 4
    :cond_1
    sget v0, Lsmartisan/widget/R$layout;->pwd_edit_text:I

    return v0
.end method

.method protected abstract getDefaultRightLayout()I
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method public getEditor()Landroid/widget/EditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method protected abstract initLeftWidget()V
.end method

.method protected initMidWidget()V
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$id;->editor:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/editor/AbsEditor;->setRightPaddingForSpecialEditor()V

    return-void
.end method

.method protected abstract initRightWidget()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2
    iget-object p1, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lsmartisan/widget/editor/AbsEditor;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lsmartisan/widget/editor/AbsEditor;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 5
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/editor/AbsEditor;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method

.method public setBackgroundStyle(I)V
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/editor/AbsEditor;->mBackgroundStyle:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    sget v0, Lsmartisan/widget/R$drawable;->editor_bg_bottom:I

    goto :goto_0

    .line 3
    :cond_2
    sget v0, Lsmartisan/widget/R$drawable;->editor_bg_middle:I

    goto :goto_0

    .line 4
    :cond_3
    sget v0, Lsmartisan/widget/R$drawable;->editor_bg_top:I

    goto :goto_0

    .line 5
    :cond_4
    sget v0, Lsmartisan/widget/R$drawable;->editor_bg_single:I

    :goto_0
    if-lez v0, :cond_5

    .line 6
    iput p1, p0, Lsmartisan/widget/editor/AbsEditor;->mBackgroundStyle:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_5
    return-void
.end method

.method protected setContainerLeftPadding(I)V
    .locals 4

    .line 1
    sget v0, Lsmartisan/widget/R$id;->container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected setContainerRightPadding(I)V
    .locals 4

    .line 1
    sget v0, Lsmartisan/widget/R$id;->container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setEditable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public setEditorGravity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    return-void
.end method

.method public setEditorMarginVertically(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 3
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 4
    iget-object p1, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method public setLeftContainerCenterVertical(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mLeftContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xf

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4
    :goto_0
    iget-object p1, p0, Lsmartisan/widget/editor/AbsEditor;->mLeftContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setParagraphMode(Z)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lsmartisan/widget/editor/AbsEditor;->setSingleLine(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->editor_large_vertical_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->editor_small_vertical_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4
    :goto_0
    invoke-virtual {p0, v0, v0}, Lsmartisan/widget/editor/AbsEditor;->setEditorMarginVertically(II)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/16 p1, 0x30

    goto :goto_1

    :cond_1
    const/16 p1, 0x10

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditorType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    :cond_0
    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/editor/AbsEditor;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/editor/AbsEditor;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method
