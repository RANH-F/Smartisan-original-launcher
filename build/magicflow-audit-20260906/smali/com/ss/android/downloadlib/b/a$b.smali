.class final Lcom/ss/android/downloadlib/b/a$b;
.super Ljava/lang/Object;
.source "DefaultDownloadUIFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/b/a;->a(Lc/d/a/a/a/d/c;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/a/a/d/c;


# direct methods
.method constructor <init>(Lc/d/a/a/a/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/b/a$b;->a:Lc/d/a/a/a/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ss/android/downloadlib/b/a$b;->a:Lc/d/a/a/a/d/c;

    iget-object p2, p2, Lc/d/a/a/a/d/c;->h:Lc/d/a/a/a/d/c$c;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lc/d/a/a/a/d/c$c;->c(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
