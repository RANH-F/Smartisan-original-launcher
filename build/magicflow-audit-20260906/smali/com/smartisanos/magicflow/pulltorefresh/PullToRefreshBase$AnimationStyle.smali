.class public final enum Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

.field public static final enum FLIP:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

.field public static final enum ROTATE:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    const/4 v1, 0x0

    const-string v2, "ROTATE"

    invoke-direct {v0, v2, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    const/4 v2, 0x1

    const-string v3, "FLIP"

    invoke-direct {v0, v3, v2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 3
    sget-object v3, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    aput-object v3, v0, v1

    sget-object v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    aput-object v1, v0, v2

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

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

.method static getDefault()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method

.method static mapIntToValue(I)Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object p0
.end method

.method public static values()[Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    invoke-virtual {v0}, [Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method


# virtual methods
.method createLoadingLayout(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$AnimationStyle:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/internal/RotateLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smartisanos/magicflow/pulltorefresh/internal/RotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/internal/FlipLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smartisanos/magicflow/pulltorefresh/internal/FlipLoadingLayout;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    return-object v0
.end method
