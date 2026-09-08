.class public Lc/d/a/a/a/d/d;
.super Ljava/lang/Object;
.source "DownloadEventModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/a/a/d/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:J

.field private final f:Ljava/lang/String;

.field private final g:J

.field private final h:Lorg/json/JSONObject;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:I

.field private final k:Ljava/lang/Object;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lc/d/a/a/a/d/d$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lc/d/a/a/a/d/d$a;->a(Lc/d/a/a/a/d/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/d/d;->a:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lc/d/a/a/a/d/d$a;->b(Lc/d/a/a/a/d/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/d/d;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lc/d/a/a/a/d/d$a;->c(Lc/d/a/a/a/d/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/d/d;->c:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lc/d/a/a/a/d/d$a;->d(Lc/d/a/a/a/d/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/a/a/d/d;->d:Z

    .line 6
    invoke-static {p1}, Lc/d/a/a/a/d/d$a;->e(Lc/d/a/a/a/d/d$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lc/d/a/a/a/d/d;->e:J

    .line 7
    invoke-static {p1}, Lc/d/a/a/a/d/d$a;->f(Lc/d/a/a/a/d/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/d/d;->f:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lc/d/a/a/a/d/d$a;->g(Lc/d/a/a/a/d/d$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lc/d/a/a/a/d/d;->g:J

    .line 9
    invoke-static {p1}, Lc/d/a/a/a/d/d$a;->h(Lc/d/a/a/a/d/d$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/d/d;->h:Lorg/json/JSONObject;

    .line 10
    invoke-static {p1}, Lc/d/a/a/a/d/d$a;->i(Lc/d/a/a/a/d/d$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/d/d;->i:Ljava/util/List;

    .line 11
    invoke-static {p1}, Lc/d/a/a/a/d/d$a;->j(Lc/d/a/a/a/d/d$a;)I

    move-result v0

    iput v0, p0, Lc/d/a/a/a/d/d;->j:I

    .line 12
    invoke-static {p1}, Lc/d/a/a/a/d/d$a;->k(Lc/d/a/a/a/d/d$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/d/d;->k:Ljava/lang/Object;

    .line 13
    invoke-static {p1}, Lc/d/a/a/a/d/d$a;->l(Lc/d/a/a/a/d/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/a/a/d/d;->l:Z

    .line 14
    invoke-static {p1}, Lc/d/a/a/a/d/d$a;->m(Lc/d/a/a/a/d/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/a/a/d/d;->m:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lc/d/a/a/a/d/d$a;->n(Lc/d/a/a/a/d/d$a;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/a/a/d/d;->n:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/a/a/d/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/a/a/d/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/a/a/d/d;->d:Z

    return v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/a/a/d/d;->h:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/a/a/d/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ntag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/a/a/d/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nlabel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/a/a/d/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  <------------------\nisAd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/d/a/a/a/d/d;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/d/a/a/a/d/d;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nlogExtra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/a/a/d/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nextValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/d/a/a/a/d/d;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nextJson: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/a/a/d/d;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nclickTrackUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/a/a/d/d;->i:Ljava/util/List;

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\neventSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/d/a/a/a/d/d;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nextraObject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/a/a/d/d;->k:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nisV3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/d/a/a/a/d/d;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nV3EventName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/a/a/d/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nV3EventParams"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/a/a/d/d;->n:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
