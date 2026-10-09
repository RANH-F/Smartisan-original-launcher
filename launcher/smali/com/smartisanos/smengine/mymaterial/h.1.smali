.class public Lcom/smartisanos/smengine/mymaterial/h;
.super Lcom/smartisanos/smengine/mymaterial/f;
.source "MultiTexMaterial.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/y;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->As()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Ht()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->projectionTexturesReady()Z
    move-result v0
    if-nez v0, :projection_ready
    return-void
    :projection_ready
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p3, p2, v1, v0}, Lcom/smartisanos/smengine/mymaterial/f;->a(ZLcom/smartisanos/smengine/y;ZZ)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->p(Lcom/smartisanos/smengine/SceneNode;)V

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Nt()V

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Pt()V

    const/16 p1, 0x24

    .line 7
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->xc(I)V

    const/16 p1, 0x25

    .line 8
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->xc(I)V

    # uShadowRadius is inactive; Mali removes it from the linked program.

    const/16 p1, 0x26

    .line 10
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->yc(I)V

    const/16 p1, 0x27

    .line 11
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->yc(I)V

    const/16 p1, 0x28

    .line 12
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->yc(I)V

    const/16 p1, 0x29

    .line 13
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->yc(I)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->tc(I)V

    .line 15
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->wc(I)V

    const/4 p1, 0x2

    .line 16
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->vc(I)V

    const/4 p1, 0x3

    .line 17
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->uc(I)V

    const/4 p1, 0x4

    .line 18
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->uc(I)V

    const/4 p1, 0x5

    .line 19
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->uc(I)V

    const/4 p1, 0x6

    .line 20
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->uc(I)V

    const/4 p1, 0x7

    .line 21
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->uc(I)V

    .line 22
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;->b(Lcom/smartisanos/smengine/y;Z)V

    return-void
.end method
