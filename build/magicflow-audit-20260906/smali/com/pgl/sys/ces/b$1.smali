.class Lcom/pgl/sys/ces/b$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgl/sys/ces/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pgl/sys/ces/b;


# direct methods
.method constructor <init>(Lcom/pgl/sys/ces/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pgl/sys/ces/b$1;->a:Lcom/pgl/sys/ces/b;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/pgl/sys/ces/d;->a:I

    iget-object v0, p0, Lcom/pgl/sys/ces/b$1;->a:Lcom/pgl/sys/ces/b;

    iget-object v0, v0, Lcom/pgl/sys/ces/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/sys/ces/d;->a(Landroid/content/Context;)V

    return-void
.end method
