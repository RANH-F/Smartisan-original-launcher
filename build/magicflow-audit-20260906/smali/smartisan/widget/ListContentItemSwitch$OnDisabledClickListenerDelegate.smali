.class Lsmartisan/widget/ListContentItemSwitch$OnDisabledClickListenerDelegate;
.super Ljava/lang/Object;
.source "ListContentItemSwitch.java"

# interfaces
.implements Lsmartisan/widget/ListContentItem$OnDisabledClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/ListContentItemSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnDisabledClickListenerDelegate"
.end annotation


# instance fields
.field private mDelegate:Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;


# direct methods
.method private constructor <init>(Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0, p1}, Lsmartisan/widget/ListContentItemSwitch$OnDisabledClickListenerDelegate;->setDelegate(Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;)V

    return-void
.end method

.method synthetic constructor <init>(Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;Lsmartisan/widget/ListContentItemSwitch$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/ListContentItemSwitch$OnDisabledClickListenerDelegate;-><init>(Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;)V

    return-void
.end method

.method static synthetic access$200(Lsmartisan/widget/ListContentItemSwitch$OnDisabledClickListenerDelegate;Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/ListContentItemSwitch$OnDisabledClickListenerDelegate;->setDelegate(Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;)V

    return-void
.end method

.method private setDelegate(Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/ListContentItemSwitch$OnDisabledClickListenerDelegate;->mDelegate:Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;

    return-void
.end method


# virtual methods
.method public onDisabledClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch$OnDisabledClickListenerDelegate;->mDelegate:Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;->onDisabledSwitchClicked()V

    :cond_0
    return-void
.end method
