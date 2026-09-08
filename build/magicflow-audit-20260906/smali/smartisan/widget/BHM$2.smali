.class Lsmartisan/widget/BHM$2;
.super Ljava/lang/Object;
.source "BHM.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/BHM;->initBottomFolderListDialog(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/BHM;


# direct methods
.method constructor <init>(Lsmartisan/widget/BHM;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BHM$2;->this$0:Lsmartisan/widget/BHM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BHM$2;->this$0:Lsmartisan/widget/BHM;

    invoke-static {v0}, Lsmartisan/widget/BHM;->access$100(Lsmartisan/widget/BHM;)Lsmartisan/widget/BHM$OnBHMListItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/BHM$2;->this$0:Lsmartisan/widget/BHM;

    invoke-static {v0}, Lsmartisan/widget/BHM;->access$100(Lsmartisan/widget/BHM;)Lsmartisan/widget/BHM$OnBHMListItemClickListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lsmartisan/widget/BHM$OnBHMListItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method
