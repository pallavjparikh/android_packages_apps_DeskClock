.class public final Lcom/android/deskclock/stopwatch/StopwatchFragment;
.super Lcom/android/deskclock/DeskClockFragment;
.source "StopwatchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;,
        Lcom/android/deskclock/stopwatch/StopwatchFragment$ScrollPositionWatcher;,
        Lcom/android/deskclock/stopwatch/StopwatchFragment$CircleTouchListener;,
        Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeClickListener;,
        Lcom/android/deskclock/stopwatch/StopwatchFragment$StopwatchWatcher;,
        Lcom/android/deskclock/stopwatch/StopwatchFragment$TabWatcher;,
        Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeUpdateRunnable;
    }
.end annotation


# instance fields
.field private mGradientItemDecoration:Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;

.field private mHundredthsTimeText:Landroid/widget/TextView;

.field private mLapsAdapter:Lcom/android/deskclock/stopwatch/LapsAdapter;

.field private mLapsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mLapsList:Landroidx/recyclerview/widget/RecyclerView;

.field private mMainTimeText:Landroid/widget/TextView;

.field private mStopwatchTextController:Lcom/android/deskclock/StopwatchTextController;

.field private final mStopwatchWatcher:Lcom/android/deskclock/data/StopwatchListener;

.field private mStopwatchWrapper:Landroid/view/View;

.field private final mTabWatcher:Lcom/android/deskclock/uidata/TabListener;

.field private mTime:Lcom/android/deskclock/stopwatch/StopwatchCircleView;

