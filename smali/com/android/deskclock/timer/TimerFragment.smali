.class public final Lcom/android/deskclock/timer/TimerFragment;
.super Lcom/android/deskclock/DeskClockFragment;
.source "TimerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;,
        Lcom/android/deskclock/timer/TimerFragment$TimerPageChangeListener;,
        Lcom/android/deskclock/timer/TimerFragment$TimeUpdateRunnable;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/deskclock/timer/TimerPagerAdapter;

.field private mCreateTimerView:Lcom/android/deskclock/timer/TimerSetupView;

.field private mCreatingTimer:Z

.field private mCurrentView:Landroid/view/View;

.field private mPageIndicators:[Landroid/widget/ImageView;

.field private final mTimeUpdateRunnable:Ljava/lang/Runnable;

.field private final mTimerPageChangeListener:Lcom/android/deskclock/timer/TimerFragment$TimerPageChangeListener;

.field private mTimerSetupState:Ljava/io/Serializable;

.field private final mTimerWatcher:Lcom/android/deskclock/data/TimerListener;

.field private mTimersView:Landroid/view/View;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 101
    sget-object v0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->TIMERS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-direct {p0, v0}, Lcom/android/deskclock/DeskClockFragment;-><init>(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    .line 72
    new-instance v0, Lcom/android/deskclock/timer/TimerFragment$TimerPageChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/timer/TimerFragment$TimerPageChangeListener;-><init>(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerFragment$1;)V

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerPageChangeListener:Lcom/android/deskclock/timer/TimerFragment$TimerPageChangeListener;

    .line 75
    new-instance v0, Lcom/android/deskclock/timer/TimerFragment$TimeUpdateRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/timer/TimerFragment$TimeUpdateRunnable;-><init>(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerFragment$1;)V

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimeUpdateRunnable:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/timer/TimerFragment$TimerWatcher;-><init>(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerFragment$1;)V

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerWatcher:Lcom/android/deskclock/data/TimerListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/deskclock/timer/TimerFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->startUpdatingTime()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/deskclock/timer/TimerFragment;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreatingTimer:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/deskclock/timer/TimerFragment;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/deskclock/timer/TimerFragment;Landroid/view/View;Lcom/android/deskclock/data/Timer;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/deskclock/timer/TimerFragment;->animateToView(Landroid/view/View;Lcom/android/deskclock/data/Timer;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCurrentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/deskclock/timer/TimerFragment;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->showTimersView(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerSetupView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreateTimerView:Lcom/android/deskclock/timer/TimerSetupView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/deskclock/timer/TimerFragment;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->showCreateTimerView(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerPagerAdapter;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerPagerAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/deskclock/timer/TimerFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->updatePageIndicators()V

    return-void
.end method

.method private animateTimerRemove(Lcom/android/deskclock/data/Timer;)V
    .locals 6

    .line 550
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/uidata/UiDataModel;->getShortAnimationDuration()J

    move-result-wide v0

    .line 552
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 553
    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 554
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 555
    new-instance v3, Lcom/android/deskclock/timer/TimerFragment$1;

    invoke-direct {v3, p0, p1}, Lcom/android/deskclock/timer/TimerFragment$1;-><init>(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/data/Timer;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 563
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {p0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 564
    invoke-virtual {p0, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 565
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 567
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 568
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 569
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateToView(Landroid/view/View;Lcom/android/deskclock/data/Timer;Z)V
    .locals 11

    .line 580
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCurrentView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersView:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    move v9, v0

    goto :goto_0

    :cond_1
    move v9, v1

    :goto_0
    if-eqz v9, :cond_2

    .line 586
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreateTimerView:Lcom/android/deskclock/timer/TimerSetupView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    const/16 v0, 0x20

    .line 591
    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClockFragment;->updateFab(I)V

    .line 593
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/uidata/UiDataModel;->getLongAnimationDuration()J

    move-result-wide v7

    .line 595
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 596
    new-instance v1, Lcom/android/deskclock/timer/TimerFragment$2;

    move-object v2, v1

    move-object v3, p0

    move-object v4, v0

    move v5, p3

    move-object v6, p1

    move-object v10, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/deskclock/timer/TimerFragment$2;-><init>(Lcom/android/deskclock/timer/TimerFragment;Landroid/view/ViewTreeObserver;ZLandroid/view/View;JZLcom/android/deskclock/data/Timer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method static computePageIndicatorStates(III)[I
    .locals 5

    .line 461
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 464
    div-int/lit8 v1, v0, 0x2

    sub-int v1, p0, v1

    add-int v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    if-lt v2, p2, :cond_0

    add-int/lit8 v2, p2, -0x1

    sub-int v1, v2, v0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    const/4 v3, 0x0

    if-gez v1, :cond_1

    add-int/lit8 v2, v0, -0x1

    move v1, v3

    .line 480
    :cond_1
    new-array p1, p1, [I

    .line 481
    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([II)V

    const/4 v4, 0x2

    if-ge v0, v4, :cond_2

    return-object p1

    :cond_2
    const v4, 0x7f0800b3

    .line 489
    invoke-static {p1, v3, v0, v4}, Ljava/util/Arrays;->fill([IIII)V

    if-lez v1, :cond_3

    const v4, 0x7f0800b5

    .line 493
    aput v4, p1, v3

    :cond_3
    add-int/lit8 p2, p2, -0x1

    if-ge v2, p2, :cond_4

    add-int/lit8 v0, v0, -0x1

    const p2, 0x7f0800b2

    .line 498
    aput p2, p1, v0

    :cond_4
    sub-int/2addr p0, v1

    const p2, 0x7f0800b4

    .line 502
    aput p2, p1, p0

    return-object p1
.end method

.method public static createTimerSetupIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/DeskClock;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.deskclock.action.TIMER_SETUP"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getTimer()Lcom/android/deskclock/data/Timer;
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerPagerAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerPagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerPagerAdapter;

    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/deskclock/timer/TimerPagerAdapter;->getTimer(I)Lcom/android/deskclock/data/Timer;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private hasTimers()Z
    .locals 0

    .line 678
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerPagerAdapter;

    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerPagerAdapter;->getCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showCreateTimerView(I)V
    .locals 2

    .line 512
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->stopUpdatingTime()V

    .line 515
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreateTimerView:Lcom/android/deskclock/timer/TimerSetupView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreateTimerView:Lcom/android/deskclock/timer/TimerSetupView;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCurrentView:Landroid/view/View;

    .line 522
    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClockFragment;->updateFab(I)V

    return-void
.end method

.method private showTimersView(I)V
    .locals 2

    const/4 v0, 0x0

    .line 530
    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetupState:Ljava/io/Serializable;

    .line 533
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreateTimerView:Lcom/android/deskclock/timer/TimerSetupView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCurrentView:Landroid/view/View;

    .line 540
    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClockFragment;->updateFab(I)V

    .line 543
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->startUpdatingTime()V

    return-void
.end method

.method private startUpdatingTime()V
    .locals 1

    .line 691
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->stopUpdatingTime()V

    .line 692
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopUpdatingTime()V
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateFab(Landroid/widget/ImageView;Z)V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersView:Landroid/view/View;

    const/4 v2, 0x0

    const v3, 0x7f110261

    const/4 v4, 0x4

    if-ne v0, v1, :cond_8

    .line 241
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->getTimer()Lcom/android/deskclock/data/Timer;

    move-result-object p0

    if-nez p0, :cond_0

    .line 243
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 247
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    sget-object v0, Lcom/android/deskclock/timer/TimerFragment$3;->$SwitchMap$com$android$deskclock$data$Timer$State:[I

    invoke-virtual {p0}, Lcom/android/deskclock/data/Timer;->getState()Lcom/android/deskclock/data/Timer$State;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const v1, 0x7f110262

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    const v2, 0x7f080099

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    if-eq p0, v4, :cond_1

    const/4 p2, 0x5

    if-eq p0, p2, :cond_1

    goto/16 :goto_3

    :cond_1
    const p0, 0x7f0800af

    .line 275
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_2
    if-eqz p2, :cond_3

    const p0, 0x7f08009a

    .line 267
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 269
    :cond_3
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_5

    const p0, 0x7f0800ae

    .line 259
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 261
    :cond_5
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_7

    const p0, 0x7f08009d

    .line 251
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_7
    const p0, 0x7f08009c

    .line 253
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    :goto_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 279
    :cond_8
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreateTimerView:Lcom/android/deskclock/timer/TimerSetupView;

    if-ne v0, p0, :cond_a

    .line 280
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerSetupView;->hasValidInput()Z

    move-result p0

    if-eqz p0, :cond_9

    const p0, 0x7f0800ab

    .line 281
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_9
    const/4 p0, 0x0

    .line 285
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    :goto_3
    return-void
.end method

.method private updatePageIndicators()V
    .locals 5

    .line 434
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 435
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mPageIndicators:[Landroid/widget/ImageView;

    array-length v1, v1

    .line 436
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerPagerAdapter;

    invoke-virtual {v2}, Lcom/android/deskclock/timer/TimerPagerAdapter;->getCount()I

    move-result v2

    .line 438
    invoke-static {v0, v1, v2}, Lcom/android/deskclock/timer/TimerFragment;->computePageIndicatorStates(III)[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 439
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 440
    aget v3, v0, v2

    .line 441
    iget-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mPageIndicators:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    if-nez v3, :cond_0

    const/16 v3, 0x8

    .line 443
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 445
    :cond_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f0d0083

    .line 107
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 109
    new-instance p2, Lcom/android/deskclock/timer/TimerPagerAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/android/deskclock/timer/TimerPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    iput-object p2, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerPagerAdapter;

    const p2, 0x7f0a0173

    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 111
    iget-object p2, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerPagerAdapter;

    invoke-virtual {p2, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 112
    iget-object p2, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerPageChangeListener:Lcom/android/deskclock/timer/TimerFragment$TimerPageChangeListener;

    invoke-virtual {p2, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const p2, 0x7f0a015f

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersView:Landroid/view/View;

    const p2, 0x7f0a014f

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/deskclock/timer/TimerSetupView;

    iput-object p2, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreateTimerView:Lcom/android/deskclock/timer/TimerSetupView;

    .line 116
    iget-object p2, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreateTimerView:Lcom/android/deskclock/timer/TimerSetupView;

    invoke-virtual {p2, p0}, Lcom/android/deskclock/timer/TimerSetupView;->setFabContainer(Lcom/android/deskclock/FabContainer;)V

    const/4 p2, 0x4

    new-array p2, p2, [Landroid/widget/ImageView;

    const v1, 0x7f0a00e5

    .line 118
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, p2, v0

    const v0, 0x7f0a00e6

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const v0, 0x7f0a00e7

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x2

    aput-object v0, p2, v1

    const v0, 0x7f0a00e8

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x3

    aput-object v0, p2, v1

    iput-object p2, p0, Lcom/android/deskclock/timer/TimerFragment;->mPageIndicators:[Landroid/widget/ImageView;

    .line 124
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p2

    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerPagerAdapter;

    invoke-virtual {p2, v0}, Lcom/android/deskclock/data/DataModel;->addTimerListener(Lcom/android/deskclock/data/TimerListener;)V

    .line 125
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p2

    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerWatcher:Lcom/android/deskclock/data/TimerListener;

    invoke-virtual {p2, v0}, Lcom/android/deskclock/data/DataModel;->addTimerListener(Lcom/android/deskclock/data/TimerListener;)V

    if-eqz p3, :cond_0

    const-string p2, "timer_setup_input"

    .line 129
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetupState:Ljava/io/Serializable;

    :cond_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 222
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 224
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/data/DataModel;->removeTimerListener(Lcom/android/deskclock/data/TimerListener;)V

    .line 225
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerWatcher:Lcom/android/deskclock/data/TimerListener;

    invoke-virtual {v0, p0}, Lcom/android/deskclock/data/DataModel;->removeTimerListener(Lcom/android/deskclock/data/TimerListener;)V

    return-void
.end method

.method public onFabClick(Landroid/widget/ImageView;)V
    .locals 10

    .line 330
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersView:Landroid/view/View;

    const v2, 0x7f110185

    const v3, 0x7f1101e6

    const/4 v4, 0x1

    if-ne v0, v1, :cond_4

    .line 331
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->getTimer()Lcom/android/deskclock/data/Timer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 338
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 339
    invoke-virtual {v0}, Lcom/android/deskclock/data/Timer;->getRemainingTime()J

    move-result-wide v5

    .line 341
    sget-object v1, Lcom/android/deskclock/timer/TimerFragment$3;->$SwitchMap$com$android$deskclock$data$Timer$State:[I

    invoke-virtual {v0}, Lcom/android/deskclock/data/Timer;->getState()Lcom/android/deskclock/data/Timer$State;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v1, v1, v7

    const-wide/16 v7, 0x0

    if-eq v1, v4, :cond_3

    const/4 v9, 0x2

    if-eq v1, v9, :cond_2

    const/4 v9, 0x3

    if-eq v1, v9, :cond_2

    const/4 p0, 0x4

    if-eq v1, p0, :cond_1

    const/4 p0, 0x5

    if-eq v1, p0, :cond_1

    goto/16 :goto_0

    .line 361
    :cond_1
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0, v0, v3}, Lcom/android/deskclock/data/DataModel;->resetOrDeleteTimer(Lcom/android/deskclock/data/Timer;I)Lcom/android/deskclock/data/Timer;

    goto :goto_0

    .line 352
    :cond_2
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/deskclock/data/DataModel;->startTimer(Lcom/android/deskclock/data/Timer;)V

    .line 353
    invoke-static {v2, v3}, Lcom/android/deskclock/events/Events;->sendTimerEvent(II)V

    cmp-long v0, v5, v7

    if-lez v0, :cond_5

    .line 355
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersView:Landroid/view/View;

    const v0, 0x7f110240

    invoke-static {p1, v0, v5, v6, v4}, Lcom/android/deskclock/data/TimerStringFormatter;->formatString(Landroid/content/Context;IJZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 343
    :cond_3
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/deskclock/data/DataModel;->pauseTimer(Lcom/android/deskclock/data/Timer;)V

    const v0, 0x7f110186

    .line 344
    invoke-static {v0, v3}, Lcom/android/deskclock/events/Events;->sendTimerEvent(II)V

    cmp-long v0, v5, v7

    if-lez v0, :cond_5

    .line 346
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersView:Landroid/view/View;

    const v0, 0x7f110241

    invoke-static {p1, v0, v5, v6, v4}, Lcom/android/deskclock/data/TimerStringFormatter;->formatString(Landroid/content/Context;IJZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 365
    :cond_4
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreateTimerView:Lcom/android/deskclock/timer/TimerSetupView;

    if-ne v0, p1, :cond_5

    .line 366
    iput-boolean v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreatingTimer:Z

    const/4 v0, 0x0

    .line 369
    :try_start_0
    invoke-virtual {p1}, Lcom/android/deskclock/timer/TimerSetupView;->getTimeInMillis()J

    move-result-wide v5

    .line 370
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v5, v6, v1, v0}, Lcom/android/deskclock/data/DataModel;->addTimer(JLjava/lang/String;Z)Lcom/android/deskclock/data/Timer;

    move-result-object p1

    const v1, 0x7f110174

    .line 371
    invoke-static {v1, v3}, Lcom/android/deskclock/events/Events;->sendTimerEvent(II)V

    .line 374
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/deskclock/data/DataModel;->startTimer(Lcom/android/deskclock/data/Timer;)V

    .line 375
    invoke-static {v2, v3}, Lcom/android/deskclock/events/Events;->sendTimerEvent(II)V

    .line 378
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    iput-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreatingTimer:Z

    .line 384
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v4}, Lcom/android/deskclock/timer/TimerFragment;->animateToView(Landroid/view/View;Lcom/android/deskclock/data/Timer;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 380
    iput-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreatingTimer:Z

    throw p1

    :cond_5
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreateTimerView:Lcom/android/deskclock/timer/TimerSetupView;

    if-ne v0, v1, :cond_0

    .line 424
    invoke-virtual {v1, p1, p2}, Lcom/android/deskclock/timer/TimerSetupView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 426
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/deskclock/DeskClockFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLeftButtonClick(Landroid/widget/Button;)V
    .locals 4

    .line 390
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersView:Landroid/view/View;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 392
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->getTimer()Lcom/android/deskclock/data/Timer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerPagerAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/timer/TimerPagerAdapter;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    .line 398
    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerFragment;->animateTimerRemove(Lcom/android/deskclock/data/Timer;)V

    goto :goto_0

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreateTimerView:Lcom/android/deskclock/timer/TimerSetupView;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/deskclock/timer/TimerFragment;->animateToView(Landroid/view/View;Lcom/android/deskclock/data/Timer;Z)V

    .line 403
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f110248

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreateTimerView:Lcom/android/deskclock/timer/TimerSetupView;

    if-ne v0, v1, :cond_3

    .line 406
    invoke-virtual {v1}, Lcom/android/deskclock/timer/TimerSetupView;->reset()V

    .line 408
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/deskclock/timer/TimerFragment;->animateToView(Landroid/view/View;Lcom/android/deskclock/data/Timer;Z)V

    .line 410
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f110245

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onMorphFab(Landroid/widget/ImageView;)V
    .locals 1

    .line 299
    invoke-static {}, Lcom/android/deskclock/Utils;->isNOrLater()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateFab(Landroid/widget/ImageView;Z)V

    .line 301
    invoke-static {p1}, Lcom/android/deskclock/AnimatorUtils;->startDrawableAnimation(Landroid/widget/ImageView;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 192
    invoke-super {p0}, Lcom/android/deskclock/DeskClockFragment;->onResume()V

    .line 195
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.android.deskclock.extra.TIMER_ID"

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/deskclock/data/DataModel;->getTimer(I)Lcom/android/deskclock/data/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/data/DataModel;->getTimers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 207
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/deskclock/timer/TimerFragment;->animateToView(Landroid/view/View;Lcom/android/deskclock/data/Timer;Z)V

    :cond_0
    return-void
.end method

.method public onRightButtonClick(Landroid/widget/Button;)V
    .locals 2

    .line 416
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCurrentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreateTimerView:Lcom/android/deskclock/timer/TimerSetupView;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 417
    invoke-direct {p0, v0, p1, v1}, Lcom/android/deskclock/timer/TimerFragment;->animateToView(Landroid/view/View;Lcom/android/deskclock/data/Timer;Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 230
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 233
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreateTimerView:Lcom/android/deskclock/timer/TimerSetupView;

    if-ne v0, v1, :cond_0

    .line 234
    invoke-virtual {v1}, Lcom/android/deskclock/timer/TimerSetupView;->getState()Ljava/io/Serializable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetupState:Ljava/io/Serializable;

    .line 235
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetupState:Ljava/io/Serializable;

    const-string v0, "timer_setup_input"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 137
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 140
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->updatePageIndicators()V

    .line 146
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const-string v3, "com.android.deskclock.action.TIMER_SETUP"

    .line 149
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 150
    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v3, "com.android.deskclock.extra.TIMER_ID"

    .line 152
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 153
    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/16 v0, 0x9

    if-eq v4, v2, :cond_1

    .line 159
    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerFragment;->showTimersView(I)V

    goto :goto_2

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->hasTimers()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetupState:Ljava/io/Serializable;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 171
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerFragment;->showTimersView(I)V

    goto :goto_2

    .line 163
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerFragment;->showCreateTimerView(I)V

    .line 165
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetupState:Ljava/io/Serializable;

    if-eqz v0, :cond_4

    .line 166
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreateTimerView:Lcom/android/deskclock/timer/TimerSetupView;

    invoke-virtual {v1, v0}, Lcom/android/deskclock/timer/TimerSetupView;->setState(Ljava/io/Serializable;)V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetupState:Ljava/io/Serializable;

    :cond_4
    :goto_2
    if-ne v4, v2, :cond_6

    .line 176
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getMostRecentExpiredTimer()Lcom/android/deskclock/data/Timer;

    move-result-object v0

    if-nez v0, :cond_5

    move v4, v2

    goto :goto_3

    .line 177
    :cond_5
    invoke-virtual {v0}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result v0

    move v4, v0

    :cond_6
    :goto_3
    if-eq v4, v2, :cond_7

    .line 182
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/deskclock/data/DataModel;->getTimer(I)Lcom/android/deskclock/data/Timer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 184
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/data/DataModel;->getTimers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 185
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_7
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 214
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 217
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->stopUpdatingTime()V

    return-void
.end method

.method public onUpdateFab(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 293
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateFab(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public onUpdateFabButtons(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 307
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setClickable(Z)V

    const p0, 0x7f110247

    .line 308
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(I)V

    .line 309
    invoke-virtual {p1}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 312
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setClickable(Z)V

    const p0, 0x7f110243

    .line 313
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setText(I)V

    .line 314
    invoke-virtual {p2}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 315
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCreateTimerView:Lcom/android/deskclock/timer/TimerSetupView;

    if-ne v0, v1, :cond_2

    .line 318
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setClickable(Z)V

    const v0, 0x7f110244

    .line 319
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 320
    invoke-virtual {p1}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 322
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->hasTimers()Z

    move-result p0

    const/4 v0, 0x4

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 324
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
