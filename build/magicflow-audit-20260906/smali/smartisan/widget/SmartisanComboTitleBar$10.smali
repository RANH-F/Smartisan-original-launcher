.class synthetic Lsmartisan/widget/SmartisanComboTitleBar$10;
.super Ljava/lang/Object;
.source "SmartisanComboTitleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SmartisanComboTitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$smartisan$widget$SmartisanComboTitleBar$TitleShadowType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lsmartisan/widget/SmartisanComboTitleBar$TitleShadowType;->values()[Lsmartisan/widget/SmartisanComboTitleBar$TitleShadowType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lsmartisan/widget/SmartisanComboTitleBar$10;->$SwitchMap$smartisan$widget$SmartisanComboTitleBar$TitleShadowType:[I

    :try_start_0
    sget-object v0, Lsmartisan/widget/SmartisanComboTitleBar$10;->$SwitchMap$smartisan$widget$SmartisanComboTitleBar$TitleShadowType:[I

    sget-object v1, Lsmartisan/widget/SmartisanComboTitleBar$TitleShadowType;->SHORT:Lsmartisan/widget/SmartisanComboTitleBar$TitleShadowType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lsmartisan/widget/SmartisanComboTitleBar$10;->$SwitchMap$smartisan$widget$SmartisanComboTitleBar$TitleShadowType:[I

    sget-object v1, Lsmartisan/widget/SmartisanComboTitleBar$TitleShadowType;->NORMAL:Lsmartisan/widget/SmartisanComboTitleBar$TitleShadowType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
