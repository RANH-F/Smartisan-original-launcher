.class public Lsmartisan/widget/SmartisanDatePickerExDialog;
.super Landroid/app/Dialog;
.source "SmartisanDatePickerExDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lsmartisan/widget/SmartisanDatePickerEx$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;

.field private final mDatePicker:Lsmartisan/widget/SmartisanDatePickerEx;

.field private mPickerType:Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;

.field private final mTitle:Lsmartisan/widget/MenuDialogTitleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;III)V
    .locals 7

    .line 1
    sget-object v6, Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;->EVENT:Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lsmartisan/widget/SmartisanDatePickerExDialog;-><init>(Landroid/content/Context;Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;IIILsmartisan/widget/SmartisanDatePickerEx$DatePickerType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;IIILsmartisan/widget/SmartisanDatePickerEx$DatePickerType;)V
    .locals 6

    .line 2
    sget v0, Lsmartisan/widget/R$style;->PickTimeDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    iput-object p6, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mPickerType:Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;

    .line 4
    iput-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mCallBack:Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mCalendar:Ljava/util/Calendar;

    .line 6
    sget p2, Lsmartisan/widget/R$layout;->date_picker_ex_dialog:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 7
    sget p2, Lsmartisan/widget/R$id;->menu_dialog_title_bar:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/MenuDialogTitleBar;

    iput-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mTitle:Lsmartisan/widget/MenuDialogTitleBar;

    .line 8
    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mTitle:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {p2}, Lsmartisan/widget/MenuDialogTitleBar;->getTitleView()Landroid/widget/TextView;

    move-result-object p2

    const-wide/high16 v0, 0x4033000000000000L    # 19.0

    invoke-static {p1, v0, v1}, Lsmartisan/util/Utils;->dipTopx(Landroid/content/Context;D)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p2, p1}, Lsmartisan/util/Utils;->setMaxTextSizeForTextView(Landroid/widget/TextView;F)V

    .line 9
    sget p1, Lsmartisan/widget/R$id;->date_picker:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/SmartisanDatePickerEx;

    iput-object p1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mDatePicker:Lsmartisan/widget/SmartisanDatePickerEx;

    .line 10
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mDatePicker:Lsmartisan/widget/SmartisanDatePickerEx;

    move-object v1, p6

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lsmartisan/widget/SmartisanDatePickerEx;->init(Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;IIILsmartisan/widget/SmartisanDatePickerEx$OnDateChangedListener;)V

    .line 11
    invoke-direct {p0, p3, p4, p5}, Lsmartisan/widget/SmartisanDatePickerExDialog;->updateTitle(III)V

    .line 12
    iget-object p1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mTitle:Lsmartisan/widget/MenuDialogTitleBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftButtonVisibility(I)V

    .line 13
    iget-object p1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mTitle:Lsmartisan/widget/MenuDialogTitleBar;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lsmartisan/widget/MenuDialogTitleBar;->addCancelImage(Z)V

    .line 14
    iget-object p1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mTitle:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {p1, p2}, Lsmartisan/widget/MenuDialogTitleBar;->addCompleteImage(Z)V

    .line 15
    iget-object p1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mTitle:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {p1, p0}, Lsmartisan/widget/MenuDialogTitleBar;->setOnLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mTitle:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {p1, p0}, Lsmartisan/widget/MenuDialogTitleBar;->setOnRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x50

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, -0x1

    const/4 p4, -0x2

    invoke-virtual {p1, p2, p4}, Landroid/view/Window;->setLayout(II)V

    .line 19
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private tryNotifyDateSet()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mCallBack:Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mDatePicker:Lsmartisan/widget/SmartisanDatePickerEx;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mCallBack:Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mDatePicker:Lsmartisan/widget/SmartisanDatePickerEx;

    invoke-virtual {v1}, Lsmartisan/widget/SmartisanDatePickerEx;->getYear()I

    move-result v2

    iget-object v3, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mDatePicker:Lsmartisan/widget/SmartisanDatePickerEx;

    .line 4
    invoke-virtual {v3}, Lsmartisan/widget/SmartisanDatePickerEx;->getMonth()I

    move-result v3

    iget-object v4, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mDatePicker:Lsmartisan/widget/SmartisanDatePickerEx;

    invoke-virtual {v4}, Lsmartisan/widget/SmartisanDatePickerEx;->getDayOfMonth()I

    move-result v4

    .line 5
    invoke-interface {v0, v1, v2, v3, v4}, Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;->onDateSet(Lsmartisan/widget/SmartisanDatePickerEx;III)V

    :cond_0
    return-void