.field private final mTimeUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 118
    sget-object v0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->STOPWATCH:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-direct {p0, v0}, Lcom/android/deskclock/DeskClockFragment;-><init>(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    .line 81
    new-instance v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$TabWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$TabWatcher;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Lcom/android/deskclock/stopwatch/StopwatchFragment$1;)V

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTabWatcher:Lcom/android/deskclock/uidata/TabListener;

    .line 84
    new-instance v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeUpdateRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeUpdateRunnable;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Lcom/android/deskclock/stopwatch/StopwatchFragment$1;)V

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeUpdateRunnable:Ljava/lang/Runnable;

    .line 87
    new-instance v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$StopwatchWatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$StopwatchWatcher;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Lcom/android/deskclock/stopwatch/StopwatchFragment$1;)V

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStopwatchWatcher:Lcom/android/deskclock/data/StopwatchListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/TextView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mMainTimeText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/TextView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mHundredthsTimeText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->adjustWakeLock()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/deskclock/stopwatch/StopwatchFragment;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->updateUI(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->updateTime()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Lcom/android/deskclock/stopwatch/StopwatchCircleView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/stopwatch/StopwatchCircleView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/view/View;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStopwatchWrapper:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Lcom/android/deskclock/data/Stopwatch;
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    return-object p0
.end method

.method private adjustWakeLock()V
    .locals 2

    .line 442
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->isApplicationInForeground()Z

    move-result v0

    .line 443
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/data/Stopwatch;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/deskclock/DeskClockFragment;->isTabSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 446
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->releaseWakeLock()V

    :goto_0
    return-void
.end method

.method private canRecordMoreLaps()Z
    .locals 0

    .line 470
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->canAddMoreLaps()Z

    move-result p0

    return p0
.end method

.method private doAddLap()V
    .locals 3

    const v0, 0x7f11017d

    const v1, 0x7f1101e6

    .line 381
    invoke-static {v0, v1}, Lcom/android/deskclock/events/Events;->sendStopwatchEvent(II)V

    .line 384
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/LapsAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/stopwatch/LapsAdapter;->addLap()Lcom/android/deskclock/data/Lap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 390
    invoke-virtual {p0, v1}, Lcom/android/deskclock/DeskClockFragment;->updateFab(I)V

    .line 392
    invoke-virtual {v0}, Lcom/android/deskclock/data/Lap;->getLapNumber()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 396
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 398
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/stopwatch/StopwatchCircleView;

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {v0}, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->update()V

    .line 404
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->showOrHideLaps(Z)V

    .line 408
    :cond_2
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private doPause()V
    .locals 1

    const p0, 0x7f11017e

    const v0, 0x7f1101e6

    .line 328
    invoke-static {p0, v0}, Lcom/android/deskclock/events/Events;->sendStopwatchEvent(II)V

    .line 329
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->pauseStopwatch()Lcom/android/deskclock/data/Stopwatch;

    return-void
.end method

.method private doReset()V
    .locals 3

    .line 336
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/Stopwatch;->getState()Lcom/android/deskclock/data/Stopwatch$State;

    move-result-object v0

    const v1, 0x7f11017f

    const v2, 0x7f1101e6

    .line 337
    invoke-static {v1, v2}, Lcom/android/deskclock/events/Events;->sendStopwatchEvent(II)V

    .line 338
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/data/DataModel;->resetStopwatch()Lcom/android/deskclock/data/Stopwatch;

    .line 339
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mMainTimeText:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 340
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mHundredthsTimeText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 341
    sget-object v1, Lcom/android/deskclock/data/Stopwatch$State;->RUNNING:Lcom/android/deskclock/data/Stopwatch$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 342
    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClockFragment;->updateFab(I)V

    :cond_0
    return-void
.end method

.method private doShare()V
    .locals 5

    const/16 v0, 0x20

    .line 351
    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClockFragment;->updateFab(I)V

    .line 353
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    array-length v3, v0

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    aget-object v0, v0, v1

    .line 355
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/LapsAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/stopwatch/LapsAdapter;->getShareText()Ljava/lang/String;

    move-result-object v1

    .line 359
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/android/deskclock/Utils;->isLOrLater()Z

    move-result v3

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    .line 362
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.TEXT"

    .line 363
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text/plain"

    .line 364
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 366
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f11023a

    .line 367
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 370
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot share lap data because no suitable receiving Activity exists"

    .line 372
    invoke-static {v1, v0}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 373
    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClockFragment;->updateFab(I)V

    :goto_0
    return-void
.end method

.method private doStart()V
    .locals 1

    const p0, 0x7f110185

    const v0, 0x7f1101e6

    .line 320
    invoke-static {p0, v0}, Lcom/android/deskclock/events/Events;->sendStopwatchEvent(II)V

    .line 321
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->startStopwatch()Lcom/android/deskclock/data/Stopwatch;

    return-void
.end method

.method private getStopwatch()Lcom/android/deskclock/data/Stopwatch;
    .locals 0

    .line 466
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    return-object p0
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 451
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private showOrHideLaps(Z)V
    .locals 4

    .line 415
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    if-eqz p1, :cond_1

    .line 423
    iget-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/LapsAdapter;

    invoke-virtual {p1}, Lcom/android/deskclock/stopwatch/LapsAdapter;->clearLaps()V

    .line 426
    :cond_1
    iget-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/LapsAdapter;

    invoke-virtual {p1}, Lcom/android/deskclock/stopwatch/LapsAdapter;->getItemCount()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v1

    .line 427
    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 429
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/deskclock/Utils;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 432
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const p1, 0x7f0700ad

    .line 433
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 434
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    .line 435
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    .line 436
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    .line 437
    invoke-virtual {v0, p1, p0, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_5
    return-void
.end method

.method private startUpdatingTime()V
    .locals 1

    .line 478
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->stopUpdatingTime()V

    .line 479
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mMainTimeText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopUpdatingTime()V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mMainTimeText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private toggleStopwatchState()V
    .locals 1

    .line 458
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doPause()V

    goto :goto_0

    .line 461
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doStart()V

    :goto_0
    return-void
.end method

.method private updateFab(Landroid/widget/ImageView;Z)V
    .locals 0

    .line 243
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/Stopwatch;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    const p0, 0x7f08009d

    .line 245
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const p0, 0x7f08009c

    .line 247
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f110237

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    const p0, 0x7f08009a

    .line 252
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    const p0, 0x7f080099

    .line 254
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f11023d

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 p0, 0x0

    .line 258
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateTime()V
    .locals 4

    .line 496
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Lcom/android/deskclock/data/Stopwatch;->getTotalTime()J

    move-result-wide v1

    .line 498
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStopwatchTextController:Lcom/android/deskclock/StopwatchTextController;

    invoke-virtual {v3, v1, v2}, Lcom/android/deskclock/StopwatchTextController;->setTimeString(J)V

    .line 501
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 502
    :goto_0
    invoke-virtual {v0}, Lcom/android/deskclock/data/Stopwatch;->isReset()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    .line 503
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/LapsAdapter;

    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/deskclock/stopwatch/LapsAdapter;->updateCurrentLap(Landroidx/recyclerview/widget/RecyclerView;J)V

    :cond_1
    return-void
.end method

.method private updateUI(I)V
    .locals 2

    .line 511
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->adjustWakeLock()V

    .line 514
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->updateTime()V

    .line 516
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/stopwatch/StopwatchCircleView;

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {v0}, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->update()V

    .line 520
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Lcom/android/deskclock/data/Stopwatch;->isReset()Z

    move-result v1

    if-nez v1, :cond_1

    .line 522
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->startUpdatingTime()V

    .line 526
    :cond_1
    invoke-virtual {v0}, Lcom/android/deskclock/data/Stopwatch;->isReset()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->showOrHideLaps(Z)V

    .line 529
    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClockFragment;->updateFab(I)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 123
    new-instance p3, Lcom/android/deskclock/stopwatch/LapsAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/android/deskclock/stopwatch/LapsAdapter;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/LapsAdapter;

    .line 124
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 125
    new-instance p3, Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mGradientItemDecoration:Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;

    const/4 p3, 0x0

    const v0, 0x7f0d007d

    .line 127
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0130

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/deskclock/stopwatch/StopwatchCircleView;

    iput-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/stopwatch/StopwatchCircleView;

    const p2, 0x7f0a00bc

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 130
    iget-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 131
    iget-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 132
    iget-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mGradientItemDecoration:Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 136
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/deskclock/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 137
    new-instance p2, Lcom/android/deskclock/stopwatch/StopwatchFragment$ScrollPositionWatcher;

    invoke-direct {p2, p0, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$ScrollPositionWatcher;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Lcom/android/deskclock/stopwatch/StopwatchFragment$1;)V

    .line 138
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 139
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/deskclock/DeskClockFragment;->setTabScrolledToTop(Z)V

    .line 143
    :goto_0
    iget-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/LapsAdapter;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p2, 0x7f0a0132

    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mMainTimeText:Landroid/widget/TextView;

    const p2, 0x7f0a0131

    .line 147
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mHundredthsTimeText:Landroid/widget/TextView;

    .line 148
    new-instance p2, Lcom/android/deskclock/StopwatchTextController;

    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mMainTimeText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mHundredthsTimeText:Landroid/widget/TextView;

    invoke-direct {p2, v2, v3}, Lcom/android/deskclock/StopwatchTextController;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStopwatchTextController:Lcom/android/deskclock/StopwatchTextController;

    const p2, 0x7f0a0133

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStopwatchWrapper:Landroid/view/View;

    .line 151
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p2

    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStopwatchWatcher:Lcom/android/deskclock/data/StopwatchListener;

    invoke-virtual {p2, v2}, Lcom/android/deskclock/data/DataModel;->addStopwatchListener(Lcom/android/deskclock/data/StopwatchListener;)V

    .line 153
    iget-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStopwatchWrapper:Landroid/view/View;

    new-instance v2, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeClickListener;

    invoke-direct {v2, p0, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeClickListener;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Lcom/android/deskclock/stopwatch/StopwatchFragment$1;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/stopwatch/StopwatchCircleView;

    if-eqz p2, :cond_1

    .line 155
    iget-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStopwatchWrapper:Landroid/view/View;

    new-instance v2, Lcom/android/deskclock/stopwatch/StopwatchFragment$CircleTouchListener;

    invoke-direct {v2, p0, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$CircleTouchListener;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Lcom/android/deskclock/stopwatch/StopwatchFragment$1;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    :cond_1
    iget-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mMainTimeText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f04009c

    .line 159
    invoke-static {p2, v0}, Lcom/android/deskclock/ThemeUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    const v2, 0x1010036

    .line 160
    invoke-static {p2, v2}, Lcom/android/deskclock/ThemeUtils;->resolveColor(Landroid/content/Context;I)I

    move-result p2

    .line 161
    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x2

    new-array v4, v3, [[I

    new-array v5, v3, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, p3

    new-array v5, p3, [I

    aput-object v5, v4, v1

    new-array v3, v3, [I

    aput p2, v3, p3

    aput v0, v3, v1

    invoke-direct {v2, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 164
    iget-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mMainTimeText:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 165
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mHundredthsTimeText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        -0x10102fe
        -0x10100a7
    .end array-data
.end method

.method public onDestroyView()V
    .locals 1

    .line 215
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 217
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStopwatchWatcher:Lcom/android/deskclock/data/StopwatchListener;

    invoke-virtual {v0, p0}, Lcom/android/deskclock/data/DataModel;->removeStopwatchListener(Lcom/android/deskclock/data/StopwatchListener;)V

    return-void
.end method

.method public onFabClick(Landroid/widget/ImageView;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->toggleStopwatchState()V

    return-void
.end method

.method public onLeftButtonClick(Landroid/widget/Button;)V
    .locals 0

    .line 227
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doReset()V

    return-void
.end method

.method public onMorphFab(Landroid/widget/ImageView;)V
    .locals 1

    .line 268
    invoke-static {}, Lcom/android/deskclock/Utils;->isNOrLater()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->updateFab(Landroid/widget/ImageView;Z)V

    .line 270
    invoke-static {p1}, Lcom/android/deskclock/AnimatorUtils;->startDrawableAnimation(Landroid/widget/ImageView;)V

    return-void
.end method

.method public onRightButtonClick(Landroid/widget/Button;)V
    .locals 1

    .line 232
    sget-object p1, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->$SwitchMap$com$android$deskclock$data$Stopwatch$State:[I

    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/Stopwatch;->getState()Lcom/android/deskclock/data/Stopwatch$State;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doShare()V

    goto :goto_0

    .line 234
    :cond_1
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doAddLap()V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 172
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 174
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.deskclock.action.START_STOPWATCH"

    .line 178
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 179
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/data/DataModel;->startStopwatch()Lcom/android/deskclock/data/Stopwatch;

    .line 181
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v2, "com.android.deskclock.action.PAUSE_STOPWATCH"

    .line 182
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/data/DataModel;->pauseStopwatch()Lcom/android/deskclock/data/Stopwatch;

    .line 185
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 190
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/LapsAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/16 v0, 0x9

    .line 193
    invoke-direct {p0, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->updateUI(I)V

    .line 196
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTabWatcher:Lcom/android/deskclock/uidata/TabListener;

    invoke-virtual {v0, p0}, Lcom/android/deskclock/uidata/UiDataModel;->addTabListener(Lcom/android/deskclock/uidata/TabListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 201
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 204
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->stopUpdatingTime()V

    .line 207
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTabWatcher:Lcom/android/deskclock/uidata/TabListener;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/uidata/UiDataModel;->removeTabListener(Lcom/android/deskclock/uidata/TabListener;)V

    .line 210
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->releaseWakeLock()V

    return-void
.end method

.method public onUpdateFab(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 262
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->updateFab(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public onUpdateFabButtons(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 5

    .line 275
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    .line 276
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setClickable(Z)V

    const v2, 0x7f110238

    .line 277
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 278
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 280
    sget-object v2, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->$SwitchMap$com$android$deskclock$data$Stopwatch$State:[I

    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/deskclock/data/Stopwatch;->getState()Lcom/android/deskclock/data/Stopwatch$State;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v2, v1, :cond_2

    const/4 p0, 0x2

    if-eq v2, p0, :cond_1

    const/4 p0, 0x3

    if-eq v2, p0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 283
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 284
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 296
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 297
    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    const p0, 0x7f11023a

    .line 298
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setText(I)V

    .line 299
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 288
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->canRecordMoreLaps()Z

    move-result p0

    const p1, 0x7f110235

    .line 289
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(I)V

    .line 290
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setClickable(Z)V

    if-eqz p0, :cond_3

    move v3, v4

    .line 292
    :cond_3
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
