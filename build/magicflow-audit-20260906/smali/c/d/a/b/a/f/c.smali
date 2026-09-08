.class public Lc/d/a/b/a/f/c;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/a/f/c$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/d/a/b/a/f/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Lc/d/a/b/a/a/j;

.field private D:Z

.field private E:Lc/d/a/b/a/a/a;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Ljava/lang/String;

.field private J:I

.field private K:I

.field private L:I

.field private M:Ljava/util/concurrent/atomic/AtomicLong;

.field private N:J

.field private O:Ljava/util/concurrent/atomic/AtomicInteger;

.field private P:Z

.field private Q:Z

.field private R:J

.field private S:Z

.field private T:Z

.field private U:J

.field private V:Ljava/lang/StringBuffer;

.field private W:I

.field private X:Z

.field private Y:Z

.field private Z:Z

.field private a:I

.field private a0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private b0:Lc/d/a/b/a/a/b;

.field private c:Ljava/lang/String;

.field private c0:Z

.field private d:Ljava/lang/String;

.field private d0:Lc/d/a/b/a/a/g;

.field private e:Ljava/lang/String;

.field private e0:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private f0:I

.field private g:Z

.field private g0:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private h0:Ljava/util/concurrent/atomic/AtomicLong;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/e;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i0:Z

.field private j:I

.field private volatile j0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/a/b/a/c/f;",
            ">;"
        }
    .end annotation
.end field

