.class public Lsmartisan/widget/editor/SimpleEditor;
.super Lsmartisan/widget/editor/AbsEditor;
.source "SimpleEditor.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/editor/SimpleEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/editor/SimpleEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/editor/AbsEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected getDefaultLeftLayout()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultRightLayout()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initLeftWidget()V
    .locals 0

    return-void
.end method

.method protected initRightWidget()V
    .locals 0

    return-void
.end method
