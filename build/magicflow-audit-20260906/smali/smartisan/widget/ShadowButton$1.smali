.class synthetic Lsmartisan/widget/ShadowButton$1;
.super Ljava/lang/Object;
.source "ShadowButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/ShadowButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$smartisan$widget$ShadowButton$LongButtonStyle:[I

.field static final synthetic $SwitchMap$smartisan$widget$ShadowButton$SmallButtonStyle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lsmartisan/widget/ShadowButton$SmallButtonStyle;->values()[Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lsmartisan/widget/ShadowButton$1;->$SwitchMap$smartisan$widget$ShadowButton$SmallButtonStyle:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lsmartisan/widget/ShadowButton$1;->$SwitchMap$smartisan$widget$ShadowButton$SmallButtonStyle:[I

    sget-object v2, Lsmartisan/widget/ShadowButton$SmallButtonStyle;->HIGH_LIGHT:Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lsmartisan/widget/ShadowButton$1;->$SwitchMap$smartisan$widget$ShadowButton$SmallButtonStyle:[I

    sget-object v3, Lsmartisan/widget/ShadowButton$SmallButtonStyle;->RED:Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lsmartisan/widget/ShadowButton$1;->$SwitchMap$smartisan$widget$ShadowButton$SmallButtonStyle:[I

    sget-object v4, Lsmartisan/widget/ShadowButton$SmallButtonStyle;->STANDARD:Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 2
    :catch_2
    invoke-static {}, Lsmartisan/widget/ShadowButton$LongButtonStyle;->values()[Lsmartisan/widget/ShadowButton$LongButtonStyle;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lsmartisan/widget/ShadowButton$1;->$SwitchMap$smartisan$widget$ShadowButton$LongButtonStyle:[I

    :try_start_3
    sget-object v3, Lsmartisan/widget/ShadowButton$1;->$SwitchMap$smartisan$widget$ShadowButton$LongButtonStyle:[I

    sget-object v4, Lsmartisan/widget/ShadowButton$LongButtonStyle;->HIGH_LIGHT:Lsmartisan/widget/ShadowButton$LongButtonStyle;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lsmartisan/widget/ShadowButton$1;->$SwitchMap$smartisan$widget$ShadowButton$LongButtonStyle:[I

    sget-object v3, Lsmartisan/widget/ShadowButton$LongButtonStyle;->RED:Lsmartisan/widget/ShadowButton$LongButtonStyle;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lsmartisan/widget/ShadowButton$1;->$SwitchMap$smartisan$widget$ShadowButton$LongButtonStyle:[I

    sget-object v1, Lsmartisan/widget/ShadowButton$LongButtonStyle;->WHITE:Lsmartisan/widget/ShadowButton$LongButtonStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lsmartisan/widget/ShadowButton$1;->$SwitchMap$smartisan$widget$ShadowButton$LongButtonStyle:[I

    sget-object v1, Lsmartisan/widget/ShadowButton$LongButtonStyle;->GRAY:Lsmartisan/widget/ShadowButton$LongButtonStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
