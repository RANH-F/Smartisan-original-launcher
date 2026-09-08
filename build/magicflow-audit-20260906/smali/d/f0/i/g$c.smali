.class Ld/f0/i/g$c;
.super Ld/f0/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/f0/i/g;->b(ZIILd/f0/i/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ld/f0/i/l;

.field final synthetic f:Ld/f0/i/g;


# direct methods
.method varargs constructor <init>(Ld/f0/i/g;Ljava/lang/String;[Ljava/lang/Object;ZIILd/f0/i/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/f0/i/g$c;->f:Ld/f0/i/g;

    iput-boolean p4, p0, Ld/f0/i/g$c;->b:Z

    iput p5, p0, Ld/f0/i/g$c;->c:I

    iput p6, p0, Ld/f0/i/g$c;->d:I

    iput-object p7, p0, Ld/f0/i/g$c;->e:Ld/f0/i/l;

    invoke-direct {p0, p2, p3}, Ld/f0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Ld/f0/i/g$c;->f:Ld/f0/i/g;

    iget-boolean v1, p0, Ld/f0/i/g$c;->b:Z

    iget v2, p0, Ld/f0/i/g$c;->c:I

    iget v3, p0, Ld/f0/i/g$c;->d:I

    iget-object v4, p0, Ld/f0/i/g$c;->e:Ld/f0/i/l;

    invoke-virtual {v0, v1, v2, v3, v4}, Ld/f0/i/g;->a(ZIILd/f0/i/l;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
