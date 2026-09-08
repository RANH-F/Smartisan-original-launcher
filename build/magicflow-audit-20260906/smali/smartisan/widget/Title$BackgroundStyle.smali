.class public final enum Lsmartisan/widget/Title$BackgroundStyle;
.super Ljava/lang/Enum;
.source "Title.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/Title;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackgroundStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsmartisan/widget/Title$BackgroundStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsmartisan/widget/Title$BackgroundStyle;

.field public static final enum BLUE:Lsmartisan/widget/Title$BackgroundStyle;

.field public static final enum BLUE_CORNER:Lsmartisan/widget/Title$BackgroundStyle;

.field public static final enum BLUE_OPAQUE:Lsmartisan/widget/Title$BackgroundStyle;

.field public static final enum NORMAL:Lsmartisan/widget/Title$BackgroundStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lsmartisan/widget/Title$BackgroundStyle;

    const/4 v1, 0x0

    const-string v2, "BLUE"

    invoke-direct {v0, v2, v1}, Lsmartisan/widget/Title$BackgroundStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsmartisan/widget/Title$BackgroundStyle;->BLUE:Lsmartisan/widget/Title$BackgroundStyle;

    .line 2
    new-instance v0, Lsmartisan/widget/Title$BackgroundStyle;

    const/4 v2, 0x1

    const-string v3, "BLUE_CORNER"

    invoke-direct {v0, v3, v2}, Lsmartisan/widget/Title$BackgroundStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsmartisan/widget/Title$BackgroundStyle;->BLUE_CORNER:Lsmartisan/widget/Title$BackgroundStyle;

    .line 3
    new-instance v0, Lsmartisan/widget/Title$BackgroundStyle;

    const/4 v3, 0x2

    const-string v4, "BLUE_OPAQUE"

    invoke-direct {v0, v4, v3}, Lsmartisan/widget/Title$BackgroundStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsmartisan/widget/Title$BackgroundStyle;->BLUE_OPAQUE:Lsmartisan/widget/Title$BackgroundStyle;

    .line 4
    new-instance v0, Lsmartisan/widget/Title$BackgroundStyle;

    const/4 v4, 0x3

    const-string v5, "NORMAL"

    invoke-direct {v0, v5, v4}, Lsmartisan/widget/Title$BackgroundStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsmartisan/widget/Title$BackgroundStyle;->NORMAL:Lsmartisan/widget/Title$BackgroundStyle;

    const/4 v0, 0x4

    new-array v0, v0, [Lsmartisan/widget/Title$BackgroundStyle;

    .line 5
    sget-object v5, Lsmartisan/widget/Title$BackgroundStyle;->BLUE:Lsmartisan/widget/Title$BackgroundStyle;

    aput-object v5, v0, v1

    sget-object v1, Lsmartisan/widget/Title$BackgroundStyle;->BLUE_CORNER:Lsmartisan/widget/Title$BackgroundStyle;

    aput-object v1, v0, v2

    sget-object v1, Lsmartisan/widget/Title$BackgroundStyle;->BLUE_OPAQUE:Lsmartisan/widget/Title$BackgroundStyle;

    aput-object v1, v0, v3

    sget-object v1, Lsmartisan/widget/Title$BackgroundStyle;->NORMAL:Lsmartisan/widget/Title$BackgroundStyle;

    aput-object v1, v0, v4

    sput-object v0, Lsmartisan/widget/Title$BackgroundStyle;->$VALUES:[Lsmartisan/widget/Title$BackgroundStyle;

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

.method public static valueOf(Ljava/lang/String;)Lsmartisan/widget/Title$BackgroundStyle;
    .locals 1

    .line 1
    const-class v0, Lsmartisan/widget/Title$BackgroundStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsmartisan/widget/Title$BackgroundStyle;

    return-object p0
.end method

.method public static values()[Lsmartisan/widget/Title$BackgroundStyle;
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/widget/Title$BackgroundStyle;->$VALUES:[Lsmartisan/widget/Title$BackgroundStyle;

    invoke-virtual {v0}, [Lsmartisan/widget/Title$BackgroundStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsmartisan/widget/Title$BackgroundStyle;

    return-object v0
.end method
