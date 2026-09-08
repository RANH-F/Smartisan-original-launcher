.class public Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;
.super Ljava/lang/Object;
.source "AppSuggestionItemInfo.java"


# instance fields
.field protected isInstalled:Z

.field private log:Lcom/smartisanos/magicflow/LOG;

.field protected mActivityName:Ljava/lang/String;

.field protected mAppIcon:Landroid/graphics/drawable/Drawable;

.field protected mName:Ljava/lang/String;

.field protected mPackageName:Ljava/lang/String;

.field protected mResize:Z

.field protected position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->log:Lcom/smartisanos/magicflow/LOG;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mResize:Z

    .line 4
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->position:I

    return v0
.end method

.method public isInstalled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->isInstalled:Z

    return v0
.end method

.method public loadAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "loadAppIcon return by mPackageName null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionHelper;->drawableNeedReset(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mResize:Z

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mActivityName:Ljava/lang/String;

    return-void
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setInstalled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->isInstalled:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->position:I

    return-void
.end method
