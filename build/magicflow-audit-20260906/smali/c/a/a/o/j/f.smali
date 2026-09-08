.class public Lc/a/a/o/j/f;
.super Ljava/lang/Object;
.source "ImageVideoModelLoader.java"

# interfaces
.implements Lc/a/a/o/j/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/j/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/a/a/o/j/l<",
        "TA;",
        "Lc/a/a/o/j/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/j/l<",
            "TA;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/a/a/o/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/j/l<",
            "TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/a/a/o/j/l;Lc/a/a/o/j/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/j/l<",
            "TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lc/a/a/o/j/l<",
            "TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "At least one of streamLoader and fileDescriptorLoader must be non null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Lc/a/a/o/j/f;->a:Lc/a/a/o/j/l;

    .line 4
    iput-object p2, p0, Lc/a/a/o/j/f;->b:Lc/a/a/o/j/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Lc/a/a/o/h/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lc/a/a/o/h/c<",
            "Lc/a/a/o/j/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/j/f;->a:Lc/a/a/o/j/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lc/a/a/o/j/l;->a(Ljava/lang/Object;II)Lc/a/a/o/h/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Lc/a/a/o/j/f;->b:Lc/a/a/o/j/l;

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v2, p1, p2, p3}, Lc/a/a/o/j/l;->a(Ljava/lang/Object;II)Lc/a/a/o/h/c;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return-object v1

    .line 5
    :cond_3
    :goto_2
    new-instance p2, Lc/a/a/o/j/f$a;

    invoke-direct {p2, v0, p1}, Lc/a/a/o/j/f$a;-><init>(Lc/a/a/o/h/c;Lc/a/a/o/h/c;)V

    return-object p2
.end method
