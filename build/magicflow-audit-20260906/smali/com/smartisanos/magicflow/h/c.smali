.class public Lcom/smartisanos/magicflow/h/c;
.super Ljava/lang/Object;
.source "CardManager.java"


# static fields
.field private static d:Lcom/smartisanos/magicflow/h/c;


# instance fields
.field private a:Lcom/smartisanos/magicflow/LOG;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/magicflow/view/card/Card;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/animation/AnimatorSet;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/h/c;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/h/c;->a:Lcom/smartisanos/magicflow/LOG;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/h/c;->b:Ljava/util/ArrayList;

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/h/c;->h()V

    return-void
.end method

.method private a(Lcom/smartisanos/magicflow/h/b;ZLandroid/content/Context;)Lcom/smartisanos/magicflow/view/card/Card;
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p1, Lcom/smartisanos/magicflow/h/b;->a:Ljava/lang/String;

    .line 3
    iget-object v2, p1, Lcom/smartisanos/magicflow/h/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_1
    const-string v2, "MusicFastPayment"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    new-instance v0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-direct {v0, p3, p1, p2}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V

    goto :goto_0

    :cond_2
    const-string v2, "Calendar"

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    new-instance v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;

    invoke-direct {v0, p3, p1, p2}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V

    goto :goto_0

    :cond_3
    const-string v2, "News"

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    new-instance v0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;

    invoke-direct {v0, p3, p1, p2}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V

    goto :goto_0

    :cond_4
    const-string v2, "Contacts"

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 11
    new-instance v0, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;

    invoke-direct {v0, p3, p1, p2}, Lcom/smartisanos/magicflow/view/card/contacts/ContactsCard;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V

    goto :goto_0

    :cond_5
    const-string v2, "ShortcutButton"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 13
    new-instance v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;

    invoke-direct {v0, p3, p1, p2}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V

    goto :goto_0

    :cond_6
    const-string v2, "AppSuggestion"

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 15
    new-instance v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;

    invoke-direct {v0, p3, p1, p2}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V

    goto :goto_0

    :cond_7
    const-string v2, "AppRecommend"

    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 17
    new-instance v0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;

    invoke-direct {v0, p3, p1, p2}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V

    goto :goto_0

    :cond_8
    const-string v2, "LifeInfo"

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 19
    new-instance v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;

    invoke-direct {v0, p3, p1, p2}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V

    :cond_9
    :goto_0
    if-eqz v0, :cond_a

    .line 20
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/Card;->onReadyToLoadData()V

    :cond_a
    return-object v0
.end method

.method public static a(Ljava/util/List;IJ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/Card;",
            ">;IJ)",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 46
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    .line 47
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/Card;

    if-eqz v1, :cond_2

    .line 49
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/Card;->getContentView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/Card;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v4, p1

    aput v4, v2, v3

    const-string v3, "translationY"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method static synthetic a(Lcom/smartisanos/magicflow/h/c;Ljava/util/List;Lcom/smartisanos/magicflow/view/card/Card;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/h/c;->a(Ljava/util/List;Lcom/smartisanos/magicflow/view/card/Card;)V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/smartisanos/magicflow/view/card/Card;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/Card;",
            ">;",
            "Lcom/smartisanos/magicflow/view/card/Card;",
            ")V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/c;->c:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/Card;

    .line 43
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/Card;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 44
    invoke-virtual {p2}, Lcom/smartisanos/magicflow/view/card/Card;->animatorEndResetInnerSubView()V

    :cond_2
    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/smartisanos/magicflow/h/c;->c:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static g()Lcom/smartisanos/magicflow/h/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/h/c;->d:Lcom/smartisanos/magicflow/h/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/h/c;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/h/c;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/h/c;->d:Lcom/smartisanos/magicflow/h/c;

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/h/c;->d:Lcom/smartisanos/magicflow/h/c;

    return-object v0
.end method

.method private h()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/c;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "loadCards context == null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget v1, Lcom/smartisanos/magicflow/h/d;->T:I

    if-nez v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/c;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "loadCards return by user not agreed"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getEnabledCategoryList()Ljava/util/List;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    iget-object v4, p0, Lcom/smartisanos/magicflow/h/c;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadCards category ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 9
    new-instance v4, Lcom/smartisanos/magicflow/h/b;

    invoke-direct {v4}, Lcom/smartisanos/magicflow/h/b;-><init>()V

    .line 10
    iput-object v3, v4, Lcom/smartisanos/magicflow/h/b;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, v4}, Lcom/smartisanos/magicflow/h/c;->a(Lcom/smartisanos/magicflow/h/b;)Lcom/smartisanos/magicflow/view/card/Card;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    .line 12
    invoke-direct {p0, v4, v3, v0}, Lcom/smartisanos/magicflow/h/c;->a(Lcom/smartisanos/magicflow/h/b;ZLandroid/content/Context;)Lcom/smartisanos/magicflow/view/card/Card;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/Card;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 16
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/Card;->onDestroy()V

    goto :goto_1

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/magicflow/h/b;)Lcom/smartisanos/magicflow/view/card/Card;
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/Card;

    .line 22
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/Card;->getCardInfo()Lcom/smartisanos/magicflow/h/b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/magicflow/h/b;->a(Lcom/smartisanos/magicflow/h/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 6

    .line 23
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/c;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iget-object v3, p0, Lcom/smartisanos/magicflow/h/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/magicflow/view/card/Card;

    if-eqz v0, :cond_2

    .line 26
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_2
    invoke-virtual {v4}, Lcom/smartisanos/magicflow/view/card/Card;->getCardInfo()Lcom/smartisanos/magicflow/h/b;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/magicflow/h/b;->a:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    move-object v1, v4

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    return-void

    .line 28
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/smartisanos/magicflow/view/card/Card;->getUnderSubCategoryViewAnimators(Ljava/lang/String;IJ)Ljava/util/List;

    move-result-object p2

    .line 30
    invoke-static {v2, p3, p4, p5}, Lcom/smartisanos/magicflow/h/c;->a(Ljava/util/List;IJ)Ljava/util/List;

    move-result-object p3

    .line 31
    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 32
    new-instance p5, Lcom/smartisanos/magicflow/h/c$a;

    invoke-direct {p5, p0, v2, v1}, Lcom/smartisanos/magicflow/h/c$a;-><init>(Lcom/smartisanos/magicflow/h/c;Ljava/util/List;Lcom/smartisanos/magicflow/view/card/Card;)V

    invoke-virtual {p4, p5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p2, :cond_5

    .line 33
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    if-eqz p3, :cond_6

    .line 34
    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    :cond_6
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p3, 0x40000000    # 2.0f

    invoke-direct {p2, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p4, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 36
    invoke-virtual {p4, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 37
    invoke-virtual {p4}, Landroid/animation/AnimatorSet;->start()V

    .line 38
    iput-object p4, p0, Lcom/smartisanos/magicflow/h/c;->c:Landroid/animation/AnimatorSet;

    :cond_7
    :goto_1
    return-void
.end method

.method public a()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/c;->c:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/c;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/Card;

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/Card;->onPause()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/c;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/Card;

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/Card;->onResume()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/Card;

    .line 2
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/Card;->onDestroy()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/magicflow/view/card/Card;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/c;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/h/c;->h()V

    return-void
.end method
