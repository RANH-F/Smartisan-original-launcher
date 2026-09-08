.class Lc/b/a/a/a$c$b;
.super Ljava/lang/Thread;
.source "AppConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/a/a$c;->b(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lc/b/a/a/a$c;


# direct methods
.method constructor <init>(Lc/b/a/a/a$c;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/a/a$c$b;->b:Lc/b/a/a/a$c;

    iput-boolean p3, p0, Lc/b/a/a/a$c$b;->a:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/a/a$c$b;->b:Lc/b/a/a/a$c;

    iget-boolean v1, p0, Lc/b/a/a/a$c$b;->a:Z

    invoke-virtual {v0, v1}, Lc/b/a/a/a$c;->c(Z)V

    return-void
.end method
