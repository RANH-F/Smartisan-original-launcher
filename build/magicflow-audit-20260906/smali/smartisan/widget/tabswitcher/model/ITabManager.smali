.class public interface abstract Lsmartisan/widget/tabswitcher/model/ITabManager;
.super Ljava/lang/Object;
.source "ITabManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lsmartisan/widget/tabswitcher/model/Tab;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getMoreTabs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getTabs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public abstract replaceTabList(Lsmartisan/widget/tabswitcher/model/Tab;Lsmartisan/widget/tabswitcher/model/Tab;)V
.end method

.method public abstract updateTabList()V
.end method
