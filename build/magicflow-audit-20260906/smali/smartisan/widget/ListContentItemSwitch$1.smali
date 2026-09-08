.class Lsmartisan/widget/ListContentItemSwitch$1;
.super Ljava/lang/Object;
.source "ListContentItemSwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/ListContentItemSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/ListContentItemSwitch;


# direct methods
.method constructor <init>(Lsmartisan/widget/ListContentItemSwitch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/ListContentItemSwitch$1;->this$0:Lsmartisan/widget/ListContentItemSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch$1;->this$0:Lsmartisan/widget/ListContentItemSwitch;

    invoke-static {v0}, Lsmartisan/widget/ListContentItemSwitch;->access$000(Lsmartisan/widget/ListContentItemSwitch;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch$1;->this$0:Lsmartisan/widget/ListContentItemSwitch;

    invoke-static {v0}, Lsmartisan/widget/ListContentItemSwitch;->access$000(Lsmartisan/widget/ListContentItemSwitch;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method
