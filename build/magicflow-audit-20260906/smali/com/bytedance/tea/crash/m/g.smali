.class public Lcom/bytedance/tea/crash/m/g;
.super Ljava/lang/Object;
.source "JellyBeanV16Compat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/crash/m/g$c;,
        Lcom/bytedance/tea/crash/m/g$b;
    }
.end annotation


# static fields
.field static final a:Lcom/bytedance/tea/crash/m/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/tea/crash/m/g$c;

    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/m/g$c;-><init>(Lcom/bytedance/tea/crash/m/g$a;)V

    sput-object v0, Lcom/bytedance/tea/crash/m/g;->a:Lcom/bytedance/tea/crash/m/g$b;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/bytedance/tea/crash/m/g$b;

    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/m/g$b;-><init>(Lcom/bytedance/tea/crash/m/g$a;)V

    sput-object v0, Lcom/bytedance/tea/crash/m/g;->a:Lcom/bytedance/tea/crash/m/g$b;

    :goto_0
    return-void
.end method

.method public static a(Landroid/app/ActivityManager$MemoryInfo;)J
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/m/g;->a:Lcom/bytedance/tea/crash/m/g$b;

    invoke-virtual {v0, p0}, Lcom/bytedance/tea/crash/m/g$b;->a(Landroid/app/ActivityManager$MemoryInfo;)J

    move-result-wide v0

    return-wide v0
.end method
