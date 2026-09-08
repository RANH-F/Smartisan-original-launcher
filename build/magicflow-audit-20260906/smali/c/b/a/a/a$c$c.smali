.class Lc/b/a/a/a$c$c;
.super Ljava/lang/Object;
.source "AppConfig.java"

# interfaces
.implements Lc/b/a/a/d/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/a/a$c;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/a/d/p$a<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lc/b/a/a/a$c;


# direct methods
.method constructor <init>(Lc/b/a/a/a$c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/a/a$c$c;->b:Lc/b/a/a/a$c;

    iput p2, p0, Lc/b/a/a/a$c$c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/a/d/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lc/b/a/a/a$c$c;->b:Lc/b/a/a/a$c;

    iget v0, p0, Lc/b/a/a/a$c$c;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lc/b/a/a/a$c;->a(Lc/b/a/a/a$c;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "message"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v1, "success"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Lc/b/a/a/a$c$c;->b:Lc/b/a/a/a$c;

    iget v0, p0, Lc/b/a/a/a$c$c;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lc/b/a/a/a$c;->a(Lc/b/a/a/a$c;I)V

    return-void

    .line 6
    :cond_1
    :try_start_1
    iget-object v0, p0, Lc/b/a/a/a$c$c;->b:Lc/b/a/a/a$c;

    invoke-static {v0, p1}, Lc/b/a/a/a$c;->a(Lc/b/a/a/a$c;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lc/b/a/a/a$c$c;->b:Lc/b/a/a/a$c;

    const/16 v0, 0x65

    invoke-static {p1, v0}, Lc/b/a/a/a$c;->b(Lc/b/a/a/a$c;I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lc/b/a/a/a$c$c;->b:Lc/b/a/a/a$c;

    iget v0, p0, Lc/b/a/a/a$c$c;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lc/b/a/a/a$c;->a(Lc/b/a/a/a$c;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method public b(Lc/b/a/a/d/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lc/b/a/a/a$c$c;->b:Lc/b/a/a/a$c;

    iget v0, p0, Lc/b/a/a/a$c$c;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lc/b/a/a/a$c;->a(Lc/b/a/a/a$c;I)V

    return-void
.end method
