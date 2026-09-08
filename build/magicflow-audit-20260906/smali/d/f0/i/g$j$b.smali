.class Ld/f0/i/g$j$b;
.super Ld/f0/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/f0/i/g$j;->a(ZLd/f0/i/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ld/f0/i/g$j;


# direct methods
.method varargs constructor <init>(Ld/f0/i/g$j;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/f0/i/g$j$b;->b:Ld/f0/i/g$j;

    invoke-direct {p0, p2, p3}, Ld/f0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/f0/i/g$j$b;->b:Ld/f0/i/g$j;

    iget-object v0, v0, Ld/f0/i/g$j;->c:Ld/f0/i/g;

    iget-object v1, v0, Ld/f0/i/g;->b:Ld/f0/i/g$i;

    invoke-virtual {v1, v0}, Ld/f0/i/g$i;->a(Ld/f0/i/g;)V

    return-void
.end method
