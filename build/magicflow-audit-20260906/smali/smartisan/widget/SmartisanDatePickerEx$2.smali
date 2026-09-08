.class synthetic Lsmartisan/widget/SmartisanDatePickerEx$2;
.super Ljava/lang/Object;
.source "SmartisanDatePickerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SmartisanDatePickerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$smartisan$widget$SmartisanDatePickerEx$DatePickerType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;->values()[Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lsmartisan/widget/SmartisanDatePickerEx$2;->$SwitchMap$smartisan$widget$SmartisanDatePickerEx$DatePickerType:[I

    :try_start_0
    sget-object v0, Lsmartisan/widget/SmartisanDatePickerEx$2;->$SwitchMap$smartisan$widget$SmartisanDatePickerEx$DatePickerType:[I

    sget-object v1, Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;->BIRTHDAY:Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lsmartisan/widget/SmartisanDatePickerEx$2;->$SwitchMap$smartisan$widget$SmartisanDatePickerEx$DatePickerType:[I

    sget-object v1, Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;->EVENT:Lsmartisan/widget/SmartisanDatePickerEx$DatePickerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
