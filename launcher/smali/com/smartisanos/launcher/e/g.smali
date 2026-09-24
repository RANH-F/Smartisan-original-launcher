.class Lcom/smartisanos/launcher/e/g;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic rj:Lcom/smartisanos/launcher/theme/v;

.field final synthetic vu:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/e/g;->rj:Lcom/smartisanos/launcher/theme/v;

    iput-object p2, p0, Lcom/smartisanos/launcher/e/g;->vu:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v3, p0, Lcom/smartisanos/launcher/e/g;->rj:Lcom/smartisanos/launcher/theme/v;

    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v4

    if-eq v3, v4, :current_theme

    return-void

    :current_theme

    const-string v0, "status_bar_number_color"

    const-string v1, "status_bar_icon_color"

    const-string v2, "color"

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/J;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 4
    :try_start_0
    iget-object v5, p0, Lcom/smartisanos/launcher/e/g;->rj:Lcom/smartisanos/launcher/theme/v;

    iget-object v5, v5, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/smartisanos/launcher/e/g;->vu:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/e/g;->rj:Lcom/smartisanos/launcher/theme/v;

    iget-object v7, v7, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_0

    .line 6
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v6, p0, Lcom/smartisanos/launcher/e/g;->rj:Lcom/smartisanos/launcher/theme/v;

    iget-object v6, v6, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v1, v2, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, p0, Lcom/smartisanos/launcher/e/g;->rj:Lcom/smartisanos/launcher/theme/v;

    iget-object v8, v8, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-virtual {v6, v1, v2, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v7

    .line 11
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/smartisanos/launcher/e/g;->vu:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/smartisanos/launcher/e/g;->rj:Lcom/smartisanos/launcher/theme/v;

    iget-object v8, v8, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 12
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    :goto_1
    move v8, p0

    goto :goto_2

    .line 13
    :cond_3
    iget-object v6, p0, Lcom/smartisanos/launcher/e/g;->rj:Lcom/smartisanos/launcher/theme/v;

    iget-object v6, v6, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v0, v2, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4

    .line 14
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object p0, p0, Lcom/smartisanos/launcher/e/g;->rj:Lcom/smartisanos/launcher/theme/v;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v0, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_5

    .line 16
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_1

    :cond_5
    move v8, v7

    .line 17
    :goto_2
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v5, v11

    move v7, v1

    invoke-static/range {v5 .. v10}, Lcom/smartisanos/launcher/ua;->setSystemUiDecoration(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;IIII)Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v13

    const/16 v14, 0x2000

    const v0, 0xffffff

    and-int/2addr v0, v1

    const v5, 0x808080

    if-ge v0, v5, :cond_port_clear_light_status_bar

    or-int/2addr v13, v14

    goto :goto_port_apply_light_status_bar

    :cond_port_clear_light_status_bar
    not-int v14, v14

    and-int/2addr v13, v14

    :goto_port_apply_light_status_bar
    invoke-virtual {v4, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 18
    :catch_0
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "get color resource fail"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 19
    :goto_3
    return-void
.end method
