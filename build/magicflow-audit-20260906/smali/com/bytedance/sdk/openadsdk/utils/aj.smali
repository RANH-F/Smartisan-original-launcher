.class public Lcom/bytedance/sdk/openadsdk/utils/aj;
.super Ljava/lang/Object;
.source "VerifyCertsChain.java"


# direct methods
.method public static a([Ljavax/security/cert/Certificate;)Z
    .locals 5

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a([Ljavax/security/cert/Certificate;I)[Ljavax/security/cert/X509Certificate;

    move-result-object v3

    .line 3
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a([Ljavax/security/cert/X509Certificate;)Z

    move-result v4

    if-nez v4, :cond_0

    return v1

    .line 4
    :cond_0
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static a([Ljavax/security/cert/X509Certificate;)Z
    .locals 5

    .line 11
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_0

    .line 12
    aget-object v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    .line 13
    aget-object v4, p0, v2

    .line 14
    :try_start_0
    invoke-virtual {v4}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    .line 15
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_0
    return v3
.end method

.method private static a([Ljavax/security/cert/Certificate;I)[Ljavax/security/cert/X509Certificate;
    .locals 4

    move v0, p1

    .line 5
    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 6
    aget-object v1, p0, v0

    check-cast v1, Ljavax/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljavax/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v3, p0, v2

    check-cast v3, Ljavax/security/cert/X509Certificate;

    .line 7
    invoke-virtual {v3}, Ljavax/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    .line 8
    invoke-interface {v1, v3}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 9
    new-array v1, v0, [Ljavax/security/cert/X509Certificate;

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_2

    add-int v3, p1, v2

    .line 10
    aget-object v3, p0, v3

    check-cast v3, Ljavax/security/cert/X509Certificate;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object v1
.end method
