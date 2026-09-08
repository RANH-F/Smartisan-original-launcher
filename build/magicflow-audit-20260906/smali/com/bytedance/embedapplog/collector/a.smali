.class public Lcom/bytedance/embedapplog/collector/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static b:I

.field private static c:Lcom/bytedance/embedapplog/d/h;

.field private static d:Lcom/bytedance/embedapplog/d/h;

.field private static e:J

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/Object;

.field private static final h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/bytedance/embedapplog/IPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/bytedance/embedapplog/collector/a;->h:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/embedapplog/IPicker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/embedapplog/collector/a;->a:Lcom/bytedance/embedapplog/IPicker;

    return-void
.end method

.method public static a(Lcom/bytedance/embedapplog/d/h;J)Lcom/bytedance/embedapplog/d/h;
    .locals 3

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/d/a;->g()Lcom/bytedance/embedapplog/d/a;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/d/h;

    .line 10
    iput-wide p1, v0, Lcom/bytedance/embedapplog/d/a;->a:J

    .line 11
    iget-wide v1, p0, Lcom/bytedance/embedapplog/d/a;->a:J

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long p0, p1, v1

    if-ltz p0, :cond_0

    .line 12
    iput-wide p1, v0, Lcom/bytedance/embedapplog/d/h;->i:J

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 13
    invoke-static {p0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 14
    :goto_0
    invoke-static {v0}, Lcom/bytedance/embedapplog/a/e;->a(Lcom/bytedance/embedapplog/d/a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/bytedance/embedapplog/d/h;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/embedapplog/d/h;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/d/h;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/bytedance/embedapplog/d/h;->k:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p0, v0, Lcom/bytedance/embedapplog/d/h;->k:Ljava/lang/String;

    .line 5
    :goto_0
    iput-wide p2, v0, Lcom/bytedance/embedapplog/d/a;->a:J

    const-wide/16 p0, -0x1

    .line 6
    iput-wide p0, v0, Lcom/bytedance/embedapplog/d/h;->i:J

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const-string p4, ""

    .line 7
    :goto_1
    iput-object p4, v0, Lcom/bytedance/embedapplog/d/h;->j:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Lcom/bytedance/embedapplog/a/e;->a(Lcom/bytedance/embedapplog/d/a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    sget-object p2, Lcom/bytedance/embedapplog/collector/a;->h:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/collector/a;->h:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/collector/a;->d:Lcom/bytedance/embedapplog/d/h;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/bytedance/embedapplog/collector/a;->g:Ljava/lang/Object;

    invoke-static {v0}, Lcom/bytedance/embedapplog/collector/a;->a(Ljava/lang/Object;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/bytedance/embedapplog/collector/a;->c:Lcom/bytedance/embedapplog/d/h;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Lcom/bytedance/embedapplog/d/h;->k:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/embedapplog/collector/a;->f:Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/embedapplog/collector/a;->e:J

    .line 6
    sget-object v0, Lcom/bytedance/embedapplog/collector/a;->c:Lcom/bytedance/embedapplog/d/h;

    sget-wide v1, Lcom/bytedance/embedapplog/collector/a;->e:J

    invoke-static {v0, v1, v2}, Lcom/bytedance/embedapplog/collector/a;->a(Lcom/bytedance/embedapplog/d/h;J)Lcom/bytedance/embedapplog/d/h;

    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcom/bytedance/embedapplog/collector/a;->c:Lcom/bytedance/embedapplog/d/h;

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result p1

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bytedance/embedapplog/collector/a;->f:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v2, v4, v0, v1, v3}, Lcom/bytedance/embedapplog/collector/a;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/bytedance/embedapplog/d/h;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/collector/a;->c:Lcom/bytedance/embedapplog/d/h;

    .line 3
    sget-object v0, Lcom/bytedance/embedapplog/collector/a;->c:Lcom/bytedance/embedapplog/d/h;

    sget-object v1, Lcom/bytedance/embedapplog/collector/a;->h:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/bytedance/embedapplog/d/h;->l:I

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget p1, Lcom/bytedance/embedapplog/collector/a;->b:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    sput p1, Lcom/bytedance/embedapplog/collector/a;->b:I

    .line 2
    sget p1, Lcom/bytedance/embedapplog/collector/a;->b:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/embedapplog/collector/a;->a:Lcom/bytedance/embedapplog/IPicker;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lcom/bytedance/embedapplog/IPicker;->show(Z)V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/bytedance/embedapplog/collector/a;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    sget p1, Lcom/bytedance/embedapplog/collector/a;->b:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/bytedance/embedapplog/collector/a;->b:I

    .line 3
    sget p1, Lcom/bytedance/embedapplog/collector/a;->b:I

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    sput-object p1, Lcom/bytedance/embedapplog/collector/a;->f:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 5
    sput-wide v0, Lcom/bytedance/embedapplog/collector/a;->e:J

    .line 6
    iget-object p1, p0, Lcom/bytedance/embedapplog/collector/a;->a:Lcom/bytedance/embedapplog/IPicker;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Lcom/bytedance/embedapplog/IPicker;->show(Z)V

    :cond_0
    return-void
.end method
