.class public Lcom/smartisanos/magicflow/o/g;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/o/g$a;
    }
.end annotation


# static fields
.field private static final c:Lcom/smartisanos/magicflow/LOG;

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/smartisanos/magicflow/o/g;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/smartisanos/magicflow/o/g$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/o/g;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v1

    sput-object v1, Lcom/smartisanos/magicflow/o/g;->c:Lcom/smartisanos/magicflow/LOG;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/smartisanos/magicflow/o/g;->d:Ljava/util/Map;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/smartisanos/magicflow/o/g;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/o/g;-><init>()V

    .line 5
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 6
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_0

    const-string v7, "int"

    .line 8
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "FLAG_"

    .line 9
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 10
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 11
    sget-object v6, Lcom/smartisanos/magicflow/o/g;->c:Lcom/smartisanos/magicflow/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Flags key ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "], value ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/magicflow/LOG;->info(Ljava/lang/String;)V

    .line 12
    sget-object v6, Lcom/smartisanos/magicflow/o/g;->d:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 13
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/o/g;->a:Ljava/util/HashMap;

    return-void
.end method

.method private static a()Lcom/smartisanos/magicflow/o/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/o/g;->e:Lcom/smartisanos/magicflow/o/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/o/g;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/o/g;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/o/g;->e:Lcom/smartisanos/magicflow/o/g;

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/o/g;->e:Lcom/smartisanos/magicflow/o/g;

    return-object v0
.end method

.method public static a(IZ)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/o/g;->a()Lcom/smartisanos/magicflow/o/g;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/o/g;->b(IZ)V

    return-void
.end method

.method private a(Ljava/util/HashMap;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/smartisanos/magicflow/o/g$a;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/o/g$a;

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v2, p2

    if-ne v2, p2, :cond_0

    .line 10
    invoke-interface {v1, p2}, Lcom/smartisanos/magicflow/o/g$a;->a(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(I)Z
    .locals 1

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/o/g;->a()Lcom/smartisanos/magicflow/o/g;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/o/g;->b(I)Z

    move-result p0

    return p0
.end method

.method private b(IZ)V
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/o/g;->b(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 3
    :cond_0
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/smartisanos/magicflow/o/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/smartisanos/magicflow/o/g;->c:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFlag flag ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], value ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/LOG;->info(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    iget p2, p0, Lcom/smartisanos/magicflow/o/g;->b:I

    or-int/2addr p2, p1

    iput p2, p0, Lcom/smartisanos/magicflow/o/g;->b:I

    goto :goto_0

    .line 7
    :cond_2
    iget p2, p0, Lcom/smartisanos/magicflow/o/g;->b:I

    not-int v0, p1

    and-int/2addr p2, v0

    iput p2, p0, Lcom/smartisanos/magicflow/o/g;->b:I

    .line 8
    :goto_0
    iget-object p2, p0, Lcom/smartisanos/magicflow/o/g;->a:Ljava/util/HashMap;

    invoke-direct {p0, p2, p1}, Lcom/smartisanos/magicflow/o/g;->a(Ljava/util/HashMap;I)V

    return-void
.end method

.method private b(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/o/g;->b:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
