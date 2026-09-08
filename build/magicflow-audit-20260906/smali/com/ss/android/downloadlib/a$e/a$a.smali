.class Lcom/ss/android/downloadlib/a$e/a$a;
.super Ljava/lang/Object;
.source "AdDownloadDialogManager.java"

# interfaces
.implements Lc/d/a/a/a/d/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a$e/a;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/a$h/a;Lcom/ss/android/downloadlib/a$e/a$b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/a$h/a;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/ss/android/downloadlib/a$e/a$b;

.field final synthetic e:Lcom/ss/android/downloadlib/a$e/a;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a$e/a;Lcom/ss/android/downloadlib/a$h/a;Lorg/json/JSONObject;Landroid/content/Context;Lcom/ss/android/downloadlib/a$e/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$e/a$a;->e:Lcom/ss/android/downloadlib/a$e/a;

    iput-object p2, p0, Lcom/ss/android/downloadlib/a$e/a$a;->a:Lcom/ss/android/downloadlib/a$h/a;

    iput-object p3, p0, Lcom/ss/android/downloadlib/a$e/a$a;->b:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/ss/android/downloadlib/a$e/a$a;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/ss/android/downloadlib/a$e/a$a;->d:Lcom/ss/android/downloadlib/a$e/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$e/a$a;->e:Lcom/ss/android/downloadlib/a$e/a;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/a$e/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/DialogInterface;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$e/a$a;->a:Lcom/ss/android/downloadlib/a$h/a;

    iget-wide v4, v0, Lcom/ss/android/downloadlib/a$h/a;->b:J

    iget-object v6, v0, Lcom/ss/android/downloadlib/a$h/a;->f:Ljava/lang/String;

    iget-wide v7, v0, Lcom/ss/android/downloadlib/a$h/a;->c:J

    iget-object v9, p0, Lcom/ss/android/downloadlib/a$e/a$a;->b:Lorg/json/JSONObject;

    const-string v1, "exit_warn"

    const-string v2, "click_exit"

    const/4 v3, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JLorg/json/JSONObject;IZ)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$e/a$a;->d:Lcom/ss/android/downloadlib/a$e/a$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/ss/android/downloadlib/a$e/a$b;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$e/a$a;->e:Lcom/ss/android/downloadlib/a$e/a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a$e/a;->b(Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public c(Landroid/content/DialogInterface;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$e/a$a;->a:Lcom/ss/android/downloadlib/a$h/a;

    iget-wide v4, v0, Lcom/ss/android/downloadlib/a$h/a;->b:J

    iget-object v6, v0, Lcom/ss/android/downloadlib/a$h/a;->f:Ljava/lang/String;

    iget-wide v7, v0, Lcom/ss/android/downloadlib/a$h/a;->c:J

    iget-object v9, p0, Lcom/ss/android/downloadlib/a$e/a$a;->b:Lorg/json/JSONObject;

    const-string v1, "exit_warn"

    const-string v2, "click_install"

    const/4 v3, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JLorg/json/JSONObject;IZ)V

    .line 2
    new-instance v0, Lcom/ss/android/downloadlib/a$h/b$a;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a$h/b$a;-><init>()V

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$e/a$a;->a:Lcom/ss/android/downloadlib/a$h/a;

    iget-wide v1, v1, Lcom/ss/android/downloadlib/a$h/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/a$h/b$a;->a(J)Lcom/ss/android/downloadlib/a$h/b$a;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$e/a$a;->a:Lcom/ss/android/downloadlib/a$h/a;

    iget-wide v1, v1, Lcom/ss/android/downloadlib/a$h/a;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/a$h/b$a;->b(J)Lcom/ss/android/downloadlib/a$h/b$a;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$e/a$a;->a:Lcom/ss/android/downloadlib/a$h/a;

    iget-object v1, v1, Lcom/ss/android/downloadlib/a$h/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a$h/b$a;->a(Ljava/lang/String;)Lcom/ss/android/downloadlib/a$h/b$a;

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a$h/b$a;->a()Lcom/ss/android/downloadlib/a$h/b;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v1

    const-string v2, "exit_warn"

    const-string v3, "click_install"

    invoke-virtual {v1, v0, v2, v3}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a$h/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$e/a$a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$e/a$a;->a:Lcom/ss/android/downloadlib/a$h/a;

    iget-wide v1, v1, Lcom/ss/android/downloadlib/a$h/a;->a:J

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;I)Z

    .line 5
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
