.class public Lcom/smartisanos/smengine/mymaterial/g;
.super Ljava/lang/Object;
.source "MaterialDef.java"


# static fields
.field private static LW:Ljava/util/HashMap;

.field private static MW:Ljava/util/HashMap;

.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/mymaterial/g;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/mymaterial/g;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/mymaterial/g;->LW:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/mymaterial/g;->MW:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AA()Ljava/lang/String;
    .locals 1

    const-string v0, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvarying float result;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n    gl_FragColor = diffuseMapColor * vec4(result, result, result, 1.0);\n}\n"

    return-object v0
.end method

.method private static BA()Ljava/lang/String;
    .locals 1

    const-string v0, "attribute vec3 aNormals;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nuniform mat4 uMVPMat;\nuniform mat4 uWorldMat;\nuniform vec3 uLightDir;\nvarying vec2 vTexCoord;\nvarying float result;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\n    vTexCoord = aTexCoord;\n    vec4 normalSrc = uWorldMat * vec4(aNormals, 1.0);\n    vec4 normalDes = uWorldMat * vec4(0.0, 0.0, 0.0, 1.0);\n    vec3 normal = normalSrc.xyz - normalDes.xyz;\n    result = 0.4 + 0.6 * max(0.0, dot(normal, uLightDir));\n}\n"

    return-object v0
.end method

.method private static CA()Ljava/lang/String;
    .locals 1

    const-string v0, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform vec2 uTexCoordLimitXY;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n    vec4 totalColor = diffuseMapColor;\n    if(vTexCoord.x < uTexCoordLimitXY.x) {\n        totalColor.a = 0.0;\n    }\n    gl_FragColor = totalColor;\n}\n"

    return-object v0
.end method

.method private static DA()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\n//invariant gl_Position;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    return-object v0
.end method

.method private static EA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nvarying float vClipDist;\nvarying vec2 vTexCoord;\nuniform vec4 uModularColor;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    if(vClipDist < 0.0) {\n        discard;}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n    gl_FragColor = diffuseMapColor.rgba * uModularColor.rgba ;\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static FA()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform sampler2D uDiffuseMap;\nuniform sampler2D uShadowMap;\nvarying vec2 vTexCoord;\nfloat softlight(float top, float bottom) { \n    if(bottom < 0.5) {\n        return 2.0 * top * bottom + top * top * ( 1.0 - 2.0 * bottom);\n    } else {\n        return sqrt(top) * (2.0 * bottom - 1.0) + 2.0 * top * (1.0 - bottom);\n    }\n}\nvoid main() {\n     lowp vec4 textureColor = texture2D(uDiffuseMap,vTexCoord);\n     lowp vec4 overlay = texture2D(uShadowMap,vTexCoord);\n     lowp vec4 base = textureColor;\n     lowp vec4 outputColor;\n     outputColor.r = softlight(base.r, overlay.r);\n     outputColor.g = softlight(base.g, overlay.g);\n     outputColor.b = softlight(base.b, overlay.b);\n     outputColor.a = softlight(base.a, overlay.a);\n     outputColor = outputColor * overlay.a + (1.0 - overlay.a) * base;\n      outputColor.a = 1.0;\n     gl_FragColor = outputColor;\n}\n"

    return-object v0
.end method

.method private static GA()Ljava/lang/String;
    .locals 1

    const-string v0, "attribute vec3 aPosition;\nattribute vec2 aTexCoord;\nuniform mat4 uMVPMat;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    return-object v0
.end method

.method private static HA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvarying vec4 vModularColor;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  gl_FragColor = diffuseMapColor.rgba * vModularColor.rgba ;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static IA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform vec4 uBlendColor;\nuniform sampler2D uDiffuseMap;\nvarying vec4 vModularColor;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "diffuseMapColor.r = uBlendColor.a * uBlendColor.r + (1.0 - uBlendColor.a) * diffuseMapColor.r;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "diffuseMapColor.g = uBlendColor.a * uBlendColor.g + (1.0 - uBlendColor.a) * diffuseMapColor.g;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "diffuseMapColor.b = uBlendColor.a * uBlendColor.b + (1.0 - uBlendColor.a) * diffuseMapColor.b;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  gl_FragColor = diffuseMapColor.rgba * vModularColor.rgba ;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static JA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvarying vec4 vModularColor;\nvarying vec3 vModelSpaceDiffuseColor;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  gl_FragColor = diffuseMapColor.rgba * vModularColor.rgba  * vec4(vModelSpaceDiffuseColor,1.0).rgba;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static KA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nuniform vec4 uModularColor;\nuniform vec4 uBlendColor;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "diffuseMapColor.r = (2.0 * uBlendColor.r - 1.0) * (sqrt(diffuseMapColor.r) - diffuseMapColor.r) + diffuseMapColor.r;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "diffuseMapColor.g = (2.0 * uBlendColor.g - 1.0) * (sqrt(diffuseMapColor.g) - diffuseMapColor.g) + diffuseMapColor.g;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "diffuseMapColor.b = (2.0 * uBlendColor.b - 1.0) * (sqrt(diffuseMapColor.b) - diffuseMapColor.b) + diffuseMapColor.b;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    gl_FragColor = diffuseMapColor * uModularColor;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static LA()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    return-object v0
.end method

.method private static MA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nvarying float vClipDist;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nuniform vec4 uModularColor;\nuniform sampler2D uShadowMap;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    if(vClipDist < 0.0) {\n        discard;}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n    gl_FragColor = diffuseMapColor.rgba * uModularColor.rgba  * shadowMapColor.a;\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static NA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nuniform vec4 uModularColor;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nuniform sampler2D uDiffuseMap;\nuniform sampler2D uShadowMap;\nvoid main() {\n    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    gl_FragColor = diffuseMapColor * uModularColor * shadowMapColor.a;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static OA()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute vec2 aShadowTexCoord;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\nvShadowTexCoord = aShadowTexCoord;\n}\n"

    return-object v0
.end method

.method private static PA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nuniform vec4 uModularColor;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "diffuseMapColor.a  = diffuseMapColor.a * uModularColor.a ;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  gl_FragColor = diffuseMapColor;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static QA()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    return-object v0
.end method

.method private static RA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nuniform vec4 uModularColor;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    diffuseMapColor = diffuseMapColor.rgba * uModularColor.rgba ;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    diffuseMapColor.a = diffuseMapColor.r;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    gl_FragColor = diffuseMapColor;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static SA()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    return-object v0
.end method

