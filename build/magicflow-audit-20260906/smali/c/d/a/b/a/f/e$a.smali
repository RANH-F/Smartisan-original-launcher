.class final Lc/d/a/b/a/f/e$a;
.super Ljava/lang/Object;
.source "HttpHeader.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/a/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lc/d/a/b/a/f/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lc/d/a/b/a/f/e;
    .locals 1

    .line 1
    new-instance v0, Lc/d/a/b/a/f/e;

    invoke-direct {v0, p1}, Lc/d/a/b/a/f/e;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lc/d/a/b/a/f/e;
    .locals 0

    .line 2
    new-array p1, p1, [Lc/d/a/b/a/f/e;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/b/a/f/e$a;->a(Landroid/os/Parcel;)Lc/d/a/b/a/f/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/b/a/f/e$a;->a(I)[Lc/d/a/b/a/f/e;

    move-result-object p1

    return-object p1
.end method
