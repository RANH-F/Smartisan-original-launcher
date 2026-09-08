.class final Lcom/bytedance/sdk/openadsdk/h/d$a;
.super Ljava/lang/Object;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Z

.field final b:Z

.field final c:I

.field final d:Ljava/lang/String;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final f:[Ljava/lang/String;


# direct methods
.method constructor <init>(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Z

    .line 3
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->b:Z

    .line 4
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->c:I

    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->e:Ljava/util/Map;

    .line 7
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->f:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    const-class v1, Lcom/bytedance/sdk/openadsdk/h/d$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/h/d$a;

    .line 3
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Z

    iget-boolean v2, p1, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 4
    :cond_2
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->b:Z

    iget-boolean v2, p1, Lcom/bytedance/sdk/openadsdk/h/d$a;->b:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 5
    :cond_3
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->c:I

    iget v2, p1, Lcom/bytedance/sdk/openadsdk/h/d$a;->c:I

    if-eq v1, v2, :cond_4

    return v0

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/h/d$a;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
