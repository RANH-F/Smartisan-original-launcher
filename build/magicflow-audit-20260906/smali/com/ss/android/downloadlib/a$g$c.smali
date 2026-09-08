.class public Lcom/ss/android/downloadlib/a$g$c;
.super Ljava/lang/Exception;
.source "OpenAppException.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/a$g$c;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/downloadlib/a$g$c;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 4
    iput p1, p0, Lcom/ss/android/downloadlib/a$g$c;->a:I

    .line 5
    iput p2, p0, Lcom/ss/android/downloadlib/a$g$c;->b:I

    .line 6
    iput-object p3, p0, Lcom/ss/android/downloadlib/a$g$c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadlib/a$g$c;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadlib/a$g$c;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$g$c;->c:Ljava/lang/String;

    return-object v0
.end method
