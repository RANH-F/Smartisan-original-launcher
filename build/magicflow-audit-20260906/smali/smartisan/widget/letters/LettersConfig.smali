.class public Lsmartisan/widget/letters/LettersConfig;
.super Ljava/lang/Object;
.source "LettersConfig.java"


# static fields
.field private static ENGLISH_LETTERS:[Ljava/lang/String;

.field private static JAPANESE_LETTERS:[Ljava/lang/String;

.field private static KOREA_LETTERS:[Ljava/lang/String;

.field private static RUSSIAN_LETTERS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 38

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

    const-string v26, "#"

    .line 1
    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/letters/LettersConfig;->ENGLISH_LETTERS:[Ljava/lang/String;

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

    const-string v15, "A"

    const-string v16, ".B"

    const-string v17, "D"

    const-string v18, ".E"

    const-string v19, "G"

    const-string v20, ".H"

    const-string v21, "J"

    const-string v22, ".K"

    const-string v23, "M"

    const-string v24, ".N"

    const-string v25, "P"

    const-string v26, ".Q"

    const-string v27, "S"

    const-string v28, ".T"

    const-string v29, "V"

    const-string v30, ".W"

    const-string v31, "Y"

    const-string v32, ".Z"

    const-string v33, "#"

    .line 2
    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/letters/LettersConfig;->KOREA_LETTERS:[Ljava/lang/String;

    const-string v1, "\u3042"

    const-string v2, "\u304b"

    const-string v3, "\u3055"

    const-string v4, "\u305f"

    const-string v5, "\u306a"

    const-string v6, "\u306f"

    const-string v7, "\u307e"

    const-string v8, "\u3084"

    const-string v9, "\u3089"

    const-string v10, "\u308f"

    const-string v11, "A"

    const-string v12, ".B"

    const-string v13, "D"

    const-string v14, ".E"

    const-string v15, "G"

    const-string v16, ".H"

    const-string v17, "J"

    const-string v18, ".K"

    const-string v19, "M"

    const-string v20, ".N"

    const-string v21, "P"

    const-string v22, ".Q"

    const-string v23, "S"

    const-string v24, ".T"

    const-string v25, "V"

    const-string v26, ".W"

    const-string v27, "Y"

    const-string v28, ".Z"

    const-string v29, "#"

    .line 3
    filled-new-array/range {v1 .. v29}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/letters/LettersConfig;->JAPANESE_LETTERS:[Ljava/lang/String;

    const-string v1, "\u0410"

    const-string v2, ".\u0411"

    const-string v3, "\u0413"

    const-string v4, ".\u0414"

    const-string v5, "\u0417"

    const-string v6, ".\u0418"

    const-string v7, "\u041a"

    const-string v8, ".\u041b"

    const-string v9, "\u041d"

    const-string v10, ".\u041e"

    const-string v11, "\u0421"

    const-string v12, ".\u0422"

    const-string v13, "\u0424"

    const-string v14, ".\u0425"

    const-string v15, "\u0427"

    const-string v16, ".\u0428"

    const-string v17, "\u044b"

    const-string v18, ".\u044c"

    const-string v19, "A"

    const-string v20, ".B"

    const-string v21, "D"

    const-string v22, ".E"

    const-string v23, "G"

    const-string v24, ".H"

    const-string v25, "J"

    const-string v26, ".K"

    const-string v27, "M"

    const-string v28, ".N"

    const-string v29, "P"

    const-string v30, ".Q"

    const-string v31, "S"

    const-string v32, ".T"

    const-string v33, "V"

    const-string v34, ".W"

    const-string v35, "Y"

    const-string v36, ".Z"

    const-string v37, "#"

    .line 4
    filled-new-array/range {v1 .. v37}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/letters/LettersConfig;->RUSSIAN_LETTERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLocaleLetter(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/16 p0, 0xe

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 2
    :cond_1
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0xa

    if-ge p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    const-string v0, "ru"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x5

    if-ge p1, p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1

    :cond_5
    return v2
.end method

.method public static lettersByLanguage(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lsmartisan/widget/letters/LettersConfig;->KOREA_LETTERS:[Ljava/lang/String;

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
    sget-object p0, Lsmartisan/widget/letters/LettersConfig;->JAPANESE_LETTERS:[Ljava/lang/String;

    return-object p0

    :cond_1
    const-string v0, "ru"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 6
    sget-object p0, Lsmartisan/widget/letters/LettersConfig;->RUSSIAN_LETTERS:[Ljava/lang/String;

    return-object p0

    .line 7
    :cond_2
    sget-object p0, Lsmartisan/widget/letters/LettersConfig;->ENGLISH_LETTERS:[Ljava/lang/String;

    return-object p0
.end method

.method public static setRussianLetterWithEnglish()V
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/widget/letters/LettersConfig;->ENGLISH_LETTERS:[Ljava/lang/String;

    sput-object v0, Lsmartisan/widget/letters/LettersConfig;->RUSSIAN_LETTERS:[Ljava/lang/String;

    return-void
.end method
