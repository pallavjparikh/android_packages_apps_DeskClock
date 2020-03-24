.class final Lcom/android/deskclock/DropShadowController$ScrollChangeWatcher;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "DropShadowController.java"

# interfaces
.implements Lcom/android/deskclock/uidata/TabScrollListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DropShadowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScrollChangeWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DropShadowController;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/DropShadowController;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/deskclock/DropShadowController$ScrollChangeWatcher;->this$0:Lcom/android/deskclock/DropShadowController;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/DropShadowController;Lcom/android/deskclock/DropShadowController$1;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/android/deskclock/DropShadowController$ScrollChangeWatcher;-><init>(Lcom/android/deskclock/DropShadowController;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/deskclock/DropShadowController$ScrollChangeWatcher;->this$0:Lcom/android/deskclock/DropShadowController;

    invoke-static {p1}, Lcom/android/deskclock/Utils;->isScrolledToTop(Landroid/view/View;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/android/deskclock/DropShadowController;->access$100(Lcom/android/deskclock/DropShadowController;Z)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/deskclock/DropShadowController$ScrollChangeWatcher;->this$0:Lcom/android/deskclock/DropShadowController;

    invoke-static {p1}, Lcom/android/deskclock/Utils;->isScrolledToTop(Landroid/view/View;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/android/deskclock/DropShadowController;->access$100(Lcom/android/deskclock/DropShadowController;Z)V

    return-void
.end method

.method public selectedTabScrollToTopChanged(Lcom/android/deskclock/uidata/UiDataModel$Tab;Z)V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/deskclock/DropShadowController$ScrollChangeWatcher;->this$0:Lcom/android/deskclock/DropShadowController;

    xor-int/lit8 p1, p2, 0x1

    invoke-static {p0, p1}, Lcom/android/deskclock/DropShadowController;->access$100(Lcom/android/deskclock/DropShadowController;Z)V

    return-void
.end method