.end method

.method private updateTitle(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 4
    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p2, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 5
    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mPickerType:Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;

    invoke-static {p1, p2}, Lsmartisan/widget/SmartisanDatePickerEx;->seemsUnsetYear(ILsmartisan/widget/SmartisanDatePickerEx$DatePickerType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mCalendar:Ljava/util/Calendar;

    .line 7
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    const v0, 0x10018

    .line 8
    invoke-static {p1, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mCalendar:Ljava/util/Calendar;

    .line 10
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    const v0, 0x18016

    .line 11
    invoke-static {p1, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    .line 12
    :goto_0
    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mTitle:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {p2, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getDatePicker()Lsmartisan/widget/SmartisanDatePickerEx;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mDatePicker:Lsmartisan/widget/SmartisanDatePickerEx;

    return-object v0
.end method

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
    invoke-direct {p0}, Lsmartisan/widget/SmartisanDatePickerExDialog;->tryNotifyDateSet()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDateChanged(Lsmartisan/widget/SmartisanDatePickerEx;IIILsmartisan/widget/SmartisanDatePickerEx$DatePickerType;)V
    .locals 0

    .line 1
    iput-object p5, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mPickerType:Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;

    .line 2
    invoke-direct {p0, p2, p3, p4}, Lsmartisan/widget/SmartisanDatePickerExDialog;->updateTitle(III)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "year"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "month"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "day"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "type"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 6
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mDatePicker:Lsmartisan/widget/SmartisanDatePickerEx;

    if-nez p1, :cond_0

    sget-object p1, Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;->EVENT:Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;

    goto :goto_0

    :cond_0
    sget-object p1, Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;->BIRTHDAY:Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;

    :goto_0
    move-object v2, p1

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lsmartisan/widget/SmartisanDatePickerEx;->init(Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;IIILsmartisan/widget/SmartisanDatePickerEx$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mDatePicker:Lsmartisan/widget/SmartisanDatePickerEx;

    invoke-virtual {v1}, Lsmartisan/widget/SmartisanDatePickerEx;->getYear()I

    move-result v1

    const-string v2, "year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mDatePicker:Lsmartisan/widget/SmartisanDatePickerEx;

    invoke-virtual {v1}, Lsmartisan/widget/SmartisanDatePickerEx;->getMonth()I

    move-result v1

    const-string v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mDatePicker:Lsmartisan/widget/SmartisanDatePickerEx;

    invoke-virtual {v1}, Lsmartisan/widget/SmartisanDatePickerEx;->getDayOfMonth()I

    move-result v1

    const-string v2, "day"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mPickerType:Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mDatePicker:Lsmartisan/widget/SmartisanDatePickerEx;

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

    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanDatePickerExDialog;->setLeftButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mTitle:Lsmartisan/widget/MenuDialogTitleBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftButtonText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setLeftImageRes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mTitle:Lsmartisan/widget/MenuDialogTitleBar;

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

    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanDatePickerExDialog;->setRightButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRightButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mTitle:Lsmartisan/widget/MenuDialogTitleBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setRightButtonText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setRightImageRes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mTitle:Lsmartisan/widget/MenuDialogTitleBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setRightImageRes(I)V

    :cond_0
    return-void
.end method

.method public updateDate(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->mDatePicker:Lsmartisan/widget/SmartisanDatePickerEx;

    invoke-virtual {v0, p1, p2, p3}, Lsmartisan/widget/SmartisanDatePickerEx;->updateDate(III)V

    return-void
.end method
