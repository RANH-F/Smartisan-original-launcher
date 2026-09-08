.class public final enum Lsmartisan/widget/ShadowButton$SmallButtonStyle;
.super Ljava/lang/Enum;
.source "ShadowButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/ShadowButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SmallButtonStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsmartisan/widget/ShadowButton$SmallButtonStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsmartisan/widget/ShadowButton$SmallButtonStyle;

.field public static final enum HIGH_LIGHT:Lsmartisan/widget/ShadowButton$SmallButtonStyle;

.field public static final enum RED:Lsmartisan/widget/ShadowButton$SmallButtonStyle;

.field public static final enum STANDARD:Lsmartisan/widget/ShadowButton$SmallButtonStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    const/4 v1, 0x0

    const-string v2, "HIGH_LIGHT"

    invoke-direct {v0, v2, v1}, Lsmartisan/widget/ShadowButton$SmallButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsmartisan/widget/ShadowButton$SmallButtonStyle;->HIGH_LIGHT:Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    .line 2
    new-instance v0, Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    const/4 v2, 0x1

    const-string v3, "RED"

    invoke-direct {v0, v3, v2}, Lsmartisan/widget/ShadowButton$SmallButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsmartisan/widget/ShadowButton$SmallButtonStyle;->RED:Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    .line 3
    new-instance v0, Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    const/4 v3, 0x2

    const-string v4, "STANDARD"

    invoke-direct {v0, v4, v3}, Lsmartisan/widget/ShadowButton$SmallButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsmartisan/widget/ShadowButton$SmallButtonStyle;->STANDARD:Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    const/4 v0, 0x3

    new-array v0, v0, [Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    .line 4
    sget-object v4, Lsmartisan/widget/ShadowButton$SmallButtonStyle;->HIGH_LIGHT:Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    aput-object v4, v0, v1

    sget-object v1, Lsmartisan/widget/ShadowButton$SmallButtonStyle;->RED:Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    aput-object v1, v0, v2

    sget-object v1, Lsmartisan/widget/ShadowButton$SmallButtonStyle;->STANDARD:Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    aput-object v1, v0, v3

    sput-object v0, Lsmartisan/widget/ShadowButton$SmallButtonStyle;->$VALUES:[Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsmartisan/widget/ShadowButton$SmallButtonStyle;
    .locals 1

    .line 1
    const-class v0, Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    return-object p0
.end method

.method public static values()[Lsmartisan/widget/ShadowButton$SmallButtonStyle;
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/widget/ShadowButton$SmallButtonStyle;->$VALUES:[Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    invoke-virtual {v0}, [Lsmartisan/widget/ShadowButton$SmallButtonStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsmartisan/widget/ShadowButton$SmallButtonStyle;

    return-object v0
.end method
