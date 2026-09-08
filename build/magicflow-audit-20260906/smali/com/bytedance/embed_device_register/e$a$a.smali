.class Lcom/bytedance/embed_device_register/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embed_device_register/e$a;->a(Lcom/bytedance/embed_device_register/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/embed_device_register/h;

.field final synthetic b:Lcom/bytedance/embed_device_register/e$a;


# direct methods
.method constructor <init>(Lcom/bytedance/embed_device_register/e$a;Lcom/bytedance/embed_device_register/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embed_device_register/e$a$a;->b:Lcom/bytedance/embed_device_register/e$a;

    iput-object p2, p0, Lcom/bytedance/embed_device_register/e$a$a;->a:Lcom/bytedance/embed_device_register/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$a$a;->b:Lcom/bytedance/embed_device_register/e$a;

    iget-object v0, v0, Lcom/bytedance/embed_device_register/e$a;->e:Lcom/bytedance/embed_device_register/e;

    iget-object v1, p0, Lcom/bytedance/embed_device_register/e$a$a;->a:Lcom/bytedance/embed_device_register/h;

    iget-object v1, v1, Lcom/bytedance/embed_device_register/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/bytedance/embed_device_register/e$c$a;

    invoke-virtual {v1}, Lcom/bytedance/embed_device_register/e$c$a;->a()Lcom/bytedance/embed_device_register/e$c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/embed_device_register/e;->a(Lcom/bytedance/embed_device_register/e;Lcom/bytedance/embed_device_register/e$c;)Lcom/bytedance/embed_device_register/e$c;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/embed_device_register/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/embed_device_register/e$a$a;->b:Lcom/bytedance/embed_device_register/e$a;

    iget-object v1, v1, Lcom/bytedance/embed_device_register/e$a;->e:Lcom/bytedance/embed_device_register/e;

    invoke-static {v1}, Lcom/bytedance/embed_device_register/e;->a(Lcom/bytedance/embed_device_register/e;)Lcom/bytedance/embed_device_register/e$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/embed_device_register/e$c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrackerDr"

    invoke-static {v1, v0}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$a$a;->b:Lcom/bytedance/embed_device_register/e$a;

    iget-object v0, v0, Lcom/bytedance/embed_device_register/e$a;->e:Lcom/bytedance/embed_device_register/e;

    invoke-static {v0}, Lcom/bytedance/embed_device_register/e;->b(Lcom/bytedance/embed_device_register/e;)Lcom/bytedance/embed_device_register/g$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$a$a;->b:Lcom/bytedance/embed_device_register/e$a;

    iget-object v0, v0, Lcom/bytedance/embed_device_register/e$a;->e:Lcom/bytedance/embed_device_register/e;

    invoke-static {v0}, Lcom/bytedance/embed_device_register/e;->b(Lcom/bytedance/embed_device_register/e;)Lcom/bytedance/embed_device_register/g$c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/embed_device_register/e$a$a;->b:Lcom/bytedance/embed_device_register/e$a;

    iget-object v1, v1, Lcom/bytedance/embed_device_register/e$a;->e:Lcom/bytedance/embed_device_register/e;

    invoke-static {v1}, Lcom/bytedance/embed_device_register/e;->a(Lcom/bytedance/embed_device_register/e;)Lcom/bytedance/embed_device_register/e$c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/embed_device_register/g$c;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
