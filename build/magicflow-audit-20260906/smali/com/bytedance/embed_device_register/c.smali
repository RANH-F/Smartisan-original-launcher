.class final Lcom/bytedance/embed_device_register/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:Lcom/bytedance/embed_device_register/DrLogWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/bytedance/embed_device_register/c;->a(I)V

    .line 2
    new-instance v0, Lcom/bytedance/embed_device_register/DrLogWriter$a;

    invoke-direct {v0}, Lcom/bytedance/embed_device_register/DrLogWriter$a;-><init>()V

    invoke-static {v0}, Lcom/bytedance/embed_device_register/c;->a(Lcom/bytedance/embed_device_register/DrLogWriter;)V

    return-void
.end method

.method public static a(I)V
    .locals 0

    .line 2
    sput p0, Lcom/bytedance/embed_device_register/c;->a:I

    return-void
.end method

.method public static a(Lcom/bytedance/embed_device_register/DrLogWriter;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/embed_device_register/c;->b:Lcom/bytedance/embed_device_register/DrLogWriter;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 4
    sget-object v0, Lcom/bytedance/embed_device_register/c;->b:Lcom/bytedance/embed_device_register/DrLogWriter;

    if-eqz v0, :cond_0

    sget v1, Lcom/bytedance/embed_device_register/c;->a:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 5
    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/embed_device_register/DrLogWriter;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/embed_device_register/c;->b:Lcom/bytedance/embed_device_register/DrLogWriter;

    if-eqz v0, :cond_0

    sget v1, Lcom/bytedance/embed_device_register/c;->a:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    .line 2
    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/embed_device_register/DrLogWriter;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
