.class Lcom/bytedance/tea/crash/m/g$c;
.super Lcom/bytedance/tea/crash/m/g$b;
.source "JellyBeanV16Compat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/tea/crash/m/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/bytedance/tea/crash/m/g$b;-><init>(Lcom/bytedance/tea/crash/m/g$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/tea/crash/m/g$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/tea/crash/m/g$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/ActivityManager$MemoryInfo;)J
    .locals 2

    .line 1
    iget-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0
.end method
