.class Lsmartisan/widget/letters/QuickBarEx$1;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

# interfaces
.implements Lsmartisan/widget/letters/LettersBar$LBListener;


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
    iput-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$1;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLetterChanged(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx$1;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisan/widget/letters/QuickBarEx;->access$000(Lsmartisan/widget/letters/QuickBarEx;)Lsmartisan/widget/letters/QuickBarEx$QBListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx$1;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisan/widget/letters/QuickBarEx;->access$000(Lsmartisan/widget/letters/QuickBarEx;)Lsmartisan/widget/letters/QuickBarEx$QBListener;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lsmartisan/widget/letters/QuickBarEx$QBListener;->onLetterChanged(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
