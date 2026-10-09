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

    iget-object v3, p0, Lcom/smartisanos/launcher/e/g;->vu:Ljava/lang/String;
    const/4 v4, 0x0
    invoke-static {v3, v4}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->traceThemeBarState(Ljava/lang/String;I)V

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
    # The resolved application label color is the single desktop color owner.
    # Read it on the UI thread so older queued requests cannot restore an old theme.
    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_color:I

    move v8, v1

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v5, v11

    move v7, v1

    invoke-static/range {v5 .. v10}, Lcom/smartisanos/launcher/ua;->setSystemUiDecoration(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;IIII)Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {v4, v1}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->applyDesktopStatusBarAppearance(Landroid/view/Window;I)V
    invoke-static {v4}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->refreshDesktopStatusBarAfterTransition(Landroid/view/Window;)V
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
