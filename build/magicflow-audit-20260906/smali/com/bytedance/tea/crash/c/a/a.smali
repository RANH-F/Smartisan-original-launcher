.class public Lcom/bytedance/tea/crash/c/a/a;
.super Ljava/lang/Object;
.source "DuplicateLog.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/tea/crash/c/a/a;
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/tea/crash/c/a/a;

    invoke-direct {v0}, Lcom/bytedance/tea/crash/c/a/a;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/bytedance/tea/crash/c/a/a;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/tea/crash/c/a/a;->b:J

    return-object v0
.end method
