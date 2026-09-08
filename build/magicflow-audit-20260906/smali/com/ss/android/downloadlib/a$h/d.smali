.class public Lcom/ss/android/downloadlib/a$h/d;
.super Ljava/lang/Object;
.source "DownloadInstallInfo.java"


# static fields
.field public static b:I = 0x0

.field public static c:I = 0x1

.field public static d:I = 0x2


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/ss/android/downloadlib/a$h/d;->b:I

    iput v0, p0, Lcom/ss/android/downloadlib/a$h/d;->a:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/ss/android/downloadlib/a$h/d;
    .locals 0

    .line 2
    iput p1, p0, Lcom/ss/android/downloadlib/a$h/d;->a:I

    return-object p0
.end method

.method public a()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/android/downloadlib/a$h/d;->a:I

    sget v1, Lcom/ss/android/downloadlib/a$h/d;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
