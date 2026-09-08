.class public Lc/b/a/a/b/d$h;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private final b:Lc/b/a/a/b/d$i;


# direct methods
.method public constructor <init>(Lc/b/a/a/b/d;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lc/b/a/a/b/d$i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lc/b/a/a/b/d$h;->a:Landroid/graphics/Bitmap;

    .line 3
    iput-object p5, p0, Lc/b/a/a/b/d$h;->b:Lc/b/a/a/b/d$i;

    return-void
.end method

.method static synthetic a(Lc/b/a/a/b/d$h;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/a/b/d$h;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lc/b/a/a/b/d$h;)Lc/b/a/a/b/d$i;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/b/a/a/b/d$h;->b:Lc/b/a/a/b/d$i;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .line 3
    iget-object v0, p0, Lc/b/a/a/b/d$h;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method
