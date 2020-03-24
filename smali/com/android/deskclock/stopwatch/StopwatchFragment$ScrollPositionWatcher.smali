.class final Lcom/android/deskclock/stopwatch/StopwatchFragment$ScrollPositionWatcher;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "StopwatchFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScrollPositionWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ScrollPositionWatcher;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Lcom/android/deskclock/stopwatch/StopwatchFragment$1;)V
    .locals 0

    .line 645
    invoke-direct {p0, p1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$ScrollPositionWatcher;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 655
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ScrollPositionWatcher;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-static {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$1400(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-static {p1}, Lcom/android/deskclock/Utils;->isScrolledToTop(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClockFragment;->setTabScrolledToTop(Z)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$ScrollPositionWatcher;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-static {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$1400(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-static {p1}, Lcom/android/deskclock/Utils;->isScrolledToTop(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClockFragment;->setTabScrolledToTop(Z)V

    return-void
.end method