.method private static Sd(I)Ljava/lang/String;
    .locals 13

    int-to-float v0, p0

    const v1, 0x3eaaaaab

    mul-float/2addr v0, v1

    const v1, 0x40c90fdb

    float-to-double v1, v1

    .line 1
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    float-to-double v3, v0

    mul-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    const/high16 v0, -0x40800000    # -1.0f

    div-float/2addr v0, v3

    mul-int/lit8 v3, p0, 0x2

    add-int/lit8 v3, v3, 0x1

    .line 2
    new-array v3, v3, [F

    neg-int v4, p0

    const/4 v5, 0x0

    move v6, v5

    move v5, v4

    :goto_0
    if-gt v5, p0, :cond_0

    int-to-float v7, v5

    add-int v8, v5, p0

    const v9, 0x402df854    # (float)Math.E

    float-to-double v9, v9

    mul-float/2addr v7, v7

    mul-float/2addr v7, v0

    float-to-double v11, v7

    .line 3
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v7, v9

    mul-float/2addr v7, v1

    aput v7, v3, v8

    .line 4
    aget v7, v3, v8

    add-float/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    div-float/2addr v2, v6

    move v0, v4

    :goto_1
    if-gt v0, p0, :cond_1

    add-int v1, v0, p0

    .line 5
    aget v5, v3, v1

    mul-float/2addr v5, v2

    aput v5, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "precision lowp float;\nuniform sampler2D uDiffuseMap;\nuniform highp float uTexelWidthOffset;\nuniform highp float uTexelHeightOffset;\nvarying vec2 vTexCoord;\nvoid main()\n{\n    vec4 sum = vec4(0.0);\n    vec2 singleStepOffset = vec2(uTexelWidthOffset,uTexelHeightOffset);\n"

    :goto_2
    if-gt v4, p0, :cond_2

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    sum += texture2D(uDiffuseMap , vTexCoord + singleStepOffset * float("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")) * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v2, v4, p0

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    gl_FragColor = vec4(sum.r, sum.g, sum.b, 1.0);\n}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static TA()Ljava/lang/String;
    .locals 1

    const-string v0, "precision mediump float;\nuniform vec4 uModularColor;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n    diffuseMapColor = diffuseMapColor.rgba * uModularColor.rgba;\n    //diffuseMapColor.g = 0.0;\n    //diffuseMapColor.b = 0.0;\n    //diffuseMapColor.a = uModularColor.a;\n    gl_FragColor = diffuseMapColor;\n}\n"

    return-object v0
.end method

.method private static Td(I)Ljava/lang/String;
    .locals 0

    const-string p0, "attribute vec4 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main()\n{\n    gl_Position = aPosition;\n    vTexCoord = aTexCoord;\n}\n"

    return-object p0
.end method

.method private static UA()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    return-object v0
.end method

