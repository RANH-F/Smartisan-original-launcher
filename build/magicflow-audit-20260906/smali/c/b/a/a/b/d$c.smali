.class Lc/b/a/a/b/d$c;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/a/b/d;->b(Ljava/lang/String;Lc/b/a/a/b/d$i;IILandroid/widget/ImageView$ScaleType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/b/a/a/b/d$i;

.field final synthetic b:Lc/b/a/a/b/d$h;


# direct methods
.method constructor <init>(Lc/b/a/a/b/d;Lc/b/a/a/b/d$i;Lc/b/a/a/b/d$h;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lc/b/a/a/b/d$c;->a:Lc/b/a/a/b/d$i;

    iput-object p3, p0, Lc/b/a/a/b/d$c;->b:Lc/b/a/a/b/d$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/b/a/a/b/d$c;->a:Lc/b/a/a/b/d$i;

    iget-object v1, p0, Lc/b/a/a/b/d$c;->b:Lc/b/a/a/b/d$h;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lc/b/a/a/b/d$i;->a(Lc/b/a/a/b/d$h;Z)V

    .line 2
    iget-object v0, p0, Lc/b/a/a/b/d$c;->a:Lc/b/a/a/b/d$i;

    invoke-interface {v0}, Lc/b/a/a/b/d$i;->b()V

    return-void
.end method
