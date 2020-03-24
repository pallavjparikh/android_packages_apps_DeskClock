.class Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;
.super Ljava/lang/Object;
.source "TimerFragment.java"

# interfaces
.implements Lcom/android/deskclock/data/TimerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/TimerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/TimerFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/timer/TimerFragment;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerFragment$1;)V
    .locals 0

    .line 744
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    return-void
.end method


# virtual methods
.method public timerAdded(Lcom/android/deskclock/data/Timer;)V
    .locals 0

    .line 747
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {p1}, Lcom/android/deskclock/timer/TimerFragment;->access$900(Lcom/android/deskclock/timer/TimerFragment;)V

    .line 751
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {p1}, Lcom/android/deskclock/timer/TimerFragment;->access$1100(Lcom/android/deskclock/timer/TimerFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 752
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClockFragment;->updateFab(I)V

    :cond_0
    return-void
.end method

.method public timerRemoved(Lcom/android/deskclock/data/Timer;)V
    .locals 2

    .line 781
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {p1}, Lcom/android/deskclock/timer/TimerFragment;->access$900(Lcom/android/deskclock/timer/TimerFragment;)V

    .line 782
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/android/deskclock/DeskClockFragment;->updateFab(I)V

    .line 784
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {p1}, Lcom/android/deskclock/timer/TimerFragment;->access$400(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {v0}, Lcom/android/deskclock/timer/TimerFragment;->access$300(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {p1}, Lcom/android/deskclock/timer/TimerFragment;->access$800(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerPagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/timer/TimerPagerAdapter;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 785
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {p0}, Lcom/android/deskclock/timer/TimerFragment;->access$600(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerSetupView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/deskclock/timer/TimerFragment;->access$1300(Lcom/android/deskclock/timer/TimerFragment;Landroid/view/View;Lcom/android/deskclock/data/Timer;Z)V

    :cond_0
    return-void
.end method

.method public timerUpdated(Lcom/android/deskclock/data/Timer;Lcom/android/deskclock/data/Timer;)V
    .locals 3

    .line 759
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/deskclock/data/Timer;->isReset()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {v0}, Lcom/android/deskclock/timer/TimerFragment;->access$1000(Lcom/android/deskclock/timer/TimerFragment;)V

    .line 764
    :cond_0
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getTimers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 767
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {v1}, Lcom/android/deskclock/timer/TimerFragment;->access$1200(Lcom/android/deskclock/timer/TimerFragment;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 768
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {p0}, Lcom/android/deskclock/timer/TimerFragment;->access$1200(Lcom/android/deskclock/timer/TimerFragment;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 770
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {v1}, Lcom/android/deskclock/timer/TimerFragment;->access$400(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {v2}, Lcom/android/deskclock/timer/TimerFragment;->access$300(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;

    move-result-object v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {v1}, Lcom/android/deskclock/timer/TimerFragment;->access$1200(Lcom/android/deskclock/timer/TimerFragment;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 772
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getState()Lcom/android/deskclock/data/Timer$State;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/deskclock/data/Timer;->getState()Lcom/android/deskclock/data/Timer$State;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 773
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/android/deskclock/data/Timer;->isReset()Z

    move-result p1

    if-nez p1, :cond_3

    .line 774
    :cond_2
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClockFragment;->updateFab(I)V

    :cond_3
    :goto_0
    return-void
.end method
