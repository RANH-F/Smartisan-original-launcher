.class synthetic Landroid/support/constraint/b/j/f$a;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/b/j/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/support/constraint/b/j/f$b;->values()[Landroid/support/constraint/b/j/f$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/support/constraint/b/j/f$a;->b:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Landroid/support/constraint/b/j/f$a;->b:[I

    sget-object v2, Landroid/support/constraint/b/j/f$b;->a:Landroid/support/constraint/b/j/f$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Landroid/support/constraint/b/j/f$a;->b:[I

    sget-object v3, Landroid/support/constraint/b/j/f$b;->b:Landroid/support/constraint/b/j/f$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Landroid/support/constraint/b/j/f$a;->b:[I

    sget-object v4, Landroid/support/constraint/b/j/f$b;->d:Landroid/support/constraint/b/j/f$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Landroid/support/constraint/b/j/f$a;->b:[I

    sget-object v5, Landroid/support/constraint/b/j/f$b;->c:Landroid/support/constraint/b/j/f$b;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 2
    :catch_3
    invoke-static {}, Landroid/support/constraint/b/j/e$d;->values()[Landroid/support/constraint/b/j/e$d;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Landroid/support/constraint/b/j/f$a;->a:[I

    :try_start_4
    sget-object v4, Landroid/support/constraint/b/j/f$a;->a:[I

    sget-object v5, Landroid/support/constraint/b/j/e$d;->b:Landroid/support/constraint/b/j/e$d;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Landroid/support/constraint/b/j/f$a;->a:[I

    sget-object v4, Landroid/support/constraint/b/j/e$d;->c:Landroid/support/constraint/b/j/e$d;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Landroid/support/constraint/b/j/f$a;->a:[I

    sget-object v1, Landroid/support/constraint/b/j/e$d;->d:Landroid/support/constraint/b/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Landroid/support/constraint/b/j/f$a;->a:[I

    sget-object v1, Landroid/support/constraint/b/j/e$d;->e:Landroid/support/constraint/b/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Landroid/support/constraint/b/j/f$a;->a:[I

    sget-object v1, Landroid/support/constraint/b/j/e$d;->f:Landroid/support/constraint/b/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Landroid/support/constraint/b/j/f$a;->a:[I

    sget-object v1, Landroid/support/constraint/b/j/e$d;->g:Landroid/support/constraint/b/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Landroid/support/constraint/b/j/f$a;->a:[I

    sget-object v1, Landroid/support/constraint/b/j/e$d;->h:Landroid/support/constraint/b/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Landroid/support/constraint/b/j/f$a;->a:[I

    sget-object v1, Landroid/support/constraint/b/j/e$d;->i:Landroid/support/constraint/b/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Landroid/support/constraint/b/j/f$a;->a:[I

    sget-object v1, Landroid/support/constraint/b/j/e$d;->a:Landroid/support/constraint/b/j/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method
