.class Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$1$1;
.super Ljava/lang/Object;
.source "AppSuggestionInfoCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$1;

.field final synthetic val$shortcutInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$1;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$1$1;->this$0:Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$1;

    iput-object p2, p0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$1$1;->val$shortcutInfoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache$1$1;->val$shortcutInfoList:Ljava/util/List;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->access$200(Ljava/util/List;)V

    return-void
.end method
