.class final Lsmartisan/widget/SwitchEx$PerformClick;
.super Ljava/lang/Object;
.source "SwitchEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SwitchEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformClick"
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/SwitchEx;


# direct methods
.method private constructor <init>(Lsmartisan/widget/SwitchEx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SwitchEx$PerformClick;->this$0:Lsmartisan/widget/SwitchEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsmartisan/widget/SwitchEx;Lsmartisan/widget/SwitchEx$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsmartisan/widget/SwitchEx$PerformClick;-><init>(Lsmartisan/widget/SwitchEx;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SwitchEx$PerformClick;->this$0:Lsmartisan/widget/SwitchEx;

    invoke-virtual {v0}, Lsmartisan/widget/SwitchEx;->performClick()Z

    return-void
.end method
