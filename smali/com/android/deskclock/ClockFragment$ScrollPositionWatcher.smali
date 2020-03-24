.class final Lcom/android/deskclock/ClockFragment$ScrollPositionWatcher;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ClockFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScrollPositionWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ClockFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/ClockFragment;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/android/deskclock/ClockFragment$ScrollPositionWatcher;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/ClockFragment;Lcom/android/deskclock/ClockFragment$1;)V
    .locals 0

    .line 316
    invoke-direct {p0, p1}, Lcom/android/deskclock/ClockFragment$ScrollPositionWatcher;-><init>(Lcom/android/deskclock/ClockFragment;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/android/deskclock/ClockFragment$ScrollPositionWatcher;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-static {p0}, Lcom/android/deskclock/ClockFragment;->access$1000(Lcom/android/deskclock/ClockFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-static {p1}, Lcom/android/deskclock/Utils;->isScrolledToTop(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClockFragment;->setTabScrolledToTop(Z)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/android/deskclock/ClockFragment$ScrollPositionWatcher;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-static {p0}, Lcom/android/deskclock/ClockFragment;->access$1000(Lcom/android/deskclock/ClockFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-static {p1}, Lcom/android/deskclock/Utils;->isScrolledToTop(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClockFragment;->setTabScrolledToTop(Z)V

    return-void
.end method
