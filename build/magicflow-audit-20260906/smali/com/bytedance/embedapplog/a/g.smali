.class Lcom/bytedance/embedapplog/a/g;
.super Lcom/bytedance/embedapplog/a/j;
.source "SourceFile"


# instance fields
.field private j:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/d/b;Lcom/bytedance/embedapplog/b/h;Lcom/bytedance/embedapplog/b/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/embedapplog/a/j;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/d/b;Lcom/bytedance/embedapplog/b/h;Lcom/bytedance/embedapplog/b/i;)V

    return-void
.end method


# virtual methods
.method b()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/a/g;->j:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/embedapplog/a/j;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/a/g;->j:Z

    return v0
.end method
