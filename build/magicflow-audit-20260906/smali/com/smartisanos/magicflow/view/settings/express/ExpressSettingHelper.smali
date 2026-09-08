.class public Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;
.super Ljava/lang/Object;
.source "ExpressSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$ProtocolCallback;,
        Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;,
        Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;
    }
.end annotation


# static fields
.field public static final INVALID_VALUE:I = -0x1

.field private static final LOCALE_CN:I = 0x0

.field private static final LOCALE_ENGLISH:I = 0x1

.field private static final LOCALE_JAPAN:I = 0x2

.field private static final LOCALE_KOREAN:I = 0x3

.field private static final SIM1_NUM:I = 0x0

.field private static final SIM2_NUM:I = 0x1

.field private static log:Lcom/smartisanos/magicflow/LOG;

.field private static mTimer:Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer;

.field private static protocolCallback:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$ProtocolCallback;

.field private static sDelPushFailedMailNoSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDelPushTime:J

.field private static simNumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->log:Lcom/smartisanos/magicflow/LOG;

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer;

    const-wide/32 v1, 0xea60

    const-wide/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer;-><init>(JJ)V

    sput-object v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->mTimer:Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->simNumMap:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->sDelPushFailedMailNoSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->log:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->sDelPushFailedMailNoSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$202(J)J
    .locals 0

    .line 1
    sput-wide p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->sDelPushTime:J

    return-wide p0
.end method

.method public static cancelTimer()V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->mTimer:Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer;->destory()V

    return-void
.end method

