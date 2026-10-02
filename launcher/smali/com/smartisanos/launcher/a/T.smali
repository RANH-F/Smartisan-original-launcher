.class Lcom/smartisanos/launcher/a/T;
.super Lcom/smartisanos/smengine/n;
.source "UninstallApp.java"


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    # Already running on GL: cancellation must release the original input lock.
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->hd()V

    return-void
.end method
