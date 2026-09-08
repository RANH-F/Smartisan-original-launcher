.class public Lsmartisan/widget/SmartisanDateTimePickerDialog;
.super Landroid/app/Dialog;
.source "SmartisanDateTimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mCallBack:Lsmartisan/widget/OnTimeSetListener;

.field private final mDateTimePicker:Lsmartisan/widget/SmartisanDateTimePicker;

.field private final mTitleBar:Landroid/view/View;

.field private final mTitleParent:Lsmartisan/widget/MenuDialogTitleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsmartisan/widget/OnTimeSetListener;J)V
    .locals 9

    .line 1
    invoke-static {}, Lsmartisan/util/CalendarUtils;->getMaxTimeMills()J

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lsmartisan/widget/SmartisanDateTimePickerDialog;-><init>(Landroid/content/Context;Lsmartisan/widget/OnTimeSetListener;JJJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lsmartisan/widget/OnTimeSetListener;JJJ)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    .line 2
    sget v2, Lsmartisan/widget/R$style;->PickTimeDialogTheme:I

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object v2, p2

    .line 3
    iput-object v2, v0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mCallBack:Lsmartisan/widget/OnTimeSetListener;

    .line 4
    sget v2, Lsmartisan/widget/R$layout;->date_time_picker_dialog:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 5
    sget v2, Lsmartisan/widget/R$id;->menu_dialog_title_bar_parent:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lsmartisan/widget/MenuDialogTitleBar;

    iput-object v2, v0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mTitleParent:Lsmartisan/widget/MenuDialogTitleBar;

    .line 6
    sget v2, Lsmartisan/widget/R$id;->menu_dialog_title_bar_container:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mTitleBar:Landroid/view/View;

    .line 7
    iget-object v2, v0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mTitleParent:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v2}, Lsmartisan/widget/MenuDialogTitleBar;->getTitleView()Landroid/widget/TextView;

    move-result-object v2

    const-wide/high16 v3, 0x4033000000000000L    # 19.0

    invoke-static {p1, v3, v4}, Lsmartisan/util/Utils;->dipTopx(Landroid/content/Context;D)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lsmartisan/util/Utils;->setMaxTextSizeForTextView(Landroid/widget/TextView;F)V

    .line 8
    sget v2, Lsmartisan/widget/R$id;->date_time_picker:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lsmartisan/widget/SmartisanDateTimePicker;

    iput-object v2, v0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mDateTimePicker:Lsmartisan/widget/SmartisanDateTimePicker;

    .line 9
    iget-object v3, v0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mDateTimePicker:Lsmartisan/widget/SmartisanDateTimePicker;

    const/4 v10, 0x0

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v3 .. v10}, Lsmartisan/widget/SmartisanDateTimePicker;->init(JJJLsmartisan/widget/SmartisanDateTimePicker$OnDateChangedListener;)V

    .line 10
    iget-object v2, v0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mTitleParent:Lsmartisan/widget/MenuDialogTitleBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftButtonVisibility(I)V

    .line 11
    iget-object v2, v0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mTitleParent:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v2, v3}, Lsmartisan/widget/MenuDialogTitleBar;->addCompleteImage(Z)V

    .line 12
    iget-object v2, v0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mTitleParent:Lsmartisan/widget/MenuDialogTitleBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lsmartisan/widget/MenuDialogTitleBar;->addCancelImage(Z)V

    .line 13
    iget-object v2, v0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mTitleParent:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v2, p0}, Lsmartisan/widget/MenuDialogTitleBar;->setOnLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v2, v0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mTitleParent:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v2, p0}, Lsmartisan/widget/MenuDialogTitleBar;->setOnRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x50

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    .line 16
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v2, v4, :cond_0

    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v4}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 18
    :cond_0
    sget v2, Lsmartisan/widget/R$drawable;->time_picker_widget_bottom:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 19
    iget-object v2, v0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mDateTimePicker:Lsmartisan/widget/SmartisanDateTimePicker;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v4, Lsmartisan/widget/SmartisanDateTimePickerDialog$1;

    invoke-direct {v4, p0, v1}, Lsmartisan/widget/SmartisanDateTimePickerDialog$1;-><init>(Lsmartisan/widget/SmartisanDateTimePickerDialog;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 20
    :goto_0
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/SmartisanDateTimePickerDialog;)Lsmartisan/widget/SmartisanDateTimePicker;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mDateTimePicker:Lsmartisan/widget/SmartisanDateTimePicker;

    return-object p0
.end method

.method static synthetic access$100(Lsmartisan/widget/SmartisanDateTimePickerDialog;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mTitleBar:Landroid/view/View;

    return-object p0
.end method

.method private tryNotifyDateSet()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mCallBack:Lsmartisan/widget/OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mDateTimePicker:Lsmartisan/widget/SmartisanDateTimePicker;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mCallBack:Lsmartisan/widget/OnTimeSetListener;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mDateTimePicker:Lsmartisan/widget/SmartisanDateTimePicker;

    invoke-virtual {v1}, Lsmartisan/widget/SmartisanDateTimePicker;->getCurrentMills()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lsmartisan/widget/OnTimeSetListener;->onTimeSet(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lsmartisan/widget/R$id;->btn_cancel_left:I

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lsmartisan/widget/R$id;->btn_cancel_right:I

    if-ne p1, v0, :cond_1

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/SmartisanDateTimePickerDialog;->tryNotifyDateSet()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mDateTimePicker:Lsmartisan/widget/SmartisanDateTimePicker;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public setLeftButtonText(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanDateTimePickerDialog;->setLeftButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mTitleParent:Lsmartisan/widget/MenuDialogTitleBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftButtonText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setLeftImageRes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mTitleParent:Lsmartisan/widget/MenuDialogTitleBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftImageViewRes(I)V

    :cond_0
    return-void
.end method

.method public setRightButtonText(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanDateTimePickerDialog;->setRightButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRightButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mTitleParent:Lsmartisan/widget/MenuDialogTitleBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setRightButtonText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setRightImageRes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mTitleParent:Lsmartisan/widget/MenuDialogTitleBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setRightImageRes(I)V

    :cond_0
    return-void
.end method

.method public updateTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePickerDialog;->mTitleParent:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
