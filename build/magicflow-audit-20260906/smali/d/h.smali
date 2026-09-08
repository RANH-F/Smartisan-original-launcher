.class public final Ld/h;
.super Ljava/lang/Object;
.source "CipherSuite.java"


# static fields
.field static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ld/h;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ld/h;

.field public static final e:Ld/h;

.field public static final f:Ld/h;

.field public static final g:Ld/h;

.field public static final h:Ld/h;

.field public static final i:Ld/h;

.field public static final j:Ld/h;

.field public static final k:Ld/h;

.field public static final l:Ld/h;

.field public static final m:Ld/h;

.field public static final n:Ld/h;

.field public static final o:Ld/h;

.field public static final p:Ld/h;

.field public static final q:Ld/h;

.field public static final r:Ld/h;


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld/h$a;

    invoke-direct {v0}, Ld/h$a;-><init>()V

    sput-object v0, Ld/h;->b:Ljava/util/Comparator;

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ld/h;->b:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Ld/h;->c:Ljava/util/Map;

    const-string v0, "SSL_RSA_WITH_NULL_MD5"

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "SSL_RSA_WITH_NULL_SHA"

    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    const/4 v1, 0x3

    .line 5
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "SSL_RSA_WITH_RC4_128_MD5"

    const/4 v1, 0x4

    .line 6
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "SSL_RSA_WITH_RC4_128_SHA"

    const/4 v1, 0x5

    .line 7
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x8

    .line 8
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "SSL_RSA_WITH_DES_CBC_SHA"

    const/16 v1, 0x9

    .line 9
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0xa

    .line 10
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    move-result-object v0

    sput-object v0, Ld/h;->d:Ld/h;

    const-string v0, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x11

    .line 11
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    const/16 v1, 0x12

    .line 12
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x13

    .line 13
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x14

    .line 14
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    const/16 v1, 0x15

    .line 15
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x16

    .line 16
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    const/16 v1, 0x17

    .line 17
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "SSL_DH_anon_WITH_RC4_128_MD5"

    const/16 v1, 0x18

    .line 18
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x19

    .line 19
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "SSL_DH_anon_WITH_DES_CBC_SHA"

    const/16 v1, 0x1a

    .line 20
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x1b

    .line 21
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_KRB5_WITH_DES_CBC_SHA"

    const/16 v1, 0x1e

    .line 22
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x1f

    .line 23
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_KRB5_WITH_RC4_128_SHA"

    const/16 v1, 0x20

    .line 24
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_KRB5_WITH_DES_CBC_MD5"

    const/16 v1, 0x22

    .line 25
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    const/16 v1, 0x23

    .line 26
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_KRB5_WITH_RC4_128_MD5"

    const/16 v1, 0x24

    .line 27
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    const/16 v1, 0x26

    .line 28
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    const/16 v1, 0x28

    .line 29
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    const/16 v1, 0x29

    .line 30
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    const/16 v1, 0x2b

    .line 31
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x2f

    .line 32
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    move-result-object v0

    sput-object v0, Ld/h;->e:Ld/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x32

    .line 33
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x33

    .line 34
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x34

    .line 35
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x35

    .line 36
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    move-result-object v0

    sput-object v0, Ld/h;->f:Ld/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x38

    .line 37
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x39

    .line 38
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x3a

    .line 39
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_RSA_WITH_NULL_SHA256"

    const/16 v1, 0x3b

    .line 40
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x3c

    .line 41
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x3d

    .line 42
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x40

    .line 43
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v1, 0x41

    .line 44
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v1, 0x44

    .line 45
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v1, 0x45

    .line 46
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x67

    .line 47
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6a

    .line 48
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6b

    .line 49
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x6c

    .line 50
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6d

    .line 51
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v1, 0x84

    .line 52
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v1, 0x87

    .line 53
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v1, 0x88

    .line 54
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_PSK_WITH_RC4_128_SHA"

    const/16 v1, 0x8a

    .line 55
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x8b

    .line 56
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_PSK_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x8c

    .line 57
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_PSK_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x8d

    .line 58
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_RSA_WITH_SEED_CBC_SHA"

    const/16 v1, 0x96

    .line 59
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0x9c

    .line 60
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    move-result-object v0

    sput-object v0, Ld/h;->g:Ld/h;

    const-string v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0x9d

    .line 61
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    move-result-object v0

    sput-object v0, Ld/h;->h:Ld/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0x9e

    .line 62
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0x9f

    .line 63
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0xa2

    .line 64
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0xa3

    .line 65
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0xa6

    .line 66
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0xa7

    .line 67
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    const/16 v1, 0xff

    .line 68
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_FALLBACK_SCSV"

    const/16 v1, 0x5600

    .line 69
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    const v1, 0xc001

    .line 70
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    const v1, 0xc002

    .line 71
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc003

    .line 72
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc004

    .line 73
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc005

    .line 74
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    const v1, 0xc006

    .line 75
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    const v1, 0xc007

    .line 76
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc008

    .line 77
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc009

    .line 78
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    move-result-object v0

    sput-object v0, Ld/h;->i:Ld/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc00a

    .line 79
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    move-result-object v0

    sput-object v0, Ld/h;->j:Ld/h;

    const-string v0, "TLS_ECDH_RSA_WITH_NULL_SHA"

    const v1, 0xc00b

    .line 80
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    const v1, 0xc00c

    .line 81
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc00d

    .line 82
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc00e

    .line 83
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc00f

    .line 84
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    const v1, 0xc010

    .line 85
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    const v1, 0xc011

    .line 86
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc012

    .line 87
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc013

    .line 88
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    move-result-object v0

    sput-object v0, Ld/h;->k:Ld/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc014

    .line 89
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    move-result-object v0

    sput-object v0, Ld/h;->l:Ld/h;

    const-string v0, "TLS_ECDH_anon_WITH_NULL_SHA"

    const v1, 0xc015

    .line 90
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    const v1, 0xc016

    .line 91
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc017

    .line 92
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    const v1, 0xc018

    .line 93
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    const v1, 0xc019

    .line 94
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc023

    .line 95
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc024

    .line 96
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc025

    .line 97
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc026

    .line 98
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc027

    .line 99
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc028

    .line 100
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc029

    .line 101
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc02a

    .line 102
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02b

    .line 103
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    move-result-object v0

    sput-object v0, Ld/h;->m:Ld/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc02c

    .line 104
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    move-result-object v0

    sput-object v0, Ld/h;->n:Ld/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02d

    .line 105
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc02e

    .line 106
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02f

    .line 107
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    move-result-object v0

    sput-object v0, Ld/h;->o:Ld/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc030

    .line 108
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    move-result-object v0

    sput-object v0, Ld/h;->p:Ld/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc031

    .line 109
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc032

    .line 110
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    const v1, 0xc035

    .line 111
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    const v1, 0xc036

    .line 112
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    const-string v0, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    const v1, 0xcca8

    .line 113
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    move-result-object v0

    sput-object v0, Ld/h;->q:Ld/h;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    const v1, 0xcca9

    .line 114
    invoke-static {v0, v1}, Ld/h;->a(Ljava/lang/String;I)Ld/h;

    move-result-object v0

    sput-object v0, Ld/h;->r:Ld/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Ld/h;->a:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ld/h;
    .locals 3

    const-class v0, Ld/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Ld/h;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/h;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ld/h;

    invoke-direct {v1, p0}, Ld/h;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v2, Ld/h;->c:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/lang/String;I)Ld/h;
    .locals 0

    .line 9
    invoke-static {p0}, Ld/h;->a(Ljava/lang/String;)Ld/h;

    move-result-object p0

    return-object p0
.end method

.method static varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ld/h;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 7
    invoke-static {v3}, Ld/h;->a(Ljava/lang/String;)Ld/h;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/h;->a:Ljava/lang/String;

    return-object v0
.end method
