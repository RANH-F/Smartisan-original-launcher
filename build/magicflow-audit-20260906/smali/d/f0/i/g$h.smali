.class public Ld/f0/i/g$h;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/f0/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field a:Ljava/net/Socket;

.field b:Ljava/lang/String;

.field c:Le/e;

.field d:Le/d;

.field e:Ld/f0/i/g$i;

.field f:Ld/f0/i/m;

.field g:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ld/f0/i/g$i;->a:Ld/f0/i/g$i;

    iput-object v0, p0, Ld/f0/i/g$h;->e:Ld/f0/i/g$i;

    .line 3
    sget-object v0, Ld/f0/i/m;->a:Ld/f0/i/m;

    iput-object v0, p0, Ld/f0/i/g$h;->f:Ld/f0/i/m;

    .line 4
    iput-boolean p1, p0, Ld/f0/i/g$h;->g:Z

    return-void
.end method


# virtual methods
.method public a(Ld/f0/i/g$i;)Ld/f0/i/g$h;
    .locals 0

    .line 5
    iput-object p1, p0, Ld/f0/i/g$h;->e:Ld/f0/i/g$i;

    return-object p0
.end method

.method public a(Ljava/net/Socket;Ljava/lang/String;Le/e;Le/d;)Ld/f0/i/g$h;
    .locals 0

    .line 1
    iput-object p1, p0, Ld/f0/i/g$h;->a:Ljava/net/Socket;

    .line 2
    iput-object p2, p0, Ld/f0/i/g$h;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Ld/f0/i/g$h;->c:Le/e;

    .line 4
    iput-object p4, p0, Ld/f0/i/g$h;->d:Le/d;

    return-object p0
.end method

.method public a()Ld/f0/i/g;
    .locals 1

    .line 6
    new-instance v0, Ld/f0/i/g;

    invoke-direct {v0, p0}, Ld/f0/i/g;-><init>(Ld/f0/i/g$h;)V

    return-object v0
.end method
