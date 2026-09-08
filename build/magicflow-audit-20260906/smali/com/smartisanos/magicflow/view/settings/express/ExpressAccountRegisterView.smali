.class public Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "ExpressAccountRegisterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sCanBack:Z = true


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mPhoneNum:Landroid/widget/EditText;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRegisterButton:Lsmartisan/widget/ShadowButton;

.field private mRegisterStatus:I

.field private mSendCodeButton:Lsmartisan/widget/ShadowButton;

.field private mStartCountDownTime:Z

.field private mTitle:Lsmartisan/widget/TitleBar;

.field private mVerificationCode:Landroid/widget/EditText;

.field private observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0b004f

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    .line 2
    const-class p1, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->log:Lcom/smartisanos/magicflow/LOG;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mStartCountDownTime:Z

    .line 4
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$1;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mRegisterStatus:I

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080373

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/TitleBar;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mTitle:Lsmartisan/widget/TitleBar;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801fe

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mPhoneNum:Landroid/widget/EditText;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f08036f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mVerificationCode:Landroid/widget/EditText;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f08027f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ShadowButton;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mSendCodeButton:Lsmartisan/widget/ShadowButton;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f08022c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ShadowButton;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mRegisterButton:Lsmartisan/widget/ShadowButton;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080208

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mSendCodeButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0, p1}, Lsmartisan/widget/ShadowButton;->setEnabled(Z)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mTitle:Lsmartisan/widget/TitleBar;

    sget v0, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {p1, v0}, Lsmartisan/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$2;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mPhoneNum:Landroid/widget/EditText;

    new-instance v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$3;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$3;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mVerificationCode:Landroid/widget/EditText;

    new-instance v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$4;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$4;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mSendCodeButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mRegisterButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->registerAccountObserver(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->hideLoading()V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->clickBack()V

    return-void
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mStartCountDownTime:Z

    return p0
.end method

.method static synthetic access$202(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mStartCountDownTime:Z

    return p1
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)Lsmartisan/widget/ShadowButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mSendCodeButton:Lsmartisan/widget/ShadowButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mVerificationCode:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)Lsmartisan/widget/ShadowButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mRegisterButton:Lsmartisan/widget/ShadowButton;

    return-object p0
.end method

.method static synthetic access$600(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mPhoneNum:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$702(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mRegisterStatus:I

    return p1
.end method

.method public static canBack()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->sCanBack:Z

    return v0
.end method

.method private clickBack()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->sCanBack:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "ExpressAccountRegisterView back click return by canBack"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->hideInputWindow()V

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/b;->j()Lcom/smartisanos/magicflow/view/MagicFlowActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method private hideInputWindow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private hideLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->sCanBack:Z

    return-void
.end method

.method private register()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->containsAccount(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0139

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/j;->g(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/j;->n(Landroid/content/Context;)V

    return-void

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->showLoading()V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->hideInputWindow()V

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "phone"

    .line 9
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mms"

    .line 10
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mVerificationCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$5;

    invoke-direct {v2, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$5;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)V

    invoke-static {v0, v1, v2}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->registerAccount(Landroid/content/Context;Ljava/util/HashMap;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendVerificationCode()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->containsAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0139

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/j;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/j;->n(Landroid/content/Context;)V

    return-void

    .line 7
    :cond_2
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->startCountDownTime(Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer$CountDownTimer;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mVerificationCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mStartCountDownTime:Z

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mSendCodeButton:Lsmartisan/widget/ShadowButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisan/widget/ShadowButton;->setEnabled(Z)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$7;

    invoke-direct {v2, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$7;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)V

    invoke-static {v0, v1, v2}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->sendVerificationCode(Landroid/content/Context;Ljava/lang/String;Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;)V

    return-void
.end method

.method private showLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    sput-boolean v1, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->sCanBack:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->sCanBack:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08022c

    if-ne v0, v1, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->register()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08027f

    if-ne p1, v0, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->sendVerificationCode()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onExit()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mRegisterStatus:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->n(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mRegisterButton:Lsmartisan/widget/ShadowButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->mSendCodeButton:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->unregisterAccountObserver(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper;->cancelTimer()V

    return-void
.end method
