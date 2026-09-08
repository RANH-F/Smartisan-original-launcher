.class Lc/a/a/o/i/n/j;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"


# instance fields
.field private final a:Lc/a/a/t/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/t/e<",
            "Lc/a/a/o/c;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/a/a/t/e;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lc/a/a/t/e;-><init>(I)V

    iput-object v0, p0, Lc/a/a/o/i/n/j;->a:Lc/a/a/t/e;

    return-void
.end method


# virtual methods
.method public a(Lc/a/a/o/c;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/a/a/o/i/n/j;->a:Lc/a/a/t/e;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/a/a/o/i/n/j;->a:Lc/a/a/t/e;

    invoke-virtual {v1, p1}, Lc/a/a/t/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    :try_start_1
    const-string v0, "SHA-256"

    .line 4
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Lc/a/a/o/c;->a(Ljava/security/MessageDigest;)V

    .line 6
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lc/a/a/t/h;->a([B)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 9
    :goto_0
    iget-object v0, p0, Lc/a/a/o/i/n/j;->a:Lc/a/a/t/e;

    monitor-enter v0

    .line 10
    :try_start_2
    iget-object v2, p0, Lc/a/a/o/i/n/j;->a:Lc/a/a/t/e;

    invoke-virtual {v2, p1, v1}, Lc/a/a/t/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_0
    :goto_1
    return-object v1

    :catchall_1
    move-exception p1

    .line 12
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
