.class Lc/d/a/b/a/b/c$e;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/b/c;->a(ILandroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/ContentValues;

.field final synthetic c:Lc/d/a/b/a/b/c;


# direct methods
.method constructor <init>(Lc/d/a/b/a/b/c;ILandroid/content/ContentValues;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/b/c$e;->c:Lc/d/a/b/a/b/c;

    iput p2, p0, Lc/d/a/b/a/b/c$e;->a:I

    iput-object p3, p0, Lc/d/a/b/a/b/c$e;->b:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/b/c$e;->c:Lc/d/a/b/a/b/c;

    iget v1, p0, Lc/d/a/b/a/b/c$e;->a:I

    iget-object v2, p0, Lc/d/a/b/a/b/c$e;->b:Landroid/content/ContentValues;

    invoke-static {v0, v1, v2}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/b/c;ILandroid/content/ContentValues;)V

    return-void
.end method
