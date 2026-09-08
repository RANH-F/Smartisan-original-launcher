.class Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2;
.super Ljava/lang/Object;
.source "AppSuggestionCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->loadAppIcon(ILcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;

.field final synthetic val$appSuggestionItemInfo:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2;->this$0:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2;->val$appSuggestionItemInfo:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    iput p3, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2;->val$appSuggestionItemInfo:Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->loadAppIcon()Landroid/graphics/drawable/Drawable;

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2$1;-><init>(Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
