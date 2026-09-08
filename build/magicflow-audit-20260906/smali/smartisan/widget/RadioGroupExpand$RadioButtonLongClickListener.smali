.class Lsmartisan/widget/RadioGroupExpand$RadioButtonLongClickListener;
.super Ljava/lang/Object;
.source "RadioGroupExpand.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/RadioGroupExpand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioButtonLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/RadioGroupExpand;


# direct methods
.method private constructor <init>(Lsmartisan/widget/RadioGroupExpand;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/RadioGroupExpand$RadioButtonLongClickListener;->this$0:Lsmartisan/widget/RadioGroupExpand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsmartisan/widget/RadioGroupExpand;Lsmartisan/widget/RadioGroupExpand$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsmartisan/widget/RadioGroupExpand$RadioButtonLongClickListener;-><init>(Lsmartisan/widget/RadioGroupExpand;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/RadioGroupExpand$RadioButtonLongClickListener;->this$0:Lsmartisan/widget/RadioGroupExpand;

    invoke-static {v0}, Lsmartisan/widget/RadioGroupExpand;->access$200(Lsmartisan/widget/RadioGroupExpand;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/RadioGroupExpand$RadioButtonLongClickListener;->this$0:Lsmartisan/widget/RadioGroupExpand;

    invoke-static {v0}, Lsmartisan/widget/RadioGroupExpand;->access$200(Lsmartisan/widget/RadioGroupExpand;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
