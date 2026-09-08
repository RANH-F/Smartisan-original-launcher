.class Lcom/bytedance/embed_device_register/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/embed_device_register/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embed_device_register/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/embed_device_register/g$c<",
        "Lcom/bytedance/embed_device_register/e$c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/embed_device_register/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/embed_device_register/h<",
            "Lcom/bytedance/embed_device_register/e$c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/CountDownLatch;

.field private final c:Lcom/bytedance/embed_device_register/f;


# direct methods
.method constructor <init>(Lcom/bytedance/embed_device_register/h;Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/embed_device_register/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embed_device_register/h<",
            "Lcom/bytedance/embed_device_register/e$c;",
            ">;",
            "Ljava/util/concurrent/CountDownLatch;",
            "Lcom/bytedance/embed_device_register/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/embed_device_register/g$b;->a:Lcom/bytedance/embed_device_register/h;

    .line 3
    iput-object p2, p0, Lcom/bytedance/embed_device_register/g$b;->b:Ljava/util/concurrent/CountDownLatch;

    .line 4
    iput-object p3, p0, Lcom/bytedance/embed_device_register/g$b;->c:Lcom/bytedance/embed_device_register/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/embed_device_register/e$c;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/embed_device_register/g$b;->a:Lcom/bytedance/embed_device_register/h;

    iput-object p1, v0, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/embed_device_register/e$c;->a()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/embed_device_register/g$b;->c:Lcom/bytedance/embed_device_register/f;

    invoke-interface {v0, p1}, Lcom/bytedance/embed_device_register/f;->a(Ljava/util/Map;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/bytedance/embed_device_register/g$b;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/embed_device_register/e$c;

    invoke-virtual {p0, p1}, Lcom/bytedance/embed_device_register/g$b;->a(Lcom/bytedance/embed_device_register/e$c;)V

    return-void
.end method
