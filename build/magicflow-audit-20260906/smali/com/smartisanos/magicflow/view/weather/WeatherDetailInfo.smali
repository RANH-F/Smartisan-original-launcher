.class public Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;
.super Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;
.source "WeatherDetailInfo.java"


# static fields
.field private static final BLUE_ALERT_TYPE:Ljava/lang/String; = "01"

.field private static final ORANGE_ALERT_TYPE:Ljava/lang/String; = "03"

.field private static final RED_ALERT_TYPE:Ljava/lang/String; = "04"

.field private static final YELLOW_ALERT_TYPE:Ljava/lang/String; = "02"


# instance fields
.field private mAlertLevel:Ljava/lang/String;

.field private mAlertLevelNum:Ljava/lang/String;

.field private mAlertType:Ljava/lang/String;

.field private mBackgroundRes:I

.field private mCoverRes:I

.field private mDescription:Ljava/lang/String;

.field private mIconRes:I

.field private mLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlertInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mAlertType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mAlertLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0d02bd

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAlertLevel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mAlertLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getAlertLevelNum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mAlertLevelNum:Ljava/lang/String;

    return-object v0
.end method

.method public getAlertTextColor(Landroid/content/Context;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mAlertLevelNum:Ljava/lang/String;

    const-string v1, "02"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f050189

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getAlertType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mAlertType:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundRes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mBackgroundRes:I

    return v0
.end method

.method public getCoverRes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mCoverRes:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawableByAlertLevel(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mAlertLevelNum:Ljava/lang/String;

    const-string v1, "01"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700a3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mAlertLevelNum:Ljava/lang/String;

    const-string v2, "02"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070512

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mAlertLevelNum:Ljava/lang/String;

    const-string v2, "03"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07027e

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mAlertLevelNum:Ljava/lang/String;

    const-string v2, "04"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070306

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070107

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getIconRes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mIconRes:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getTemp(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/smartisanos/magicflow/a;->b(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->getTempC()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->getTempF()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasAlertInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mAlertType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setAlertLevel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mAlertLevel:Ljava/lang/String;

    return-void
.end method

.method public setAlertLevelNum(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mAlertLevelNum:Ljava/lang/String;

    return-void
.end method

.method public setAlertType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mAlertType:Ljava/lang/String;

    return-void
.end method

.method public setBackgroundRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mBackgroundRes:I

    return-void
.end method

.method public setCoverRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mCoverRes:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setIconRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mIconRes:I

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mLocation:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeatherDetailInfo { mIconRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mIconRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBackgroundRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mBackgroundRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoverRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mCoverRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDescription=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAlertType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mAlertType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAlertLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mAlertLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAlertLevelNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->mAlertLevelNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
