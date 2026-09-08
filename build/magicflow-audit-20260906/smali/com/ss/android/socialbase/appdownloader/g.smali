.class public Lcom/ss/android/socialbase/appdownloader/g;
.super Ljava/lang/Object;
.source "DevicesUtils.java"


# static fields
.field private static a:Z = false

.field private static b:Z = false


# direct methods
.method public static a()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/ss/android/socialbase/appdownloader/g;->b:Z

    if-nez v0, :cond_1

    const-string v0, "miui.os.Build"

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sput-boolean v1, Lcom/ss/android/socialbase/appdownloader/g;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    :cond_0
    sput-boolean v1, Lcom/ss/android/socialbase/appdownloader/g;->b:Z

    .line 5
    :cond_1
    sget-boolean v0, Lcom/ss/android/socialbase/appdownloader/g;->a:Z

    return v0
.end method
