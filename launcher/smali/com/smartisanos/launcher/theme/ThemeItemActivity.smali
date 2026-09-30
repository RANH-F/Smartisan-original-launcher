.class public Lcom/smartisanos/launcher/theme/ThemeItemActivity;
.super Landroid/app/Activity;
.source "ThemeItemActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# static fields
.field private static Ab:I

.field private static Bb:I

.field private static volatile db:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

.field private static final log:Lcom/smartisanos/launcher/va;

.field private static zb:I


# instance fields
.field private Ya:Lcom/smartisanos/launcher/theme/u;

.field private ab:Landroid/content/BroadcastReceiver;

.field private eb:I

.field private fb:Lcom/smartisanos/launcher/theme/v;

.field private gb:Lcom/smartisanos/launcher/theme/v;

.field private hb:Z

.field private ib:Z

.field private jb:Landroid/widget/ImageView;

.field private kb:Landroid/widget/HorizontalScrollView;

.field private lb:Landroid/widget/LinearLayout;

.field private mHandler:Lcom/smartisanos/launcher/theme/Q;

.field private mTitle:Lcom/smartisanos/launcher/theme/U;

.field private mb:Lcom/smartisanos/launcher/theme/T;

.field private nb:Lcom/smartisanos/launcher/theme/S;

.field private ob:I

.field private pb:Z

.field private qb:Landroid/content/BroadcastReceiver;

.field private rb:Ljava/util/Map;

.field private sb:Z

.field private tb:Landroid/view/View$OnClickListener;

.field private ub:Landroid/view/View$OnClickListener;

.field private vb:Landroid/view/View$OnClickListener;

.field private wb:Landroid/view/View$OnClickListener;

.field private xb:Landroid/view/View$OnClickListener;

.field private yb:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->db:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    const/4 v0, 0x0

    .line 3
    sput v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->zb:I

    .line 4
    sput v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->Ab:I

    .line 5
    sput v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->Bb:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->hb:Z

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->ib:Z

    .line 4
    iput v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->ob:I

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->pb:Z

    .line 6
    new-instance v1, Lcom/smartisanos/launcher/theme/D;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/theme/D;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    iput-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->ab:Landroid/content/BroadcastReceiver;

    .line 7
    new-instance v1, Lcom/smartisanos/launcher/theme/E;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/theme/E;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    iput-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->qb:Landroid/content/BroadcastReceiver;

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->rb:Ljava/util/Map;

    .line 9
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->sb:Z

    .line 10
    new-instance v0, Lcom/smartisanos/launcher/theme/G;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/G;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->tb:Landroid/view/View$OnClickListener;

    .line 11
    new-instance v0, Lcom/smartisanos/launcher/theme/H;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/H;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->ub:Landroid/view/View$OnClickListener;

    .line 12
    new-instance v0, Lcom/smartisanos/launcher/theme/L;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/L;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->vb:Landroid/view/View$OnClickListener;

    .line 13
    new-instance v0, Lcom/smartisanos/launcher/theme/M;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/M;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->wb:Landroid/view/View$OnClickListener;

    .line 14
    new-instance v0, Lcom/smartisanos/launcher/theme/N;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/N;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->xb:Landroid/view/View$OnClickListener;

    .line 15
    new-instance v0, Lcom/smartisanos/launcher/theme/Q;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/Q;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mHandler:Lcom/smartisanos/launcher/theme/Q;

    .line 16
    new-instance v0, Lcom/smartisanos/launcher/theme/P;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/P;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->yb:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic A()I
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->Bb:I

    return v0
.end method

