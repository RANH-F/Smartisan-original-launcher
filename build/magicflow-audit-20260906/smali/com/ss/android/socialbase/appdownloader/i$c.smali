.class final Lcom/ss/android/socialbase/appdownloader/i$c;
.super Ljava/lang/Object;
.source "NotificationPermissionHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c$n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/ss/android/socialbase/appdownloader/c$n;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c$n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/i$c;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/i$c;->b:Lcom/ss/android/socialbase/appdownloader/c$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/ss/android/socialbase/appdownloader/i$c;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/i$c;->b:Lcom/ss/android/socialbase/appdownloader/c$n;

    invoke-static {p2, v0}, Lcom/ss/android/socialbase/appdownloader/i;->b(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c$n;)V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
