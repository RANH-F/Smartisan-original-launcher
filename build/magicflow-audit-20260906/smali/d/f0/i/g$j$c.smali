.class Ld/f0/i/g$j$c;
.super Ld/f0/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/f0/i/g$j;->a(Ld/f0/i/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ld/f0/i/n;

.field final synthetic c:Ld/f0/i/g$j;


# direct methods
.method varargs constructor <init>(Ld/f0/i/g$j;Ljava/lang/String;[Ljava/lang/Object;Ld/f0/i/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/f0/i/g$j$c;->c:Ld/f0/i/g$j;

    iput-object p4, p0, Ld/f0/i/g$j$c;->b:Ld/f0/i/n;

    invoke-direct {p0, p2, p3}, Ld/f0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ld/f0/i/g$j$c;->c:Ld/f0/i/g$j;

    iget-object v0, v0, Ld/f0/i/g$j;->c:Ld/f0/i/g;

    iget-object v0, v0, Ld/f0/i/g;->q:Ld/f0/i/j;

    iget-object v1, p0, Ld/f0/i/g$j$c;->b:Ld/f0/i/n;

    invoke-virtual {v0, v1}, Ld/f0/i/j;->a(Ld/f0/i/n;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
