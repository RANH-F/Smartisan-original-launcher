.class synthetic Lcom/smartisanos/magicflow/pulltorefresh/internal/LoadingLayout$1;
.super Ljava/lang/Object;
.source "LoadingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/pulltorefresh/internal/LoadingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Mode:[I

.field static final synthetic $SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Orientation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->values()[Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/smartisanos/magicflow/pulltorefresh/internal/LoadingLayout$1;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Mode:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/pulltorefresh/internal/LoadingLayout$1;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Mode:[I

    sget-object v2, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/smartisanos/magicflow/pulltorefresh/internal/LoadingLayout$1;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Mode:[I

    sget-object v3, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 2
    :catch_1
    invoke-static {}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;->values()[Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/smartisanos/magicflow/pulltorefresh/internal/LoadingLayout$1;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Orientation:[I

    :try_start_2
    sget-object v2, Lcom/smartisanos/magicflow/pulltorefresh/internal/LoadingLayout$1;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Orientation:[I

    sget-object v3, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/internal/LoadingLayout$1;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Orientation:[I

    sget-object v2, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
