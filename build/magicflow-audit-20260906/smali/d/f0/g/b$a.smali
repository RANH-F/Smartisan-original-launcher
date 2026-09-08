.class final Ld/f0/g/b$a;
.super Le/g;
.source "CallServerInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/f0/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field b:J


# direct methods
.method constructor <init>(Le/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/g;-><init>(Le/r;)V

    return-void
.end method


# virtual methods
.method public b(Le/c;J)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Le/g;->b(Le/c;J)V

    .line 2
    iget-wide v0, p0, Ld/f0/g/b$a;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Ld/f0/g/b$a;->b:J

    return-void
.end method
