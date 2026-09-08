.class public Lc/d/a/b/a/j/c;
.super Ljava/lang/Object;
.source "DownloadListenerUtils.java"


# direct methods
.method public static a(ILandroid/util/SparseArray;ZLc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/c/d0;",
            ">;Z",
            "Lc/d/a/b/a/f/c;",
            "Lc/d/a/b/a/d/a;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p2, 0x0

    .line 2
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 3
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/c/d0;

    if-eqz v0, :cond_1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 5
    :pswitch_1
    invoke-interface {v0, p3, p4}, Lc/d/a/b/a/c/d0;->c(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V

    goto :goto_1

    .line 6
    :pswitch_2
    invoke-interface {v0, p3}, Lc/d/a/b/a/c/d0;->e(Lc/d/a/b/a/f/c;)V

    goto :goto_1

    .line 7
    :pswitch_3
    invoke-interface {v0, p3, p4}, Lc/d/a/b/a/c/d0;->b(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V

    goto :goto_1

    .line 8
    :pswitch_4
    invoke-interface {v0, p3}, Lc/d/a/b/a/c/d0;->c(Lc/d/a/b/a/f/c;)V

    goto :goto_1

    .line 9
    :pswitch_5
    invoke-interface {v0, p3}, Lc/d/a/b/a/c/d0;->b(Lc/d/a/b/a/f/c;)V

    goto :goto_1

    .line 10
    :pswitch_6
    invoke-interface {v0, p3}, Lc/d/a/b/a/c/d0;->a(Lc/d/a/b/a/f/c;)V

    goto :goto_1

    .line 11
    :pswitch_7
    invoke-interface {v0, p3, p4}, Lc/d/a/b/a/c/d0;->a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V

    goto :goto_1

    .line 12
    :pswitch_8
    invoke-interface {v0, p3}, Lc/d/a/b/a/c/d0;->h(Lc/d/a/b/a/f/c;)V

    goto :goto_1

    .line 13
    :pswitch_9
    invoke-interface {v0, p3}, Lc/d/a/b/a/c/d0;->d(Lc/d/a/b/a/f/c;)V

    goto :goto_1

    .line 14
    :pswitch_a
    invoke-interface {v0, p3}, Lc/d/a/b/a/c/d0;->g(Lc/d/a/b/a/f/c;)V

    goto :goto_1

    .line 15
    :pswitch_b
    invoke-interface {v0, p3}, Lc/d/a/b/a/c/d0;->f(Lc/d/a/b/a/f/c;)V

    goto :goto_1

    .line 16
    :pswitch_c
    instance-of v1, v0, Lc/d/a/b/a/c/i;

    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Lc/d/a/b/a/c/i;

    invoke-virtual {v0, p3}, Lc/d/a/b/a/c/i;->i(Lc/d/a/b/a/f/c;)V

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 18
    :cond_2
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
