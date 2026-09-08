.class Lcom/ss/android/downloadlib/a$o$a;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lc/d/a/a/a/a/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a$o;->a(Lc/d/a/a/a/a/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/a/a/a/l;

.field final synthetic b:Lcom/ss/android/downloadlib/a$o;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a$o;Lc/d/a/a/a/a/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$o$a;->b:Lcom/ss/android/downloadlib/a$o;

    iput-object p2, p0, Lcom/ss/android/downloadlib/a$o$a;->a:Lc/d/a/a/a/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o$a;->a:Lc/d/a/a/a/a/l;

    invoke-interface {v0}, Lc/d/a/a/a/a/l;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->d()Lc/d/a/a/a/a/i;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u60a8\u5df2\u7981\u6b62\u4f7f\u7528\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u6388\u6743\u540e\u518d\u4e0b\u8f7d"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lc/d/a/a/a/a/i;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o$a;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a$o;->k()V

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$o$a;->a:Lc/d/a/a/a/a/l;

    invoke-interface {v0, p1}, Lc/d/a/a/a/a/l;->a(Ljava/lang/String;)V

    return-void
.end method
