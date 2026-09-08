.class public final enum Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

.field public static final enum MANUAL_REFRESHING:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

.field public static final enum OVERSCROLLING:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

.field public static final enum PULL_TO_REFRESH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

.field public static final enum REFRESHING:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

.field public static final enum RELEASE_TO_REFRESH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

.field public static final enum RESET:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;


# instance fields
.field private mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    const/4 v1, 0x0

    const-string v2, "RESET"

    invoke-direct {v0, v2, v1, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    const/4 v2, 0x1

    const-string v3, "PULL_TO_REFRESH"

    invoke-direct {v0, v3, v2, v2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    const/4 v3, 0x2

    const-string v4, "RELEASE_TO_REFRESH"

    invoke-direct {v0, v4, v3, v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    .line 4
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    const/4 v4, 0x3

    const-string v5, "REFRESHING"

    const/16 v6, 0x8

    invoke-direct {v0, v5, v4, v6}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    .line 5
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    const/4 v5, 0x4

    const-string v6, "MANUAL_REFRESHING"

    const/16 v7, 0x9

    invoke-direct {v0, v6, v5, v7}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    .line 6
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    const/4 v6, 0x5

    const-string v7, "OVERSCROLLING"

    const/16 v8, 0x10

    invoke-direct {v0, v7, v6, v8}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    .line 7
    sget-object v7, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    aput-object v7, v0, v1

    sget-object v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->$VALUES:[Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->mIntValue:I

    return-void
.end method

.method static mapIntToValue(I)Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->values()[Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->getIntValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    return-object p0
.end method

.method public static values()[Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->$VALUES:[Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v0}, [Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    return-object v0
.end method


# virtual methods
.method getIntValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->mIntValue:I

    return v0
.end method
