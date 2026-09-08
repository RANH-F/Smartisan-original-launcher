.class public Lsmartisan/util/DescriptionUtils;
.super Ljava/lang/Object;
.source "DescriptionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDescriptionIfNeed(Landroid/view/View;I)Z
    .locals 3

    .line 1
    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_back_selector:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1b

    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_back_reverse_selector:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_e

    .line 2
    :cond_0
    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_cancel_selector:I

    if-eq p1, v0, :cond_1a

    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_cancel_reverse_selector:I

    if-ne p1, v0, :cond_1

    goto/16 :goto_d

    .line 3
    :cond_1
    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_complete_selector:I

    if-eq p1, v0, :cond_19

    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_complete_reverse_selector:I

    if-ne p1, v0, :cond_2

    goto/16 :goto_c

    .line 4
    :cond_2
    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_hignlight_confirm_selector:I

    if-eq p1, v0, :cond_18

    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_hignlight_confirm_reverse_selector:I

    if-ne p1, v0, :cond_3

    goto/16 :goto_a

    .line 5
    :cond_3
    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_common_add_selector:I

    if-eq p1, v0, :cond_17

    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_common_add_reverse_selector:I

    if-ne p1, v0, :cond_4

    goto/16 :goto_9

    .line 6
    :cond_4
    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_settings_selector:I

    if-eq p1, v0, :cond_16

    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_settings_reverse_selector:I

    if-ne p1, v0, :cond_5

    goto/16 :goto_8

    .line 7
    :cond_5
    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_edit_selector:I

    if-eq p1, v0, :cond_15

    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_edit_reverse_selector:I

    if-ne p1, v0, :cond_6

    goto/16 :goto_7

    .line 8
    :cond_6
    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_hignlight_edit_selector:I

    if-eq p1, v0, :cond_14

    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_hignlight_edit_reverse_selector:I

    if-ne p1, v0, :cond_7

    goto/16 :goto_6

    .line 9
    :cond_7
    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_multi_select_selector:I

    if-eq p1, v0, :cond_13

    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_multi_select_reverse_selector:I

    if-ne p1, v0, :cond_8

    goto/16 :goto_5

    .line 10
    :cond_8
    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_hignlight_multi_select_selector:I

    if-eq p1, v0, :cond_12

    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_hignlight_multi_select_reverse_selector:I

    if-ne p1, v0, :cond_9

    goto :goto_4

    .line 11
    :cond_9
    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_hignlight_delete_selector:I

    if-eq p1, v0, :cond_11

    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_hignlight_delete_reverse_selector:I

    if-ne p1, v0, :cond_a

    goto :goto_3

    .line 12
    :cond_a
    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_sorting_selector:I

    if-eq p1, v0, :cond_10

    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_sorting_reverse_selector:I

    if-ne p1, v0, :cond_b

    goto :goto_2

    .line 13
    :cond_b
    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_filter_selector:I

    if-eq p1, v0, :cond_f

    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_filter_reverse_selector:I

    if-ne p1, v0, :cond_c

    goto :goto_1

    .line 14
    :cond_c
    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_share_selector:I

    if-eq p1, v0, :cond_e

    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_share_reverse_selector:I

    if-ne p1, v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 p1, 0x0

    goto/16 :goto_f

    .line 15
    :cond_e
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$string;->smt_share:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_f

    .line 16
    :cond_f
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$string;->smt_filter:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_f

    .line 17
    :cond_10
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$string;->smt_sorting:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_f

    .line 18
    :cond_11
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$string;->smt_delete:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    .line 19
    :cond_12
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$string;->smt_edit:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    .line 20
    :cond_13
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$string;->smt_edit:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 21
    :cond_14
    :goto_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$string;->smt_modify:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    .line 22
    :cond_15
    :goto_7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$string;->smt_modify:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 23
    :cond_16
    :goto_8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$string;->smt_settings:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 24
    :cond_17
    :goto_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$string;->smt_add:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 25
    :cond_18
    :goto_a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$string;->smt_done:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_b
    move v2, v1

    goto :goto_f

    .line 26
    :cond_19
    :goto_c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$string;->smt_done:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 27
    :cond_1a
    :goto_d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$string;->smt_cancel:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 28
    :cond_1b
    :goto_e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$string;->smt_back:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_f
    if-eqz p0, :cond_1c

    if-eqz p1, :cond_1c

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1c
    return v2
.end method
