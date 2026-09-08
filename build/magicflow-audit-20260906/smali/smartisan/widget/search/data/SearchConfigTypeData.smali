.class public Lsmartisan/widget/search/data/SearchConfigTypeData;
.super Ljava/lang/Object;
.source "SearchConfigTypeData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final BOOM_ICON_MAPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsmartisan/widget/search/data/SearchConfigTypeData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_BOOM_ICON:I

.field private static final ICON_MAPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CLICK_URL:Ljava/lang/String; = "clickUrl"

.field public static final KEY_DEFAULT:Ljava/lang/String; = "default"

.field public static final KEY_ENNAME:Ljava/lang/String; = "enName"

.field public static final KEY_IDENTIFIER:Ljava/lang/String; = "identifier"

.field public static final KEY_IMG_URL:Ljava/lang/String; = "imgUrl"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_ORDER:Ljava/lang/String; = "order"

.field public static final KEY_TWNAME:Ljava/lang/String; = "twName"

.field public static final SEARCH_TYPE:Ljava/lang/String; = "search_type"

.field private static final SETTINGS_CONFIGS_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "SearchConfigTypeData"

.field public static final TYPE_BAIKE_BAIDU:Ljava/lang/String; = "baike_baidu"

.field public static final TYPE_BAIKE_HUDONG:Ljava/lang/String; = "baike_hudong"

.field public static final TYPE_BAIKE_WIKI_CN:Ljava/lang/String; = "baike_wikiCN"

.field public static final TYPE_BAIKE_WIKI_EN:Ljava/lang/String; = "baike_wikiEN"

.field public static final TYPE_DICT_BING:Ljava/lang/String; = "dictionary_bing"

.field public static final TYPE_DICT_GOOGLE:Ljava/lang/String; = "dictionary_google"

.field public static final TYPE_DICT_KINGSOFT:Ljava/lang/String; = "dictionary_iciba"

.field public static final TYPE_DICT_YOUDAO:Ljava/lang/String; = "dictionary_youdao"

.field public static final TYPE_SEARCH_360SO:Ljava/lang/String; = "search_360so"

.field public static final TYPE_SEARCH_BAIDU:Ljava/lang/String; = "search_baidu"

.field public static final TYPE_SEARCH_BING:Ljava/lang/String; = "search_bing"

.field public static final TYPE_SEARCH_GOOGLE:Ljava/lang/String; = "search_google"

.field public static final TYPE_SEARCH_SOUGOU:Ljava/lang/String; = "search_sogou"

.field public static final TYPE_SEARCH_TOUTIAO:Ljava/lang/String; = "search_toutiao"

.field public static final TYPE_THIRD_WECHAT:Ljava/lang/String; = "third_sogou"

.field public static final TYPE_THIRD_WEIBO:Ljava/lang/String; = "third_weibo"

.field public static final TYPE_THIRD_ZHIHU:Ljava/lang/String; = "third_zhihu"


# instance fields
.field private isDefault:Z

.field private mClickUrl:Ljava/lang/String;

.field private mEnName:Ljava/lang/String;

.field private mIdentifier:Ljava/lang/String;

.field private mImgUrl:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mOrder:I

.field private mTwName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    sget v0, Lsmartisan/widget/R$drawable;->boom_win_search_toutiao:I

    sput v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->DEFAULT_BOOM_ICON:I

    const-string v0, "content://com.smartisanos.gloable.searchconfig.provider"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->SETTINGS_CONFIGS_URI:Landroid/net/Uri;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    .line 5
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_sogou:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "search_sogou"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_baidu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "search_baidu"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_google:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "search_google"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_bing:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "search_bing"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_360so:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "search_360so"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_youdao:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v7, "dictionary_youdao"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_bingdict:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v8, "dictionary_bing"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_kingsoft:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v9, "dictionary_iciba"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_googletrans:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v10, "dictionary_google"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_baike:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v11, "baike_baidu"

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_hudongdict:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v12, "baike_hudong"

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_wiki_en:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v13, "baike_wikiEN"

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_wiki_cn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v14, "baike_wikiCN"

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_weixin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v15, "third_sogou"

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_weibo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v16, v15

    const-string v15, "third_weibo"

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->gloable_search_zhihu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v17, v15

    const-string v15, "third_zhihu"

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_sogou:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_baidu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_google:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_bing:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_360so:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_toutiao:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "search_toutiao"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_youdao:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_bingdict:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_kingsoft:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_googletrans:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_baike:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_hudongdict:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_wiki_en:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_wiki_cn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_weixin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_weibo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    sget v1, Lsmartisan/widget/R$drawable;->boom_win_search_zhihu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "third_zhihu"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Lsmartisan/widget/search/data/SearchConfigTypeData$1;

    invoke-direct {v0}, Lsmartisan/widget/search/data/SearchConfigTypeData$1;-><init>()V

    sput-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mIdentifier:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mName:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mEnName:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mTwName:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mOrder:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mClickUrl:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mImgUrl:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->isDefault:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lsmartisan/widget/search/data/SearchConfigTypeData$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/search/data/SearchConfigTypeData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getUrlBitmapBySettings(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "url"

    .line 3
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lsmartisan/widget/search/data/SearchConfigTypeData;->SETTINGS_CONFIGS_URI:Landroid/net/Uri;

    const-string v2, "getIcon"

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string p2, "icon"

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUrlBitmapBySettings exception ex="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SearchConfigTypeData"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBoomIconBitmapBySettings(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lsmartisan/widget/search/data/SearchConfigTypeData;->getRealImgUrlByIndex(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsmartisan/widget/search/data/SearchConfigTypeData;->getUrlBitmapBySettings(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBoomIconId()I
    .locals 2

    .line 1
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mIdentifier:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->DEFAULT_BOOM_ICON:I

    return v0

    .line 3
    :cond_0
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->BOOM_ICON_MAPS:Ljava/util/Map;

    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mIdentifier:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mClickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEnName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mEnName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconBitmapBySettings(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lsmartisan/widget/search/data/SearchConfigTypeData;->getRealImgUrlByIndex(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsmartisan/widget/search/data/SearchConfigTypeData;->getUrlBitmapBySettings(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getIconId()I
    .locals 2

    .line 1
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mIdentifier:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    sget-object v0, Lsmartisan/widget/search/data/SearchConfigTypeData;->ICON_MAPS:Ljava/util/Map;

    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mIdentifier:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mOrder:I

    return v0
.end method

.method public getRealImgUrlByIndex(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 1
    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mImgUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mImgUrl:Ljava/lang/String;

    const-string v2, "\\|\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    array-length v2, v1

    if-lt p1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    aget-object p1, v1, p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getTwName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mTwName:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->isDefault:Z

    return v0
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mClickUrl:Ljava/lang/String;

    return-void
.end method

.method public setDefault(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->isDefault:Z

    return-void
.end method

.method public setEnName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mEnName:Ljava/lang/String;

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mName:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mOrder:I

    return-void
.end method

.method public setTwName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mTwName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mIdentifier:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mEnName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mOrder:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mClickUrl:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mImgUrl:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->isDefault:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "{mIdentifier:%s,mName:%s,mEnName:%s,mOrder:%d,mClickUrl:%s,mImgUrl:%s,isDefault:%s}\n"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mEnName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mTwName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mOrder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mClickUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->mImgUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-boolean p2, p0, Lsmartisan/widget/search/data/SearchConfigTypeData;->isDefault:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
