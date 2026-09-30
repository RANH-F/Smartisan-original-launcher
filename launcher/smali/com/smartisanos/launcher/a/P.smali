.class public Lcom/smartisanos/launcher/a/P;
.super Ljava/lang/Object;
.source "StartActivity.java"


# static fields
.field private static Sj:J

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Qj:Lcom/smartisanos/launcher/view/a/g;

.field private Rj:Lcom/smartisanos/launcher/data/ItemInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/smartisanos/launcher/a/P;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/P;->log:Lcom/smartisanos/launcher/va;

    const-wide/16 v0, 0x0

    .line 2
    sput-wide v0, Lcom/smartisanos/launcher/a/P;->Sj:J

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/smartisanos/launcher/a/P;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 6
    iput-object p1, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/a/P;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/a/P;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    return-void
.end method

.method public static a(IIII)Landroid/app/ActivityOptions;
    .locals 1

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getRootView()Lcom/smartisanos/launcher/view/RootView;

    move-result-object v0

    .line 5
    invoke-static {v0, p0, p1, p2, p3}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/content/Intent;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/smartisanos/launcher/a/P;->b(Landroid/content/Intent;II)V

    return-void
.end method

.method private a(Landroid/content/Intent;ZII)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/a/P;->Qj:Lcom/smartisanos/launcher/view/a/g;

    new-instance v2, Lcom/smartisanos/launcher/a/M;

    invoke-direct {v2, p0, p1, p3, p4}, Lcom/smartisanos/launcher/a/M;-><init>(Lcom/smartisanos/launcher/a/P;Landroid/content/Intent;II)V

    invoke-virtual {v0, v1, p2, v2}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/launcher/view/a/g;ZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$100()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/a/P;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method private static b(Landroid/content/Intent;II)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-eq p2, v1, :cond_1

    .line 1
    :cond_0
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 2
    :goto_0
    new-instance v2, Lcom/smartisanos/launcher/a/N;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/smartisanos/launcher/a/N;-><init>(Landroid/content/Intent;ZII)V

    invoke-static {v2}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    .line 3
    new-instance p0, Lcom/smartisanos/launcher/a/O;

    const/16 p1, 0x64

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/a/O;-><init>(I)V

    .line 4
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez p1, :cond_4

    invoke-static {v0}, Lcom/smartisanos/launcher/Qa;->r(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/high16 p1, 0x40a00000    # 5.0f

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3e99999a    # 0.3f

    :goto_2
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method private cw()V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/smartisanos/launcher/a/P;->Qj:Lcom/smartisanos/launcher/view/a/g;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/sa;->DELTA:Lcom/smartisanos/launcher/ra;

    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v6, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 4
    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->usageCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, -0x1

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v2

    .line 7
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->printPageMode(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->cellCount(I)I

    move-result v0

    :cond_2
    move v4, v0

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 10
    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v3

    .line 12
    invoke-static {v3}, Lcom/smartisanos/launcher/data/N;->F(Landroid/content/Context;)I

    move-result v3

    .line 13
    iget-object v5, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 14
    iget-object v5, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v5, v5, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    int-to-long v7, v5

    invoke-static {v7, v8}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 15
    iget v0, v5, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 16
    iget v2, v5, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    move v5, v2

    goto :goto_0

    :cond_3
    move v5, v0

    move v0, v2

    :goto_0
    const/16 v2, 0xc

    const/16 v7, 0x14

    if-eq v4, v2, :cond_4

    if-eq v4, v7, :cond_4

    .line 17
    sget-object v2, Lcom/smartisanos/launcher/a/P;->log:Lcom/smartisanos/launcher/va;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " cellNum is error ? mode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , SinglePageMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/a/P;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->getSinglePageMode()I

    move-result p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 18
    :cond_4
    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->isInBytesAppList(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object p0

    invoke-virtual {p0, v3, v6, v4}, Lcom/smartisanos/launcher/Da;->a(ILjava/lang/String;I)V

    .line 20
    :cond_5
    sget-object p0, Lcom/smartisanos/launcher/data/T;->Lr:[[Lcom/smartisanos/launcher/data/S;

    if-eqz p0, :cond_b

    .line 21
    array-length p0, p0

    if-ge p0, v1, :cond_6

    return-void

    :cond_6
    add-int/lit8 v1, p0, -0x2

    if-ne v4, v7, :cond_7

    goto :goto_3

    :cond_7
    :goto_1
    if-ge v1, p0, :cond_b

    if-gez v1, :cond_8

    goto :goto_3

    .line 22
    :cond_8
    sget-object v2, Lcom/smartisanos/launcher/data/T;->Lr:[[Lcom/smartisanos/launcher/data/S;

    aget-object v2, v2, v1

    .line 23
    array-length v7, v2

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_a

    aget-object v9, v2, v8

    .line 24
    iget-object v9, v9, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object v1

    move v2, v3

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/launcher/Da;->a(IIIILjava/lang/String;)V

    return-void

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    :goto_4
    return-void
.end method

.method private dw()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_2

    .line 3
    iget-boolean v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    if-eqz v0, :cond_2

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/a/P;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNewlyInstalled set false by removeNewlyInstall, name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], pkg ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], cmp ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], userId ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/a/P;->Qj:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->hl()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-static {v0}, Lcom/smartisanos/launcher/Aa;->c(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v2, v3, v1}, Lcom/smartisanos/launcher/Aa;->b(JZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public ed()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/launcher/a/P;->dw()V

    .line 4
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5
    sget-wide v2, Lcom/smartisanos/launcher/a/P;->Sj:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 6
    sget-object p0, Lcom/smartisanos/launcher/a/P;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "launch app reject, time too close"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->Re()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v4, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    iget-object v4, v4, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v4, v2, Lcom/smartisanos/launcher/data/ItemInfo;->usageCount:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/smartisanos/launcher/data/ItemInfo;->usageCount:I

    .line 9
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 10
    iget-object v4, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 12
    iget-object v4, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->usageCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "usage_count"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->WZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v2, v4}, Lcom/smartisanos/launcher/data/F;->a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V

    .line 16
    :cond_4
    sput-wide v0, Lcom/smartisanos/launcher/a/P;->Sj:J

    .line 17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 18
    iget-object v1, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-byte v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const-string v4, "intent_extra_for_flip_animation"

    const-string v5, "com.smartisanos.userId"

    const-string v6, "com.smartisanos.doppelganger.had_choose"

    const/4 v7, 0x0

    if-nez v2, :cond_9

    .line 19
    sget-object v2, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/Da;->wc()V

    .line 21
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LKP_MODE:Z

    if-eqz v1, :cond_5

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/ua;->fc()V

    .line 23
    invoke-static {v7}, Lcom/smartisanos/launcher/animations/ab;->G(Z)V

    return-void

    .line 24
    :cond_5
    sget-object v1, Lcom/smartisanos/launcher/data/T;->SARA:Lcom/smartisanos/launcher/data/S;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "from_launcher"

    .line 25
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    :cond_6
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v8, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-direct {v1, v8, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    .line 28
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_8

    .line 29
    sget-object v2, Lcom/smartisanos/launcher/data/T;->Jr:Lcom/smartisanos/launcher/data/S;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v8, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v8, v8, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/smartisanos/launcher/data/T;->Kr:Lcom/smartisanos/launcher/data/S;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v8, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v8, v8, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 30
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const/high16 v1, 0x18200000

    .line 31
    :cond_8
    iget-object v2, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    const-string v8, "com.smartisanos.launcher.theme.ThemeChooserActivity"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_launcher_settings_flags_done

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x22

    if-lt v2, v8, :cond_launcher_settings_flags_done

    const/high16 v1, 0x10000000

    :cond_launcher_settings_flags_done
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    iget-object v1, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    invoke-direct {p0}, Lcom/smartisanos/launcher/a/P;->cw()V

    goto :goto_0

    :cond_9
    if-ne v2, v3, :cond_13

    .line 37
    check-cast v1, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_b

    .line 39
    invoke-static {v1}, Lcom/smartisanos/launcher/d/j;->b(Lcom/smartisanos/launcher/data/QuickLaunchItem;)V

    .line 40
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p0, :cond_a

    .line 41
    invoke-static {v7}, Lcom/smartisanos/launcher/animations/ab;->G(Z)V

    :cond_a
    return-void

    .line 42
    :cond_b
    iget-object v0, v1, Lcom/smartisanos/launcher/data/QuickLaunchItem;->intent:Landroid/content/Intent;

    if-nez v0, :cond_c

    .line 43
    sget-object v0, Lcom/smartisanos/launcher/a/P;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "warning intent is null"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 44
    :cond_c
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/smartisanos/launcher/data/QuickLaunchItem;->intent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 45
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 46
    iget v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    :goto_0
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_d

    .line 50
    invoke-static {v7}, Lcom/smartisanos/launcher/animations/ab;->G(Z)V

    .line 51
    :cond_d
    iget-object v1, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    sput v2, Lcom/smartisanos/launcher/data/Constants;->screenIndex:I

    .line 52
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 53
    iget-object v1, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 54
    iget v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    sput v1, Lcom/smartisanos/launcher/data/Constants;->screenIndex:I

    .line 55
    :cond_e
    sget v1, Lcom/smartisanos/launcher/data/Constants;->screenIndex:I

    if-gez v1, :cond_f

    .line 56
    sput v7, Lcom/smartisanos/launcher/data/Constants;->screenIndex:I

    .line 57
    :cond_f
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LAUNCH_FLIP_ANIMATION:Z

    if-eqz v1, :cond_11

    .line 58
    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/launcher/sa;->U1:Lcom/smartisanos/launcher/ra;

    if-eq v1, v2, :cond_10

    goto :goto_1

    :cond_10
    move v3, v7

    .line 59
    :cond_11
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/launcher/a/P;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, -0x1

    if-eqz v1, :cond_12

    .line 60
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 61
    new-instance v2, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v2}, Lcom/smartisanos/smengine/a/i;-><init>()V

    .line 62
    iget-object v4, p0, Lcom/smartisanos/launcher/a/P;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 63
    iget v4, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v5, v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v6, v6

    invoke-static {v4, v1, v5, v6, v2}, Lcom/smartisanos/smengine/d/a;->d(FFFFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 64
    iget v1, v2, Lcom/smartisanos/smengine/a/i;->x:F

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 65
    iget v2, v2, Lcom/smartisanos/smengine/a/i;->y:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_2

    :cond_12
    move v1, v2

    .line 66
    :goto_2
    invoke-direct {p0, v0, v3, v1, v2}, Lcom/smartisanos/launcher/a/P;->a(Landroid/content/Intent;ZII)V

    return-void

    .line 67
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch error, unknown item type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/a/P;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-byte p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