.method public static cloudPushResultAccepted(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static delPush(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$3;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static delPushAllFailMailNoSet()V
    .locals 4

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->sDelPushFailedMailNoSet:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-wide v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->sDelPushTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$4;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$4;-><init>()V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static getAccountMark(Ljava/lang/String;)I
    .locals 4

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->simNumMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->simNumMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    const/4 p0, 0x1

    if-eq v1, p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const p0, 0x7f0701e1

    return p0

    :cond_3
    const p0, 0x7f0701e0

    return p0
.end method

.method public static getBaseHeader()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->d()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/magicflow/h/v;->b(Landroid/content/Context;)V

    .line 4
    :cond_0
    sget-object v1, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    const-string v2, "imei"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/smartisanos/magicflow/h/d;->x:Ljava/lang/String;

    const-string v2, "android-id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "os-version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "device-model"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    .line 9
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gSOR8sHapDthXCsXr9YtROvTR9PJIo2T"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/smartisanos/magicflow/h/d;->w:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "signature"

    .line 11
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getClickableSpan(Landroid/content/Context;Landroid/app/AlertDialog;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;)Landroid/text/SpannableString;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0d0153

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->getSettingDialogProtocolIndex(ZI)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->getSettingDialogProtocolIndex(ZI)I

    move-result v1

    .line 4
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    const v3, -0xffff01

    invoke-direct {p0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v2, p0, v0, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 6
    new-instance p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$7;

    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$7;-><init>(Landroid/app/AlertDialog;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;)V

    invoke-virtual {v2, p0, v0, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method private static getCurrentLocaleType()I
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/h/d;->G:Ljava/lang/String;

    const-string v1, "\u65e5\u672c\u8a9e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/h/d;->G:Ljava/lang/String;

    const-string v1, "English"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_1
    sget-object v0, Lcom/smartisanos/magicflow/h/d;->G:Ljava/lang/String;

    const-string v1, "\ud55c\uad6d\uc5b4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    .line 4
    :cond_2
    sget-object v0, Lcom/smartisanos/magicflow/h/d;->G:Ljava/lang/String;

    const-string v1, "\u4e2d\u6587"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    :cond_3
    return v1
.end method

.method public static getExpressDetails(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "https://api-screen.smartisan.com/express/detail"

    .line 3
    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->getBaseHeader()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/i/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    :goto_0
    sget-object p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "registerPhoneNum return by params null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static getRegisterAccountList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/e;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->getBaseHeader()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "https://api-screen.smartisan.com/express/sublist"

    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/i/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/h;->a(Ljava/lang/String;)Lcom/smartisanos/magicflow/h/h;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/h;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    sget-object v1, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRegisterAccountList err ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/h;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/smartisanos/magicflow/h/h;->c:Ljava/util/List;

    return-object v0
.end method

.method public static getSettingDialogProtocolIndex(ZI)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->getCurrentLocaleType()I

    move-result v0

    const/16 v1, 0x5d

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    goto :goto_2

    :cond_0
    if-eqz p0, :cond_1

    add-int/lit8 p1, p1, -0x6c

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v1

    :goto_0
    move p0, p1

    goto :goto_2

    :cond_2
    if-eqz p0, :cond_3

    add-int/lit8 p1, p1, -0x62

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, -0x51

    goto :goto_0

    :cond_4
    if-eqz p0, :cond_5

    add-int/lit16 p1, p1, -0xc6

    goto :goto_0

    :cond_5
    add-int/lit16 p1, p1, -0xa1

    goto :goto_0

    :cond_6
    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    const/16 v1, 0x69

    :goto_1
    move p0, v1

    :goto_2
    return p0
.end method

.method public static getSettingTipsProtocolIndex(ZI)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->getCurrentLocaleType()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    add-int/lit8 p1, p1, -0x19

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0x9

    :cond_2
    :goto_0
    move p0, p1

    goto :goto_1

    :cond_3
    if-eqz p0, :cond_1

    add-int/lit8 p1, p1, -0x1a

    goto :goto_0

    :cond_4
    if-eqz p0, :cond_2

    add-int/lit8 p1, p1, -0x24

    goto :goto_0

    :cond_5
    if-eqz p0, :cond_2

    const/16 p1, 0x4c

    goto :goto_0

    :goto_1
    return p0
.end method

.method public static getUnRegisterPhoneNumInSystem(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/e;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/h/e;

    .line 5
    iget-object v2, v2, Lcom/smartisanos/magicflow/h/e;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->simNumMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    new-instance v3, Lcom/smartisanos/magicflow/h/e;

    sget-object v4, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->simNumMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v2, v4}, Lcom/smartisanos/magicflow/h/e;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static initAllPhoneNumInSystem()V
    .locals 6

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->simNumMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->f()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 3
    invoke-static {v1}, Lcom/smartisanos/magicflow/o/n;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xb

    if-le v3, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const-string v5, "86"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 7
    array-length v5, v3

    if-ne v5, v4, :cond_0

    .line 8
    sget-object v2, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->simNumMap:Ljava/util/Map;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_0
    sget-object v3, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->simNumMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_1
    sget-object v3, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->simNumMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static initPushFailDeletedMailNoSet(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->sDelPushFailedMailNoSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static registerAccount(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "https://api-screen.smartisan.com/express/sub"

    .line 3
    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->getBaseHeader()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/i/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    :goto_0
    sget-object p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "registerPhoneNum return by params null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static sendVerificationCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phone"

    .line 3
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "https://api-screen.smartisan.com/express/send"

    .line 4
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->getBaseHeader()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/i/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setAccountInfoSimMark(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->initAllPhoneNumInSystem()V

    if-eqz p0, :cond_2

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/e;

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->simNumMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/smartisanos/magicflow/h/e;->b:Ljava/lang/String;

    .line 5
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    sget-object v1, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->simNumMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/smartisanos/magicflow/h/e;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/smartisanos/magicflow/h/e;->c:I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static setOnProtocolCallback(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$ProtocolCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->protocolCallback:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$ProtocolCallback;

    return-void
.end method

.method public static showErrToast(Landroid/content/Context;Lcom/smartisanos/magicflow/h/h;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/smartisanos/magicflow/h/h;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p1, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "showErrToast code = -1"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const p1, 0x7f0d01c3

    .line 3
    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showErrToast code ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/smartisanos/magicflow/h/h;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/h;->a()I

    move-result p1

    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public static showProtocolDialog(Landroid/content/Context;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$ProtocolCallback;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0154

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b004e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5
    new-instance v2, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$5;

    invoke-direct {v2, p1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$5;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$ProtocolCallback;)V

    const v3, 0x7f0d011b

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    new-instance v2, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$6;

    invoke-direct {v2, p1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$6;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$ProtocolCallback;)V

    const p1, 0x7f0d002f

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const v0, 0x7f0801c3

    .line 8
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9
    invoke-static {p0, p1, p2}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->getClickableSpan(Landroid/content/Context;Landroid/app/AlertDialog;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$SpannableClickListener;)Landroid/text/SpannableString;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 11
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 12
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/c;->m(I)V

    return-void
.end method

.method public static startCountDownTime(Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer$CountDownTimer;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->mTimer:Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer;

    invoke-virtual {v0, p0}, Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer;->setCountDownTimer(Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer$CountDownTimer;)V

    .line 2
    sget-object p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->mTimer:Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public static unRegisterAccount(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "https://api-screen.smartisan.com/express/sub"

    .line 3
    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->getBaseHeader()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/i/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    :goto_0
    sget-object p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "registerPhoneNum return by params null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static unRegisterAllAccount()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isExpressCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->unRegisterByAccount(Ljava/lang/String;)V

    return-void
.end method

.method public static unRegisterByAccount(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    return-void
.end method
