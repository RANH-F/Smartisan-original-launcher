.class final Ld/b0$a;
.super Ld/b0;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b0;->a(Ld/u;JLe/e;)Ld/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/u;

.field final synthetic b:J

.field final synthetic c:Le/e;


# direct methods
.method constructor <init>(Ld/u;JLe/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b0$a;->a:Ld/u;

    iput-wide p2, p0, Ld/b0$a;->b:J

    iput-object p4, p0, Ld/b0$a;->c:Le/e;

    invoke-direct {p0}, Ld/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ld/b0$a;->b:J

    return-wide v0
.end method

.method public l()Ld/u;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b0$a;->a:Ld/u;

    return-object v0
.end method

.method public m()Le/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b0$a;->c:Le/e;

    return-object v0
.end method
