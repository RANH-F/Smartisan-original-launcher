.class Lc/a/a/o/k/h/g$a;
.super Ljava/lang/Object;
.source "GifFrameModelLoader.java"

# interfaces
.implements Lc/a/a/o/h/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/k/h/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/h/c<",
        "Lc/a/a/m/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/m/a;


# direct methods
.method public constructor <init>(Lc/a/a/m/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/o/k/h/g$a;->a:Lc/a/a/m/a;

    return-void
.end method


# virtual methods
.method public a(Lc/a/a/j;)Lc/a/a/m/a;
    .locals 0

    .line 2
    iget-object p1, p0, Lc/a/a/o/k/h/g$a;->a:Lc/a/a/m/a;

    return-object p1
.end method

.method public bridge synthetic a(Lc/a/a/j;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/a/a/o/k/h/g$a;->a(Lc/a/a/j;)Lc/a/a/m/a;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/h/g$a;->a:Lc/a/a/m/a;

    invoke-virtual {v0}, Lc/a/a/m/a;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
