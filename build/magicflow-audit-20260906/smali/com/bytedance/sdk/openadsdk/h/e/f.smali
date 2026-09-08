.class public Lcom/bytedance/sdk/openadsdk/h/e/f;
.super Ljava/lang/Object;
.source "VideoRequest.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/f;->c:J

    .line 3
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/f;->d:J

    return-void
.end method
