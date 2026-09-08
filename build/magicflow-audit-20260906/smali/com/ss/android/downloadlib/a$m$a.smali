.class Lcom/ss/android/downloadlib/a$m$a;
.super Ljava/lang/Object;
.source "CommonDownloadHandler.java"

# interfaces
.implements Lc/d/a/a/a/a/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a$m;->f(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/a$m;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a$m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$m$a;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/a$m;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "performButtonClickWithNewDownloader start download"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m$a;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$m;->a(Lcom/ss/android/downloadlib/a$m;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/ss/android/downloadlib/a$m;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "performButtonClickWithNewDownloader onDenied"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
