.class public final enum Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

.field public static final enum BOTH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

.field public static final enum DISABLED:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

.field public static final enum MANUAL_REFRESH_ONLY:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

.field public static PULL_DOWN_TO_REFRESH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

.field public static final enum PULL_FROM_END:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

.field public static final enum PULL_FROM_START:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

.field public static PULL_UP_TO_REFRESH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;


# instance fields
.field private mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    const/4 v1, 0x0

    const-string v2, "DISABLED"

    invoke-direct {v0, v2, v1, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    const/4 v2, 0x1

    const-string v3, "PULL_FROM_START"

    invoke-direct {v0, v3, v2, v2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    const/4 v3, 0x2

    const-string v4, "PULL_FROM_END"

    invoke-direct {v0, v4, v3, v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    .line 4
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    const/4 v4, 0x3

    const-string v5, "BOTH"

    invoke-direct {v0, v5, v4, v4}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    .line 5
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    const/4 v5, 0x4

    const-string v6, "MANUAL_REFRESH_ONLY"

    invoke-direct {v0, v6, v5, v5}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    .line 6
    sget-object v6, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    aput-object v6, v0, v1

    sget-object v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    aput-object v1, v0, v2

    sget-object v2, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    aput-object v2, v0, v3

    sget-object v3, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    aput-object v3, v0, v4

    sget-object v3, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    aput-object v3, v0, v5

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->$VALUES:[Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    .line 7
    sput-object v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    .line 8
    sput-object v2, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

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
    iput p3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->mIntValue:I

    return-void
.end method

.method static getDefault()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method static mapIntToValue(I)Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->values()[Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->getIntValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    return-object p0
.end method

.method public static values()[Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->$VALUES:[Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0}, [Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method


# virtual methods
.method getIntValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->mIntValue:I

    return v0
.end method

.method permitsPullToRefresh()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showFooterLoadingLayout()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public showHeaderLoadingLayout()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
