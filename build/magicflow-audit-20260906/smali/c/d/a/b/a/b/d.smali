.class public Lc/d/a/b/a/b/d;
.super Ljava/lang/Object;
.source "TableStatements.java"


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private e:Landroid/database/sqlite/SQLiteStatement;

.field private f:Landroid/database/sqlite/SQLiteStatement;

.field private g:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/d/a/b/a/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    iput-object p2, p0, Lc/d/a/b/a/b/d;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lc/d/a/b/a/b/d;->c:[Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lc/d/a/b/a/b/d;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/b/d;->e:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/b/d;->b:Ljava/lang/String;

    iget-object v1, p0, Lc/d/a/b/a/b/d;->c:[Ljava/lang/String;

    const-string v2, "INSERT INTO "

    invoke-static {v2, v0, v1}, Lc/d/a/b/a/j/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lc/d/a/b/a/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lc/d/a/b/a/b/d;->e:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 6
    iput-object v0, p0, Lc/d/a/b/a/b/d;->e:Landroid/database/sqlite/SQLiteStatement;

    .line 7
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, p0, Lc/d/a/b/a/b/d;->e:Landroid/database/sqlite/SQLiteStatement;

    if-eq v1, v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/d/a/b/a/b/d;->e:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public b()Landroid/database/sqlite/SQLiteStatement;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/b/d;->g:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/b/d;->b:Ljava/lang/String;

    iget-object v1, p0, Lc/d/a/b/a/b/d;->d:[Ljava/lang/String;

    invoke-static {v0, v1}, Lc/d/a/b/a/j/f;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lc/d/a/b/a/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lc/d/a/b/a/b/d;->g:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 6
    iput-object v0, p0, Lc/d/a/b/a/b/d;->g:Landroid/database/sqlite/SQLiteStatement;

    .line 7
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, p0, Lc/d/a/b/a/b/d;->g:Landroid/database/sqlite/SQLiteStatement;

    if-eq v1, v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/d/a/b/a/b/d;->g:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public c()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/b/d;->f:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/b/d;->b:Ljava/lang/String;

    iget-object v1, p0, Lc/d/a/b/a/b/d;->c:[Ljava/lang/String;

    iget-object v2, p0, Lc/d/a/b/a/b/d;->d:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc/d/a/b/a/j/f;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lc/d/a/b/a/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lc/d/a/b/a/b/d;->f:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 6
    iput-object v0, p0, Lc/d/a/b/a/b/d;->f:Landroid/database/sqlite/SQLiteStatement;

    .line 7
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, p0, Lc/d/a/b/a/b/d;->f:Landroid/database/sqlite/SQLiteStatement;

    if-eq v1, v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/d/a/b/a/b/d;->f:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method
