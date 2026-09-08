.class public final enum Lsmartisan/widget/Title$BackButtonBgStyle;
.super Ljava/lang/Enum;
.source "Title.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/Title;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackButtonBgStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsmartisan/widget/Title$BackButtonBgStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsmartisan/widget/Title$BackButtonBgStyle;

.field public static final enum ARROW:Lsmartisan/widget/Title$BackButtonBgStyle;

.field public static final enum NORMAL:Lsmartisan/widget/Title$BackButtonBgStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lsmartisan/widget/Title$BackButtonBgStyle;

    const/4 v1, 0x0

    const-string v2, "ARROW"

    invoke-direct {v0, v2, v1}, Lsmartisan/widget/Title$BackButtonBgStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsmartisan/widget/Title$BackButtonBgStyle;->ARROW:Lsmartisan/widget/Title$BackButtonBgStyle;

    .line 2
    new-instance v0, Lsmartisan/widget/Title$BackButtonBgStyle;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v2}, Lsmartisan/widget/Title$BackButtonBgStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsmartisan/widget/Title$BackButtonBgStyle;->NORMAL:Lsmartisan/widget/Title$BackButtonBgStyle;

    const/4 v0, 0x2

    new-array v0, v0, [Lsmartisan/widget/Title$BackButtonBgStyle;

    .line 3
    sget-object v3, Lsmartisan/widget/Title$BackButtonBgStyle;->ARROW:Lsmartisan/widget/Title$BackButtonBgStyle;

    aput-object v3, v0, v1

    sget-object v1, Lsmartisan/widget/Title$BackButtonBgStyle;->NORMAL:Lsmartisan/widget/Title$BackButtonBgStyle;

    aput-object v1, v0, v2

    sput-object v0, Lsmartisan/widget/Title$BackButtonBgStyle;->$VALUES:[Lsmartisan/widget/Title$BackButtonBgStyle;

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

.method public static valueOf(Ljava/lang/String;)Lsmartisan/widget/Title$BackButtonBgStyle;
    .locals 1

    .line 1
    const-class v0, Lsmartisan/widget/Title$BackButtonBgStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsmartisan/widget/Title$BackButtonBgStyle;

    return-object p0
.end method

.method public static values()[Lsmartisan/widget/Title$BackButtonBgStyle;
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/widget/Title$BackButtonBgStyle;->$VALUES:[Lsmartisan/widget/Title$BackButtonBgStyle;

    invoke-virtual {v0}, [Lsmartisan/widget/Title$BackButtonBgStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsmartisan/widget/Title$BackButtonBgStyle;

    return-object v0
.end method
