.class public Lsmartisan/widget/letters/AlphabetsConfig;
.super Ljava/lang/Object;
.source "AlphabetsConfig.java"


# static fields
.field private static ENGLISH_ALPHABETS:[Ljava/lang/String; = null

.field private static JAPAN_ALPHABETS:[Ljava/lang/String; = null

.field private static KOREA_ALPHABETS:[Ljava/lang/String; = null

.field private static RUSSIAN_ALPHABETS:[Ljava/lang/String; = null

.field public static final SURNAME_LETTER:I = 0x0

.field public static final SURNAME_WORD:I = 0x1

.field private static mNorussian:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 81

    const-string v0, "A"

    const-string v1, "B"

    const-string v2, "C"

    const-string v3, "D"

    const-string v4, "E"

    const-string v5, "F"

    const-string v6, "G"

    const-string v7, "H"

    const-string v8, "I"

    const-string v9, "J"

    const-string v10, "K"

    const-string v11, "L"

    const-string v12, "M"

    const-string v13, "N"

    const-string v14, "O"

    const-string v15, "P"

    const-string v16, "Q"

    const-string v17, "R"

    const-string v18, "S"

    const-string v19, "T"

    const-string v20, "U"

    const-string v21, "V"

    const-string v22, "W"

    const-string v23, "X"

    const-string v24, "Y"

    const-string v25, "Z"

    const-string v26, ".>"

    .line 1
    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/letters/AlphabetsConfig;->ENGLISH_ALPHABETS:[Ljava/lang/String;

    const-string v1, "\u3131"

    const-string v2, "\u3134"

    const-string v3, "\u3137"

    const-string v4, "\u3139"

    const-string v5, "\u3141"

    const-string v6, "\u3142"

    const-string v7, "\u3145"

    const-string v8, "\u3147"

    const-string v9, "\u3148"

    const-string v10, "\u314a"

    const-string v11, "\u314b"

    const-string v12, "\u314c"

    const-string v13, "\u314d"

    const-string v14, "\u314e"

    const-string v15, ".~"

    const-string v16, "A"

    const-string v17, "B"

    const-string v18, "C"

    const-string v19, "D"

    const-string v20, "E"

    const-string v21, "F"

    const-string v22, "G"

    const-string v23, "H"

    const-string v24, "I"

    const-string v25, "J"

    const-string v26, "K"

    const-string v27, "L"

    const-string v28, "M"

    const-string v29, "N"

    const-string v30, "O"

    const-string v31, "P"

    const-string v32, "Q"

    const-string v33, "R"

    const-string v34, "S"

    const-string v35, "T"

    const-string v36, "U"

    const-string v37, "V"

    const-string v38, "W"

    const-string v39, "X"

    const-string v40, "Y"

    const-string v41, "Z"

    const-string v42, ".>"

    .line 2
    filled-new-array/range {v1 .. v42}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/letters/AlphabetsConfig;->KOREA_ALPHABETS:[Ljava/lang/String;

    const-string v1, "\u3042"

    const-string v2, "\u3044"

    const-string v3, "\u3046"

    const-string v4, "\u3048"

    const-string v5, "\u304a"

    const-string v6, "\u304b"

    const-string v7, "\u304d"

    const-string v8, "\u304f"

    const-string v9, "\u3051"

    const-string v10, "\u3053"

    const-string v11, "\u3055"

    const-string v12, "\u3057"

    const-string v13, "\u3059"

    const-string v14, "\u305b"

    const-string v15, "\u305d"

    const-string v16, "\u305f"

    const-string v17, "\u3061"

    const-string v18, "\u3064"

    const-string v19, "\u3066"

    const-string v20, "\u3068"

    const-string v21, "\u306a"

    const-string v22, "\u306b"

    const-string v23, "\u306c"

    const-string v24, "\u306d"

    const-string v25, "\u306e"

    const-string v26, "\u306f"

    const-string v27, "\u3072"

    const-string v28, "\u3075"

    const-string v29, "\u3078"

    const-string v30, "\u307b"

    const-string v31, "\u307e"

    const-string v32, "\u307f"

    const-string v33, "\u3080"

    const-string v34, "\u3081"

    const-string v35, "\u3082"

    const-string v36, "\u3084"

    const-string v37, "*\u3044"

    const-string v38, "\u3086"

    const-string v39, "*\u3048"

    const-string v40, "\u3088"

    const-string v41, "\u3089"

    const-string v42, "\u308a"

    const-string v43, "\u308b"

    const-string v44, "\u308c"

    const-string v45, "\u308d"

    const-string v46, "\u308f"

    const-string v47, "*\u3044"

    const-string v48, "*\u3046"

    const-string v49, "*\u3048"

    const-string v50, "\u3092"

    const-string v51, "A"

    const-string v52, "B"

    const-string v53, "C"

    const-string v54, "D"

    const-string v55, "E"

    const-string v56, "F"

    const-string v57, "G"

    const-string v58, "H"

    const-string v59, "I"

    const-string v60, "J"

    const-string v61, "K"

    const-string v62, "L"

    const-string v63, "M"

    const-string v64, "N"

    const-string v65, "O"

    const-string v66, "P"

    const-string v67, "Q"

    const-string v68, "R"

    const-string v69, "S"

    const-string v70, "T"

    const-string v71, "U"

    const-string v72, "V"

    const-string v73, "W"

    const-string v74, "X"

    const-string v75, "Y"

    const-string v76, "Z"

    const-string v77, ".~"

    const-string v78, ".~"

    const-string v79, ".~"

    const-string v80, ".>"

    .line 3
    filled-new-array/range {v1 .. v80}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/letters/AlphabetsConfig;->JAPAN_ALPHABETS:[Ljava/lang/String;

    const-string v1, "\u0410"

    const-string v2, "\u0411"

    const-string v3, "\u0412"

    const-string v4, "\u0413"

    const-string v5, "\u0414"

    const-string v6, "\u0415"

    const-string v7, "\u0416"

    const-string v8, "\u0417"

    const-string v9, "\u0418"

    const-string v10, "\u0419"

    const-string v11, "\u041a"

    const-string v12, "\u041b"

    const-string v13, "\u041c"

    const-string v14, "\u041d"

    const-string v15, "\u041e"

    const-string v16, "\u041f"

    const-string v17, "\u0420"

    const-string v18, "\u0421"

    const-string v19, "\u0422"

    const-string v20, "\u0423"

    const-string v21, "\u0424"

    const-string v22, "\u0425"

    const-string v23, "\u0426"

    const-string v24, "\u0427"

    const-string v25, "\u0428"

    const-string v26, "\u0429"

    const-string v27, "\u042a"

    const-string v28, "\u042b"

    const-string v29, "\u042c"

    const-string v30, "\u042d"

    const-string v31, "\u042e"

    const-string v32, "\u042f"

    const-string v33, ".~"

    const-string v34, "A"

    const-string v35, "B"

    const-string v36, "C"

    const-string v37, "D"

    const-string v38, "E"

    const-string v39, "F"

    const-string v40, "G"

    const-string v41, "H"

    const-string v42, "I"

    const-string v43, "J"

    const-string v44, "K"

    const-string v45, "L"

    const-string v46, "M"

    const-string v47, "N"

    const-string v48, "O"

    const-string v49, "P"

    const-string v50, "Q"

    const-string v51, "R"

    const-string v52, "S"

    const-string v53, "T"

    const-string v54, "U"

    const-string v55, "V"

    const-string v56, "W"

    const-string v57, "X"

    const-string v58, "Y"

    const-string v59, "Z"

    const-string v60, ".>"

    .line 4
    filled-new-array/range {v1 .. v60}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/letters/AlphabetsConfig;->RUSSIAN_ALPHABETS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alphabetsByLanguage(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lsmartisan/widget/letters/AlphabetsConfig;->KOREA_ALPHABETS:[Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lsmartisan/widget/letters/AlphabetsConfig;->JAPAN_ALPHABETS:[Ljava/lang/String;

    return-object p0

    :cond_1
    const-string v0, "ru"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 6
    sget-object p0, Lsmartisan/widget/letters/AlphabetsConfig;->RUSSIAN_ALPHABETS:[Ljava/lang/String;

    return-object p0

    .line 7
    :cond_2
    sget-object p0, Lsmartisan/widget/letters/AlphabetsConfig;->ENGLISH_ALPHABETS:[Ljava/lang/String;

    return-object p0
.end method

.method public static isAlphabetsSupportedByLanguage(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "ru"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static isDisabled(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "*"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isJapaneseAlphabet(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lsmartisan/widget/letters/AlphabetsConfig;->JAPAN_ALPHABETS:[Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isKoreaAlphabet(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lsmartisan/widget/letters/AlphabetsConfig;->KOREA_ALPHABETS:[Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isPlaceholder(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".~"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isRussianAlphabet(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lsmartisan/widget/letters/AlphabetsConfig;->RUSSIAN_ALPHABETS:[Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSurnameSupportedByLanguage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 4
    invoke-static {p1}, Lsmartisan/widget/letters/AlphabetsConfig;->isKoreaAlphabet(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2

    .line 5
    :cond_3
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    invoke-static {p1}, Lsmartisan/widget/letters/AlphabetsConfig;->isJapaneseAlphabet(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    const-string v0, "ru"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 8
    invoke-static {p1}, Lsmartisan/widget/letters/AlphabetsConfig;->isRussianAlphabet(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method public static isSymbol(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".>"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static numRowsByLanguage(Ljava/lang/String;)F
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x41100000    # 9.0f

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v2, 0x41480000    # 12.5f

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "ru"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 4
    sget-boolean p0, Lsmartisan/widget/letters/AlphabetsConfig;->mNorussian:Z

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public static setRussianAlphabetWithEnglish()V
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/widget/letters/AlphabetsConfig;->ENGLISH_ALPHABETS:[Ljava/lang/String;

    sput-object v0, Lsmartisan/widget/letters/AlphabetsConfig;->RUSSIAN_ALPHABETS:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lsmartisan/widget/letters/AlphabetsConfig;->mNorussian:Z

    return-void
.end method

.method public static surnameTypeSupportedByLanguage(Ljava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const-string v0, "ru"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v1
.end method