.method private Cu()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->finish()V

    .line 3
    sget v0, Lcom/smartisanos/launcher/fb;->slide_in_from_left:I

    sget v1, Lcom/smartisanos/launcher/fb;->slide_out_to_right:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private D(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, v0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    .line 3
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method private Du()V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->ea(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->gb:Lcom/smartisanos/launcher/theme/v;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    iget-object v1, v1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickSettingToChangeTheme mUsedTheme id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->gb:Lcom/smartisanos/launcher/theme/v;

    iget-object v2, v2, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->finish()V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/theme/X;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickSettingToChangeTheme theme ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] not exist"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/t;->Wf()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    iget-object v1, v1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    iget-object v1, v1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/X;->ja(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    sget-object p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "Store new theme to current failed"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->SETTING:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/theme/t;->a(Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    iget-object v1, v1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/O;->a(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ja;->l(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/ua;->resetWindowOneHandedState(Landroid/view/WindowManager;)V

    .line 16
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mHandler:Lcom/smartisanos/launcher/theme/Q;

    const/4 v0, 0x1

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 17
    :cond_5
    :goto_0
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickSettingToChangeTheme changeThemeHandler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 19
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickSettingToChangeTheme is animation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/theme/t;->Wf()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 20
    :cond_6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->finish()V

    return-void

    .line 21
    :cond_7
    :goto_1
    sget-object v1, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClickSettingToChangeTheme pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->finish()V

    return-void
.end method

.method private Eu()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->rb:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->rb:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/theme/V;

    if-nez v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    iget-object v5, v5, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 6
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->gb:Lcom/smartisanos/launcher/theme/v;

    iget-object v6, v6, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 7
    invoke-static {v3}, Lcom/smartisanos/launcher/theme/X;->fa(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v3

    .line 8
    invoke-virtual {v4, v3, v5, v6, p0}, Lcom/smartisanos/launcher/theme/V;->a(Lcom/smartisanos/launcher/theme/v;ZZLandroid/content/Context;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Lcom/smartisanos/launcher/theme/v;)Lcom/smartisanos/launcher/theme/v;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Lcom/smartisanos/launcher/theme/v;Z)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->c(Lcom/smartisanos/launcher/theme/v;Z)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->qb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->h(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->ib:Z

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->hb:Z

    return p1
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/theme/ThemeItemActivity;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->db:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    return-object v0
.end method

.method static synthetic access$200()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic access$2200()I
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->Ab:I

    return v0
.end method

.method private b(Landroid/view/View;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 3
    iget p2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->ob:I

    goto :goto_0

    :cond_1
    move p2, v0

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-ne v1, p2, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v0

    const/4 v0, 0x1

    int-to-float p2, p2

    aput p2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 6
    new-instance v0, Lcom/smartisanos/launcher/theme/C;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/launcher/theme/C;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 p0, 0xc8

    .line 7
    invoke-virtual {p2, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic b(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->Cu()V

    return-void
.end method

.method static synthetic b(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->pb:Z

    return p1
.end method

.method static synthetic c(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->Du()V

    return-void
.end method

.method private c(Lcom/smartisanos/launcher/theme/v;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mHandler:Lcom/smartisanos/launcher/theme/Q;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 4
    iput v1, v0, Landroid/os/Message;->what:I

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mHandler:Lcom/smartisanos/launcher/theme/Q;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic c(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->sb:Z

    return p1
.end method

.method static synthetic d(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->Eu()V

    return-void
.end method

.method static synthetic e(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->gb:Lcom/smartisanos/launcher/theme/v;

    return-object p0
.end method

.method static synthetic f(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->Ya:Lcom/smartisanos/launcher/theme/u;

    return-object p0
.end method

.method static synthetic g(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mHandler:Lcom/smartisanos/launcher/theme/Q;

    return-object p0
.end method

.method public static getInstance()Lcom/smartisanos/launcher/theme/ThemeItemActivity;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->db:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    return-object v0
.end method

.method static synthetic h(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/widget/HorizontalScrollView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->kb:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method private h(Ljava/lang/String;Z)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/smartisanos/launcher/provider/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    const/16 p1, 0x67

    invoke-static {p0, p1, p2}, Lcom/smartisanos/launcher/theme/X;->a(Ljava/lang/String;II)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    const/16 p1, 0x65

    invoke-static {p0, p1, p2}, Lcom/smartisanos/launcher/theme/X;->a(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method static synthetic i(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->sb:Z

    return p0
.end method

.method private initView()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->Ya:Lcom/smartisanos/launcher/theme/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/u;->clear()V

    .line 3
    :cond_0
    sget v0, Lcom/smartisanos/launcher/kb;->theme_preview_phone:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->getDeviceColor()Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v1, v1, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    .line 7
    sget-object v3, Lcom/smartisanos/launcher/sa;->T2:Lcom/smartisanos/launcher/ra;

    iget-object v3, v3, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_t2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 9
    :cond_1
    sget-object v3, Lcom/smartisanos/launcher/sa;->Nh:Lcom/smartisanos/launcher/ra;

    iget-object v3, v3, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "steel"

    const-string v5, "golden"

    if-eqz v3, :cond_5

    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    sget v1, Lcom/smartisanos/launcher/jb;->Ui:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 13
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    sget v1, Lcom/smartisanos/launcher/jb;->Wi:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 15
    :cond_3
    sget v1, Lcom/smartisanos/launcher/jb;->Si:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 16
    :cond_4
    sget v1, Lcom/smartisanos/launcher/jb;->Si:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 17
    :cond_5
    sget-object v3, Lcom/smartisanos/launcher/sa;->M1:Lcom/smartisanos/launcher/ra;

    iget-object v3, v3, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v2, :cond_8

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 20
    sget v1, Lcom/smartisanos/launcher/jb;->Ti:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 21
    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 22
    sget v1, Lcom/smartisanos/launcher/jb;->Vi:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 23
    :cond_7
    sget v1, Lcom/smartisanos/launcher/jb;->Ri:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 24
    :cond_8
    sget v1, Lcom/smartisanos/launcher/jb;->Ri:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 25
    :cond_9
    sget-object v3, Lcom/smartisanos/launcher/sa;->T1:Lcom/smartisanos/launcher/ra;

    iget-object v3, v3, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "white"

    if-eqz v3, :cond_b

    if-eqz v2, :cond_a

    .line 26
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 27
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_t1_white:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 28
    :cond_a
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_t1_black:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 29
    :cond_b
    sget-object v3, Lcom/smartisanos/launcher/sa;->U1:Lcom/smartisanos/launcher/ra;

    iget-object v3, v3, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 30
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_u1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 31
    :cond_c
    sget-object v3, Lcom/smartisanos/launcher/sa;->Oh:Lcom/smartisanos/launcher/ra;

    iget-object v3, v3, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 32
    sget v1, Lcom/smartisanos/launcher/jb;->Xi:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 33
    :cond_d
    sget-object v3, Lcom/smartisanos/launcher/sa;->ODIN:Lcom/smartisanos/launcher/ra;

    iget-object v3, v3, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "light-golden"

    const-string v7, "wine-red"

    if-eqz v3, :cond_14

    if-eqz v2, :cond_13

    .line 34
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 35
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_odin_r:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_e
    const-string v1, "copper-red"

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 37
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_odin_c_r:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 38
    :cond_f
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "gintama"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_0

    .line 39
    :cond_10
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 40
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_odin_g:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 41
    :cond_11
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_odin_b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 42
    :cond_12
    :goto_0
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_odin_l_g:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 43
    :cond_13
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_odin_b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 44
    :cond_14
    sget-object v3, Lcom/smartisanos/launcher/sa;->OSBORN:Lcom/smartisanos/launcher/ra;

    iget-object v3, v3, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    if-eqz v2, :cond_18

    .line 45
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 46
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_osborn_w_r:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 47
    :cond_15
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 48
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_osborn_l_g:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 49
    :cond_16
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 50
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_osborn_w:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 51
    :cond_17
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_osborn_b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 52
    :cond_18
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_osborn_b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 53
    :cond_19
    sget-object v3, Lcom/smartisanos/launcher/sa;->OSCAR:Lcom/smartisanos/launcher/ra;

    iget-object v3, v3, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    if-eqz v2, :cond_1c

    .line 54
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 55
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_oscar_w_r:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 56
    :cond_1a
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 57
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_oscar_l_g:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 58
    :cond_1b
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_oscar_b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 59
    :cond_1c
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_oscar_b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 60
    :cond_1d
    sget-object v3, Lcom/smartisanos/launcher/sa;->TRIDENT:Lcom/smartisanos/launcher/ra;

    iget-object v3, v3, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "blue"

    if-eqz v3, :cond_21

    if-eqz v2, :cond_20

    .line 61
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 62
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_trident_w:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 63
    :cond_1e
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 64
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_trident_bl:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 65
    :cond_1f
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_trident_b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 66
    :cond_20
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_trident_b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 67
    :cond_21
    sget-object v3, Lcom/smartisanos/launcher/sa;->OCEAN:Lcom/smartisanos/launcher/ra;

    iget-object v3, v3, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    if-eqz v2, :cond_25

    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 69
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_ocean_w:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 70
    :cond_22
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 71
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_ocean_bl:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 72
    :cond_23
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 73
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_ocean_w_r:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 74
    :cond_24
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_ocean_b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 75
    :cond_25
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_ocean_b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 76
    :cond_26
    sget-object v3, Lcom/smartisanos/launcher/sa;->DELTA:Lcom/smartisanos/launcher/ra;

    iget-object v3, v3, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "pine-green"

    if-eqz v3, :cond_2a

    if-eqz v2, :cond_29

    .line 77
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 78
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_delta_w:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 79
    :cond_27
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 80
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_delta_pg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 81
    :cond_28
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_delta_b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 82
    :cond_29
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_delta_b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 83
    :cond_2a
    sget-object v3, Lcom/smartisanos/launcher/sa;->DARWIN:Lcom/smartisanos/launcher/ra;

    iget-object v3, v3, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    if-eqz v2, :cond_2d

    .line 84
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 85
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_darwin_w:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 86
    :cond_2b
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 87
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_darwin_pg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 88
    :cond_2c
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_darwin_b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 89
    :cond_2d
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_darwin_b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 90
    :cond_2e
    sget-object v2, Lcom/smartisanos/launcher/sa;->ATOLL:Lcom/smartisanos/launcher/ra;

    iget-object v2, v2, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 91
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_delta_b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 92
    :cond_2f
    sget v1, Lcom/smartisanos/launcher/jb;->theme_preview_phone_black:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 93
    :goto_1
    sget v0, Lcom/smartisanos/launcher/kb;->theme_preview_img_large:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->jb:Landroid/widget/ImageView;

    .line 94
    new-instance v0, Lcom/smartisanos/launcher/theme/u;

    invoke-direct {v0}, Lcom/smartisanos/launcher/theme/u;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->Ya:Lcom/smartisanos/launcher/theme/u;

    .line 95
    new-instance v0, Lcom/smartisanos/launcher/theme/U;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/U;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mTitle:Lcom/smartisanos/launcher/theme/U;

    .line 96
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mTitle:Lcom/smartisanos/launcher/theme/U;

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->ub:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/smartisanos/launcher/theme/U;->Pt:Landroid/view/View$OnClickListener;

    .line 97
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->wb:Landroid/view/View$OnClickListener;

    iput-object v2, v0, Lcom/smartisanos/launcher/theme/U;->Qt:Landroid/view/View$OnClickListener;

    .line 98
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->xb:Landroid/view/View$OnClickListener;

    iput-object v2, v0, Lcom/smartisanos/launcher/theme/U;->Tt:Landroid/view/View$OnClickListener;

    .line 99
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->vb:Landroid/view/View$OnClickListener;

    iput-object v2, v0, Lcom/smartisanos/launcher/theme/U;->Rt:Landroid/view/View$OnClickListener;

    .line 100
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->tb:Landroid/view/View$OnClickListener;

    iput-object v2, v0, Lcom/smartisanos/launcher/theme/U;->St:Landroid/view/View$OnClickListener;

    .line 101
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    .line 103
    sget v1, Lcom/smartisanos/launcher/kb;->theme_color_dot_list:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->kb:Landroid/widget/HorizontalScrollView;

    .line 104
    sget v1, Lcom/smartisanos/launcher/kb;->horizontal_linear_layout:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->lb:Landroid/widget/LinearLayout;

    .line 105
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->fu:Ljava/util/List;

    .line 106
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 107
    invoke-static {v3}, Lcom/smartisanos/launcher/theme/X;->ia(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 108
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 109
    :cond_31
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_32

    .line 110
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 111
    new-instance v6, Lcom/smartisanos/launcher/theme/V;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/smartisanos/launcher/theme/V;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Lcom/smartisanos/launcher/theme/D;)V

    .line 112
    iput-object v5, v6, Lcom/smartisanos/launcher/theme/V;->Vt:Ljava/lang/String;

    .line 113
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/smartisanos/launcher/mb;->theme_color_dot_item:I

    invoke-virtual {v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 114
    iput-object v7, v6, Lcom/smartisanos/launcher/theme/V;->view:Landroid/view/View;

    .line 115
    sget v8, Lcom/smartisanos/launcher/kb;->theme_color_dot:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v6, Lcom/smartisanos/launcher/theme/V;->Wt:Landroid/widget/ImageView;

    .line 116
    sget v8, Lcom/smartisanos/launcher/kb;->theme_color_dot_selected:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v6, Lcom/smartisanos/launcher/theme/V;->Xt:Landroid/widget/ImageView;

    .line 117
    sget v8, Lcom/smartisanos/launcher/kb;->theme_item_dot_name:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v6, Lcom/smartisanos/launcher/theme/V;->It:Landroid/widget/TextView;

    .line 118
    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v7, v3}, Landroid/view/View;->setSelected(Z)V

    .line 120
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->yb:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->lb:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->rb:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 123
    :cond_32
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->Eu()V

    .line 124
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 125
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->kb:Landroid/widget/HorizontalScrollView;

    new-instance v4, Lcom/smartisanos/launcher/theme/F;

    invoke-direct {v4, p0, v0}, Lcom/smartisanos/launcher/theme/F;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;I)V

    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 126
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->B()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 127
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    if-eqz v0, :cond_34

    const-string v0, "android.view.WindowManager$LayoutParams"

    const-string v2, "PRIVATE_FLAG_SMARTISAN_FORCE_SHOW_NAVIGATION_BAR"

    .line 128
    invoke-static {v0, v2}, Lcom/smartisanos/launcher/e/s;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, -0x1

    if-eqz v0, :cond_33

    .line 129
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_33
    move v0, v2

    :goto_3
    if-eq v0, v2, :cond_35

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v0, v4

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_4

    .line 131
    :cond_34
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/smartisanos/launcher/ib;->theme_preview_bottom_layout_padding_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->ob:I

    .line 132
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->kb:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v2

    iget-object v4, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->kb:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->kb:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v5

    iget v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->ob:I

    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->kb:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    .line 133
    :cond_35
    :goto_4
    new-instance v0, Lcom/smartisanos/launcher/theme/S;

    invoke-direct {v0, p0, p0, v1}, Lcom/smartisanos/launcher/theme/S;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->nb:Lcom/smartisanos/launcher/theme/S;

    .line 134
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->nb:Lcom/smartisanos/launcher/theme/S;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/smartisanos/launcher/theme/u;

    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->Ya:Lcom/smartisanos/launcher/theme/u;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 135
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->gb:Lcom/smartisanos/launcher/theme/v;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    iget-object v1, v1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    iget-object v1, v1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->qb(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    invoke-direct {p0, v1, v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->c(Lcom/smartisanos/launcher/theme/v;Z)V

    return-void
.end method

.method static synthetic j(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    return-object p0
.end method

.method static synthetic k(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/U;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mTitle:Lcom/smartisanos/launcher/theme/U;

    return-object p0
.end method

.method private qb(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->eb:I

    invoke-static {p1, v0}, Lcom/smartisanos/launcher/theme/v;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1, p0}, Lcom/smartisanos/launcher/theme/v;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->jb:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic z()I
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->zb:I

    return v0
.end method


# virtual methods
.method public B()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    .line 2
    :goto_0
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v3

    sget-object v4, Lcom/smartisanos/launcher/sa;->DELTA:Lcom/smartisanos/launcher/ra;

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-nez v2, :cond_2

    if-eqz p0, :cond_2

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "finish"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/t;->Xf()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/J;->G(I)V

    :cond_2
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, v0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->c(Lcom/smartisanos/launcher/theme/v;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->applyLauncherNavigationBarSetting(Landroid/app/Activity;)V

    .line 2
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->finish()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 5
    sget v0, Lcom/smartisanos/launcher/hb;->theme_name_in_dot_normal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->zb:I

    .line 6
    sget v0, Lcom/smartisanos/launcher/hb;->theme_name_in_dot_used:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->Ab:I

    .line 7
    sget v0, Lcom/smartisanos/launcher/hb;->theme_name_in_dot_selected:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    sput p1, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->Bb:I

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/sa;->tb()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/smartisanos/launcher/data/M;->dr:Ljava/lang/String;

    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getDefaultSingleMode()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->eb:I

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->gb:Lcom/smartisanos/launcher/theme/v;

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->ig()Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 14
    sget-object p1, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "initView ThemeManager.SUPPORTED_THEMES is null"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->ca(Landroid/content/Context;)V

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->ig()Ljava/util/List;

    move-result-object p1

    .line 17
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/theme/v;

    if-eqz v1, :cond_3

    .line 18
    invoke-static {v1}, Lcom/smartisanos/launcher/theme/X;->j(Lcom/smartisanos/launcher/theme/v;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 19
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 20
    :cond_4
    new-instance v0, Lcom/smartisanos/launcher/theme/T;

    invoke-direct {v0, p0, p1, p0}, Lcom/smartisanos/launcher/theme/T;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mb:Lcom/smartisanos/launcher/theme/T;

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "extra_theme_package"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_component_id"

    .line 23
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/X;->fa(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    .line 25
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "themeId ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], themePackage ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 26
    :cond_5
    sput-object p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->db:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .line 27
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->ab:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->qb:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    sget p1, Lcom/smartisanos/launcher/mb;->activity_theme_item:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 36
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->initView()V

    .line 37
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->fb:Lcom/smartisanos/launcher/theme/v;

    iget-object v0, p1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    .line 38
    iget-object p1, p1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    .line 39
    invoke-static {v0, p1, p0}, Lcom/smartisanos/launcher/theme/X;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[I

    move-result-object p1

    const/4 v1, 0x0

    .line 40
    aget v2, p1, v1

    const/4 v3, 0x1

    aget p1, p1, v3

    invoke-static {v0, v2, p1}, Lcom/smartisanos/launcher/theme/X;->a(Ljava/lang/String;II)V

    .line 41
    iput-boolean v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->hb:Z

    .line 42
    iput-boolean v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->ib:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->nb:Lcom/smartisanos/launcher/theme/S;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->Ya:Lcom/smartisanos/launcher/theme/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/u;->clear()V

    .line 7
    iput-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->Ya:Lcom/smartisanos/launcher/theme/u;

    .line 8
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->ab:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->qb:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    sput-object v1, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->db:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->hb:Z

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    if-eq p1, v2, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    return v1

    :cond_1
    if-ne p1, v2, :cond_2

    .line 2
    iput-boolean v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->ib:Z

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "click back. Activity will finish"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->kb:Landroid/widget/HorizontalScrollView;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->b(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->kb:Landroid/widget/HorizontalScrollView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->b(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method
