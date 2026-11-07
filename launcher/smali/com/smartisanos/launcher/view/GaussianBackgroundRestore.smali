.class public Lcom/smartisanos/launcher/view/GaussianBackgroundRestore;
.super Lcom/smartisanos/smengine/n;
.source "GaussianBackgroundRestore.java"

.field private final owner:Lcom/smartisanos/launcher/view/Eb;
.field private final generation:I

.method public constructor <init>(Lcom/smartisanos/launcher/view/Eb;)V
    .locals 1
    const/16 v0, 0x64
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/n;-><init>(I)V
    iput-object p1, p0, Lcom/smartisanos/launcher/view/GaussianBackgroundRestore;->owner:Lcom/smartisanos/launcher/view/Eb;
    invoke-static {}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->getEglContextGeneration()I
    move-result v0
    iput v0, p0, Lcom/smartisanos/launcher/view/GaussianBackgroundRestore;->generation:I
    return-void
.end method

.method public run()V
    .locals 2
    invoke-static {}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->getEglContextGeneration()I
    move-result v0
    iget v1, p0, Lcom/smartisanos/launcher/view/GaussianBackgroundRestore;->generation:I
    if-ne v0, v1, :done
    iget-object v0, p0, Lcom/smartisanos/launcher/view/GaussianBackgroundRestore;->owner:Lcom/smartisanos/launcher/view/Eb;
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;
    move-result-object v1
    if-ne v0, v1, :done
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;
    move-result-object v1
    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;
    move-result-object v1
    invoke-virtual {v1}, Lcom/smartisanos/smengine/k;->Vj()Lcom/smartisanos/smengine/Camera;
    move-result-object v1
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->rebuildGaussianBackground(Lcom/smartisanos/smengine/Camera;)V
    :done
    return-void
.end method
