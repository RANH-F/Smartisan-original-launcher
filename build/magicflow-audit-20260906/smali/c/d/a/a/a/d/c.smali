.class public Lc/d/a/a/a/d/c;
.super Ljava/lang/Object;
.source "DownloadAlertDialogInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/a/a/d/c$c;,
        Lc/d/a/a/a/d/c$b;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Lc/d/a/a/a/d/c$c;

.field public i:I


# direct methods
.method private constructor <init>(Lc/d/a/a/a/d/c$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/d/a/a/a/d/c;->f:Z

    .line 4
    invoke-static {p1}, Lc/d/a/a/a/d/c$b;->a(Lc/d/a/a/a/d/c$b;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/d/c;->a:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lc/d/a/a/a/d/c$b;->b(Lc/d/a/a/a/d/c$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/d/c;->b:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lc/d/a/a/a/d/c$b;->c(Lc/d/a/a/a/d/c$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/d/c;->c:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lc/d/a/a/a/d/c$b;->d(Lc/d/a/a/a/d/c$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/d/c;->d:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lc/d/a/a/a/d/c$b;->e(Lc/d/a/a/a/d/c$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/d/c;->e:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lc/d/a/a/a/d/c$b;->f(Lc/d/a/a/a/d/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/a/a/d/c;->f:Z

    .line 10
    invoke-static {p1}, Lc/d/a/a/a/d/c$b;->g(Lc/d/a/a/a/d/c$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/d/c;->g:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-static {p1}, Lc/d/a/a/a/d/c$b;->h(Lc/d/a/a/a/d/c$b;)Lc/d/a/a/a/d/c$c;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/d/c;->h:Lc/d/a/a/a/d/c$c;

    .line 12
    iget-object v0, p1, Lc/d/a/a/a/d/c$b;->i:Landroid/view/View;

    .line 13
    iget p1, p1, Lc/d/a/a/a/d/c$b;->j:I

    iput p1, p0, Lc/d/a/a/a/d/c;->i:I

    return-void
.end method

.method synthetic constructor <init>(Lc/d/a/a/a/d/c$b;Lc/d/a/a/a/d/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/d/a/a/a/d/c;-><init>(Lc/d/a/a/a/d/c$b;)V

    return-void
.end method
