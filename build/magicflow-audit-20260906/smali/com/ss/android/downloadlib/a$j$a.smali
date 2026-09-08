.class Lcom/ss/android/downloadlib/a$j$a;
.super Ljava/lang/Object;
.source "AdDownloadSecurityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a$j;->a(Landroid/content/Context;Lc/d/a/b/a/f/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/f/c;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a$j;Lc/d/a/b/a/f/c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ss/android/downloadlib/a$j$a;->a:Lc/d/a/b/a/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->d()Lc/d/a/a/a/a/i;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lc/d/a/a/a/a/i;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$j$a;->a:Lc/d/a/b/a/f/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->t0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/h;->a()Lcom/ss/android/downloadlib/h;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$j$a;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->t0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/h;->a(Ljava/lang/String;)Lcom/ss/android/downloadlib/a$m;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a$m;->e()V

    :cond_1
    :goto_0
    return-void
.end method
