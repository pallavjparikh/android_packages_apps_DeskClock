.class final Lcom/android/deskclock/DeskClock$PageChangeWatcher;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PageChangeWatcher"
.end annotation


# instance fields
.field private mPriorState:I

.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/DeskClock;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 544
    iput p1, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->mPriorState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/DeskClock$1;)V
    .locals 0

    .line 541
    invoke-direct {p0, p1}, Lcom/android/deskclock/DeskClock$PageChangeWatcher;-><init>(Lcom/android/deskclock/DeskClock;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    .line 557
    iget v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->mPriorState:I

    const/4 v1, 0x2

    if-nez v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$900(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v1}, Lcom/android/deskclock/DeskClock;->access$1000(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 560
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$900(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 561
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    sget-object v1, Lcom/android/deskclock/DeskClock$FabState;->HIDING:Lcom/android/deskclock/DeskClock$FabState;

    invoke-static {v0, v1}, Lcom/android/deskclock/DeskClock;->access$802(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/DeskClock$FabState;)Lcom/android/deskclock/DeskClock$FabState;

    goto/16 :goto_1

    .line 562
    :cond_0
    iget v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->mPriorState:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    if-ne p1, v2, :cond_3

    .line 564
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$1100(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$1100(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$900(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$900(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v1}, Lcom/android/deskclock/DeskClock;->access$1000(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$900(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 573
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$900(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 575
    :goto_0
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    sget-object v1, Lcom/android/deskclock/DeskClock$FabState;->HIDING:Lcom/android/deskclock/DeskClock$FabState;

    invoke-static {v0, v1}, Lcom/android/deskclock/DeskClock;->access$802(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/DeskClock$FabState;)Lcom/android/deskclock/DeskClock$FabState;

    goto :goto_1

    :cond_3
    if-eq p1, v2, :cond_5

    .line 577
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$800(Lcom/android/deskclock/DeskClock;)Lcom/android/deskclock/DeskClock$FabState;

    move-result-object v0

    sget-object v1, Lcom/android/deskclock/DeskClock$FabState;->HIDING:Lcom/android/deskclock/DeskClock$FabState;

    if-ne v0, v1, :cond_5

    .line 579
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$900(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 581
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$900(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v1}, Lcom/android/deskclock/DeskClock;->access$1000(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 583
    :cond_4
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/deskclock/DeskClock;->updateFab(I)V

    .line 584
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$1100(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 587
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    sget-object v1, Lcom/android/deskclock/DeskClock$FabState;->SHOWING:Lcom/android/deskclock/DeskClock$FabState;

    invoke-static {v0, v1}, Lcom/android/deskclock/DeskClock;->access$802(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/DeskClock$FabState;)Lcom/android/deskclock/DeskClock$FabState;

    goto :goto_1

    :cond_5
    if-ne p1, v2, :cond_6

    .line 591
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    sget-object v1, Lcom/android/deskclock/DeskClock$FabState;->HIDE_ARMED:Lcom/android/deskclock/DeskClock$FabState;

    invoke-static {v0, v1}, Lcom/android/deskclock/DeskClock;->access$802(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/DeskClock$FabState;)Lcom/android/deskclock/DeskClock$FabState;

    .line 595
    :cond_6
    :goto_1
    iput p1, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->mPriorState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 549
    iget-object p1, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p1}, Lcom/android/deskclock/DeskClock;->access$800(Lcom/android/deskclock/DeskClock;)Lcom/android/deskclock/DeskClock$FabState;

    move-result-object p1

    sget-object p2, Lcom/android/deskclock/DeskClock$FabState;->HIDE_ARMED:Lcom/android/deskclock/DeskClock$FabState;

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 550
    iget-object p1, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    sget-object p2, Lcom/android/deskclock/DeskClock$FabState;->HIDING:Lcom/android/deskclock/DeskClock$FabState;

    invoke-static {p1, p2}, Lcom/android/deskclock/DeskClock;->access$802(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/DeskClock$FabState;)Lcom/android/deskclock/DeskClock$FabState;

    .line 551
    iget-object p0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p0}, Lcom/android/deskclock/DeskClock;->access$900(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 600
    iget-object p0, p0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p0}, Lcom/android/deskclock/DeskClock;->access$1200(Lcom/android/deskclock/DeskClock;)Lcom/android/deskclock/FragmentTabPagerAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/deskclock/FragmentTabPagerAdapter;->getDeskClockFragment(I)Lcom/android/deskclock/DeskClockFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/DeskClockFragment;->selectTab()V

    return-void
.end method
