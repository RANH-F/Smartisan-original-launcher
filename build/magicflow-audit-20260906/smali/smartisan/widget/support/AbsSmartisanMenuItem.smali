.class public abstract Lsmartisan/widget/support/AbsSmartisanMenuItem;
.super Ljava/lang/Object;
.source "AbsSmartisanMenuItem.java"

# interfaces
.implements Lsmartisan/widget/support/SmartisanMenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubtitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public hasMenuIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSelected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setMenuIcon(Landroid/widget/ImageView;)V
    .locals 0

    return-void
.end method
