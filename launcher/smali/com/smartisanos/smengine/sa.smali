.class public Lcom/smartisanos/smengine/sa;
.super Ljava/lang/Object;
.source "Shader.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private AS:Lcom/smartisanos/smengine/qa;

.field private mName:Ljava/lang/String;

.field private mProgram:I

.field private mContextGeneration:I

.field private tS:Ljava/lang/String;

.field private uS:Ljava/lang/String;

.field private vS:[Lcom/smartisanos/smengine/ra;

.field private wS:I

.field private xS:[Lcom/smartisanos/smengine/ra;

.field private yS:I

.field private zS:Lcom/smartisanos/smengine/ra;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/sa;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/sa;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/smartisanos/smengine/ra;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/smengine/sa;->vS:[Lcom/smartisanos/smengine/ra;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/smartisanos/smengine/sa;->wS:I

    const/16 v1, 0x14

    new-array v1, v1, [Lcom/smartisanos/smengine/ra;

    .line 4
    iput-object v1, p0, Lcom/smartisanos/smengine/sa;->xS:[Lcom/smartisanos/smengine/ra;

    .line 5
    iput v0, p0, Lcom/smartisanos/smengine/sa;->yS:I

    .line 6
    new-instance v0, Lcom/smartisanos/smengine/ra;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/ra;-><init>(Lcom/smartisanos/smengine/pa;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/sa;->zS:Lcom/smartisanos/smengine/ra;

    .line 7
    new-instance v0, Lcom/smartisanos/smengine/qa;

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/smengine/qa;-><init>(Lcom/smartisanos/smengine/sa;Lcom/smartisanos/smengine/pa;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/sa;->AS:Lcom/smartisanos/smengine/qa;

    .line 8
    iput-object p1, p0, Lcom/smartisanos/smengine/sa;->mName:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/smartisanos/smengine/sa;->tS:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/smartisanos/smengine/sa;->uS:Ljava/lang/String;

    return-void
.end method

.method private _z()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/sa;->tS:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/smartisanos/smengine/sa;->uS:Ljava/lang/String;

    const v2, 0x8b31

    .line 3
    invoke-direct {p0, v2, v0}, Lcom/smartisanos/smengine/sa;->i(ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const v3, 0x8b30

    .line 4
    invoke-direct {p0, v3, v1}, Lcom/smartisanos/smengine/sa;->i(ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    return v2

    .line 5
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/P;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {v1, v0}, Lcom/smartisanos/smengine/P;->glAttachShader(II)V

    const-string v3, "glAttachShader"

    .line 7
    invoke-static {v3}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 8
    invoke-static {v1, p0}, Lcom/smartisanos/smengine/P;->glAttachShader(II)V

    .line 9
    invoke-static {v3}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 10
    invoke-static {v1}, Lcom/smartisanos/smengine/P;->glLinkProgram(I)V

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x8b82

    .line 11
    invoke-static {v1, v5, v4, v2}, Lcom/smartisanos/smengine/P;->glGetProgramiv(II[II)V

    .line 12
    aget v4, v4, v2

    if-eq v4, v3, :cond_2

    .line 13
    sget-object v3, Lcom/smartisanos/smengine/sa;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "Could not link program: "

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 14
    sget-object v3, Lcom/smartisanos/smengine/sa;->log:Lcom/smartisanos/launcher/va;

    invoke-static {v1}, Lcom/smartisanos/smengine/P;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 15
    invoke-static {v1}, Lcom/smartisanos/smengine/P;->glDeleteProgram(I)V

    move v1, v2

    .line 16
    :cond_2
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glDeleteShader(I)V

    .line 17
    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glDeleteShader(I)V

    return v1
.end method

.method private a([Lcom/smartisanos/smengine/ra;ILjava/lang/String;)Lcom/smartisanos/smengine/ra;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/sa;->zS:Lcom/smartisanos/smengine/ra;

    iput-object p3, v1, Lcom/smartisanos/smengine/ra;->mName:Ljava/lang/String;

    const/4 p3, 0x0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/sa;->AS:Lcom/smartisanos/smengine/qa;

    invoke-static {p1, p3, p2, v1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-ltz p0, :cond_1

    .line 3
    aget-object p0, p1, p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private i(ILjava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/smartisanos/smengine/P;->glCreateShader(I)I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2
    invoke-static {p0, p2}, Lcom/smartisanos/smengine/P;->glShaderSource(ILjava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v1, 0x8b81

    .line 4
    invoke-static {p0, v1, p2, v0}, Lcom/smartisanos/smengine/P;->glGetShaderiv(II[II)V

    .line 5
    aget p2, p2, v0

    if-nez p2, :cond_1

    .line 6
    sget-object p2, Lcom/smartisanos/smengine/sa;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile shader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcom/smartisanos/smengine/sa;->log:Lcom/smartisanos/launcher/va;

    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-nez p1, :cond_0

    .line 9
    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glDeleteShader(I)V

    move p0, v0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "glCompileShader error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return p0
.end method

.method private r(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/ra;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/ra;-><init>(Lcom/smartisanos/smengine/pa;)V

    .line 2
    iput-object p1, v0, Lcom/smartisanos/smengine/ra;->mName:Ljava/lang/String;

    .line 3
    iput p2, v0, Lcom/smartisanos/smengine/ra;->mLocation:I

    .line 4
    iget-object p1, p0, Lcom/smartisanos/smengine/sa;->xS:[Lcom/smartisanos/smengine/ra;

    iget p2, p0, Lcom/smartisanos/smengine/sa;->yS:I

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 5
    iput p2, p0, Lcom/smartisanos/smengine/sa;->yS:I

    .line 6
    iget p2, p0, Lcom/smartisanos/smengine/sa;->yS:I

    iget-object p0, p0, Lcom/smartisanos/smengine/sa;->AS:Lcom/smartisanos/smengine/qa;

    invoke-static {p1, p2, p0}, Lcom/smartisanos/smengine/d/b;->a([Ljava/lang/Object;ILjava/util/Comparator;)V

    return-void
.end method

.method private s(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/ra;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/ra;-><init>(Lcom/smartisanos/smengine/pa;)V

    .line 2
    iput-object p1, v0, Lcom/smartisanos/smengine/ra;->mName:Ljava/lang/String;

    .line 3
    iput p2, v0, Lcom/smartisanos/smengine/ra;->mLocation:I

    .line 4
    iget-object p1, p0, Lcom/smartisanos/smengine/sa;->vS:[Lcom/smartisanos/smengine/ra;

    iget p2, p0, Lcom/smartisanos/smengine/sa;->wS:I

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 5
    iput p2, p0, Lcom/smartisanos/smengine/sa;->wS:I

    .line 6
    iget p2, p0, Lcom/smartisanos/smengine/sa;->wS:I

    iget-object p0, p0, Lcom/smartisanos/smengine/sa;->AS:Lcom/smartisanos/smengine/qa;

    invoke-static {p1, p2, p0}, Lcom/smartisanos/smengine/d/b;->a([Ljava/lang/Object;ILjava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public As()V
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/sa;->mProgram:I

    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glUseProgram(I)V

    return-void
.end method

.method public Va(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/sa;->xS:[Lcom/smartisanos/smengine/ra;

    iget v1, p0, Lcom/smartisanos/smengine/sa;->yS:I

    invoke-direct {p0, v0, v1, p1}, Lcom/smartisanos/smengine/sa;->a([Lcom/smartisanos/smengine/ra;ILjava/lang/String;)Lcom/smartisanos/smengine/ra;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2
    iget v0, p0, Lcom/smartisanos/smengine/sa;->mProgram:I

    invoke-static {v0, p1}, Lcom/smartisanos/smengine/P;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/smengine/sa;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attrib = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/smengine/sa;->r(Ljava/lang/String;I)V

    return v0

    .line 5
    :cond_1
    new-instance p0, Lcom/smartisanos/smengine/Shader$ShaderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attribute location -1 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Shader$ShaderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    iget p0, v0, Lcom/smartisanos/smengine/ra;->mLocation:I

    return p0
.end method

.method public Wa(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/sa;->vS:[Lcom/smartisanos/smengine/ra;

    iget v1, p0, Lcom/smartisanos/smengine/sa;->wS:I

    invoke-direct {p0, v0, v1, p1}, Lcom/smartisanos/smengine/sa;->a([Lcom/smartisanos/smengine/ra;ILjava/lang/String;)Lcom/smartisanos/smengine/ra;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/smartisanos/smengine/sa;->mProgram:I

    invoke-static {v0, p1}, Lcom/smartisanos/smengine/P;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/smengine/sa;->s(Ljava/lang/String;I)V

    return v0

    .line 4
    :cond_0
    new-instance p0, Lcom/smartisanos/smengine/Shader$ShaderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uniform location -1 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Shader$ShaderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    iget p0, v0, Lcom/smartisanos/smengine/ra;->mLocation:I

    return p0
.end method

.method public a(IFFF)V
    .locals 0

    .line 10
    invoke-static {p1, p2, p3, p4}, Lcom/smartisanos/smengine/P;->glUniform3f(IFFF)V

    return-void
.end method

.method public a(IFFFF)V
    .locals 0

    .line 9
    invoke-static {p1, p2, p3, p4, p5}, Lcom/smartisanos/smengine/P;->glUniform4f(IFFFF)V

    return-void
.end method

.method public a(ILjava/nio/FloatBuffer;IIIZ)V
    .locals 12

    move/from16 v0, p5

    if-eqz p6, :cond_0

    mul-int/lit8 v5, v0, 0x4

    const/16 v2, 0x1406

    const/4 v3, 0x0

    move v0, p1

    move v1, p3

    move/from16 v4, p4

    .line 4
    invoke-static/range {v0 .. v5}, Lcom/smartisanos/smengine/P;->glVertexAttribPointer(IIIZII)V

    .line 5
    invoke-static {p1}, Lcom/smartisanos/smengine/P;->glEnableVertexAttribArray(I)V

    goto :goto_0

    :cond_0
    move-object v1, p2

    .line 6
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v8, 0x1406

    const/4 v9, 0x0

    move v6, p1

    move v7, p3

    move/from16 v10, p4

    move-object v11, p2

    .line 7
    invoke-static/range {v6 .. v11}, Lcom/smartisanos/smengine/P;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 8
    invoke-static {p1}, Lcom/smartisanos/smengine/P;->glEnableVertexAttribArray(I)V

    :goto_0
    return-void
.end method

.method public a(I[FI)V
    .locals 0

    const/4 p0, 0x0

    .line 11
    invoke-static {p1, p3, p2, p0}, Lcom/smartisanos/smengine/P;->glUniform4fv(II[FI)V

    return-void
.end method

.method public b(IFF)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/smartisanos/smengine/P;->glUniform2f(IFF)V

    return-void
.end method

.method public create()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/sa;->uS:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/smengine/sa;->tS:Ljava/lang/String;

    if-eqz v0, :cond_1

    # GL names can identify unrelated objects after EGL context recreation.
    invoke-static {}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->getEglContextGeneration()I
    move-result v0
    iget v1, p0, Lcom/smartisanos/smengine/sa;->mContextGeneration:I
    if-eq v0, v1, :shader_context_ready
    iput v0, p0, Lcom/smartisanos/smengine/sa;->mContextGeneration:I
    const/4 v1, 0x0
    iput v1, p0, Lcom/smartisanos/smengine/sa;->mProgram:I
    iput v1, p0, Lcom/smartisanos/smengine/sa;->wS:I
    iput v1, p0, Lcom/smartisanos/smengine/sa;->yS:I
    :shader_context_ready

    .line 2
    iget v0, p0, Lcom/smartisanos/smengine/sa;->mProgram:I

    if-lez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/smengine/sa;->_z()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/sa;->mProgram:I

    return-void

    .line 4
    :cond_1
    new-instance p0, Lcom/smartisanos/smengine/Shader$ShaderException;

    const-string v0, "shader source is null"

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/Shader$ShaderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h(IF)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/smartisanos/smengine/P;->glUniform1f(IF)V

    return-void
.end method

.method public setInt(II)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/smartisanos/smengine/P;->glUniform1i(II)V

    return-void
.end method
