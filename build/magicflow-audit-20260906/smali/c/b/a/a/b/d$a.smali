.class Lc/b/a/a/b/d$a;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/a/b/d;->a(Ljava/lang/String;Lc/b/a/a/b/d$i;IILandroid/widget/ImageView$ScaleType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lc/b/a/a/b/d$i;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Landroid/widget/ImageView$ScaleType;

.field final synthetic f:Lc/b/a/a/b/d;


# direct methods
.method constructor <init>(Lc/b/a/a/b/d;Ljava/lang/String;Lc/b/a/a/b/d$i;IILandroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/a/b/d$a;->f:Lc/b/a/a/b/d;

    iput-object p2, p0, Lc/b/a/a/b/d$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lc/b/a/a/b/d$a;->b:Lc/b/a/a/b/d$i;

    iput p4, p0, Lc/b/a/a/b/d$a;->c:I

    iput p5, p0, Lc/b/a/a/b/d$a;->d:I

    iput-object p6, p0, Lc/b/a/a/b/d$a;->e:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/b/a/a/b/d$a;->f:Lc/b/a/a/b/d;

    iget-object v1, p0, Lc/b/a/a/b/d$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lc/b/a/a/b/d$a;->b:Lc/b/a/a/b/d$i;

    iget v3, p0, Lc/b/a/a/b/d$a;->c:I

    iget v4, p0, Lc/b/a/a/b/d$a;->d:I

    iget-object v5, p0, Lc/b/a/a/b/d$a;->e:Landroid/widget/ImageView$ScaleType;

    invoke-static/range {v0 .. v5}, Lc/b/a/a/b/d;->a(Lc/b/a/a/b/d;Ljava/lang/String;Lc/b/a/a/b/d$i;IILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method
