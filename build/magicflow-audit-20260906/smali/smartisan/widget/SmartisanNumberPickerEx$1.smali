.class Lsmartisan/widget/SmartisanNumberPickerEx$1;
.super Ljava/lang/Object;
.source "SmartisanNumberPickerEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SmartisanNumberPickerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/SmartisanNumberPickerEx;


# direct methods
.method constructor <init>(Lsmartisan/widget/SmartisanNumberPickerEx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx$1;->this$0:Lsmartisan/widget/SmartisanNumberPickerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Lsmartisan/widget/SmartisanNumberPickerEx;->access$000()Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx$1;->this$0:Lsmartisan/widget/SmartisanNumberPickerEx;

    invoke-static {v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->access$100(Lsmartisan/widget/SmartisanNumberPickerEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lsmartisan/widget/SmartisanNumberPickerEx;->access$000()Landroid/media/SoundPool;

    move-result-object v1

    invoke-static {}, Lsmartisan/widget/SmartisanNumberPickerEx;->access$200()I

    move-result v2

    const v3, 0x3dc18937    # 0.0945f

    const v4, 0x3dc18937    # 0.0945f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method
