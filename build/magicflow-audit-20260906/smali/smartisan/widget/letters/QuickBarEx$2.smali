.class Lsmartisan/widget/letters/QuickBarEx$2;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

# interfaces
.implements Lsmartisan/widget/letters/LettersBar$OnBackgroundVisibleChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/letters/QuickBarEx;->initLettersBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/letters/QuickBarEx;


# direct methods
.method constructor <init>(Lsmartisan/widget/letters/QuickBarEx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$2;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnBackgroundVisibleChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx$2;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {v0, p1}, Lsmartisan/widget/letters/QuickBarEx;->access$100(Lsmartisan/widget/letters/QuickBarEx;Z)V

    return-void
.end method
