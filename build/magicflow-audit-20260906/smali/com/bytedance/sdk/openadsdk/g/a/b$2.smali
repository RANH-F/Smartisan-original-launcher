.class Lcom/bytedance/sdk/openadsdk/g/a/b$2;
.super Ljava/lang/Object;
.source "GifLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;IILandroid/widget/ImageView$ScaleType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/g/a/b$b;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Landroid/widget/ImageView$ScaleType;

.field final synthetic f:Lcom/bytedance/sdk/openadsdk/g/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/g/a/b;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;IILandroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$2;->f:Lcom/bytedance/sdk/openadsdk/g/a/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$2;->b:Lcom/bytedance/sdk/openadsdk/g/a/b$b;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$2;->c:I

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$2;->d:I

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$2;->e:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$2;->f:Lcom/bytedance/sdk/openadsdk/g/a/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$2;->b:Lcom/bytedance/sdk/openadsdk/g/a/b$b;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$2;->c:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$2;->d:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$2;->e:Landroid/widget/ImageView$ScaleType;

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Lcom/bytedance/sdk/openadsdk/g/a/b;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;IILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method
