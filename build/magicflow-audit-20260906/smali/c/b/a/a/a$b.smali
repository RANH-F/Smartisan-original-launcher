.class final Lc/b/a/a/a$b;
.super Ljava/lang/Thread;
.source "AdNetSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/a/a;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lc/b/a/a/a$b;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/a/a$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lc/b/a/a/a$c;->a(Landroid/content/Context;)Lc/b/a/a/a$c;

    move-result-object v0

    invoke-virtual {v0}, Lc/b/a/a/a$c;->c()V

    .line 2
    iget-object v0, p0, Lc/b/a/a/a$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lc/b/a/a/a$c;->a(Landroid/content/Context;)Lc/b/a/a/a$c;

    iget-object v0, p0, Lc/b/a/a/a$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lc/b/a/a/a$c;->b(Landroid/content/Context;)V

    return-void
.end method
