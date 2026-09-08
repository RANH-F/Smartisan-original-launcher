.class public interface abstract Lcom/pgl/sys/ces/out/ISdkLite;
.super Ljava/lang/Object;


# static fields
.field public static final REGION_INTERNEL:I = 0x0

.field public static final REGION_SINGAPOER:I = 0x2

.field public static final REGION_UNSET:I = 0xff

.field public static final REGION_USA_EAST:I = 0x3


# virtual methods
.method public abstract SetRegionType(I)V
.end method

.method public abstract debugEntry(Landroid/content/Context;I)Ljava/lang/String;
.end method

.method public abstract onEvent()Ljava/lang/String;
.end method

.method public abstract pullSg()Ljava/lang/String;
.end method

.method public abstract pullVer(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract reportNow(Ljava/lang/String;)V
.end method

.method public abstract setCustomInfo(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setEfficientDebug(Z)V
.end method

.method public abstract setParams(Ljava/lang/String;Ljava/lang/String;)V
.end method