.method private static Ud(I)Ljava/lang/String;
    .locals 8

    const-string v0, "createSimpleTextureModularColorClipPlaneVertexShader mode error : "

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const-string v3, "uniform mat4 uWorldMat;\n"

    goto :goto_0

    :cond_0
    if-ne p0, v1, :cond_3

    const-string v3, "uniform vec3 uLocalTranslate;\n"

    .line 1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uniform mat4 uMVPMat;\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "uniform vec4 uClipPlane;\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "uniform vec4 uClipPlaneHeight;\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "attribute vec3 aPosition;\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "attribute vec2 aTexCoord;\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "varying vec2 vTexCoord;\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "varying float vClipDist;\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "void main() {\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "    vClipDist = dot(worldPos.xyz, uClipPlane.xyz)  + uClipPlane.w;\n"

    const-string v5, "    gl_Position = uMVPMat * vec4(aPosition, 1.0);\n"

    const-string v6, "vTexCoord = aTexCoord;\n"

    const-string v7, "}\n"

    if-ne p0, v2, :cond_1

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   vec4 worldPos = uWorldMat * vec4(aPosition , 1.0);\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne p0, v1, :cond_2

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    float tmpPosY = uLocalTranslate.y + aPosition.y * uClipPlaneHeight.w;\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    vec3 worldPos = vec3(0, tmpPosY , 0);\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static VA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nuniform vec4 uModularColor;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "diffuseMapColor = diffuseMapColor.rgba * uModularColor.rgba ;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "if (diffuseMapColor.a < 0.07) {discard;}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  gl_FragColor = vec4(0,0,0,0);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static Vd(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/smartisanos/smengine/mymaterial/g;->de(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p0}, Lcom/smartisanos/smengine/mymaterial/g;->ce(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "attribute vec3 aPosition;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "attribute vec2 aTexCoord;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "attribute float aMvpArrayIndex;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "varying vec2 vTexCoord;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "varying vec4 vModularColor;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "void main() {\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "    int matrixIndex = int(aMvpArrayIndex);\n    mat4 currentMatrix = uMVPMatArray[matrixIndex];\n    vec4 currentColor = uModularColorArray[matrixIndex];\nvModularColor = currentColor;\n    gl_Position = currentMatrix  * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static WA()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    return-object v0
.end method

.method private static Wd(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/smartisanos/smengine/mymaterial/g;->de(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p0}, Lcom/smartisanos/smengine/mymaterial/g;->ce(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "attribute vec3 aPosition;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "attribute vec2 aTexCoord;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "attribute float aMvpArrayIndex;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "varying vec2 vTexCoord;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "varying vec4 vModularColor;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "void main() {\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "    int matrixIndex = int(aMvpArrayIndex);\n    mat4 currentMatrix = uMVPMatArray[matrixIndex];\n    vec4 currentColor = uModularColorArray[matrixIndex];\nvModularColor = currentColor;\n    gl_Position = currentMatrix  * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static XA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nuniform vec4 uModularColor;\nuniform vec4 uBlendColor;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "diffuseMapColor.r = uBlendColor.a * uBlendColor.r + (1.0 - uBlendColor.a) * diffuseMapColor.r;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "diffuseMapColor.g = uBlendColor.a * uBlendColor.g + (1.0 - uBlendColor.a) * diffuseMapColor.g;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "diffuseMapColor.b = uBlendColor.a * uBlendColor.b + (1.0 - uBlendColor.a) * diffuseMapColor.b;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    gl_FragColor = diffuseMapColor * uModularColor;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static Xd(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/view/Eb;->n(II)Lcom/smartisanos/smengine/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Camera;->Rj()Lcom/smartisanos/smengine/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/a/f;->e(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    div-float/2addr v1, v0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/smartisanos/smengine/mymaterial/g;->de(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p0}, Lcom/smartisanos/smengine/mymaterial/g;->ce(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec3 aPosition;\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec2 aTexCoord;\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute float aMvpArrayIndex;\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "varying vec2 vTexCoord;\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "varying vec4 vModularColor;\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p0}, Lcom/smartisanos/smengine/mymaterial/g;->be(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "varying vec3 vModelSpaceDiffuseColor;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "void main() {\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    int matrixIndex = int(aMvpArrayIndex);\n    mat4 currentMatrix = uMVPMatArray[matrixIndex];\n    vec4 currentColor = uModularColorArray[matrixIndex];\nvModularColor = currentColor;\n    vec3 currentNormal = vec3(0.0, 0.0, 1.0);\n    vec3 currentLightDir = uModelSpaceLightDir[matrixIndex];\n    vec3 lightdir = clamp(currentLightDir,vec3(-1.0,-1.0,-1.0),vec3(1.0,1.0,1.0));\n    float result = 0.4 + 0.6 * max(0.0, dot(currentNormal,normalize(lightdir)));\n    gl_Position = currentMatrix  * vec4(aPosition, 1.0);\n    float screenDepth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ";\n    float depth = (gl_Position.z / gl_Position.w - screenDepth)/(1.0 - screenDepth);\n    depth = sin(depth * 0.8);\n    result = result - depth;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vModelSpaceDiffuseColor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = vec3(result);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vTexCoord = aTexCoord;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static YA()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    return-object v0
.end method

.method private static Yd(I)Ljava/lang/String;
    .locals 9

    const-string v0, "createSimpleTextureModularColorClipPlaneVertexShader mode error : "

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const-string v3, "uniform mat4 uWorldMat;\n"

    goto :goto_0

    :cond_0
    if-ne p0, v1, :cond_3

    const-string v3, "uniform vec3 uLocalTranslate;\n"

    .line 1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uniform mat4 uMVPMat;\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "uniform vec4 uClipPlane;\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "uniform vec4 uClipPlaneHeight;\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "attribute vec3 aPosition;\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "attribute vec2 aTexCoord;\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "attribute vec2 aShadowTexCoord;\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "varying vec2 vTexCoord;\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "varying vec2 vShadowTexCoord;\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "varying float vClipDist;\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "void main() {\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "    vClipDist = dot(worldPos.xyz, uClipPlane.xyz)  + uClipPlane.w;\n"

    const-string v5, "    gl_Position = uMVPMat * vec4(aPosition, 1.0);\n"

    const-string v6, "vTexCoord = aTexCoord;\n"

    const-string v7, "vShadowTexCoord = aShadowTexCoord;\n"

    const-string v8, "}\n"

    if-ne p0, v2, :cond_1

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   vec4 worldPos = uWorldMat * vec4(aPosition , 1.0);\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne p0, v1, :cond_2

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    float tmpPosY = uLocalTranslate.y + aPosition.y * uClipPlaneHeight.w;\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    vec3 worldPos = vec3(0, tmpPosY , 0);\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static ZA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nuniform vec4 uModularColor;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nuniform sampler2D uShadowMap;\nvoid main() {\n    vec4 shadowMapColor = texture2D(uShadowMap, vTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    gl_FragColor = (diffuseMapColor + (shadowMapColor * (1.0 - diffuseMapColor.a))) * uModularColor.rgba;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static Zd(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/smartisanos/smengine/mymaterial/g;->de(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p0}, Lcom/smartisanos/smengine/mymaterial/g;->ce(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "attribute vec3 aPosition;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "attribute vec2 aTexCoord;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "attribute vec2 aShadowTexCoord;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "attribute float aMvpArrayIndex;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "varying vec2 vTexCoord;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "varying vec2 vShadowTexCoord;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "varying vec4 vModularColor;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "void main() {\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "    int matrixIndex = int(aMvpArrayIndex);\n    mat4 currentMatrix = uMVPMatArray[matrixIndex];\n    vec4 currentColor = uModularColorArray[matrixIndex];\nvModularColor = currentColor;\n    gl_Position = currentMatrix  * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\nvShadowTexCoord = aShadowTexCoord;\n}\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static _A()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    return-object v0
.end method

.method private static _d(I)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string v2, "uniform mat4 uWorldMat;\n"

    goto :goto_0

    :cond_0
    if-ne p0, v0, :cond_3

    const-string v2, "uniform vec3 uLocalTranslate;\n"

    .line 1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uniform mat4 uMVPMat;\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "uniform vec4 uClipPlane;\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "uniform vec4 uClipPlaneHeight;\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec3 aPosition;\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec2 aTexCoord;\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec2 aShadowTexCoord;\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "varying vec2 vTexCoord;\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "varying vec2 vShadowTexCoord;\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "varying float vClipDist;\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "void main() {\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "    vClipDist = dot(worldPos.xyz, uClipPlane.xyz)  + uClipPlane.w;\n"

    const-string v4, "    gl_Position = uMVPMat * vec4(aPosition, 1.0);\n"

    const-string v5, "vTexCoord = aTexCoord;\n"

    const-string v6, "vShadowTexCoord = aShadowTexCoord;\n"

    const-string v7, "}\n"

    if-ne p0, v1, :cond_1

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   vec4 worldPos = uWorldMat * vec4(aPosition , 1.0);\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne p0, v0, :cond_2

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    float tmpPosY = uLocalTranslate.y + aPosition.y * uClipPlaneHeight.w;\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    vec3 worldPos = vec3(0, tmpPosY , 0);\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSimpleTextureModularColorClipPlaneVertexShader mode error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createTwoTextureDiffCoordModularColorClipPlaneVertexShader mode error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/f;
    .locals 8

    const-string v0, "SimpleTextureClipPlaneMaterial"

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-static {p0, p1}, Lcom/smartisanos/smengine/mymaterial/g;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-static {v0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    .line 79
    new-instance v0, Lcom/smartisanos/smengine/mymaterial/m;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/smartisanos/smengine/mymaterial/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_0
    const-string v0, "TextureMaskModularClipPlaneMaterial"

    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-static {p0, p1}, Lcom/smartisanos/smengine/mymaterial/g;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-static {v0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    .line 84
    new-instance v0, Lcom/smartisanos/smengine/mymaterial/w;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/smartisanos/smengine/mymaterial/w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_1
    const-string v0, "GaussianBlurEffectMaterial"

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    invoke-static {p0, p1}, Lcom/smartisanos/smengine/mymaterial/g;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/16 p0, 0x14

    .line 87
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p2, :cond_2

    const/4 p0, 0x0

    .line 88
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 89
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 90
    invoke-static {p0}, Lcom/smartisanos/smengine/mymaterial/g;->zc(I)I

    move-result p1

    .line 91
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {v0, p0, p2}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-static {v0, p0, p2}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    .line 96
    new-instance p0, Lcom/smartisanos/smengine/mymaterial/b;

    move-object v2, p0

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v2 .. v7}, Lcom/smartisanos/smengine/mymaterial/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3
    const-string v0, "TwoTextureDiffCoordModularColorClipPlaneMaterial"

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    invoke-static {p0, p1}, Lcom/smartisanos/smengine/mymaterial/g;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-static {v0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    .line 101
    new-instance v0, Lcom/smartisanos/smengine/mymaterial/E;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/smartisanos/smengine/mymaterial/E;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_4
    const-string v0, "TwoTextureDiffCoordModularColorClipPlaneAlphaMaskMaterial"

    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 103
    invoke-static {p0, p1}, Lcom/smartisanos/smengine/mymaterial/g;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 104
    invoke-static {v0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    .line 106
    new-instance v0, Lcom/smartisanos/smengine/mymaterial/F;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/smartisanos/smengine/mymaterial/F;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/lang/String;
    .locals 1

    const-string v0, "SimpleTextureMaterial"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->zA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "SimpleTextureDirLightMaterial"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->BA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "VertexColorTextureMaterial"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->hA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "TextureModularAlphaMaterial"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->QA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "SimpleColorMaterial"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->xA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "TextureModularColorMaterial"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->UA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v0, "TextureModularMaskMaterial"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->WA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v0, "TextureBlendModularColorMaterial"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->LA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string v0, "TextureModularColorAlphaTestMaterial"

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->SA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string v0, "TextureTextureModularMaterial"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->_A()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string v0, "TextureBatchMaterial"

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    invoke-static {p3}, Lcom/smartisanos/smengine/mymaterial/g;->Wd(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string v0, "TwoTextureBatchMaterial"

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    invoke-static {p3}, Lcom/smartisanos/smengine/mymaterial/g;->Zd(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string v0, "GlobalColorMaterial"

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 26
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->lA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const-string v0, "SimpleTextureClipPlaneMaterial"

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 28
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/g;->Ud(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, "TextureTexCoordLimitMaterial"

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 30
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->DA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const-string v0, "InnerShadowColorMaterial"

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 32
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->nA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string v0, "GaussianBlurEffectMaterial"

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 34
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x0

    .line 35
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 36
    invoke-static {p0}, Lcom/smartisanos/smengine/mymaterial/g;->Td(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 37
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "GaussianBlur param null error"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    const-string p2, "SoftLightEffectMaterial"

    .line 38
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 39
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->GA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    const-string p2, "TwoTexDifferentTexcoordMaterial"

    .line 40
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 41
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->fB()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const-string p2, "TwoTexDifferentTexColorMaterial"

    .line 42
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 43
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->dB()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    const-string p2, "TwoTexDifferentTexColorAlphaMaskMaterial"

    .line 44
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 45
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->bB()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const-string p2, "TextureMaskModularMaterial"

    .line 46
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 47
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->OA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string p2, "TextureMaskModularClipPlaneMaterial"

    .line 48
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 49
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/g;->Yd(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    const-string p2, "TwoTextureDiffCoordModularColorClipPlaneMaterial"

    .line 50
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 51
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/g;->ae(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    const-string p2, "TwoTextureDiffCoordModularColorClipPlaneAlphaMaskMaterial"

    .line 52
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 53
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/g;->_d(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    const-string p1, "TextureBatchWithDirLightMaterial"

    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 55
    invoke-static {p3}, Lcom/smartisanos/smengine/mymaterial/g;->Xd(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const-string p1, "DrawMultiTimesMaterial"

    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 57
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->jA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const-string p1, "TexturePreColorMaterial"

    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 59
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->YA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    const-string p1, "TextureBatchPreColorMaterial"

    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 61
    invoke-static {p3}, Lcom/smartisanos/smengine/mymaterial/g;->Vd(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string p1, "WaveMaterial"

    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 63
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->mB()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    const-string p1, "WaveBackgroundMaterial"

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 65
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->kB()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const-string p1, "MagnifyMaskMaterail"

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 67
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->pA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    const-string p1, "NormalMapMaterial"

    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 69
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->tA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    const-string p1, "SdfShadowMaterial"

    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 71
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->vA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const-string p1, "MutiTexMaterial"

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 73
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->rA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 74
    :cond_23
    new-instance p1, Lcom/smartisanos/smengine/mymaterial/MaterialDef$MaterialDefException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unsupport shader : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/smartisanos/smengine/mymaterial/MaterialDef$MaterialDefException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static aB()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "float r = uModularBlendColor.r * uModularBlendColor.a;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "float g = uModularBlendColor.g * uModularBlendColor.a;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "float b = uModularBlendColor.b * uModularBlendColor.a;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vec4 cal = vec4(r,g,b,1) + ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "shadowMapColor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " * (1.0 - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uModularBlendColor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".a));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "precision mediump float;\nuniform vec4 uModularColor;\nuniform vec4 uModularBlendColor;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nuniform sampler2D uDiffuseMap;\nuniform sampler2D uShadowMap;\nuniform sampler2D uNormalMap;\nvoid main() {\n    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n    vec4 normalMapColor = texture2D(uNormalMap, vTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "vec4 dstColor = diffuseMapColor + ( cal * (1.0 - diffuseMapColor.a));\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "gl_FragColor = dstColor * uModularColor.rgba * normalMapColor.a;\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ae(I)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string v2, "uniform mat4 uWorldMat;\n"

    goto :goto_0

    :cond_0
    if-ne p0, v0, :cond_3

    const-string v2, "uniform vec3 uLocalTranslate;\n"

    .line 1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uniform mat4 uMVPMat;\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "uniform vec4 uClipPlane;\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "uniform vec4 uClipPlaneHeight;\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec3 aPosition;\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec2 aTexCoord;\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec2 aShadowTexCoord;\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "varying vec2 vTexCoord;\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "varying vec2 vShadowTexCoord;\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "varying float vClipDist;\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "void main() {\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "    vClipDist = dot(worldPos.xyz, uClipPlane.xyz)  + uClipPlane.w;\n"

    const-string v4, "    gl_Position = uMVPMat * vec4(aPosition, 1.0);\n"

    const-string v5, "vTexCoord = aTexCoord;\n"

    const-string v6, "vShadowTexCoord = aShadowTexCoord;\n"

    const-string v7, "}\n"

    if-ne p0, v1, :cond_1

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   vec4 worldPos = uWorldMat * vec4(aPosition , 1.0);\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne p0, v0, :cond_2

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    float tmpPosY = uLocalTranslate.y + aPosition.y * uClipPlaneHeight.w;\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    vec3 worldPos = vec3(0, tmpPosY , 0);\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSimpleTextureModularColorClipPlaneVertexShader mode error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createTwoTextureDiffCoordModularColorClipPlaneVertexShader mode error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;
    .locals 1

    const-string p1, "SimpleTextureMaterial"

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->yA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "SimpleTextureDirLightMaterial"

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->AA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p1, "VertexColorTextureMaterial"

    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->gA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p1, "TextureModularAlphaMaterial"

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->PA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p1, "SimpleColorMaterial"

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->wA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p1, "TextureTextureModularMaterial"

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->ZA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p1, "TextureModularColorMaterial"

    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->TA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p1, "TextureModularMaskMaterial"

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 23
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->VA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string p1, "TextureBlendModularColorMaterial"

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 25
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->KA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p1, "TextureModularColorAlphaTestMaterial"

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 27
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->RA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p1, "TextureBatchMaterial"

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 29
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->HA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string p1, "TwoTextureBatchMaterial"

    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 31
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->gB()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string p1, "GlobalColorMaterial"

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 33
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->kA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const-string p1, "SimpleTextureClipPlaneMaterial"

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 35
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->EA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p1, "TextureTexCoordLimitMaterial"

    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 37
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->CA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const-string p1, "InnerShadowColorMaterial"

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 39
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->mA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string p1, "GaussianBlurEffectMaterial"

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 41
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x0

    .line 42
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 43
    invoke-static {p0}, Lcom/smartisanos/smengine/mymaterial/g;->Sd(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 44
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "GaussianBlur param null error"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    const-string p1, "SoftLightEffectMaterial"

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 46
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->FA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    const-string p1, "TwoTexDifferentTexcoordMaterial"

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 48
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->eB()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const-string p1, "TwoTexDifferentTexColorMaterial"

    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 50
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->cB()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    const-string p1, "TwoTexDifferentTexColorAlphaMaskMaterial"

    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 52
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->aB()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const-string p1, "TextureMaskModularMaterial"

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 54
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->NA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string p1, "TextureMaskModularClipPlaneMaterial"

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 56
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->MA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    const-string p1, "TwoTextureDiffCoordModularColorClipPlaneMaterial"

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 58
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->iB()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    const-string p1, "TwoTextureDiffCoordModularColorClipPlaneAlphaMaskMaterial"

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 60
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->hB()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    const-string p1, "TextureBatchWithDirLightMaterial"

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 62
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->JA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const-string p1, "DrawMultiTimesMaterial"

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 64
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->iA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const-string p1, "TexturePreColorMaterial"

    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 66
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->XA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    const-string p1, "TextureBatchPreColorMaterial"

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 68
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->IA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string p1, "WaveMaterial"

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 70
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->lB()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    const-string p1, "WaveBackgroundMaterial"

    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 72
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->jB()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const-string p1, "MagnifyMaskMaterail"

    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 74
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->oA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    const-string p1, "NormalMapMaterial"

    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 76
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->sA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    const-string p1, "SdfShadowMaterial"

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 78
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->uA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const-string p1, "MutiTexMaterial"

    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 80
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/g;->qA()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 81
    :cond_23
    new-instance p1, Lcom/smartisanos/smengine/mymaterial/MaterialDef$MaterialDefException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupport shader : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/smartisanos/smengine/mymaterial/MaterialDef$MaterialDefException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static b(Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {v0, p1}, Lcom/smartisanos/smengine/mymaterial/g;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    :cond_0
    sget-object v1, Lcom/smartisanos/smengine/mymaterial/g;->LW:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 4
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/smengine/mymaterial/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vertex shader key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/g;->a(Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v1

    .line 6
    sget-object p0, Lcom/smartisanos/smengine/mymaterial/g;->LW:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p0, Lcom/smartisanos/smengine/mymaterial/g;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "vertex shader = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method private static bB()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute vec2 aShadowTexCoord;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nvoid main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\nvShadowTexCoord = aShadowTexCoord;\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static be(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uniform vec3 uModelSpaceLightDir["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "];\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/smengine/mymaterial/g;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 2
    :goto_0
    sget-object v1, Lcom/smartisanos/smengine/mymaterial/g;->MW:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 3
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/smengine/mymaterial/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fragment shader key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/g;->b(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object p0, Lcom/smartisanos/smengine/mymaterial/g;->MW:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p0, Lcom/smartisanos/smengine/mymaterial/g;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fragment shader = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method private static cB()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nuniform vec4 uModularColor;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nuniform sampler2D uDiffuseMap;\nuniform sampler2D uShadowMap;\nvoid main() {\n    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gl_FragColor = (diffuseMapColor + (shadowMapColor * uModularColor.rgba * (1.0 - diffuseMapColor.a)));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ce(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uniform vec4 uModularColorArray["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "];\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/smartisanos/smengine/mymaterial/g;->b(Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dB()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute vec2 aShadowTexCoord;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nvoid main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\nvShadowTexCoord = aShadowTexCoord;\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static de(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uniform mat4 uMVPMatArray["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "];\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static eB()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nuniform vec4 uModularColor;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nuniform sampler2D uDiffuseMap;\nuniform sampler2D uShadowMap;\nvoid main() {\n    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gl_FragColor = (diffuseMapColor + (shadowMapColor * (1.0 - diffuseMapColor.a))) * uModularColor.rgba;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static fB()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute vec2 aShadowTexCoord;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nvoid main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\nvShadowTexCoord = aShadowTexCoord;\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static gA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nvarying vec2 vTexCoord;\nvarying vec4 vVertexColor;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    vec4 color = vec4(vVertexColor);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    vec4 texColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    vec4 endColor = color * texColor;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    gl_FragColor = endColor ;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static gB()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nuniform sampler2D uDiffuseMap;\nuniform sampler2D uShadowMap;\nvarying vec4 vModularColor;\nvoid main() {\n    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gl_FragColor = (diffuseMapColor + (shadowMapColor * (1.0 - diffuseMapColor.a))) * vModularColor.rgba ;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hA()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute vec4 aColors;\nvarying vec2 vTexCoord;\nvarying vec4 vVertexColor;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\nvVertexColor = aColors;\n}\n"

    return-object v0
.end method

.method private static hB()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "float r = uModularBlendColor.r * uModularBlendColor.a;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "float g = uModularBlendColor.g * uModularBlendColor.a;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "float b = uModularBlendColor.b * uModularBlendColor.a;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vec4 cal = vec4(r,g,b,1) + ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "shadowMapColor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " * (1.0 - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uModularBlendColor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".a));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n    vec4 normalMapColor = texture2D(uNormalMap, vTexCoord);\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "vec4 dstColor = diffuseMapColor + ( cal * (1.0 - diffuseMapColor.a));\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "gl_FragColor = dstColor * uModularColor.rgba * normalMapColor.a;\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "precision mediump float;\nvarying float vClipDist;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nuniform vec4 uModularColor;\nuniform vec4 uModularBlendColor;\nuniform sampler2D uShadowMap;\nuniform sampler2D uNormalMap;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    if(vClipDist < 0.0) {\n        discard;}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static iA()Ljava/lang/String;
    .locals 1

    const-string v0, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform vec4 uModularColor;uniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n    gl_FragColor = diffuseMapColor * uModularColor;\n}\n"

    return-object v0
.end method

.method private static iB()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nvarying float vClipDist;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nuniform vec4 uModularColor;\nuniform sampler2D uShadowMap;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    if(vClipDist < 0.0) {\n        discard;}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n    gl_FragColor = (diffuseMapColor + (shadowMapColor * (1.0 - diffuseMapColor.a))) * uModularColor.rgba;\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static jA()Ljava/lang/String;
    .locals 1

    const-string v0, "attribute vec3 aPosition;\nattribute vec2 aTexCoord;\nuniform mat4 uWorldMat;\nuniform mat4 uCameraViewMat;\nuniform vec3 uOffsetXYZ;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uCameraViewMat * (uWorldMat * vec4(aPosition, 1.0) + vec4(uOffsetXYZ, 0.0));\n    vTexCoord = aTexCoord;\n}\n"

    return-object v0
.end method

.method private static jB()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nuniform vec4 uModularColor;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    gl_FragColor =  vec4(diffuseMapColor.r, diffuseMapColor.g, diffuseMapColor.b, diffuseMapColor.a * uModularColor.a) ;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;
    .locals 4

    const-string v0, "SimpleTextureMaterial"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/smartisanos/smengine/mymaterial/l;

    invoke-direct {v2, v0, p0, v1}, Lcom/smartisanos/smengine/mymaterial/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const-string v0, "SimpleTextureDirLightMaterial"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/smartisanos/smengine/mymaterial/o;

    invoke-direct {v2, v0, p0, v1}, Lcom/smartisanos/smengine/mymaterial/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    const-string v0, "VertexColorTextureMaterial"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v2, Lcom/smartisanos/smengine/mymaterial/v;

    invoke-direct {v2, v0, p0, v1}, Lcom/smartisanos/smengine/mymaterial/v;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    const-string v0, "TextureModularAlphaMaterial"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, Lcom/smartisanos/smengine/mymaterial/q;

    invoke-direct {v2, v0, p0, v1}, Lcom/smartisanos/smengine/mymaterial/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_3
    const-string v0, "SimpleColorMaterial"

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 20
    new-instance v2, Lcom/smartisanos/smengine/mymaterial/k;

    invoke-direct {v2, v0, p0, v1}, Lcom/smartisanos/smengine/mymaterial/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_4
    const-string v0, "TextureModularColorMaterial"

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 22
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 24
    new-instance v2, Lcom/smartisanos/smengine/mymaterial/z;

    invoke-direct {v2, v0, p0, v1}, Lcom/smartisanos/smengine/mymaterial/z;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_5
    const-string v0, "TextureModularMaskMaterial"

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    .line 27
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 28
    new-instance v2, Lcom/smartisanos/smengine/mymaterial/z;

    invoke-direct {v2, v0, p0, v1}, Lcom/smartisanos/smengine/mymaterial/z;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_6
    const-string v0, "TextureBlendModularColorMaterial"

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 30
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/smartisanos/smengine/mymaterial/u;

    invoke-direct {v2, v0, p0, v1}, Lcom/smartisanos/smengine/mymaterial/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_7
    const-string v0, "TextureTextureModularMaterial"

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 34
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    .line 35
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 36
    new-instance v2, Lcom/smartisanos/smengine/mymaterial/B;

    invoke-direct {v2, v0, p0, v1}, Lcom/smartisanos/smengine/mymaterial/B;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_8
    const-string v0, "GlobalColorMaterial"

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 38
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 40
    new-instance v2, Lcom/smartisanos/smengine/mymaterial/c;

    invoke-direct {v2, v0, p0, v1}, Lcom/smartisanos/smengine/mymaterial/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_9
    const-string v0, "SimpleTextureClipPlaneMaterial"

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const-string v0, "TextureTexCoordLimitMaterial"

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 43
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 45
    new-instance v2, Lcom/smartisanos/smengine/mymaterial/n;

    invoke-direct {v2, v0, p0, v1}, Lcom/smartisanos/smengine/mymaterial/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_b
    const-string v0, "InnerShadowColorMaterial"

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 47
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/smartisanos/smengine/mymaterial/d;

    invoke-direct {v2, v0, p0, v1}, Lcom/smartisanos/smengine/mymaterial/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_c
    const-string v0, "TextureModularColorAlphaTestMaterial"

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 51
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 53
    new-instance v2, Lcom/smartisanos/smengine/mymaterial/y;

    invoke-direct {v2, v0, p0, v1}, Lcom/smartisanos/smengine/mymaterial/y;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_d
    const-string v0, "GaussianBlurEffectMaterial"

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const-string v0, "SoftLightEffectMaterial"

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "SoftLightEffectMaterial"

    .line 56
    invoke-static {p0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SoftLightEffectMaterial"

    .line 57
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/p;

    const-string v2, "SoftLightEffectMaterial"

    invoke-direct {v1, v2, p0, v0}, Lcom/smartisanos/smengine/mymaterial/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_f
    const-string v0, "TwoTexDifferentTexcoordMaterial"

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "TwoTexDifferentTexcoordMaterial"

    .line 60
    invoke-static {p0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TwoTexDifferentTexcoordMaterial"

    .line 61
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/I;

    const-string v2, "TwoTexDifferentTexcoordMaterial"

    invoke-direct {v1, v2, p0, v0}, Lcom/smartisanos/smengine/mymaterial/I;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_10
    const-string v0, "TwoTexDifferentTexColorMaterial"

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "TwoTexDifferentTexColorMaterial"

    .line 64
    invoke-static {p0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TwoTexDifferentTexColorMaterial"

    .line 65
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/H;

    const-string v2, "TwoTexDifferentTexColorMaterial"

    invoke-direct {v1, v2, p0, v0}, Lcom/smartisanos/smengine/mymaterial/H;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_11
    const-string v0, "TwoTexDifferentTexColorAlphaMaskMaterial"

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "TwoTexDifferentTexColorAlphaMaskMaterial"

    .line 68
    invoke-static {p0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TwoTexDifferentTexColorAlphaMaskMaterial"

    .line 69
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/G;

    const-string v2, "TwoTexDifferentTexColorAlphaMaskMaterial"

    invoke-direct {v1, v2, p0, v0}, Lcom/smartisanos/smengine/mymaterial/G;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_12
    const-string v0, "TextureMaskModularMaterial"

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p0, "TextureMaskModularMaterial"

    .line 72
    invoke-static {p0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TextureMaskModularMaterial"

    .line 73
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/x;

    const-string v2, "TextureMaskModularMaterial"

    invoke-direct {v1, v2, p0, v0}, Lcom/smartisanos/smengine/mymaterial/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_13
    const-string v0, "TextureMaskModularClipPlaneMaterial"

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const-string v0, "TwoTextureDiffCoordModularColorClipPlaneMaterial"

    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const-string v0, "DrawMultiTimesMaterial"

    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "DrawMultiTimesMaterial"

    .line 78
    invoke-static {p0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DrawMultiTimesMaterial"

    .line 79
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/a;

    const-string v2, "DrawMultiTimesMaterial"

    invoke-direct {v1, v2, p0, v0}, Lcom/smartisanos/smengine/mymaterial/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_16
    const-string v0, "TexturePreColorMaterial"

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p0, "TexturePreColorMaterial"

    .line 82
    invoke-static {p0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TexturePreColorMaterial"

    .line 83
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/A;

    const-string v2, "TexturePreColorMaterial"

    invoke-direct {v1, v2, p0, v0}, Lcom/smartisanos/smengine/mymaterial/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_17
    const-string v0, "WaveMaterial"

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p0, "WaveMaterial"

    .line 86
    invoke-static {p0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "WaveMaterial"

    .line 87
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/K;

    const-string v2, "WaveMaterial"

    invoke-direct {v1, v2, p0, v0}, Lcom/smartisanos/smengine/mymaterial/K;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_18
    const-string v0, "WaveBackgroundMaterial"

    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p0, "WaveBackgroundMaterial"

    .line 90
    invoke-static {p0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "WaveBackgroundMaterial"

    .line 91
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/J;

    const-string v2, "WaveBackgroundMaterial"

    invoke-direct {v1, v2, p0, v0}, Lcom/smartisanos/smengine/mymaterial/J;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_19
    const-string v0, "MagnifyMaskMaterail"

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "MagnifyMaskMaterail"

    .line 94
    invoke-static {p0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MagnifyMaskMaterail"

    .line 95
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/e;

    const-string v2, "MagnifyMaskMaterail"

    invoke-direct {v1, v2, p0, v0}, Lcom/smartisanos/smengine/mymaterial/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1a
    const-string v0, "NormalMapMaterial"

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p0, "NormalMapMaterial"

    .line 98
    invoke-static {p0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "NormalMapMaterial"

    .line 99
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/i;

    const-string v2, "NormalMapMaterial"

    invoke-direct {v1, v2, p0, v0}, Lcom/smartisanos/smengine/mymaterial/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1b
    const-string v0, "SdfShadowMaterial"

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "SdfShadowMaterial"

    .line 102
    invoke-static {p0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SdfShadowMaterial"

    .line 103
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/j;

    const-string v2, "SdfShadowMaterial"

    invoke-direct {v1, v2, p0, v0}, Lcom/smartisanos/smengine/mymaterial/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1c
    const-string v0, "MutiTexMaterial"

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const-string p0, "MutiTexMaterial"

    .line 106
    invoke-static {p0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->d(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MutiTexMaterial"

    .line 107
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/h;

    const-string v2, "MutiTexMaterial"

    invoke-direct {v1, v2, p0, v0}, Lcom/smartisanos/smengine/mymaterial/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1d
    :goto_0
    return-object v3
.end method

.method private static kA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nuniform vec4 uModularColor;\nvoid main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    gl_FragColor = uModularColor;\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static kB()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    return-object v0
.end method

.method private static lA()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\n}\n"

    return-object v0
.end method

.method private static lB()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nuniform vec4 uModularColor;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    gl_FragColor =  vec4(diffuseMapColor.r, diffuseMapColor.g, diffuseMapColor.b, diffuseMapColor.a * uModularColor.a) ;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static mA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform vec4 uModularColor;\nuniform vec4 uInnerShadowSizeH;\nuniform vec4 uInnerShadowAlphaRangeH;\nuniform vec4 uInnerShadowSizeV;\nuniform vec4 uInnerShadowAlphaRangeV;\nuniform sampler2D uDiffuseMap;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "float createColor(float x, float lstart, float lend, float rstart, float rend, float alphaLStart, float alphaLEnd, float alphaRStart, float alphaREnd) {\n    float n = 0.0;\n    if((x >= lstart && x <= lend) || (x >= rstart && x <= rend)) {\n        float x1, x2, a, b;\n        if(x >= lstart && x <= lend) {\n            x1 = lstart;\n            x2 = lend;\n            a = alphaLStart;\n            b = alphaLEnd;\n        } else {\n            x1 = rstart;\n            x2 = rend;\n            a = alphaRStart;\n            b = alphaREnd;\n        }\n        if(x1 == 0.0 && x2 == 0.0) {\n              n = 0.0;\n        } else {\n            n = a + (b - a) * (x - x1) / (x2 - x1);\n        }\n    } else {\n        if(x > lend && x < rstart) {\n            n = 0.0;\n        } else {\n            n = 1.0;\n        }\n    }\n    return n;\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "void main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    //int count = 0;\n    float lStart = uInnerShadowSizeH.x ;\n    float lEnd = uInnerShadowSizeH.y ;\n    float rStart = uInnerShadowSizeH.z;\n    float rEnd = uInnerShadowSizeH.w;\n    float bStart = uInnerShadowSizeV.x;\n    float bEnd = uInnerShadowSizeV.y;\n    float tStart = uInnerShadowSizeV.z;\n    float tEnd = uInnerShadowSizeV.w;\n    float alphaLStart = uInnerShadowAlphaRangeH.x;\n    float alphaLEnd = uInnerShadowAlphaRangeH.y;\n    float alphaRStart = uInnerShadowAlphaRangeH.z;\n    float alphaREnd = uInnerShadowAlphaRangeH.w;\n    float alphaBStart = uInnerShadowAlphaRangeV.x;\n    float alphaBEnd = uInnerShadowAlphaRangeV.y;\n    float alphaTStart = uInnerShadowAlphaRangeV.z;\n    float alphaTEnd = uInnerShadowAlphaRangeV.w;\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    float x = vTexCoord.x;\n    float y = vTexCoord.y;\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    vec4 color = uModularColor;\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    float nx = createColor(x, lStart, lEnd , rStart, rEnd, alphaLStart, alphaLEnd, alphaRStart, alphaREnd);\n    float ny = createColor(y, bStart, bEnd , tStart, tEnd, alphaBStart, alphaBEnd, alphaTStart, alphaTEnd);\n    //if(nl > 0.0)  count++ ;\n    //if(nr > 0.0)  count++ ;\n    //if(nb > 0.0)  count++ ;\n    //if(nt > 0.0)  count++ ;\n    //if(count > 0) {\n    color.a = color.a * min((nx + ny), 1.0);\n    //} else {\n    //    color.a = 0.0;\n    //}\n    gl_FragColor = color;\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static mB()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    return-object v0
.end method

.method private static nA()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\n//invariant gl_Position;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    return-object v0
.end method

.method private static oA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nuniform vec4 uModularColor;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nuniform sampler2D uDiffuseMap;\nuniform sampler2D uShadowMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    gl_FragColor =  vec4(diffuseMapColor.r, diffuseMapColor.g, diffuseMapColor.b, diffuseMapColor.a ) * shadowMapColor.a;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p(Ljava/lang/String;I)Lcom/smartisanos/smengine/mymaterial/f;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->checkCellNumsInSinglePage(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "TextureBatchMaterial"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3
    invoke-static {v0, v3, v1, p1}, Lcom/smartisanos/smengine/mymaterial/g;->b(Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {v0, v3, v1}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/r;

    invoke-direct {v1, v0, p0, p1}, Lcom/smartisanos/smengine/mymaterial/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v0, "TwoTextureBatchMaterial"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-static {v0, v3, v1, p1}, Lcom/smartisanos/smengine/mymaterial/g;->b(Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {v0, v3, v1}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/D;

    invoke-direct {v1, v0, p0, p1}, Lcom/smartisanos/smengine/mymaterial/D;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string v0, "TextureBatchWithDirLightMaterial"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-static {v0, v3, v1, p1}, Lcom/smartisanos/smengine/mymaterial/g;->b(Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {v0, v3, v1}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/t;

    invoke-direct {v1, v0, p0, p1}, Lcom/smartisanos/smengine/mymaterial/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    const-string v0, "TextureBatchPreColorMaterial"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 15
    invoke-static {v0, v3, v1, p1}, Lcom/smartisanos/smengine/mymaterial/g;->b(Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {v0, v3, v1}, Lcom/smartisanos/smengine/mymaterial/g;->c(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/s;

    invoke-direct {v1, v0, p0, p1}, Lcom/smartisanos/smengine/mymaterial/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method private static pA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nattribute vec2 aShadowTexCoord;\nvarying vec2 vShadowTexCoord;\nvoid main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\nvShadowTexCoord = aShadowTexCoord;\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static qA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nuniform vec3 uLightLoc;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nuniform sampler2D uShadowMap;\nuniform sampler2D uNormalMap;\nuniform sampler2D uExtraTex1;\nuniform sampler2D uExtraTex2;\nuniform sampler2D uExtraTex3;\nuniform sampler2D uExtraTex4;\nuniform sampler2D uExtraTex5;\nuniform float uShadowLengthFactor;\nuniform float uShadowOpacityFactor;\nuniform float uShadowRadius;\nuniform vec4 uShadowFactor1;\nuniform vec4 uShadowFactor2;\nuniform vec4 uShadowFactor3;\nuniform vec4 uShadowFactor4;\nuniform vec4 uModularColor;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Preserve measured Adreno 640 mediump projection without Mali overflow.
    const-string v1, "vec2 SFSOffset(in vec3 lightPos, in vec3 planePos, in float dist, in float lightRadius) {\n    vec3 scaledLight = lightPos * (1.0 / 4096.0);\n    vec3 scaledPlane = planePos * (1.0 / 4096.0);\n    float distanceToIcon = min(max(length(scaledLight - scaledPlane) * 4096.0, 0.001), 256.0);\n    return (dist / 1000.0) * (lightPos.xy / distanceToIcon);\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vec4 SmartisanFakeShadow(in vec2 st, in vec3 lightPos,in vec3 planePos){\n\n\tfloat lenFactor = uShadowLengthFactor;\n\tfloat opaFactor = uShadowOpacityFactor;\n\tfloat lightRadius = uShadowRadius;\n\tvec4 color;\n\tvec4 sc1;\n\n\tvec4 s1 = texture2D(uDiffuseMap,st + SFSOffset(lightPos,planePos, uShadowFactor1.x * lenFactor, lightRadius));\n\tvec4 s2 = texture2D(uShadowMap,st + SFSOffset(lightPos,planePos,  uShadowFactor1.y * lenFactor, lightRadius));\n\tvec4 s3 = texture2D(uNormalMap,st + SFSOffset(lightPos,planePos,  uShadowFactor1.z * lenFactor, lightRadius));\n\tvec4 s4 = texture2D(uExtraTex1,st + SFSOffset(lightPos,planePos,  uShadowFactor1.w * lenFactor, lightRadius));\n\tvec4 s5 = texture2D(uExtraTex2,st + SFSOffset(lightPos,planePos,  uShadowFactor2.x* lenFactor, lightRadius));\n\tvec4 s6 = texture2D(uExtraTex3,st + SFSOffset(lightPos,planePos,  uShadowFactor2.y* lenFactor, lightRadius));\n\tvec4 s7 = texture2D(uExtraTex4,st + SFSOffset(lightPos,planePos,  uShadowFactor2.z* lenFactor, lightRadius));\n\tvec4 s8 = texture2D(uExtraTex5,st + SFSOffset(lightPos,planePos,  uShadowFactor2.w* lenFactor, lightRadius));\n\ts1.a *= uShadowFactor3.x * opaFactor;\n\ts2.a *= uShadowFactor3.y * opaFactor;\n\ts3.a *= uShadowFactor3.z * opaFactor;\n\ts4.a *= uShadowFactor3.w * opaFactor;\n\ts5.a *= uShadowFactor4.x * opaFactor;\n\ts6.a *= uShadowFactor4.y * opaFactor;\n\ts7.a *= uShadowFactor4.z * opaFactor;\n\ts8.a *= uShadowFactor4.w * opaFactor;\n\tsc1 = s1+s2+s3+s4+s5+s6+s7+s8;\n\t//sc1 = max(vec4(1.0, 1.0, 1.0, 1.0), clamp(sc1, 0.0, 1.0));\n\t//sc1 = texture2D(uExtraTex4, st) * sc1;\n\n\tcolor = sc1 * uModularColor;\n\n\n\treturn color;\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "void main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tvec3 perPixel = vec3(gl_FragCoord.xy, 0.0);\n\tvec4 color = SmartisanFakeShadow(vTexCoord, uLightLoc, perPixel);\n\tgl_FragColor = color;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static rA()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\n    vTexCoord = aTexCoord;\n}\n"

    return-object v0
.end method

.method private static sA()Ljava/lang/String;
    .locals 1

    const-string v0, "precision highp float;\nvarying vec2 vTexCoord;\nvarying vec3 vPosition;\nuniform sampler2D uDiffuseMap;\nuniform sampler2D uNormalMap;\nuniform mat4 uWorldMat;\nuniform vec3 uLightLoc;\nuniform vec4 uLightColor;\nuniform vec3 uCameraLoc;\nuniform vec4 uSpecularStrength;\nvoid main() {\n    vec4 normalColor = texture2D(uNormalMap, vTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n    vec3 normalVector = normalColor.rgb * 2.0 - 1.0;\n    normalVector = normalize(normalVector);\n    vec3 worldPosition = (uWorldMat * vec4(vPosition, 1.0)).xyz;\n    vec3 lightVector = normalize( uLightLoc - worldPosition);\n    vec3 viewVector = normalize( uCameraLoc - worldPosition);\n    vec3 reflectVector = normalize(reflect(-lightVector, normalVector));\n    float specular = 0.0;\n    float diffuse = max(0.0, dot(lightVector , normalVector));\n    if(diffuse > 0.0)\n    {\n        specular = max(0.0,dot(reflectVector * 1.0 , viewVector * 1.0));\n    }\n    float lightIntensity =  1.0 * diffuse + uSpecularStrength.x * specular;\n    //lightIntensity = max(1.0, clamp(LightIntensity, 0.0, 1.0));\n    vec3 specularColor = uLightColor.rgb * lightIntensity;\n    vec4 color = diffuseMapColor * lightIntensity;\n    color.a = diffuseMapColor.a;\n    //color.r = normalColor.r * max(1.0, color.r);\n    //color.g = normalColor.g * max(1.0, color.g);\n    //color.b = normalColor.b * max(1.0, color.b);\n    gl_FragColor = color;\n}\n"

    return-object v0
.end method

.method private static t(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static tA()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvarying vec3 vPosition;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\n    vTexCoord = aTexCoord;\n    vPosition = aPosition;\n}\n"

    return-object v0
.end method

.method private static uA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision highp float;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "float sceneDist(in sampler2D sdfTex, vec3 p, float blockSize, float shadowStrength, vec2 vUv)\n{\n    vec4 sdfColor = texture2D(sdfTex,vec2(p.x/(gl_FragCoord.x/vUv.x),p.y/(gl_FragCoord.y/vUv.y)));\n    float sdfDistance = (blockSize - sdfColor.r)*shadowStrength;\n    //float c = circleDist(translate(p, vec3((gl_FragCoord.x/vUv.x)/2., (gl_FragCoord.y/vUv.y)/2.,0.)), 100.0);\n    return sdfDistance;\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "float shadowLong(in sampler2D sdfTex, vec3 pos, vec3 lightPos, float radius)\n{\n    vec3 dir = normalize(lightPos - pos); //rd\n    float dl = length(pos - lightPos); //ro\n    float lf = radius * dl;\n    // distance traveled\n    float dt = 0.01;\n    float lightPosZ = max(0.0, lightPos.z / uLightRadius);    for (float i = 0.; i < 10.; ++i)\n    {\n        // distance to scene at current position\n        float sd = sceneDist(sdfTex,pos + dir * dt, uShadowLongRadius, uShadowLongLength * lightPosZ, vTexCoord);;\n        // early out when this ray is guaranteed to be full shadow\n        if (sd < -radius) \n            return 0.0;\n        // width of cone-overlap at light\n        // 0 in center, so 50% overlap: add one radius outside of loop to get total coverage\n        // should be \'(sd / dt) * dl\', but \'*dl\' outside of loop\n        lf = min(lf, sd / dt)* uShadowLongStrength;\n        // move ahead\n        dt += max(2.0*pow(float(i)/40.0, uShadowLongFeather), abs(sd)); //*easeOutQuint(float(i)/40.)\n        //dt *= easeOutQuint(float(i)/40.);\n        if (dt > dl) break;\n    }\n    lf = clamp((lf*dl + radius) / (4.0 * radius), 0.0, 1.0);\n    return lf;}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "float shadowShort(in sampler2D sdfTex, vec3 pos, vec3 lightPos, float radius)\n{\n    vec3 dir = normalize(lightPos - pos); //rd\n    float dl = length(pos - lightPos); //ro\n    float lf = radius * dl;\n    // distance traveled\n    float dt = 0.01;\n    float lightPosZ = max(0.0 , lightPos.z/ulightRadius);    for (float i = 0.; i < 10.; ++i)\n    {\n        // distance to scene at current position\n        float sd = sceneDist(sdfTex,pos + dir * dt, uShadowShortRadius, uShadowShortLength * abs(lightPos.z/uLightRadius), vTexCoord);\n        // early out when this ray is guaranteed to be full shadow\n        if (sd < -radius) \n            return 0.0;\n        // width of cone-overlap at light\n        // 0 in center, so 50% overlap: add one radius outside of loop to get total coverage\n        // should be \'(sd / dt) * dl\', but \'*dl\' outside of loop\n        lf = min(lf, sd / dt)* uShadowShortStrength;\n        // move ahead\n        dt += max(2.0, abs(sd));\n        if (dt > dl) break;\n    }\n    lf = clamp((lf*dl + radius) / (4.0 * radius), 0.0, 1.0);\n    return lf;}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "void main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    vec3 perPixel = vec3(gl_FragCoord.xy, 0.0);\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static vA()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvarying vec3 vPosition;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\n    vTexCoord = aTexCoord;\n    vPosition = aPosition;\n}\n"

    return-object v0
.end method

.method private static wA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nvarying vec4 vVertexColor;\nvoid main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    gl_FragColor = vec4(vVertexColor);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static xA()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec4 aColors;\nvarying vec4 vVertexColor;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvVertexColor = aColors;\n}\n"

    return-object v0
.end method

.method private static yA()Ljava/lang/String;
    .locals 1

    const-string v0, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n    gl_FragColor = diffuseMapColor;\n}\n"

    return-object v0
.end method

.method private static zA()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uMVPMat;\n//invariant gl_Position;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    return-object v0
.end method

.method static zc(I)I
    .locals 6

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float p0, v4

    const/high16 v4, -0x40000000    # -2.0f

    mul-float/2addr p0, v4

    const/high16 v4, 0x3b800000    # 0.00390625f

    float-to-double v4, v4

    .line 2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr p0, v0

    float-to-double v0, p0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    .line 5
    rem-int/lit8 v0, p0, 0x2

    add-int/2addr p0, v0

    return p0
.end method
