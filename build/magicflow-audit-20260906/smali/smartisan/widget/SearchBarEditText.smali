.class public Lsmartisan/widget/SearchBarEditText;
.super Landroid/widget/EditText;
.source "SearchBarEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SearchBarEditText$ListenerAdapter;,
        Lsmartisan/widget/SearchBarEditText$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lsmartisan/widget/SearchBarEditText$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SearchBarEditText;->mListener:Lsmartisan/widget/SearchBarEditText$Listener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lsmartisan/widget/SearchBarEditText$Listener;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    :cond_0
    return-void
.end method

.method public setListener(Lsmartisan/widget/SearchBarEditText$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SearchBarEditText;->mListener:Lsmartisan/widget/SearchBarEditText$Listener;

    return-void
.end method