.field private k:[Ljava/lang/String;

.field private k0:Z

.field private l:[I

.field private l0:Z

.field private m:I

.field private m0:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/d/a/b/a/f/c$a;

    invoke-direct {v0}, Lc/d/a/b/a/f/c$a;-><init>()V

    sput-object v0, Lc/d/a/b/a/f/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lc/d/a/b/a/a/j;->a:Lc/d/a/b/a/a/j;

    iput-object v0, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->D:Z

    .line 5
    sget-object v0, Lc/d/a/b/a/a/a;->a:Lc/d/a/b/a/a/a;

    iput-object v0, p0, Lc/d/a/b/a/f/c;->E:Lc/d/a/b/a/a/a;

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lc/d/a/b/a/f/c;->L:I

    .line 7
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->P:Z

    .line 8
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->Q:Z

    .line 9
    sget-object v1, Lc/d/a/b/a/a/b;->a:Lc/d/a/b/a/a/b;

    iput-object v1, p0, Lc/d/a/b/a/f/c;->b0:Lc/d/a/b/a/a/b;

    .line 10
    sget-object v1, Lc/d/a/b/a/a/g;->a:Lc/d/a/b/a/a/g;

    iput-object v1, p0, Lc/d/a/b/a/f/c;->d0:Lc/d/a/b/a/a/g;

    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lc/d/a/b/a/f/c;->h0:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->l0:Z

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 8

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v0, Lc/d/a/b/a/a/j;->a:Lc/d/a/b/a/a/j;

    iput-object v0, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->D:Z

    .line 75
    sget-object v1, Lc/d/a/b/a/a/a;->a:Lc/d/a/b/a/a/a;

    iput-object v1, p0, Lc/d/a/b/a/f/c;->E:Lc/d/a/b/a/a/a;

    const/4 v1, 0x1

    .line 76
    iput v1, p0, Lc/d/a/b/a/f/c;->L:I

    .line 77
    iput-boolean v1, p0, Lc/d/a/b/a/f/c;->P:Z

    .line 78
    iput-boolean v1, p0, Lc/d/a/b/a/f/c;->Q:Z

    .line 79
    sget-object v2, Lc/d/a/b/a/a/b;->a:Lc/d/a/b/a/a/b;

    iput-object v2, p0, Lc/d/a/b/a/f/c;->b0:Lc/d/a/b/a/a/b;

    .line 80
    sget-object v2, Lc/d/a/b/a/a/g;->a:Lc/d/a/b/a/a/g;

    iput-object v2, p0, Lc/d/a/b/a/f/c;->d0:Lc/d/a/b/a/a/g;

    .line 81
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lc/d/a/b/a/f/c;->h0:Ljava/util/concurrent/atomic/AtomicLong;

    .line 82
    iput-boolean v1, p0, Lc/d/a/b/a/f/c;->l0:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v2, "_id"

    .line 83
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 84
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lc/d/a/b/a/f/c;->a:I

    :cond_1
    const-string v2, "name"

    .line 85
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 86
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/d/a/b/a/f/c;->b:Ljava/lang/String;

    :cond_2
    const-string v2, "title"

    .line 87
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_3

    .line 88
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/d/a/b/a/f/c;->c:Ljava/lang/String;

    :cond_3
    const-string v2, "url"

    .line 89
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_4

    .line 90
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/d/a/b/a/f/c;->d:Ljava/lang/String;

    :cond_4
    const-string v2, "savePath"

    .line 91
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_5

    .line 92
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/d/a/b/a/f/c;->e:Ljava/lang/String;

    :cond_5
    const-string v2, "tempPath"

    .line 93
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_6

    .line 94
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/d/a/b/a/f/c;->f:Ljava/lang/String;

    :cond_6
    const-string v2, "chunkCount"

    .line 95
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_7

    .line 96
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lc/d/a/b/a/f/c;->L:I

    :cond_7
    const-string v2, "status"

    .line 97
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_8

    .line 98
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v6, p0, Lc/d/a/b/a/f/c;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_0

    .line 99
    :cond_8
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lc/d/a/b/a/f/c;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    :goto_0
    const-string v2, "curBytes"

    .line 100
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_9

    .line 101
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Lc/d/a/b/a/f/c;->M:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_1

    .line 102
    :cond_9
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lc/d/a/b/a/f/c;->M:Ljava/util/concurrent/atomic/AtomicLong;

    :goto_1
    const-string v2, "totalBytes"

    .line 103
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_a

    .line 104
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lc/d/a/b/a/f/c;->N:J

    :cond_a
    const-string v2, "eTag"

    .line 105
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_b

    .line 106
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/d/a/b/a/f/c;->A:Ljava/lang/String;

    :cond_b
    const-string v2, "onlyWifi"

    .line 107
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_d

    .line 108
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_c

    move v2, v1

    goto :goto_2

    :cond_c
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lc/d/a/b/a/f/c;->g:Z

    :cond_d
    const-string v2, "force"

    .line 109
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_f

    .line 110
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_e

    move v2, v1

    goto :goto_3

    :cond_e
    move v2, v0

    :goto_3
    iput-boolean v2, p0, Lc/d/a/b/a/f/c;->n:Z

    :cond_f
    const-string v2, "retryCount"

    .line 111
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_10

    .line 112
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lc/d/a/b/a/f/c;->m:I

    :cond_10
    const-string v2, "extra"

    .line 113
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_11

    .line 114
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/d/a/b/a/f/c;->h:Ljava/lang/String;

    :cond_11
    const-string v2, "mimeType"

    .line 115
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_12

    .line 116
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/d/a/b/a/f/c;->t:Ljava/lang/String;

    :cond_12
    const-string v2, "notificationEnable"

    .line 117
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_14

    .line 118
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_13

    move v2, v1

    goto :goto_4

    :cond_13
    move v2, v0

    :goto_4
    iput-boolean v2, p0, Lc/d/a/b/a/f/c;->s:Z

    :cond_14
    const-string v2, "notificationVisibility"

    .line 119
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_15

    .line 120
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lc/d/a/b/a/f/c;->K:I

    :cond_15
    const-string v2, "isFirstDownload"

    .line 121
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_17

    .line 122
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_16

    move v2, v1

    goto :goto_5

    :cond_16
    move v2, v0

    :goto_5
    iput-boolean v2, p0, Lc/d/a/b/a/f/c;->P:Z

    :cond_17
    const-string v2, "isFirstSuccess"

    .line 123
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_19

    .line 124
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_18

    move v2, v1

    goto :goto_6

    :cond_18
    move v2, v0

    :goto_6
    iput-boolean v2, p0, Lc/d/a/b/a/f/c;->Q:Z

    :cond_19
    const-string v2, "needHttpsToHttpRetry"

    .line 125
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_1b

    .line 126
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_1a

    move v2, v1

    goto :goto_7

    :cond_1a
    move v2, v0

    :goto_7
    iput-boolean v2, p0, Lc/d/a/b/a/f/c;->u:Z

    :cond_1b
    const-string v2, "downloadTime"

    .line 127
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_1c

    .line 128
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lc/d/a/b/a/f/c;->R:J

    :cond_1c
    const-string v2, "packageName"

    .line 129
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_1d

    .line 130
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/d/a/b/a/f/c;->v:Ljava/lang/String;

    :cond_1d
    const-string v2, "md5"

    .line 131
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_1e

    .line 132
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/d/a/b/a/f/c;->w:Ljava/lang/String;

    :cond_1e
    const-string v2, "retryDelay"

    .line 133
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_20

    .line 134
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_1f

    move v2, v1

    goto :goto_8

    :cond_1f
    move v2, v0

    :goto_8
    iput-boolean v2, p0, Lc/d/a/b/a/f/c;->x:Z

    :cond_20
    const-string v2, "curRetryTime"

    .line 135
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_21

    .line 136
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lc/d/a/b/a/f/c;->B:I

    :cond_21
    const-string v2, "retryDelayStatus"

    .line 137
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_25

    .line 138
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 139
    sget-object v3, Lc/d/a/b/a/a/j;->b:Lc/d/a/b/a/a/j;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_22

    .line 140
    sget-object v2, Lc/d/a/b/a/a/j;->b:Lc/d/a/b/a/a/j;

    iput-object v2, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    goto :goto_9

    .line 141
    :cond_22
    sget-object v3, Lc/d/a/b/a/a/j;->c:Lc/d/a/b/a/a/j;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_23

    .line 142
    sget-object v2, Lc/d/a/b/a/a/j;->c:Lc/d/a/b/a/a/j;

    iput-object v2, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    goto :goto_9

    .line 143
    :cond_23
    sget-object v3, Lc/d/a/b/a/a/j;->d:Lc/d/a/b/a/a/j;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_24

    .line 144
    sget-object v2, Lc/d/a/b/a/a/j;->d:Lc/d/a/b/a/a/j;

    iput-object v2, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    goto :goto_9

    .line 145
    :cond_24
    sget-object v2, Lc/d/a/b/a/a/j;->a:Lc/d/a/b/a/a/j;

    iput-object v2, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    :cond_25
    :goto_9
    const-string v2, "defaultHttpServiceBackUp"

    .line 146
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_27

    .line 147
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_26

    move v2, v1

    goto :goto_a

    :cond_26
    move v2, v0

    :goto_a
    iput-boolean v2, p0, Lc/d/a/b/a/f/c;->y:Z

    :cond_27
    const-string v2, "chunkRunnableReuse"

    .line 148
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_29

    .line 149
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v1, :cond_28

    move v0, v1

    :cond_28
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->z:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_29
    :goto_b
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Lc/d/a/b/a/a/j;->a:Lc/d/a/b/a/a/j;

    iput-object v0, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->D:Z

    .line 63
    sget-object v0, Lc/d/a/b/a/a/a;->a:Lc/d/a/b/a/a/a;

    iput-object v0, p0, Lc/d/a/b/a/f/c;->E:Lc/d/a/b/a/a/a;

    const/4 v0, 0x1

    .line 64
    iput v0, p0, Lc/d/a/b/a/f/c;->L:I

    .line 65
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->P:Z

    .line 66
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->Q:Z

    .line 67
    sget-object v1, Lc/d/a/b/a/a/b;->a:Lc/d/a/b/a/a/b;

    iput-object v1, p0, Lc/d/a/b/a/f/c;->b0:Lc/d/a/b/a/a/b;

    .line 68
    sget-object v1, Lc/d/a/b/a/a/g;->a:Lc/d/a/b/a/a/g;

    iput-object v1, p0, Lc/d/a/b/a/f/c;->d0:Lc/d/a/b/a/a/g;

    .line 69
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lc/d/a/b/a/f/c;->h0:Ljava/util/concurrent/atomic/AtomicLong;

    .line 70
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->l0:Z

    .line 71
    invoke-virtual {p0, p1}, Lc/d/a/b/a/f/c;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lc/d/a/b/a/f/c$b;)V
    .locals 5

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lc/d/a/b/a/a/j;->a:Lc/d/a/b/a/a/j;

    iput-object v0, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->D:Z

    .line 16
    sget-object v1, Lc/d/a/b/a/a/a;->a:Lc/d/a/b/a/a/a;

    iput-object v1, p0, Lc/d/a/b/a/f/c;->E:Lc/d/a/b/a/a/a;

    const/4 v1, 0x1

    .line 17
    iput v1, p0, Lc/d/a/b/a/f/c;->L:I

    .line 18
    iput-boolean v1, p0, Lc/d/a/b/a/f/c;->P:Z

    .line 19
    iput-boolean v1, p0, Lc/d/a/b/a/f/c;->Q:Z

    .line 20
    sget-object v2, Lc/d/a/b/a/a/b;->a:Lc/d/a/b/a/a/b;

    iput-object v2, p0, Lc/d/a/b/a/f/c;->b0:Lc/d/a/b/a/a/b;

    .line 21
    sget-object v2, Lc/d/a/b/a/a/g;->a:Lc/d/a/b/a/a/g;

    iput-object v2, p0, Lc/d/a/b/a/f/c;->d0:Lc/d/a/b/a/a/g;

    .line 22
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lc/d/a/b/a/f/c;->h0:Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    iput-boolean v1, p0, Lc/d/a/b/a/f/c;->l0:Z

    if-nez p1, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->i(Lc/d/a/b/a/f/c$b;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/d/a/b/a/f/c;->b:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->j(Lc/d/a/b/a/f/c$b;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/d/a/b/a/f/c;->c:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->k(Lc/d/a/b/a/f/c$b;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/d/a/b/a/f/c;->d:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->l(Lc/d/a/b/a/f/c$b;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/d/a/b/a/f/c;->e:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->m(Lc/d/a/b/a/f/c$b;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/d/a/b/a/f/c;->f:Ljava/lang/String;

    .line 29
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lc/d/a/b/a/f/c;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lc/d/a/b/a/f/c;->M:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->n(Lc/d/a/b/a/f/c$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->h:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->o(Lc/d/a/b/a/f/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->g:Z

    .line 33
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->p(Lc/d/a/b/a/f/c$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->i:Ljava/util/List;

    .line 34
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->q(Lc/d/a/b/a/f/c$b;)I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/c;->j:I

    .line 35
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->r(Lc/d/a/b/a/f/c$b;)I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/c;->m:I

    .line 36
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->s(Lc/d/a/b/a/f/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->n:Z

    .line 37
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->t(Lc/d/a/b/a/f/c$b;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->k:[Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->u(Lc/d/a/b/a/f/c$b;)[I

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->l:[I

    .line 39
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->v(Lc/d/a/b/a/f/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->o:Z

    .line 40
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->w(Lc/d/a/b/a/f/c$b;)I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/c;->p:I

    .line 41
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->x(Lc/d/a/b/a/f/c$b;)I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/c;->q:I

    .line 42
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->y(Lc/d/a/b/a/f/c$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->r:Ljava/util/List;

    .line 43
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->z(Lc/d/a/b/a/f/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->s:Z

    .line 44
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->A(Lc/d/a/b/a/f/c$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->t:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->B(Lc/d/a/b/a/f/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->u:Z

    .line 46
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->C(Lc/d/a/b/a/f/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->x:Z

    .line 47
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->D(Lc/d/a/b/a/f/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->X:Z

    .line 48
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->E(Lc/d/a/b/a/f/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->Y:Z

    .line 49
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->F(Lc/d/a/b/a/f/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->y:Z

    .line 50
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->G(Lc/d/a/b/a/f/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->z:Z

    .line 51
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->H(Lc/d/a/b/a/f/c$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->v:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->a(Lc/d/a/b/a/f/c$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->w:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->b(Lc/d/a/b/a/f/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->D:Z

    .line 54
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->c(Lc/d/a/b/a/f/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->c0:Z

    .line 55
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->d(Lc/d/a/b/a/f/c$b;)Lc/d/a/b/a/a/g;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->d0:Lc/d/a/b/a/a/g;

    .line 56
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->e(Lc/d/a/b/a/f/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->F:Z

    .line 57
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->f(Lc/d/a/b/a/f/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->G:Z

    .line 58
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->g(Lc/d/a/b/a/f/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->l0:Z

    .line 59
    invoke-static {p1}, Lc/d/a/b/a/f/c$b;->h(Lc/d/a/b/a/f/c$b;)Z

    move-result p1

    iput-boolean p1, p0, Lc/d/a/b/a/f/c;->m0:Z

    return-void
.end method

.method synthetic constructor <init>(Lc/d/a/b/a/f/c$b;Lc/d/a/b/a/f/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/d/a/b/a/f/c;-><init>(Lc/d/a/b/a/f/c$b;)V

    return-void
.end method

.method private K0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->a0:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/f/c;->r:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/d/a/b/a/f/c;->r:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->S:Z

    .line 6
    iput v0, p0, Lc/d/a/b/a/f/c;->J:I

    .line 7
    :goto_1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->a0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 8
    iget-object v0, p0, Lc/d/a/b/a/f/c;->r:Ljava/util/List;

    iget-object v2, p0, Lc/d/a/b/a/f/c;->a0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private g(I)V
    .locals 1

    .line 1
    sget-object v0, Lc/d/a/b/a/a/g;->b:Lc/d/a/b/a/a/g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lc/d/a/b/a/a/g;->b:Lc/d/a/b/a/a/g;

    iput-object p1, p0, Lc/d/a/b/a/f/c;->d0:Lc/d/a/b/a/a/g;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lc/d/a/b/a/a/g;->c:Lc/d/a/b/a/a/g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 4
    sget-object p1, Lc/d/a/b/a/a/g;->c:Lc/d/a/b/a/a/g;

    iput-object p1, p0, Lc/d/a/b/a/f/c;->d0:Lc/d/a/b/a/a/g;

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, Lc/d/a/b/a/a/g;->a:Lc/d/a/b/a/a/g;

    iput-object p1, p0, Lc/d/a/b/a/f/c;->d0:Lc/d/a/b/a/a/g;

    :goto_0
    return-void
.end method

.method private h(I)V
    .locals 1

    .line 1
    sget-object v0, Lc/d/a/b/a/a/j;->b:Lc/d/a/b/a/a/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lc/d/a/b/a/a/j;->b:Lc/d/a/b/a/a/j;

    iput-object p1, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lc/d/a/b/a/a/j;->c:Lc/d/a/b/a/a/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 4
    sget-object p1, Lc/d/a/b/a/a/j;->c:Lc/d/a/b/a/a/j;

    iput-object p1, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lc/d/a/b/a/a/j;->d:Lc/d/a/b/a/a/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 6
    sget-object p1, Lc/d/a/b/a/a/j;->d:Lc/d/a/b/a/a/j;

    iput-object p1, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    goto :goto_0

    .line 7
    :cond_2
    sget-object p1, Lc/d/a/b/a/a/j;->a:Lc/d/a/b/a/a/j;

    iput-object p1, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    :goto_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->h0:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x14

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

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

.method public A0()I
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x5

    if-ne v0, v1, :cond_0

    const/4 v0, -0x2

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public B()V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Lc/d/a/b/a/f/c;->a(JZ)V

    .line 2
    iput-wide v1, p0, Lc/d/a/b/a/f/c;->N:J

    .line 3
    iput v0, p0, Lc/d/a/b/a/f/c;->L:I

    .line 4
    iput-wide v1, p0, Lc/d/a/b/a/f/c;->R:J

    return-void
.end method

.method public B0()Lc/d/a/b/a/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->d0:Lc/d/a/b/a/a/g;

    return-object v0
.end method

.method public C()Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->g0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->v0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->w0()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v2, :cond_3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 6
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-lez v0, :cond_3

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    .line 7
    iget-wide v8, p0, Lc/d/a/b/a/f/c;->N:J

    cmp-long v0, v8, v6

    if-lez v0, :cond_3

    iget v0, p0, Lc/d/a/b/a/f/c;->L:I

    if-lez v0, :cond_3

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    cmp-long v0, v2, v8

    if-gtz v0, :cond_3

    cmp-long v0, v4, v8

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public C0()I
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/b/a/f/c;->J:I

    return v0
.end method

.method public D()Z
    .locals 6

    .line 1
    iget v0, p0, Lc/d/a/b/a/f/c;->L:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/k;->d(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lc/d/a/b/a/f/c;->L:I

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/b/a/f/b;

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4}, Lc/d/a/b/a/f/b;->p()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p0, v2, v3}, Lc/d/a/b/a/f/c;->a(J)V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public D0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->T:Z

    return v0
.end method

.method public declared-synchronized E()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->i0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public E0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->X:Z

    return v0
.end method

.method public F()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->C()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->D()Z

    move-result v0

    return v0
.end method

.method public F0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->Z:Z

    return v0
.end method

.method public G()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->P:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->v0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->w0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->v0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->w0()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public G0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public H()Lc/d/a/b/a/a/i;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc/d/a/b/a/f/c;->w:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc/d/a/b/a/j/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/d/a/b/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public H0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->g:Z

    return v0
.end method

.method public I()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public I0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public J()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->v:Ljava/lang/String;

    return-object v0
.end method

.method public K()I
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/b/a/f/c;->L:I

    return v0
.end method

.method public L()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->u:Z

    return v0
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->x:Z

    return v0
.end method

.method public N()I
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/b/a/f/c;->B:I

    return v0
.end method

.method public O()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->k0:Z

    return v0
.end method

.method public P()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->k0:Z

    return-void
.end method

.method public Q()Lc/d/a/b/a/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    return-object v0
.end method

.method public R()Lc/d/a/b/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->E:Lc/d/a/b/a/a/a;

    return-object v0
.end method

.method public S()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    sget-object v2, Lc/d/a/b/a/a/j;->b:Lc/d/a/b/a/a/j;

    if-eq v1, v2, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lc/d/a/b/a/f/c;->E:Lc/d/a/b/a/a/a;

    sget-object v1, Lc/d/a/b/a/a/a;->b:Lc/d/a/b/a/a/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lc/d/a/b/a/a/a;->c:Lc/d/a/b/a/a/a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lc/d/a/b/a/f/c;->b0:Lc/d/a/b/a/a/b;

    sget-object v1, Lc/d/a/b/a/a/b;->b:Lc/d/a/b/a/a/b;

    if-ne v0, v1, :cond_0

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

.method public T()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    sget-object v2, Lc/d/a/b/a/a/j;->b:Lc/d/a/b/a/a/j;

    if-ne v1, v2, :cond_1

    .line 3
    :cond_0
    sget-object v1, Lc/d/a/b/a/a/j;->c:Lc/d/a/b/a/a/j;

    invoke-virtual {p0, v1}, Lc/d/a/b/a/f/c;->a(Lc/d/a/b/a/a/j;)V

    :cond_1
    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lc/d/a/b/a/f/c;->E:Lc/d/a/b/a/a/a;

    sget-object v1, Lc/d/a/b/a/a/a;->b:Lc/d/a/b/a/a/a;

    if-eq v0, v1, :cond_2

    sget-object v1, Lc/d/a/b/a/a/a;->c:Lc/d/a/b/a/a/a;

    if-ne v0, v1, :cond_3

    .line 5
    :cond_2
    sget-object v0, Lc/d/a/b/a/a/a;->d:Lc/d/a/b/a/a/a;

    invoke-virtual {p0, v0}, Lc/d/a/b/a/f/c;->a(Lc/d/a/b/a/a/a;)V

    .line 6
    :cond_3
    iget-object v0, p0, Lc/d/a/b/a/f/c;->b0:Lc/d/a/b/a/a/b;

    sget-object v1, Lc/d/a/b/a/a/b;->b:Lc/d/a/b/a/a/b;

    if-ne v0, v1, :cond_4

    .line 7
    sget-object v0, Lc/d/a/b/a/a/b;->c:Lc/d/a/b/a/a/b;

    invoke-virtual {p0, v0}, Lc/d/a/b/a/f/c;->a(Lc/d/a/b/a/a/b;)V

    :cond_4
    return-void
.end method

.method public U()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    sget-object v1, Lc/d/a/b/a/a/j;->b:Lc/d/a/b/a/a/j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public V()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lc/d/a/b/a/f/c;->E:Lc/d/a/b/a/a/a;

    sget-object v1, Lc/d/a/b/a/a/a;->b:Lc/d/a/b/a/a/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public W()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/d/a/b/a/f/c;->R:J

    return-wide v0
.end method

.method public X()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->P:Z

    return v0
.end method

.method public Y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->Q:Z

    return v0
.end method

.method public Z()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->H0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/b/a/j/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public a()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lc/d/a/b/a/f/c;->w:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lc/d/a/b/a/f/c;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc/d/a/b/a/f/c;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 95
    iget-object v0, p0, Lc/d/a/b/a/f/c;->M:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    .line 97
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lc/d/a/b/a/f/c;->M:Ljava/util/concurrent/atomic/AtomicLong;

    :goto_0
    return-void
.end method

.method public a(JZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 98
    invoke-virtual {p0, p1, p2}, Lc/d/a/b/a/f/c;->a(J)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v0

    cmp-long p3, p1, v0

    if-lez p3, :cond_1

    .line 100
    invoke-virtual {p0, p1, p2}, Lc/d/a/b/a/f/c;->a(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    .line 61
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 62
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget v1, p0, Lc/d/a/b/a/f/c;->a:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 63
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-object v1, p0, Lc/d/a/b/a/f/c;->d:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 64
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-object v1, p0, Lc/d/a/b/a/f/c;->e:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 65
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-object v1, p0, Lc/d/a/b/a/f/c;->f:Ljava/lang/String;

    if-nez v1, :cond_3

    move-object v1, v2

    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 66
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-object v1, p0, Lc/d/a/b/a/f/c;->b:Ljava/lang/String;

    if-nez v1, :cond_4

    move-object v1, v2

    :cond_4
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 67
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget v1, p0, Lc/d/a/b/a/f/c;->L:I

    int-to-long v3, v1

    invoke-virtual {p1, v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 68
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p1, v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 69
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v3

    invoke-virtual {p1, v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 70
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-wide v3, p0, Lc/d/a/b/a/f/c;->N:J

    invoke-virtual {p1, v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 71
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-object v1, p0, Lc/d/a/b/a/f/c;->A:Ljava/lang/String;

    if-nez v1, :cond_5

    move-object v1, v2

    :cond_5
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 72
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->g:Z

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_6

    move-wide v7, v3

    goto :goto_0

    :cond_6
    move-wide v7, v5

    :goto_0
    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 73
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->n:Z

    if-eqz v1, :cond_7

    move-wide v7, v3

    goto :goto_1

    :cond_7
    move-wide v7, v5

    :goto_1
    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 74
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget v1, p0, Lc/d/a/b/a/f/c;->m:I

    int-to-long v7, v1

    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 75
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-object v1, p0, Lc/d/a/b/a/f/c;->h:Ljava/lang/String;

    if-nez v1, :cond_8

    move-object v1, v2

    :cond_8
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 76
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-object v1, p0, Lc/d/a/b/a/f/c;->t:Ljava/lang/String;

    if-nez v1, :cond_9

    move-object v1, v2

    :cond_9
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 77
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-object v1, p0, Lc/d/a/b/a/f/c;->c:Ljava/lang/String;

    if-nez v1, :cond_a

    move-object v1, v2

    :cond_a
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 78
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->s:Z

    if-eqz v1, :cond_b

    move-wide v7, v3

    goto :goto_2

    :cond_b
    move-wide v7, v5

    :goto_2
    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 79
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget v1, p0, Lc/d/a/b/a/f/c;->K:I

    int-to-long v7, v1

    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 80
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->P:Z

    if-eqz v1, :cond_c

    move-wide v7, v3

    goto :goto_3

    :cond_c
    move-wide v7, v5

    :goto_3
    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 81
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->Q:Z

    if-eqz v1, :cond_d

    move-wide v7, v3

    goto :goto_4

    :cond_d
    move-wide v7, v5

    :goto_4
    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 82
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->u:Z

    if-eqz v1, :cond_e

    move-wide v7, v3

    goto :goto_5

    :cond_e
    move-wide v7, v5

    :goto_5
    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 83
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-wide v7, p0, Lc/d/a/b/a/f/c;->R:J

    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 84
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-object v1, p0, Lc/d/a/b/a/f/c;->v:Ljava/lang/String;

    if-nez v1, :cond_f

    move-object v1, v2

    :cond_f
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 85
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-object v1, p0, Lc/d/a/b/a/f/c;->w:Ljava/lang/String;

    if-nez v1, :cond_10

    move-object v1, v2

    :cond_10
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 86
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->x:Z

    if-eqz v1, :cond_11

    move-wide v1, v3

    goto :goto_6

    :cond_11
    move-wide v1, v5

    :goto_6
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 87
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget v1, p0, Lc/d/a/b/a/f/c;->B:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 88
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-object v1, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 89
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->y:Z

    if-eqz v1, :cond_12

    move-wide v1, v3

    goto :goto_7

    :cond_12
    move-wide v1, v5

    :goto_7
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 90
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/a/f/c;->W:I

    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->z:Z

    if-eqz v1, :cond_13

    goto :goto_8

    :cond_13
    move-wide v3, v5

    :goto_8
    invoke-virtual {p1, v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/c;->a:I

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->g:Z

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->h:Ljava/lang/String;

    .line 9
    sget-object v0, Lc/d/a/b/a/f/e;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->i:Ljava/util/List;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/c;->j:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->k:[Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->l:[I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/c;->m:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->n:Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->o:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/c;->p:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/c;->q:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->r:Ljava/util/List;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->s:Z

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->t:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->u:Z

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->v:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->w:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->x:Z

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->y:Z

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->z:Z

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->A:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/c;->B:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lc/d/a/b/a/f/c;->h(I)V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->D:Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_9

    :cond_9
    move v0, v2

    :goto_9
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->H:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->I:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/c;->J:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/c;->K:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/c;->L:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lc/d/a/b/a/f/c;->a(J)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lc/d/a/b/a/f/c;->N:J

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lc/d/a/b/a/f/c;->a(I)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lc/d/a/b/a/f/c;->R:J

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_a

    :cond_a
    move v0, v2

    :goto_a
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->S:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_b

    :cond_b
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->T:Z

    .line 42
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/f/c;->V:Ljava/lang/StringBuffer;

    if-nez v0, :cond_c

    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc/d/a/b/a/f/c;->V:Ljava/lang/StringBuffer;

    goto :goto_c

    .line 44
    :cond_c
    iget-object v0, p0, Lc/d/a/b/a/f/c;->V:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lc/d/a/b/a/f/c;->V:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_d

    :cond_d
    move v0, v2

    :goto_d
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->X:Z

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_e

    :cond_e
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->Y:Z

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_f

    :cond_f
    move v0, v2

    :goto_f
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->Z:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->a0:Ljava/util/List;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_10

    :cond_10
    move v0, v2

    :goto_10
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->c0:Z

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lc/d/a/b/a/f/c;->g(I)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_11

    :cond_11
    move v0, v2

    :goto_11
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->F:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/c;->f0:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/c;->g0:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_12

    :cond_12
    move v0, v2

    :goto_12
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->i0:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_13

    :cond_13
    move v0, v2

    :goto_13
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->k0:Z

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_14

    :cond_14
    move v0, v2

    :goto_14
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->l0:Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_15

    :cond_15
    move v1, v2

    :goto_15
    iput-boolean v1, p0, Lc/d/a/b/a/f/c;->m0:Z

    return-void
.end method

.method public a(Lc/d/a/b/a/a/a;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lc/d/a/b/a/f/c;->E:Lc/d/a/b/a/a/a;

    return-void
.end method

.method public a(Lc/d/a/b/a/a/b;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lc/d/a/b/a/f/c;->b0:Lc/d/a/b/a/a/b;

    return-void
.end method

.method public a(Lc/d/a/b/a/a/j;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    return-void
.end method

.method public declared-synchronized a(Lc/d/a/b/a/c/f;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    .line 120
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "DownloadInfo"

    const-string v1, "registerTempFileSaveCallback"

    .line 121
    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lc/d/a/b/a/f/c;->j0:Ljava/util/List;

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/d/a/b/a/f/c;->j0:Ljava/util/List;

    .line 124
    :cond_1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->j0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lc/d/a/b/a/f/c;->j0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 126
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    new-instance v1, Lc/d/a/b/a/d/a;

    const/16 v2, 0x40e

    const-string v3, "registerTempFileSaveCallback"

    invoke-static {v0, v3}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lc/d/a/b/a/c/f;->a(Lc/d/a/b/a/d/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lc/d/a/b/a/f/c;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->K()I

    move-result v0

    invoke-virtual {p0, v0}, Lc/d/a/b/a/f/c;->b(I)V

    .line 108
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lc/d/a/b/a/f/c;->c(J)V

    .line 109
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lc/d/a/b/a/f/c;->a(JZ)V

    .line 110
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->S()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->S()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lc/d/a/b/a/f/c;->B:I

    .line 112
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->k0:Z

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->N()I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/c;->B:I

    .line 114
    :goto_0
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/d/a/b/a/f/c;->b(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 115
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result p2

    invoke-virtual {p0, p2}, Lc/d/a/b/a/f/c;->a(I)V

    .line 116
    :cond_2
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->X()Z

    move-result p2

    iput-boolean p2, p0, Lc/d/a/b/a/f/c;->P:Z

    .line 117
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->Y()Z

    move-result p2

    iput-boolean p2, p0, Lc/d/a/b/a/f/c;->Q:Z

    .line 118
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->Q()Lc/d/a/b/a/a/j;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lc/d/a/b/a/f/c;->e0:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lc/d/a/b/a/f/c;->a0:Ljava/util/List;

    .line 94
    invoke-direct {p0}, Lc/d/a/b/a/f/c;->K0()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lc/d/a/b/a/f/c;->X:Z

    return-void
.end method

.method public declared-synchronized a(ZLc/d/a/b/a/d/a;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 129
    :try_start_0
    iput-boolean v0, p0, Lc/d/a/b/a/f/c;->i0:Z

    .line 130
    iget-object v0, p0, Lc/d/a/b/a/f/c;->j0:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 131
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "DownloadInfo"

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTempSaveCallback isSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " callback size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/d/a/b/a/f/c;->j0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lc/d/a/b/a/f/c;->j0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 134
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/a/c/f;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    .line 136
    invoke-interface {v1}, Lc/d/a/b/a/c/f;->a()V

    goto :goto_0

    .line 137
    :cond_2
    invoke-interface {v1, p2}, Lc/d/a/b/a/c/f;->a(Lc/d/a/b/a/d/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lc/d/a/b/a/f/c;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 119
    :cond_0
    iget-object v1, p0, Lc/d/a/b/a/f/c;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->t0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/d/a/b/a/f/c;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public a0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    invoke-static {v0}, Lc/d/a/b/a/a/f;->a(I)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/e;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/f/c;->i:Ljava/util/List;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 5
    iput p1, p0, Lc/d/a/b/a/f/c;->L:I

    return-void
.end method

.method public b(J)V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/d/a/b/a/f/c;->M:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lc/d/a/b/a/f/c;->A:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/d/a/b/a/f/c;->Z:Z

    return-void
.end method

.method public b0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->r:Ljava/util/List;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/b/a/f/c;->j:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 5
    iput p1, p0, Lc/d/a/b/a/f/c;->K:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lc/d/a/b/a/f/c;->N:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lc/d/a/b/a/f/c;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lc/d/a/b/a/f/c;->P:Z

    return-void
.end method

.method public c0()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/d/a/b/a/f/c;->N:J

    invoke-static {v0, v1}, Lc/d/a/b/a/j/d;->a(J)Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/b/a/f/c;->m:I

    return v0
.end method

.method public d(J)J
    .locals 2

    .line 5
    iget v0, p0, Lc/d/a/b/a/f/c;->p:I

    if-gtz v0, :cond_0

    const/16 v0, 0x64

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    .line 6
    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    const-wide/32 p1, 0x100000

    :cond_1
    return-wide p1
.end method

.method public d(I)V
    .locals 0

    .line 4
    iput p1, p0, Lc/d/a/b/a/f/c;->f0:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lc/d/a/b/a/f/c;->I:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lc/d/a/b/a/f/c;->Q:Z

    return-void
.end method

.method public d0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->o:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->a0:Ljava/util/List;

    return-object v0
.end method

.method public e(I)V
    .locals 1

    .line 4
    iget v0, p0, Lc/d/a/b/a/f/c;->m:I

    sub-int/2addr v0, p1

    iput v0, p0, Lc/d/a/b/a/f/c;->B:I

    .line 5
    iget p1, p0, Lc/d/a/b/a/f/c;->B:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lc/d/a/b/a/f/c;->B:I

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lc/d/a/b/a/f/c;->g0:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lc/d/a/b/a/f/c;->H:Z

    return-void
.end method

.method public e0()I
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/b/a/f/c;->p:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lc/d/a/b/a/f/c;->a0:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->S:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Lc/d/a/b/a/f/c;->a0:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->S:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/d/a/b/a/f/c;->r:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Lc/d/a/b/a/f/c;->J:I

    if-ltz v1, :cond_1

    iget-object v2, p0, Lc/d/a/b/a/f/c;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lc/d/a/b/a/f/c;->r:Ljava/util/List;

    iget v2, p0, Lc/d/a/b/a/f/c;->J:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lc/d/a/b/a/f/c;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lc/d/a/b/a/f/c;->d:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->u:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->T:Z

    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Lc/d/a/b/a/f/c;->d:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public f(I)V
    .locals 0

    .line 9
    iput p1, p0, Lc/d/a/b/a/f/c;->a:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    .line 11
    invoke-virtual {p0, v1, v2, v0}, Lc/d/a/b/a/f/c;->a(JZ)V

    .line 12
    invoke-virtual {p0, v1, v2}, Lc/d/a/b/a/f/c;->c(J)V

    .line 13
    invoke-virtual {p0, p1}, Lc/d/a/b/a/f/c;->b(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v0}, Lc/d/a/b/a/f/c;->b(I)V

    .line 15
    iput-wide v1, p0, Lc/d/a/b/a/f/c;->R:J

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lc/d/a/b/a/f/c;->T:Z

    return-void
.end method

.method public f0()I
    .locals 2

    .line 1
    iget v0, p0, Lc/d/a/b/a/f/c;->q:I

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public declared-synchronized g(Z)V
    .locals 0

    monitor-enter p0

    .line 7
    :try_start_0
    iput-boolean p1, p0, Lc/d/a/b/a/f/c;->i0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->S:Z

    return v0
.end method

.method public g0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/d/a/b/a/f/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/d/a/b/a/f/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public h()V
    .locals 2

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/d/a/b/a/f/c;->U:J

    return-void
.end method

.method public h0()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lc/d/a/b/a/j/d;->b(Lc/d/a/b/a/f/c;)Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lc/d/a/b/a/f/c;->U:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lc/d/a/b/a/f/c;->U:J

    sub-long/2addr v0, v4

    .line 3
    iget-wide v4, p0, Lc/d/a/b/a/f/c;->R:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    .line 4
    iput-wide v2, p0, Lc/d/a/b/a/f/c;->R:J

    :cond_1
    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 5
    iput-wide v0, p0, Lc/d/a/b/a/f/c;->R:J

    :cond_2
    return-void
.end method

.method public i0()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->S:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lc/d/a/b/a/f/c;->J:I

    add-int/2addr v0, v1

    iput v0, p0, Lc/d/a/b/a/f/c;->J:I

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/f/c;->r:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lc/d/a/b/a/f/c;->J:I

    if-gez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget v0, p0, Lc/d/a/b/a/f/c;->J:I

    iget-object v3, p0, Lc/d/a/b/a/f/c;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 5
    iget-object v0, p0, Lc/d/a/b/a/f/c;->r:Ljava/util/List;

    iget v3, p0, Lc/d/a/b/a/f/c;->J:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iput-boolean v1, p0, Lc/d/a/b/a/f/c;->S:Z

    return v1

    .line 8
    :cond_2
    iget v0, p0, Lc/d/a/b/a/f/c;->J:I

    add-int/2addr v0, v1

    iput v0, p0, Lc/d/a/b/a/f/c;->J:I

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->D:Z

    return v0
.end method

.method public j0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->r:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->S:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lc/d/a/b/a/f/c;->J:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lc/d/a/b/a/f/c;->r:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->c0:Z

    return v0
.end method

.method public k0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/a/f/c;->d:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->u:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->T:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->F:Z

    return v0
.end method

.method public l0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->h0:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->G:Z

    return v0
.end method

.method public m0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->e0:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->l0:Z

    return v0
.end method

.method public n0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->V:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/f/c;->V:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->m0:Z

    return v0
.end method

.method public o0()Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    iget v1, p0, Lc/d/a/b/a/f/c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    iget-object v1, p0, Lc/d/a/b/a/f/c;->d:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lc/d/a/b/a/f/c;->e:Ljava/lang/String;

    const-string v2, "savePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lc/d/a/b/a/f/c;->f:Ljava/lang/String;

    const-string v2, "tempPath"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lc/d/a/b/a/f/c;->b:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lc/d/a/b/a/f/c;->L:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "chunkCount"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "curBytes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    iget-wide v1, p0, Lc/d/a/b/a/f/c;->N:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "totalBytes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 11
    iget-object v1, p0, Lc/d/a/b/a/f/c;->A:Ljava/lang/String;

    const-string v2, "eTag"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->g:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onlyWifi"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->n:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "force"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    iget v1, p0, Lc/d/a/b/a/f/c;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retryCount"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    iget-object v1, p0, Lc/d/a/b/a/f/c;->h:Ljava/lang/String;

    const-string v2, "extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lc/d/a/b/a/f/c;->t:Ljava/lang/String;

    const-string v2, "mimeType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lc/d/a/b/a/f/c;->c:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->s:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notificationEnable"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    iget v1, p0, Lc/d/a/b/a/f/c;->K:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notificationVisibility"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 20
    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->P:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isFirstDownload"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 21
    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->Q:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isFirstSuccess"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 22
    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->u:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "needHttpsToHttpRetry"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23
    iget-wide v1, p0, Lc/d/a/b/a/f/c;->R:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "downloadTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 24
    iget-object v1, p0, Lc/d/a/b/a/f/c;->v:Ljava/lang/String;

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lc/d/a/b/a/f/c;->w:Ljava/lang/String;

    const-string v2, "md5"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->x:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retryDelay"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    iget v1, p0, Lc/d/a/b/a/f/c;->B:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "curRetryTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 28
    iget-object v1, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retryDelayStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->y:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "defaultHttpServiceBackUp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    iget-boolean v1, p0, Lc/d/a/b/a/f/c;->z:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "chunkRunnableReuse"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->n:Z

    return v0
.end method

.method public p0()I
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/b/a/f/c;->W:I

    return v0
.end method

.method public q()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->M:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public q0()I
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/b/a/f/c;->a:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lc/d/a/b/a/f/c;)I

    move-result v0

    iput v0, p0, Lc/d/a/b/a/f/c;->a:I

    .line 3
    :cond_0
    iget v0, p0, Lc/d/a/b/a/f/c;->a:I

    return v0
.end method

.method public r()Lc/d/a/b/a/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->b0:Lc/d/a/b/a/a/b;

    return-object v0
.end method

.method public r0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public s()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/d/a/b/a/f/c;->N:J

    return-wide v0
.end method

.method public s0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/f/c;->b:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/f/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->A:Ljava/lang/String;

    return-object v0
.end method

.method public t0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->I:Ljava/lang/String;

    return-object v0
.end method

.method public u0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/b/a/f/c;->K:I

    return v0
.end method

.method public v0()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->e:Ljava/lang/String;

    iget-object v1, p0, Lc/d/a/b/a/f/c;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/d/a/b/a/j/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->H:Z

    return v0
.end method

.method public w0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lc/d/a/b/a/j/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lc/d/a/b/a/f/c;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lc/d/a/b/a/f/c;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lc/d/a/b/a/f/c;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lc/d/a/b/a/f/c;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lc/d/a/b/a/f/c;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lc/d/a/b/a/f/c;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->g:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8
    iget-object p2, p0, Lc/d/a/b/a/f/c;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lc/d/a/b/a/f/c;->i:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 10
    iget p2, p0, Lc/d/a/b/a/f/c;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-object p2, p0, Lc/d/a/b/a/f/c;->k:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lc/d/a/b/a/f/c;->l:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 13
    iget p2, p0, Lc/d/a/b/a/f/c;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->n:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 15
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->o:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 16
    iget p2, p0, Lc/d/a/b/a/f/c;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget p2, p0, Lc/d/a/b/a/f/c;->q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget-object p2, p0, Lc/d/a/b/a/f/c;->r:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 19
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->s:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 20
    iget-object p2, p0, Lc/d/a/b/a/f/c;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->u:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 22
    iget-object p2, p0, Lc/d/a/b/a/f/c;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lc/d/a/b/a/f/c;->w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->x:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 25
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->y:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 26
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->z:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 27
    iget-object p2, p0, Lc/d/a/b/a/f/c;->A:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget p2, p0, Lc/d/a/b/a/f/c;->B:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-object p2, p0, Lc/d/a/b/a/f/c;->C:Lc/d/a/b/a/a/j;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->D:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 31
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->H:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 32
    iget-object p2, p0, Lc/d/a/b/a/f/c;->I:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget p2, p0, Lc/d/a/b/a/f/c;->J:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget p2, p0, Lc/d/a/b/a/f/c;->K:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget p2, p0, Lc/d/a/b/a/f/c;->L:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    iget-wide v0, p0, Lc/d/a/b/a/f/c;->N:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->G0()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-wide v0, p0, Lc/d/a/b/a/f/c;->R:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 40
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->S:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 41
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->T:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 42
    iget-object p2, p0, Lc/d/a/b/a/f/c;->V:Ljava/lang/StringBuffer;

    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 44
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->X:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 46
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->Y:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 47
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->Z:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 48
    iget-object p2, p0, Lc/d/a/b/a/f/c;->a0:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 49
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->c0:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 50
    iget-object p2, p0, Lc/d/a/b/a/f/c;->d0:Lc/d/a/b/a/a/g;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->F:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 52
    iget p2, p0, Lc/d/a/b/a/f/c;->f0:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object p2, p0, Lc/d/a/b/a/f/c;->g0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->i0:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 55
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->k0:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 56
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->l0:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    iget-boolean p2, p0, Lc/d/a/b/a/f/c;->m0:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->X:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->s:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->X:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->Y:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->Z:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x0()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->e:Ljava/lang/String;

    iget-object v1, p0, Lc/d/a/b/a/f/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/d/a/b/a/j/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->s:Z

    return v0
.end method

.method public y0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->y:Z

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/c;->t:Ljava/lang/String;

    return-object v0
.end method

.method public z0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/c;->z:Z

    return v0
.end method
