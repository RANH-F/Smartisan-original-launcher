.class public Lc/a/a/o/i/c$c;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Lc/a/a/o/i/d;

.field private final b:Lc/a/a/r/e;


# direct methods
.method public constructor <init>(Lc/a/a/r/e;Lc/a/a/o/i/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/o/i/c$c;->b:Lc/a/a/r/e;

    .line 3
    iput-object p2, p0, Lc/a/a/o/i/c$c;->a:Lc/a/a/o/i/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/o/i/c$c;->a:Lc/a/a/o/i/d;

    iget-object v1, p0, Lc/a/a/o/i/c$c;->b:Lc/a/a/r/e;

    invoke-virtual {v0, v1}, Lc/a/a/o/i/d;->b(Lc/a/a/r/e;)V

    return-void
.end method
