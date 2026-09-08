.class public Lcom/bytedance/embedapplog/InitConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/bytedance/embedapplog/IPicker;

.field private h:Z

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/bytedance/embedapplog/InitConfig;->i:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/embedapplog/InitConfig;->x:Z

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/embedapplog/InitConfig;->y:Z

    .line 5
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/bytedance/embedapplog/InitConfig;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAbClient()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getAbFeature()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getAbGroup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getAbVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAliyunUdid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getAppImei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleAid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getManifestVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getManifestVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/embedapplog/InitConfig;->p:I

    return v0
.end method

.method public getPicker()Lcom/bytedance/embedapplog/IPicker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->g:Lcom/bytedance/embedapplog/IPicker;

    return-object v0
.end method

.method public getProcess()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/embedapplog/InitConfig;->i:I

    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseBuild()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getTweakedChannel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/embedapplog/InitConfig;->o:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/embedapplog/InitConfig;->n:I

    return v0
.end method

.method public getVersionMinor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getZiJieCloudPkg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/InitConfig;->w:Ljava/lang/String;

    return-object v0
.end method

.method public isImeiEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/InitConfig;->y:Z

    return v0
.end method

.method public isMacEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/InitConfig;->x:Z

    return v0
.end method

.method public isPlayEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/InitConfig;->h:Z

    return v0
.end method

.method public setAbClient(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->r:Ljava/lang/String;

    return-object p0
.end method

.method public setAbFeature(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->u:Ljava/lang/String;

    return-object p0
.end method

.method public setAbGroup(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->t:Ljava/lang/String;

    return-object p0
.end method

.method public setAbVersion(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->s:Ljava/lang/String;

    return-object p0
.end method

.method public setAliyunUdid(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->f:Ljava/lang/String;

    return-object p0
.end method

.method public setAppImei(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->z:Ljava/lang/String;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->k:Ljava/lang/String;

    return-object p0
.end method

.method public setEnablePlay(Z)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/embedapplog/InitConfig;->h:Z

    return-object p0
.end method

.method public setGoogleAid(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setImeiEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/embedapplog/InitConfig;->y:Z

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setMacEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/embedapplog/InitConfig;->x:Z

    return-void
.end method

.method public setManifestVersion(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->q:Ljava/lang/String;

    return-object p0
.end method

.method public setManifestVersionCode(I)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/embedapplog/InitConfig;->p:I

    return-object p0
.end method

.method public setPicker(Lcom/bytedance/embedapplog/IPicker;)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->g:Lcom/bytedance/embedapplog/IPicker;

    return-object p0
.end method

.method public setProcess(Z)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1
    :goto_0
    iput p1, p0, Lcom/bytedance/embedapplog/InitConfig;->i:I

    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setReleaseBuild(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->j:Ljava/lang/String;

    return-object p0
.end method

.method public setTweakedChannel(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->m:Ljava/lang/String;

    return-object p0
.end method

.method public setUpdateVersionCode(I)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/embedapplog/InitConfig;->o:I

    return-object p0
.end method

.method public setUriConfig(I)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bytedance/embedapplog/c/a;->a(I)V

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->l:Ljava/lang/String;

    return-object p0
.end method

.method public setVersionCode(I)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/embedapplog/InitConfig;->n:I

    return-object p0
.end method

.method public setVersionMinor(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->v:Ljava/lang/String;

    return-object p0
.end method

.method public setZiJieCloudPkg(Ljava/lang/String;)Lcom/bytedance/embedapplog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/embedapplog/InitConfig;->w:Ljava/lang/String;

    return-object p0
.end method
