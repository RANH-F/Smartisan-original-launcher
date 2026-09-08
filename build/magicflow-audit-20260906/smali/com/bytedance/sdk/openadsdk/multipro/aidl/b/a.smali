.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;
.super Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub;
.source "CommonDialogListenerImpl.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/bytedance/sdk/openadsdk/utils/g$a;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/g$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->a:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->b:Lcom/bytedance/sdk/openadsdk/utils/g$a;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;)Lcom/bytedance/sdk/openadsdk/utils/g$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->b:Lcom/bytedance/sdk/openadsdk/utils/g$a;

    return-object p0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onDialogBtnNo()V
    .locals 2

    const-string v0, "CommonDialogListenerImpl"

    const-string v1, "CommonDialogListenerImpl: onDialogBtnNo"

    .line 1
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDialogBtnYes()V
    .locals 2

    const-string v0, "CommonDialogListenerImpl"

    const-string v1, "CommonDialogListenerImpl: onDialogBtnYes"

    .line 1
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDialogCancel()V
    .locals 2

    const-string v0, "CommonDialogListenerImpl"

    const-string v1, "CommonDialogListenerImpl: onDialogCancel"

    .line 1
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
