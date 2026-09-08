.class Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2$1;
.super Ljava/lang/Object;
.source "AppSuggestionCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2$1;->this$1:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2$1;->this$1:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2;

    iget-object v1, v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;

    iget v2, v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2;->val$position:I

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2;->val$appSuggestionItemInfo:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    invoke-static {v1, v2, v0}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->access$100(Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;ILcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;)V

    return-void
.end method
