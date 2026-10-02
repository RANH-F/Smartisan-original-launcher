.class public Lcom/smartisanos/launcher/data/z;
.super Ljava/lang/Object;
.source "DatabaseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static Nq:Z

.field private static Oq:Z

.field private static mTasks:Ljava/util/List;


# instance fields
.field public Lq:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public Mk:I

.field public Mq:Z

.field public Yj:Ljava/util/List;

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/z;->mTasks:Ljava/util/List;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/smartisanos/launcher/data/z;->Nq:Z

    .line 3
    sput-boolean v0, Lcom/smartisanos/launcher/data/z;->Oq:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/data/z;->packageName:Ljava/lang/String;

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/smartisanos/launcher/data/z;->Mk:I

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/data/z;->Yj:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/launcher/data/z;->Mq:Z

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PackageTask error action type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 7
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 8
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "PackageTask lose item info"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    :cond_3
    iput-object p1, p0, Lcom/smartisanos/launcher/data/z;->packageName:Ljava/lang/String;

    .line 10
    iput p2, p0, Lcom/smartisanos/launcher/data/z;->Mk:I

    .line 11
    iput-object p3, p0, Lcom/smartisanos/launcher/data/z;->Yj:Ljava/util/List;

    return-void

    .line 12
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PackageTask lose pkg"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/smartisanos/launcher/data/z;->packageName:Ljava/lang/String;

    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lcom/smartisanos/launcher/data/z;->Mk:I

    .line 16
    iput-object v0, p0, Lcom/smartisanos/launcher/data/z;->Yj:Ljava/util/List;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/smartisanos/launcher/data/z;->Mq:Z

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PackageTask error action type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 19
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 20
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "PackageTask lose item info"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 21
    :cond_3
    iput-object p1, p0, Lcom/smartisanos/launcher/data/z;->packageName:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/smartisanos/launcher/data/z;->Mk:I

    .line 23
    iput-object p3, p0, Lcom/smartisanos/launcher/data/z;->Yj:Ljava/util/List;

    .line 24
    iput-object p4, p0, Lcom/smartisanos/launcher/data/z;->Lq:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    return-void

    .line 25
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PackageTask lose pkg"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static B(Ljava/util/List;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "handle install apps begin !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Th()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 5
    invoke-static {v0}, Lcom/smartisanos/launcher/Aa;->c(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/data/ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCellToPage failed ! by id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    :cond_2
    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/Aa;->j(J)Lcom/smartisanos/launcher/data/ItemInfo;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static C(Ljava/util/List;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 3
    iget-wide v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 4
    invoke-static {v2, v3}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/data/ItemInfo;->a([B)V

    .line 6
    iget-object v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->iconRawData:[B

    iput-object v2, v4, Lcom/smartisanos/launcher/data/ItemInfo;->iconRawData:[B

    .line 7
    iget-object v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->e(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 9
    iput-object v2, v4, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 10
    :cond_1
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateAppIcons "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 11
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    iget-wide v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/smartisanos/launcher/view/b/fa;->c(JZ)V

    .line 12
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    if-nez v1, :cond_0

    move v0, v5

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleUpdateAppIcons error by can\'t find item by id ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 14
    new-instance p0, Lcom/smartisanos/launcher/data/y;

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/data/y;-><init>(I)V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_5
    return-void
.end method

.method public static Ge()V
    .locals 13

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Qh()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/z;->Nq:Z

    if-eqz v0, :cond_2

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "handleTaskList() mHandleTaskRunning is true. return!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 5
    :cond_2
    sget-object v0, Lcom/smartisanos/launcher/data/z;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 6
    sput-boolean v1, Lcom/smartisanos/launcher/data/z;->Nq:Z

    return-void

    .line 7
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v2, 0x1000

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->Qa()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v2, "PackageTask handleTaskList return by pause event status is true"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    :cond_4
    sput-boolean v1, Lcom/smartisanos/launcher/data/z;->Nq:Z

    return-void

    .line 11
    :cond_5
    sget-boolean v0, Lcom/smartisanos/launcher/data/z;->Oq:Z

    if-eqz v0, :cond_7

    .line 12
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "mPause is true, so handleTaskList return when try to execute task"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_6
    return-void

    .line 13
    :cond_7
    sput-boolean v3, Lcom/smartisanos/launcher/data/z;->Nq:Z

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 15
    :goto_0
    sget-object v4, Lcom/smartisanos/launcher/data/z;->mTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_18

    .line 16
    sget-boolean v4, Lcom/smartisanos/launcher/data/z;->Oq:Z

    if-eqz v4, :cond_8

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v2, "mPause is true, so handleTaskList break when task running"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 18
    :cond_8
    sget-object v4, Lcom/smartisanos/launcher/data/z;->mTasks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/z;

    .line 19
    iget v5, v4, Lcom/smartisanos/launcher/data/z;->Mk:I

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-ne v5, v3, :cond_9

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/ub;->Qc()Z

    move-result v9

    :goto_1
    xor-int/2addr v9, v3

    goto :goto_2

    :cond_9
    if-ne v5, v8, :cond_a

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/ub;->Qc()Z

    move-result v9

    goto :goto_1

    :cond_a
    if-ne v5, v7, :cond_b

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/ub;->Pc()Z

    move-result v9

    goto :goto_1

    :cond_b
    if-ne v5, v6, :cond_c

    .line 23
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/ub;->Qc()Z

    move-result v9

    goto :goto_1

    :cond_c
    move v9, v1

    :goto_2
    if-eqz v9, :cond_e

    .line 24
    iget-object v4, v4, Lcom/smartisanos/launcher/data/z;->Lq:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    sget-object v9, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->raa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    if-eq v4, v9, :cond_e

    .line 25
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageTask handleTaskList return by needCache is true, by action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 26
    :cond_d
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ub;->Sc()V

    goto/16 :goto_5

    .line 27
    :cond_e
    # Item-level removals may arrive in the same GL batch. Let both original
    # uninstall phases finish before any following task can force-finish Sc.
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v12

    const/high16 v11, 0x10000

    invoke-virtual {v12, v11}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v12

    if-nez v12, :goto_5

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 28
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 29
    sget-object v4, Lcom/smartisanos/launcher/data/z;->mTasks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/z;

    .line 30
    sget-object v9, Lcom/smartisanos/launcher/data/z;->mTasks:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_f

    move v9, v3

    goto :goto_3

    :cond_f
    move v9, v1

    :goto_3
    if-eqz v9, :cond_10

    .line 31
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v10

    invoke-virtual {v10, v2, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 32
    :cond_10
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v10

    const/16 v11, 0x800

    invoke-virtual {v10, v11, v3}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 33
    iget-object v10, v4, Lcom/smartisanos/launcher/data/z;->Yj:Ljava/util/List;

    .line 34
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v12

    if-eqz v12, :cond_11

    .line 35
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v12

    if-eqz v12, :cond_11

    .line 36
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Sc;->mq()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 37
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Sc;->iq()V

    .line 38
    :cond_11
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v12

    if-eqz v12, :cond_12

    .line 39
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/animations/r;->vd()V

    .line 40
    :cond_12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v12

    if-eqz v12, :cond_13

    .line 41
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/animations/r;->vd()V

    :cond_13
    if-ne v5, v3, :cond_14

    .line 42
    invoke-static {v10}, Lcom/smartisanos/launcher/data/z;->B(Ljava/util/List;)V

    if-eqz v9, :cond_17

    .line 43
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v5

    invoke-virtual {v5, v11, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 44
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 45
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    goto :goto_4

    :cond_14
    if-ne v5, v8, :cond_15

    .line 46
    iget-object v5, v4, Lcom/smartisanos/launcher/data/z;->Lq:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v10, v5}, Lcom/smartisanos/launcher/data/z;->a(Ljava/util/List;Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    if-eqz v9, :cond_17

    .line 47
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v5

    invoke-virtual {v5, v11, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 48
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 49
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    goto :goto_4

    :cond_15
    if-ne v5, v7, :cond_16

    .line 50
    new-instance v5, Lcom/smartisanos/launcher/data/x;

    invoke-direct {v5, v9}, Lcom/smartisanos/launcher/data/x;-><init>(Z)V

    invoke-static {v10, v5}, Lcom/smartisanos/launcher/data/z;->a(Ljava/util/List;Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_16
    if-ne v5, v6, :cond_17

    .line 51
    invoke-static {v10}, Lcom/smartisanos/launcher/data/z;->C(Ljava/util/List;)V

    if-eqz v9, :cond_17

    .line 52
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v5

    invoke-virtual {v5, v11, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 53
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 54
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 55
    :cond_17
    :goto_4
    # PackageTask has now applied its install/remove/update mutation to Aa.fi/PageView.
    # Accumulate each task and flush only when the original task batch becomes empty.
    iget-object v5, v4, Lcom/smartisanos/launcher/data/z;->packageName:Ljava/lang/String;

    iget v6, v4, Lcom/smartisanos/launcher/data/z;->Mk:I

    iget-object v7, v4, Lcom/smartisanos/launcher/data/z;->Lq:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    iget-object v8, v4, Lcom/smartisanos/launcher/data/z;->Yj:Ljava/util/List;

    invoke-static {v5, v6, v7, v8, v9}, Lcom/smartisanos/launcher/quicksearch/SearchIndexRepository;->onLauncherModelPackageTaskComplete(Ljava/lang/String;ILjava/lang/Object;Ljava/util/List;Z)V

    iput-boolean v3, v4, Lcom/smartisanos/launcher/data/z;->Mq:Z

    .line 56
    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/z;->run()V

    goto/16 :goto_0

    .line 57
    :cond_18
    :goto_5
    sput-boolean v1, Lcom/smartisanos/launcher/data/z;->Nq:Z

    return-void

    .line 58
    :cond_19
    :goto_6
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTaskList() MainView.getInstance() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " glLoadFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Qh()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public static He()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/z;->mTasks:Ljava/util/List;

    return-object v0
.end method

.method public static Ie()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/data/z;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static L(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/smartisanos/launcher/data/z;->Oq:Z

    return-void
.end method

.method public static a(Lcom/smartisanos/launcher/data/z;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/smartisanos/launcher/Qa;->r(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/Qa;->a(Lcom/smartisanos/launcher/data/z;)V

    .line 3
    :cond_1
    new-instance p1, Lcom/smartisanos/launcher/data/w;

    const/16 v0, 0x65

    invoke-direct {p1, v0, p0}, Lcom/smartisanos/launcher/data/w;-><init>(ILcom/smartisanos/launcher/data/z;)V

    const/4 p0, 0x0

    .line 4
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method private static a(Ljava/util/List;Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V
    .locals 18

    move-object/from16 v0, p1

    .line 26
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    .line 27
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 28
    iget-wide v6, v4, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    if-nez v6, :cond_1

    .line 29
    iget-object v6, v4, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-static {v6}, Lcom/smartisanos/launcher/Aa;->B(Ljava/lang/String;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    :cond_1
    if-eqz v6, :cond_e

    .line 30
    sget-boolean v7, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleUpdateApps. begin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 31
    :cond_2
    iget-wide v7, v6, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v7, v8}, Lcom/smartisanos/launcher/Aa;->j(J)Lcom/smartisanos/launcher/data/ItemInfo;

    .line 32
    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/ItemInfo;->clone()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    const-wide/16 v7, -0x1

    .line 33
    sget-object v9, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->caa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v10, 0x0

    if-ne v0, v9, :cond_5

    .line 34
    iget-byte v9, v4, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    iput-byte v9, v6, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 35
    sget-boolean v9, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v9, :cond_3

    .line 36
    iget-boolean v9, v4, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    iput-boolean v9, v6, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 37
    iget-boolean v9, v4, Lcom/smartisanos/launcher/data/ItemInfo;->isCanUninstall:Z

    iput-boolean v9, v6, Lcom/smartisanos/launcher/data/ItemInfo;->isCanUninstall:Z

    .line 38
    :cond_3
    iget-object v9, v4, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    iput-object v9, v6, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 39
    iget-object v9, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iput-object v9, v6, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 40
    iget-object v9, v4, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    iput-object v9, v6, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 41
    iget v9, v4, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    iput v9, v6, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 42
    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v9

    if-eqz v9, :cond_4

    .line 43
    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/smartisanos/launcher/data/ItemInfo;->a([B)V

    goto :goto_1

    :cond_4
    move v5, v10

    .line 44
    :goto_1
    iget-object v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    if-eqz v4, :cond_6

    .line 45
    iput-object v4, v6, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 46
    iget-object v4, v6, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->e(Lcom/smartisanos/launcher/data/ItemInfo;)V

    goto :goto_2

    .line 47
    :cond_5
    sget-object v9, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->maa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    if-ne v0, v9, :cond_7

    .line 48
    iget-object v9, v4, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    iput-object v9, v6, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 49
    iget v9, v4, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    iput v9, v6, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    .line 50
    iget-boolean v9, v4, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    iput-boolean v9, v6, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 51
    iget-boolean v9, v4, Lcom/smartisanos/launcher/data/ItemInfo;->isCanUninstall:Z

    iput-boolean v9, v6, Lcom/smartisanos/launcher/data/ItemInfo;->isCanUninstall:Z

    .line 52
    move-object v9, v6

    check-cast v9, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    move-object v11, v4

    check-cast v11, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    iget-object v12, v11, Lcom/smartisanos/launcher/data/QuickLaunchItem;->icon:Landroid/graphics/Bitmap;

    iput-object v12, v9, Lcom/smartisanos/launcher/data/QuickLaunchItem;->icon:Landroid/graphics/Bitmap;

    .line 53
    iget-object v11, v11, Lcom/smartisanos/launcher/data/QuickLaunchItem;->intent:Landroid/content/Intent;

    iput-object v11, v9, Lcom/smartisanos/launcher/data/QuickLaunchItem;->intent:Landroid/content/Intent;

    .line 54
    iget-object v9, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iput-object v9, v6, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 55
    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v9

    if-eqz v9, :cond_6

    iget-object v9, v4, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    if-eqz v9, :cond_6

    .line 56
    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/smartisanos/launcher/data/ItemInfo;->a([B)V

    .line 57
    iget-object v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    iput-object v4, v6, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 58
    iget-object v4, v6, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->e(Lcom/smartisanos/launcher/data/ItemInfo;)V

    :cond_6
    :goto_2
    move-wide v12, v7

    goto :goto_4

    .line 59
    :cond_7
    sget-object v9, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->raa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    if-ne v0, v9, :cond_9

    .line 60
    iget v9, v6, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    if-nez v9, :cond_8

    .line 61
    iget-wide v7, v6, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 62
    iget-wide v11, v4, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iput-wide v11, v6, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 63
    move-object v4, v6

    check-cast v4, Lcom/smartisanos/launcher/data/FolderInfo;

    iput-boolean v10, v4, Lcom/smartisanos/launcher/data/FolderInfo;->isGenIdInGL:Z

    move-wide v12, v7

    move/from16 v17, v10

    move v10, v5

    move/from16 v5, v17

    goto :goto_4

    :cond_8
    const/4 v5, -0x1

    if-ne v9, v5, :cond_a

    .line 64
    iget v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    iput v4, v6, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    goto :goto_3

    .line 65
    :cond_9
    sget-object v5, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->saa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    if-ne v0, v5, :cond_a

    .line 66
    iget v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    iput v4, v6, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    :cond_a
    :goto_3
    move-wide v12, v7

    move v5, v10

    .line 67
    :goto_4
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleUpdateApps. end "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 68
    :cond_b
    invoke-static {v6}, Lcom/smartisanos/launcher/Aa;->c(Lcom/smartisanos/launcher/data/ItemInfo;)V

    if-eqz v10, :cond_c

    .line 69
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v11

    iget-wide v14, v6, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Lcom/smartisanos/launcher/view/b/fa;->a(JJZ)V

    goto :goto_5

    .line 70
    :cond_c
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    iget-wide v7, v6, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v4, v7, v8, v5}, Lcom/smartisanos/launcher/view/b/fa;->c(JZ)V

    :goto_5
    if-eqz v5, :cond_0

    if-nez v3, :cond_d

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    :cond_d
    iget-object v4, v6, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 73
    :cond_e
    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lose item by id ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    if-eqz v3, :cond_10

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->ZZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v1, v2, v0}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    :cond_10
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 7

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/ItemInfo;

    if-nez v2, :cond_0

    .line 8
    iget-object v2, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    .line 9
    :cond_0
    iget-object v4, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 11
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUninstallApps pkg ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], cmp ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "handleUninstallApps error, different package name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_3
    :goto_2
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleUninstallApps. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 14
    :cond_4
    iget-wide v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 15
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/high16 v1, 0x1000000

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/db;->ih()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/t;->Zr()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v1

    const-string v3, "### current folder is opening, force finish open animation."

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 19
    :cond_6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/db;->ih()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/t;->Sr()V

    .line 20
    :cond_7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/db;->ih()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/t;->Yr()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 21
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v1

    const-string v3, "### current folder is closing , force finish animation."

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 22
    :cond_8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/db;->ih()Lcom/smartisanos/launcher/view/b/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/t;->Sr()V

    goto :goto_3

    .line 23
    :cond_9
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v1

    const-string v3, "### current folder has open, close and force finish animation."

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_a
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 24
    invoke-virtual {p0, v1, v3}, Lcom/smartisanos/launcher/view/db;->b(ZZ)V

    .line 25
    :cond_b
    :goto_3
    invoke-static {v2, v0, p1}, Lcom/smartisanos/launcher/Aa;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Lcom/smartisanos/launcher/data/z;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/z;->a(Lcom/smartisanos/launcher/data/z;Z)V

    return-void
.end method

.method public static fa(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "UPDATE_ICON"

    return-object p0

    :cond_1
    const-string p0, "UPDATE_PACKAGE"

    return-object p0

    :cond_2
    const-string p0, "REMOVE_PACKAGE"

    return-object p0

    :cond_3
    const-string p0, "ADD_PACKAGE"

    return-object p0
.end method

.method static synthetic u()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/z;->mTasks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
