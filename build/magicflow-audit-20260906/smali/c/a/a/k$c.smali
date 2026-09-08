.class public final Lc/a/a/k$c;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/k$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/j/l<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lc/a/a/k;


# direct methods
.method constructor <init>(Lc/a/a/k;Lc/a/a/o/j/l;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/j/l<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/a/a/k$c;->c:Lc/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lc/a/a/k$c;->a:Lc/a/a/o/j/l;

    .line 3
    iput-object p3, p0, Lc/a/a/k$c;->b:Ljava/lang/Class;

    return-void
.end method

.method static synthetic a(Lc/a/a/k$c;)Lc/a/a/o/j/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a/a/k$c;->a:Lc/a/a/o/j/l;

    return-object p0
.end method

.method static synthetic b(Lc/a/a/k$c;)Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a/a/k$c;->b:Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lc/a/a/k$c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lc/a/a/k$c<",
            "TA;TT;>.a;"
        }
    .end annotation

    .line 2
    new-instance v0, Lc/a/a/k$c$a;

    invoke-direct {v0, p0, p1}, Lc/a/a/k$c$a;-><init>(Lc/a/a/k$c;Ljava/lang/Object;)V

    return-object v0
.end method
