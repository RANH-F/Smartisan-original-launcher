.class Lsmartisan/widget/QuickBar$3;
.super Ljava/lang/Object;
.source "QuickBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/QuickBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/QuickBar;


# direct methods
.method constructor <init>(Lsmartisan/widget/QuickBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/QuickBar$3;->this$0:Lsmartisan/widget/QuickBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/QuickBar$3;->this$0:Lsmartisan/widget/QuickBar;

    invoke-static {v0}, Lsmartisan/widget/QuickBar;->access$500(Lsmartisan/widget/QuickBar;)V

    :cond_0
    return-void
.end method
