.class public Lcom/bytedance/tea/crash/m/b;
.super Ljava/lang/Object;
.source "DebugMemInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/crash/m/b$c;,
        Lcom/bytedance/tea/crash/m/b$b;
    }
.end annotation


# static fields
.field static final a:Lcom/bytedance/tea/crash/m/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/tea/crash/m/b$c;

    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/m/b$c;-><init>(Lcom/bytedance/tea/crash/m/b$a;)V

    sput-object v0, Lcom/bytedance/tea/crash/m/b;->a:Lcom/bytedance/tea/crash/m/b$b;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/bytedance/tea/crash/m/b$b;

    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/m/b$b;-><init>(Lcom/bytedance/tea/crash/m/b$a;)V

    sput-object v0, Lcom/bytedance/tea/crash/m/b;->a:Lcom/bytedance/tea/crash/m/b$b;

    :goto_0
    return-void
.end method

.method public static a(Landroid/os/Debug$MemoryInfo;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/m/b;->a:Lcom/bytedance/tea/crash/m/b$b;

    invoke-virtual {v0, p0}, Lcom/bytedance/tea/crash/m/b$b;->a(Landroid/os/Debug$MemoryInfo;)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/os/Debug$MemoryInfo;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/m/b;->a:Lcom/bytedance/tea/crash/m/b$b;

    invoke-virtual {v0, p0}, Lcom/bytedance/tea/crash/m/b$b;->b(Landroid/os/Debug$MemoryInfo;)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/os/Debug$MemoryInfo;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/m/b;->a:Lcom/bytedance/tea/crash/m/b$b;

    invoke-virtual {v0, p0}, Lcom/bytedance/tea/crash/m/b$b;->c(Landroid/os/Debug$MemoryInfo;)I

    move-result p0

    return p0
.end method
