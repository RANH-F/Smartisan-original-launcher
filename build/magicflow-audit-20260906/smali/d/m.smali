.class public interface abstract Ld/m;
.super Ljava/lang/Object;
.source "CookieJar.java"


# static fields
.field public static final a:Ld/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld/m$a;

    invoke-direct {v0}, Ld/m$a;-><init>()V

    sput-object v0, Ld/m;->a:Ld/m;

    return-void
.end method


# virtual methods
.method public abstract a(Ld/s;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/s;",
            ")",
            "Ljava/util/List<",
            "Ld/l;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ld/s;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/s;",
            "Ljava/util/List<",
            "Ld/l;",
            ">;)V"
        }
    .end annotation
.end method
