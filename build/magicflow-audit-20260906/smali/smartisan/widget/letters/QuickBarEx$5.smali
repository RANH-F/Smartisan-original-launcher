.class Lsmartisan/widget/letters/QuickBarEx$5;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/letters/QuickBarEx;->initGridView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsmartisan/widget/letters/QuickBarEx;


# direct methods
.method constructor <init>(Lsmartisan/widget/letters/QuickBarEx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$5;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$5;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p1}, Lsmartisan/widget/letters/QuickBarEx;->access$600(Lsmartisan/widget/letters/QuickBarEx;)Z

    move-result p1

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return p4

    .line 2
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$5;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p1}, Lsmartisan/widget/letters/QuickBarEx;->access$200(Lsmartisan/widget/letters/QuickBarEx;)Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lsmartisan/widget/letters/QuickBarEx$AlphabetsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lsmartisan/widget/letters/AlphabetsConfig;->isSymbol(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lsmartisan/widget/letters/AlphabetsConfig;->surnameTypeSupportedByLanguage(Ljava/lang/String;)I

    move-result p1

    const/4 p4, 0x1

    if-ne p1, p4, :cond_1

    .line 4
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$5;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p1, p2, p3}, Lsmartisan/widget/letters/QuickBarEx;->access$700(Lsmartisan/widget/letters/QuickBarEx;Landroid/view/View;I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$5;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p1, p2, p3}, Lsmartisan/widget/letters/QuickBarEx;->access$800(Lsmartisan/widget/letters/QuickBarEx;Landroid/view/View;I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx$5;->this$0:Lsmartisan/widget/letters/QuickBarEx;

    invoke-static {p1, p4}, Lsmartisan/widget/letters/QuickBarEx;->access$902(Lsmartisan/widget/letters/QuickBarEx;Z)Z

    :cond_2
    return p4
.end method
