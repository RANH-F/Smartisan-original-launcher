.class synthetic Lsmartisan/widget/editor/LabelEditor$2;
.super Ljava/lang/Object;
.source "LabelEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/editor/LabelEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$smartisan$widget$editor$LabelEditor$LeftIconContainerBgStyle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lsmartisan/widget/editor/LabelEditor$LeftIconContainerBgStyle;->values()[Lsmartisan/widget/editor/LabelEditor$LeftIconContainerBgStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lsmartisan/widget/editor/LabelEditor$2;->$SwitchMap$smartisan$widget$editor$LabelEditor$LeftIconContainerBgStyle:[I

    :try_start_0
    sget-object v0, Lsmartisan/widget/editor/LabelEditor$2;->$SwitchMap$smartisan$widget$editor$LabelEditor$LeftIconContainerBgStyle:[I

    sget-object v1, Lsmartisan/widget/editor/LabelEditor$LeftIconContainerBgStyle;->GRAY:Lsmartisan/widget/editor/LabelEditor$LeftIconContainerBgStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
