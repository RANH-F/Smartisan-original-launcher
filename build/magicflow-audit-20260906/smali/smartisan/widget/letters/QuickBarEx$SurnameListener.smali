.class public interface abstract Lsmartisan/widget/letters/QuickBarEx$SurnameListener;
.super Ljava/lang/Object;
.source "QuickBarEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/letters/QuickBarEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SurnameListener"
.end annotation


# virtual methods
.method public abstract getMatchedSurnames(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onSurnameClicked(Ljava/lang/String;)V
.end method
