.class public final enum Lcom/smartisanos/magicflow/h/d$a;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smartisanos/magicflow/h/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/smartisanos/magicflow/h/d$a;

.field public static final enum b:Lcom/smartisanos/magicflow/h/d$a;

.field public static final enum c:Lcom/smartisanos/magicflow/h/d$a;

.field public static final enum d:Lcom/smartisanos/magicflow/h/d$a;

.field public static final enum e:Lcom/smartisanos/magicflow/h/d$a;

.field private static final synthetic f:[Lcom/smartisanos/magicflow/h/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/h/d$a;

    const/4 v1, 0x0

    const-string v2, "SINGLE_IMAGE"

    invoke-direct {v0, v2, v1}, Lcom/smartisanos/magicflow/h/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/magicflow/h/d$a;->a:Lcom/smartisanos/magicflow/h/d$a;

    new-instance v0, Lcom/smartisanos/magicflow/h/d$a;

    const/4 v2, 0x1

    const-string v3, "NO_IMAGE"

    invoke-direct {v0, v3, v2}, Lcom/smartisanos/magicflow/h/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/magicflow/h/d$a;->b:Lcom/smartisanos/magicflow/h/d$a;

    new-instance v0, Lcom/smartisanos/magicflow/h/d$a;

    const/4 v3, 0x2

    const-string v4, "BIG_IMAGE"

    invoke-direct {v0, v4, v3}, Lcom/smartisanos/magicflow/h/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/magicflow/h/d$a;->c:Lcom/smartisanos/magicflow/h/d$a;

    new-instance v0, Lcom/smartisanos/magicflow/h/d$a;

    const/4 v4, 0x3

    const-string v5, "GROUP_IMAGE"

    invoke-direct {v0, v5, v4}, Lcom/smartisanos/magicflow/h/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/magicflow/h/d$a;->d:Lcom/smartisanos/magicflow/h/d$a;

    new-instance v0, Lcom/smartisanos/magicflow/h/d$a;

    const/4 v5, 0x4

    const-string v6, "VIDEO_IMAGE"

    invoke-direct {v0, v6, v5}, Lcom/smartisanos/magicflow/h/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/magicflow/h/d$a;->e:Lcom/smartisanos/magicflow/h/d$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/smartisanos/magicflow/h/d$a;

    sget-object v6, Lcom/smartisanos/magicflow/h/d$a;->a:Lcom/smartisanos/magicflow/h/d$a;

    aput-object v6, v0, v1

    sget-object v1, Lcom/smartisanos/magicflow/h/d$a;->b:Lcom/smartisanos/magicflow/h/d$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/magicflow/h/d$a;->c:Lcom/smartisanos/magicflow/h/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/magicflow/h/d$a;->d:Lcom/smartisanos/magicflow/h/d$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisanos/magicflow/h/d$a;->e:Lcom/smartisanos/magicflow/h/d$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/smartisanos/magicflow/h/d$a;->f:[Lcom/smartisanos/magicflow/h/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/magicflow/h/d$a;
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/h/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/magicflow/h/d$a;

    return-object p0
.end method

.method public static values()[Lcom/smartisanos/magicflow/h/d$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/h/d$a;->f:[Lcom/smartisanos/magicflow/h/d$a;

    invoke-virtual {v0}, [Lcom/smartisanos/magicflow/h/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/magicflow/h/d$a;

    return-object v0
.end method
