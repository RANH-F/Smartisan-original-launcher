.class Lc/b/a/a/b/d$b;
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


# direct methods
.method constructor <init>(Lc/b/a/a/b/d;Lc/b/a/a/b/d$i;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lc/b/a/a/b/d$b;->a:Lc/b/a/a/b/d$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/a/b/d$b;->a:Lc/b/a/a/b/d$i;

    invoke-interface {v0}, Lc/b/a/a/b/d$i;->a()V

    return-void
.end method
