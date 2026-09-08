.class public Lc/d/a/b/a/f/b;
.super Ljava/lang/Object;
.source "DownloadChunk.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/a/f/b$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/d/a/b/a/f/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/lang/String;


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/util/concurrent/atomic/AtomicLong;

.field private d:J

.field private e:J

.field private f:I

.field private g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private h:J

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lc/d/a/b/a/f/b;

.field private k:I

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Lc/d/a/b/a/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lc/d/a/b/a/f/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/d/a/b/a/f/b;->n:Ljava/lang/String;

    .line 2
    new-instance v0, Lc/d/a/b/a/f/b$a;

    invoke-direct {v0}, Lc/d/a/b/a/f/b$a;-><init>()V

    sput-object v0, Lc/d/a/b/a/f/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "_id"

    .line 14
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/b;->a:I

    const-string v0, "chunkIndex"

    .line 15
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/b;->f:I

    const-string v0, "startOffset"

    .line 16
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lc/d/a/b/a/f/b;->b:J

    const-string v0, "curOffset"

    .line 17
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 18
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lc/d/a/b/a/f/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lc/d/a/b/a/f/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    :goto_0
    const-string v0, "endOffset"

    .line 20
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lc/d/a/b/a/f/b;->d:J

    const-string v0, "hostChunkIndex"

    .line 21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 22
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lc/d/a/b/a/f/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_1

    .line 23
    :cond_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc/d/a/b/a/f/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    :goto_1
    const-string v0, "chunkContentLen"

    .line 24
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 25
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lc/d/a/b/a/f/b;->e:J

    .line 26
    :cond_3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lc/d/a/b/a/f/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/b;->a:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lc/d/a/b/a/f/b;->b:J

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lc/d/a/b/a/f/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lc/d/a/b/a/f/b;->d:J

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lc/d/a/b/a/f/b;->e:J

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/b;->f:I

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc/d/a/b/a/f/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lc/d/a/b/a/f/b$b;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lc/d/a/b/a/f/b$b;->a(Lc/d/a/b/a/f/b$b;)I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/b;->a:I

    .line 4
    invoke-static {p1}, Lc/d/a/b/a/f/b$b;->b(Lc/d/a/b/a/f/b$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lc/d/a/b/a/f/b;->b:J

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lc/d/a/b/a/f/b$b;->c(Lc/d/a/b/a/f/b$b;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lc/d/a/b/a/f/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    invoke-static {p1}, Lc/d/a/b/a/f/b$b;->d(Lc/d/a/b/a/f/b$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lc/d/a/b/a/f/b;->d:J

    .line 7
    invoke-static {p1}, Lc/d/a/b/a/f/b$b;->e(Lc/d/a/b/a/f/b$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lc/d/a/b/a/f/b;->e:J

    .line 8
    invoke-static {p1}, Lc/d/a/b/a/f/b$b;->f(Lc/d/a/b/a/f/b$b;)I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/b;->f:I

    .line 9
    invoke-static {p1}, Lc/d/a/b/a/f/b$b;->g(Lc/d/a/b/a/f/b$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lc/d/a/b/a/f/b;->h:J

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc/d/a/b/a/f/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    invoke-static {p1}, Lc/d/a/b/a/f/b$b;->h(Lc/d/a/b/a/f/b$b;)Lc/d/a/b/a/f/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/d/a/b/a/f/b;->a(Lc/d/a/b/a/f/b;)V

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lc/d/a/b/a/f/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lc/d/a/b/a/f/b$b;Lc/d/a/b/a/f/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/d/a/b/a/f/b;-><init>(Lc/d/a/b/a/f/b$b;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    iget v1, p0, Lc/d/a/b/a/f/b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    iget v1, p0, Lc/d/a/b/a/f/b;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "chunkIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    iget-wide v1, p0, Lc/d/a/b/a/f/b;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "startOffset"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5
    invoke-virtual {p0}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "curOffset"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6
    iget-wide v1, p0, Lc/d/a/b/a/f/b;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "endOffset"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7
    iget-wide v1, p0, Lc/d/a/b/a/f/b;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "chunkContentLen"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8
    invoke-virtual {p0}, Lc/d/a/b/a/f/b;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hostChunkIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public a(IJ)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 32
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/b;->e()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/b;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    .line 33
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/b;->n()J

    move-result-wide v3

    const/4 v5, 0x1

    .line 35
    invoke-virtual {v0, v5}, Lc/d/a/b/a/f/b;->c(Z)J

    move-result-wide v6

    int-to-long v8, v1

    .line 36
    div-long v8, v6, v8

    .line 37
    sget-object v10, Lc/d/a/b/a/f/b;->n:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retainLen:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " divideChunkForReuse chunkSize:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " current host downloadChunk index:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lc/d/a/b/a/f/b;->f:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v11, v3

    const/4 v3, 0x0

    :goto_0
    const-wide/16 v13, 0x1

    if-ge v3, v1, :cond_4

    if-nez v3, :cond_1

    .line 38
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/b;->m()J

    move-result-wide v15

    add-long v17, v11, v8

    sub-long v17, v17, v13

    move-wide/from16 v21, v8

    move-wide v13, v15

    :goto_1
    move-wide/from16 v19, v17

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v1, -0x1

    if-ne v3, v4, :cond_3

    .line 39
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/b;->q()J

    move-result-wide v17

    cmp-long v15, v17, v11

    if-lez v15, :cond_2

    sub-long v15, v17, v11

    add-long/2addr v13, v15

    goto :goto_2

    :cond_2
    int-to-long v13, v4

    mul-long/2addr v13, v8

    sub-long v13, v6, v13

    :goto_2
    move-wide/from16 v21, v13

    move-wide/from16 v19, v17

    move-wide v13, v11

    goto :goto_3

    :cond_3
    add-long v15, v11, v8

    sub-long v17, v15, v13

    move-wide/from16 v21, v8

    move-wide v13, v11

    goto :goto_1

    .line 40
    :goto_3
    new-instance v4, Lc/d/a/b/a/f/b$b;

    iget v15, v0, Lc/d/a/b/a/f/b;->a:I

    invoke-direct {v4, v15}, Lc/d/a/b/a/f/b$b;-><init>(I)V

    neg-int v15, v3

    sub-int/2addr v15, v5

    .line 41
    invoke-virtual {v4, v15}, Lc/d/a/b/a/f/b$b;->a(I)Lc/d/a/b/a/f/b$b;

    .line 42
    invoke-virtual {v4, v13, v14}, Lc/d/a/b/a/f/b$b;->a(J)Lc/d/a/b/a/f/b$b;

    .line 43
    invoke-virtual {v4, v11, v12}, Lc/d/a/b/a/f/b$b;->b(J)Lc/d/a/b/a/f/b$b;

    .line 44
    invoke-virtual {v4, v11, v12}, Lc/d/a/b/a/f/b$b;->e(J)Lc/d/a/b/a/f/b$b;

    move-wide/from16 v16, v6

    move-wide/from16 v5, v19

    .line 45
    invoke-virtual {v4, v5, v6}, Lc/d/a/b/a/f/b$b;->c(J)Lc/d/a/b/a/f/b$b;

    move-wide/from16 v18, v11

    move-wide/from16 v10, v21

    .line 46
    invoke-virtual {v4, v10, v11}, Lc/d/a/b/a/f/b$b;->d(J)Lc/d/a/b/a/f/b$b;

    .line 47
    invoke-virtual {v4, v0}, Lc/d/a/b/a/f/b$b;->a(Lc/d/a/b/a/f/b;)Lc/d/a/b/a/f/b$b;

    .line 48
    invoke-virtual {v4}, Lc/d/a/b/a/f/b$b;->a()Lc/d/a/b/a/f/b;

    move-result-object v4

    .line 49
    sget-object v12, Lc/d/a/b/a/f/b;->n:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "divide sub chunk : "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " startOffset:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " curOffset:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, v18

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " endOffset:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " contentLen:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v11, v13, v8

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v6, v16

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 51
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_4
    if-lez v1, :cond_6

    .line 52
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/d/a/b/a/f/b;

    if-eqz v7, :cond_5

    .line 53
    invoke-virtual {v7}, Lc/d/a/b/a/f/b;->r()J

    move-result-wide v7

    add-long/2addr v5, v7

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 54
    :cond_6
    sget-object v1, Lc/d/a/b/a/f/b;->n:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reuseChunkContentLen:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 55
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/a/f/b;

    if-eqz v1, :cond_8

    .line 56
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/b;->q()J

    move-result-wide v7

    cmp-long v3, v7, v3

    if-nez v3, :cond_7

    .line 57
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/b;->m()J

    move-result-wide v3

    sub-long v3, p2, v3

    goto :goto_5

    .line 58
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/b;->q()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/b;->m()J

    move-result-wide v7

    sub-long/2addr v3, v7

    add-long/2addr v3, v13

    :goto_5
    sub-long/2addr v3, v5

    .line 59
    invoke-virtual {v1, v3, v4}, Lc/d/a/b/a/f/b;->a(J)V

    .line 60
    iget v3, v0, Lc/d/a/b/a/f/b;->f:I

    invoke-virtual {v1, v3}, Lc/d/a/b/a/f/b;->c(I)V

    .line 61
    iget-object v3, v0, Lc/d/a/b/a/f/b;->m:Lc/d/a/b/a/i/b;

    if-eqz v3, :cond_8

    .line 62
    invoke-virtual {v1}, Lc/d/a/b/a/f/b;->q()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/a/f/b;->r()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v3, v7, v8, v9, v10}, Lc/d/a/b/a/i/b;->a(JJ)V

    .line 63
    :cond_8
    invoke-virtual {v0, v2}, Lc/d/a/b/a/f/b;->a(Ljava/util/List;)V

    return-object v2

    :cond_9
    :goto_6
    const/4 v1, 0x0

    return-object v1
.end method

.method public a(I)V
    .locals 1

    .line 18
    iget-object v0, p0, Lc/d/a/b/a/f/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc/d/a/b/a/f/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 0

    .line 31
    iput-wide p1, p0, Lc/d/a/b/a/f/b;->e:J

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lc/d/a/b/a/f/b;->k:I

    .line 10
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 11
    iget v0, p0, Lc/d/a/b/a/f/b;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/b;->k:I

    iget v1, p0, Lc/d/a/b/a/f/b;->a:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 12
    iget v0, p0, Lc/d/a/b/a/f/b;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/b;->k:I

    iget v1, p0, Lc/d/a/b/a/f/b;->f:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 13
    iget v0, p0, Lc/d/a/b/a/f/b;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/b;->k:I

    iget-wide v1, p0, Lc/d/a/b/a/f/b;->b:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 14
    iget v0, p0, Lc/d/a/b/a/f/b;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/b;->k:I

    invoke-virtual {p0}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 15
    iget v0, p0, Lc/d/a/b/a/f/b;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/b;->k:I

    iget-wide v1, p0, Lc/d/a/b/a/f/b;->d:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 16
    iget v0, p0, Lc/d/a/b/a/f/b;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/b;->k:I

    iget-wide v1, p0, Lc/d/a/b/a/f/b;->e:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 17
    iget v0, p0, Lc/d/a/b/a/f/b;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/b;->k:I

    invoke-virtual {p0}, Lc/d/a/b/a/f/b;->b()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public a(Lc/d/a/b/a/f/b;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lc/d/a/b/a/f/b;->j:Lc/d/a/b/a/f/b;

    .line 28
    iget-object p1, p0, Lc/d/a/b/a/f/b;->j:Lc/d/a/b/a/f/b;

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Lc/d/a/b/a/f/b;->t()I

    move-result p1

    invoke-virtual {p0, p1}, Lc/d/a/b/a/f/b;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lc/d/a/b/a/i/b;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lc/d/a/b/a/f/b;->m:Lc/d/a/b/a/i/b;

    .line 22
    invoke-virtual {p0}, Lc/d/a/b/a/f/b;->s()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lc/d/a/b/a/f/b;->i:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 23
    iget-object v0, p0, Lc/d/a/b/a/f/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc/d/a/b/a/f/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lc/d/a/b/a/f/b;->m:Lc/d/a/b/a/i/b;

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 3
    iput p1, p0, Lc/d/a/b/a/f/b;->a:I

    return-void
.end method

.method public b(J)V
    .locals 1

    .line 4
    iget-object v0, p0, Lc/d/a/b/a/f/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lc/d/a/b/a/f/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c(Z)J
    .locals 8

    .line 4
    invoke-virtual {p0}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lc/d/a/b/a/f/b;->e:J

    iget-wide v4, p0, Lc/d/a/b/a/f/b;->h:J

    sub-long v6, v0, v4

    sub-long v6, v2, v6

    if-nez p1, :cond_0

    cmp-long p1, v0, v4

    if-nez p1, :cond_0

    .line 6
    iget-wide v4, p0, Lc/d/a/b/a/f/b;->b:J

    sub-long/2addr v0, v4

    sub-long v6, v2, v0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "contentLength:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lc/d/a/b/a/f/b;->e:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " curOffset:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " oldOffset:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lc/d/a/b/a/f/b;->h:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " retainLen:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadChunk"

    invoke-static {v0, p1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long p1, v6, v0

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v6

    :goto_0
    return-wide v0
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lc/d/a/b/a/f/b;->f:I

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public d()Lc/d/a/b/a/f/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/b;->j:Lc/d/a/b/a/f/b;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/d/a/b/a/f/b;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lc/d/a/b/a/f/b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/d/a/b/a/f/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/f/b;->j:Lc/d/a/b/a/f/b;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->g()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/b;

    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/b;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/b;->i:Ljava/util/List;

    return-object v0
.end method

.method public i()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/b;->j:Lc/d/a/b/a/f/b;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->g()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    .line 3
    :goto_0
    iget-object v3, p0, Lc/d/a/b/a/f/b;->j:Lc/d/a/b/a/f/b;

    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 4
    iget-object v3, p0, Lc/d/a/b/a/f/b;->j:Lc/d/a/b/a/f/b;

    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/a/f/b;

    if-eqz v3, :cond_3

    .line 5
    iget-object v4, p0, Lc/d/a/b/a/f/b;->j:Lc/d/a/b/a/f/b;

    invoke-virtual {v4}, Lc/d/a/b/a/f/b;->h()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-le v4, v0, :cond_2

    .line 6
    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->j()Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    if-ne v4, v0, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public j()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lc/d/a/b/a/f/b;->b:J

    .line 2
    invoke-virtual {p0}, Lc/d/a/b/a/f/b;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lc/d/a/b/a/f/b;->h:J

    iget-wide v4, p0, Lc/d/a/b/a/f/b;->b:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lc/d/a/b/a/f/b;->e:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()J
    .locals 6

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/b;->j:Lc/d/a/b/a/f/b;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->h()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/f/b;->j:Lc/d/a/b/a/f/b;

    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, 0x0

    move v4, v3

    .line 3
    :goto_0
    iget-object v5, p0, Lc/d/a/b/a/f/b;->j:Lc/d/a/b/a/f/b;

    invoke-virtual {v5}, Lc/d/a/b/a/f/b;->h()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 4
    iget-object v5, p0, Lc/d/a/b/a/f/b;->j:Lc/d/a/b/a/f/b;

    invoke-virtual {v5}, Lc/d/a/b/a/f/b;->h()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/d/a/b/a/f/b;

    if-eqz v5, :cond_2

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v5}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v0

    return-wide v0

    :cond_1
    if-ne v0, v3, :cond_2

    const/4 v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v1
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/b/a/f/b;->a:I

    return v0
.end method

.method public m()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/d/a/b/a/f/b;->b:J

    return-wide v0
.end method

.method public n()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public o()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc/d/a/b/a/f/b;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lc/d/a/b/a/f/b;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lc/d/a/b/a/f/b;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    iget-object v3, p0, Lc/d/a/b/a/f/b;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/a/f/b;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->j()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->n()J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->n()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 7
    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->n()J

    move-result-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lc/d/a/b/a/f/b;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v0

    iget-wide v2, p0, Lc/d/a/b/a/f/b;->b:J

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Lc/d/a/b/a/f/b;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lc/d/a/b/a/f/b;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    iget-object v3, p0, Lc/d/a/b/a/f/b;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/a/f/b;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v4

    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->m()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public q()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/d/a/b/a/f/b;->d:J

    return-wide v0
.end method

.method public r()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/d/a/b/a/f/b;->e:J

    return-wide v0
.end method

.method public s()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lc/d/a/b/a/f/b;->h:J

    return-void
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/b/a/f/b;->f:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lc/d/a/b/a/f/b;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-wide v0, p0, Lc/d/a/b/a/f/b;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-object p2, p0, Lc/d/a/b/a/f/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    iget-wide v0, p0, Lc/d/a/b/a/f/b;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    iget-wide v0, p0, Lc/d/a/b/a/f/b;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    iget p2, p0, Lc/d/a/b/a/f/b;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, -0x1

    .line 9
    iget-object v0, p0, Lc/d/a/b/a/f/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 11
    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
