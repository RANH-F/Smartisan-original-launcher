.class public Lcom/smartisanos/magicflow/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"


# instance fields
.field private a:Lcom/smartisanos/magicflow/LOG;

.field private b:Lsmartisan/widget/search/WebSearchViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/SearchActivity;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/SearchActivity;->a:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method private a()V
    .locals 7

    const-string v0, "dictionary_youdao"

    const-string v1, ""

    const-string v2, "setData config is null can not show search view"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.smartisanos.gloable.searchconfig.provider"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "getConfig"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "config"

    .line 2
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lsmartisan/widget/search/data/GloableSearchConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez v6, :cond_1

    .line 3
    :catchall_0
    :goto_0
    invoke-static {v2}, Lcom/smartisanos/magicflow/LOG;->e(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/magicflow/SearchActivity;->b:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-virtual {v2, v6}, Lsmartisan/widget/search/WebSearchViewGroup;->setData(Landroid/os/Parcelable;)V

    goto :goto_1

    .line 6
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/magicflow/o/o;->a(Landroid/content/Context;)Lsmartisan/widget/search/data/GloableSearchConfig;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/magicflow/SearchActivity;->b:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-virtual {v2, v3}, Lsmartisan/widget/search/WebSearchViewGroup;->setData(Landroid/os/Parcelable;)V

    .line 8
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/magicflow/SearchActivity;->b:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-virtual {v2, v1, v0}, Lsmartisan/widget/search/WebSearchViewGroup;->setSearchText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 3

    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/SearchActivity;->b:Lsmartisan/widget/search/WebSearchViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b008a

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f080382

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/search/WebSearchViewGroup;

    iput-object p1, p0, Lcom/smartisanos/magicflow/SearchActivity;->b:Lsmartisan/widget/search/WebSearchViewGroup;

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/SearchActivity;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/SearchActivity;->b:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-virtual {v0}, Lsmartisan/widget/search/WebSearchViewGroup;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/SearchActivity;->b:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-virtual {v0}, Lsmartisan/widget/search/WebSearchViewGroup;->onPause()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/SearchActivity;->b:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-virtual {v0, p1}, Lsmartisan/widget/search/WebSearchViewGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/SearchActivity;->b:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-virtual {v0}, Lsmartisan/widget/search/WebSearchViewGroup;->onResume()V

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/SearchActivity;->b()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/SearchActivity;->b:Lsmartisan/widget/search/WebSearchViewGroup;

    invoke-virtual {v0, p1}, Lsmartisan/widget/search/WebSearchViewGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-ltz v1, :cond_0

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gt v1, v3, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
