.class public Lcom/ss/android/downloadlib/d$e;
.super Lcom/ss/android/socialbase/appdownloader/c$d;
.source "NewDownloadDepend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/d$e$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "d$e"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/c$d;-><init>()V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/d$e;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/ss/android/socialbase/appdownloader/c$l;
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/android/downloadlib/d$e$a;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/downloadlib/d$e$a;-><init>(Lcom/ss/android/downloadlib/d$e;Landroid/content/Context;)V

    return-object v0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/e/h;->a()Z

    move-result v0

    return v0
.end method
