.class Lc/b/a/a/a$c$a;
.super Ljava/lang/Thread;
.source "AppConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/a/a$c;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/b/a/a/a$c;


# direct methods
.method constructor <init>(Lc/b/a/a/a$c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/a/a$c$a;->a:Lc/b/a/a/a$c;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/a/a$c$a;->a:Lc/b/a/a/a$c;

    invoke-virtual {v0}, Lc/b/a/a/a$c;->b()V

    return-void
.end method
