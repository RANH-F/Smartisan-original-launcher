.class public Lsmartisan/app/IndicatorView$IconIndicator;
.super Ljava/lang/Object;
.source "IndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/app/IndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconIndicator"
.end annotation


# instance fields
.field normalDrawable:Landroid/graphics/drawable/Drawable;

.field selectedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsmartisan/app/IndicatorView$IconIndicator;->normalDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object p2, p0, Lsmartisan/app/IndicatorView$IconIndicator;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
