.class public Lcom/smartisanos/magicflow/blur/NativeBlurProcess;
.super Ljava/lang/Object;
.source "NativeBlurProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/smartisanos/magicflow/h/d;->f:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/smartisanos/magicflow/h/d;->f:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;->b:Ljava/util/ArrayList;

    const-string v0, "blur"

    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    sget v0, Lcom/smartisanos/magicflow/h/d;->f:I

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v0, :cond_0

    .line 6
    sget-object v8, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;->a:Ljava/util/ArrayList;

    new-instance v9, Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, v9

    move v4, v0

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;-><init>(Landroid/graphics/Bitmap;IIII)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v8, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;->b:Ljava/util/ArrayList;

    new-instance v9, Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;

    const/4 v6, 0x2

    move-object v1, v9

    invoke-direct/range {v1 .. v6}, Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;-><init>(Landroid/graphics/Bitmap;IIII)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 4

    .line 16
    sget v0, Lcom/smartisanos/magicflow/h/d;->f:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 17
    sget-object v2, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;

    .line 18
    invoke-static {v2, p0}, Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;->a(Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    float-to-int v3, p1

    .line 19
    invoke-static {v2, v3}, Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;->a(Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;I)I

    .line 20
    sget-object v2, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;

    .line 21
    invoke-static {v2, p0}, Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;->a(Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 22
    invoke-static {v2, v3}, Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;->a(Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    sget-object p1, Lcom/smartisanos/magicflow/h/d;->g:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;->a:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :try_start_1
    sget-object p1, Lcom/smartisanos/magicflow/h/d;->g:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;->b:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p0
.end method

.method public static a()V
    .locals 8

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    .line 4
    sget-object v5, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;

    .line 5
    invoke-static {v5}, Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;->a(Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 6
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 7
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 8
    :cond_0
    invoke-static {v5, v4}, Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;->a(Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    sget-object v1, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_3

    .line 10
    sget-object v3, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;

    .line 11
    invoke-static {v3}, Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;->a(Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 12
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 13
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 14
    :cond_2
    invoke-static {v3, v4}, Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;->a(Lcom/smartisanos/magicflow/blur/NativeBlurProcess$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic a(Landroid/graphics/Bitmap;IIII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/smartisanos/magicflow/blur/NativeBlurProcess;->quickBlur(Landroid/graphics/Bitmap;IIII)V

    return-void
.end method

.method public static b()V
    .locals 0

    return-void
.end method

.method public static native copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method private static native quickBlur(Landroid/graphics/Bitmap;IIII)V
.end method
