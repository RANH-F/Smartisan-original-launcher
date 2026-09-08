.class public Lc/d/a/b/a/d/b;
.super Lc/d/a/b/a/d/a;
.source "DownloadFileExistException.java"


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/d/a/b/a/d/a;-><init>()V

    .line 2
    iput-object p1, p0, Lc/d/a/b/a/d/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/d/b;->c:Ljava/lang/String;

    return-object v0
.end method
