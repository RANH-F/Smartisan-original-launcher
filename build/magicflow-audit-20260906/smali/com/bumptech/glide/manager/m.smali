.class public Lcom/bumptech/glide/manager/m;
.super Landroid/support/v4/app/Fragment;
.source "SupportRequestManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/m$b;
    }
.end annotation


# instance fields
.field private a:Lc/a/a/k;

.field private final b:Lcom/bumptech/glide/manager/a;

.field private final c:Lcom/bumptech/glide/manager/k;

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/bumptech/glide/manager/m;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/bumptech/glide/manager/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/manager/a;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/m;-><init>(Lcom/bumptech/glide/manager/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/a;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 3
    new-instance v0, Lcom/bumptech/glide/manager/m$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/manager/m$b;-><init>(Lcom/bumptech/glide/manager/m;Lcom/bumptech/glide/manager/m$a;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/m;->c:Lcom/bumptech/glide/manager/k;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/m;->d:Ljava/util/HashSet;

    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/manager/m;->b:Lcom/bumptech/glide/manager/a;

    return-void
.end method

.method private a(Lcom/bumptech/glide/manager/m;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/manager/m;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lcom/bumptech/glide/manager/m;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/manager/m;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Lc/a/a/k;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/manager/m;->a:Lc/a/a/k;

    return-object v0
.end method

.method public a(Lc/a/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/manager/m;->a:Lc/a/a/k;

    return-void
.end method

.method public b()Lcom/bumptech/glide/manager/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/m;->c:Lcom/bumptech/glide/manager/k;

    return-object v0
.end method

.method getLifecycle()Lcom/bumptech/glide/manager/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/m;->b:Lcom/bumptech/glide/manager/a;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    invoke-static {}, Lcom/bumptech/glide/manager/j;->a()Lcom/bumptech/glide/manager/j;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/manager/j;->a(Landroid/support/v4/app/FragmentManager;)Lcom/bumptech/glide/manager/m;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/manager/m;->e:Lcom/bumptech/glide/manager/m;

    .line 3
    iget-object p1, p0, Lcom/bumptech/glide/manager/m;->e:Lcom/bumptech/glide/manager/m;

    if-eq p1, p0, :cond_0

    .line 4
    invoke-direct {p1, p0}, Lcom/bumptech/glide/manager/m;->a(Lcom/bumptech/glide/manager/m;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/manager/m;->b:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->a()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/manager/m;->e:Lcom/bumptech/glide/manager/m;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/m;->b(Lcom/bumptech/glide/manager/m;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/bumptech/glide/manager/m;->e:Lcom/bumptech/glide/manager/m;

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/manager/m;->a:Lc/a/a/k;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lc/a/a/k;->b()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/manager/m;->b:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->b()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/manager/m;->b:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->c()V

    return-void
.end method
