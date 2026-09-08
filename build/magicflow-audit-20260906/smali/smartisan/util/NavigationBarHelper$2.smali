.class final Lsmartisan/util/NavigationBarHelper$2;
.super Ljava/lang/Object;
.source "NavigationBarHelper.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/util/NavigationBarHelper;->setAutoAdapterNavigationBarEnabled(Landroid/view/View;Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;


# direct methods
.method constructor <init>(Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/util/NavigationBarHelper$2;->val$listener:Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/util/NavigationBarHelper$2;->val$listener:Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;

    invoke-static {v0, p1}, Lsmartisan/util/NavigationBarHelper;->navigationBarStatusChanged(Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;I)V

    return-void
.end method
