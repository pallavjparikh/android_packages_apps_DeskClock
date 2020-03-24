.class public Lcom/android/deskclock/timer/ExpiredTimersActivity;
.super Lcom/android/deskclock/BaseActivity;
.source "ExpiredTimersActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/timer/ExpiredTimersActivity$TimerChangeWatcher;,
        Lcom/android/deskclock/timer/ExpiredTimersActivity$FabClickListener;,
        Lcom/android/deskclock/timer/ExpiredTimersActivity$TimeUpdateRunnable;
    }
.end annotation


# instance fields
.field private mExpiredTimersScrollView:Landroid/view/ViewGroup;

.field private mExpiredTimersView:Landroid/view/ViewGroup;

.field private final mTimeUpdateRunnable:Ljava/lang/Runnable;

.field private final mTimerChangeWatcher:Lcom/android/deskclock/data/TimerListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/android/deskclock/BaseActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/android/deskclock/timer/ExpiredTimersActivity$TimeUpdateRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/timer/ExpiredTimersActivity$TimeUpdateRunnable;-><init>(Lcom/android/deskclock/timer/ExpiredTimersActivity;Lcom/android/deskclock/timer/ExpiredTimersActivity$1;)V

    iput-object v0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mTimeUpdateRunnable:Ljava/lang/Runnable;

    .line 53
    new-instance v0, Lcom/android/deskclock/timer/ExpiredTimersActivity$TimerChangeWatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/timer/ExpiredTimersActivity$TimerChangeWatcher;-><init>(Lcom/android/deskclock/timer/ExpiredTimersActivity;Lcom/android/deskclock/timer/ExpiredTimersActivity$1;)V

    iput-object v0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mTimerChangeWatcher:Lcom/android/deskclock/data/TimerListener;

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/timer/ExpiredTimersActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mExpiredTimersView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/deskclock/timer/ExpiredTimersActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->stopUpdatingTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/deskclock/timer/ExpiredTimersActivity;)Lcom/android/deskclock/data/TimerListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mTimerChangeWatcher:Lcom/android/deskclock/data/TimerListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/deskclock/timer/ExpiredTimersActivity;Lcom/android/deskclock/data/Timer;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->addTimer(Lcom/android/deskclock/data/Timer;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/deskclock/timer/ExpiredTimersActivity;Lcom/android/deskclock/data/Timer;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->removeTimer(Lcom/android/deskclock/data/Timer;)V

    return-void
.end method

.method private addTimer(Lcom/android/deskclock/data/Timer;)V
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mExpiredTimersScrollView:Landroid/view/ViewGroup;

    new-instance v1, Landroid/transition/AutoTransition;

    invoke-direct {v1}, Landroid/transition/AutoTransition;-><init>()V

    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 164
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result v0

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mExpiredTimersView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const v4, 0x7f0d0084

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/TimerItem;

    .line 168
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 169
    iget-object v2, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mExpiredTimersView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v2, 0x7f0a014e

    .line 172
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x0

    .line 173
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v3, 0x8

    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0a00f7

    .line 177
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 178
    new-instance v1, Lcom/android/deskclock/timer/ExpiredTimersActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/android/deskclock/timer/ExpiredTimersActivity$1;-><init>(Lcom/android/deskclock/timer/ExpiredTimersActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-direct {p0}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->getExpiredTimers()Ljava/util/List;

    move-result-object p1

    .line 188
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->centerFirstTimer()V

    goto :goto_0

    .line 190
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 191
    invoke-direct {p0}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->uncenterFirstTimer()V

    :cond_2
    :goto_0
    return-void
.end method

.method private centerFirstTimer()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mExpiredTimersView:Landroid/view/ViewGroup;

    .line 225
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    .line 226
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 227
    iget-object p0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mExpiredTimersView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method private getExpiredTimers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Timer;",
            ">;"
        }
    .end annotation

    .line 241
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->getExpiredTimers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private removeTimer(Lcom/android/deskclock/data/Timer;)V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mExpiredTimersScrollView:Landroid/view/ViewGroup;

    new-instance v1, Landroid/transition/AutoTransition;

    invoke-direct {v1}, Landroid/transition/AutoTransition;-><init>()V

    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 201
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result p1

    .line 202
    iget-object v0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mExpiredTimersView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 204
    iget-object v2, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mExpiredTimersView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 205
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mExpiredTimersView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->getExpiredTimers()Ljava/util/List;

    move-result-object p1

    .line 213
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 215
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 216
    invoke-direct {p0}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->centerFirstTimer()V

    :cond_3
    :goto_2
    return-void
.end method

.method private startUpdatingTime()V
    .locals 1

    .line 147
    invoke-direct {p0}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->stopUpdatingTime()V

    .line 148
    iget-object v0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mExpiredTimersView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mTimeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopUpdatingTime()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mExpiredTimersView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mTimeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private uncenterFirstTimer()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mExpiredTimersView:Landroid/view/ViewGroup;

    .line 235
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 236
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 237
    iget-object p0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mExpiredTimersView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 127
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 128
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x18

    if-eq v0, v2, :cond_0

    const/16 v2, 0x19

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_0

    const/16 v2, 0x50

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    const p1, 0x7f1101e7

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/DataModel;->resetOrDeleteExpiredTimers(I)V

    return v1

    .line 139
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 63
    invoke-super {p0, p1}, Lcom/android/deskclock/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-direct {p0}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->getExpiredTimers()Ljava/util/List;

    move-result-object p1

    .line 68
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "No expired timers, skipping display."

    .line 69
    invoke-static {v0, p1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0d0041

    .line 74
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x7f0a0098

    .line 76
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mExpiredTimersView:Landroid/view/ViewGroup;

    const v0, 0x7f0a0099

    .line 77
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mExpiredTimersScrollView:Landroid/view/ViewGroup;

    const v0, 0x7f0a009a

    .line 79
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/deskclock/timer/ExpiredTimersActivity$FabClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/deskclock/timer/ExpiredTimersActivity$FabClickListener;-><init>(Lcom/android/deskclock/timer/ExpiredTimersActivity;Lcom/android/deskclock/timer/ExpiredTimersActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0097

    .line 81
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x680081

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    .line 95
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 99
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/data/Timer;

    .line 100
    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->addTimer(Lcom/android/deskclock/data/Timer;)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    iget-object p0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mTimerChangeWatcher:Lcom/android/deskclock/data/TimerListener;

    invoke-virtual {p1, p0}, Lcom/android/deskclock/data/DataModel;->addTimerListener(Lcom/android/deskclock/data/TimerListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 121
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 122
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity;->mTimerChangeWatcher:Lcom/android/deskclock/data/TimerListener;

    invoke-virtual {v0, p0}, Lcom/android/deskclock/data/DataModel;->removeTimerListener(Lcom/android/deskclock/data/TimerListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 115
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 116
    invoke-direct {p0}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->stopUpdatingTime()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 109
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 110
    invoke-direct {p0}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->startUpdatingTime()V

    return-void
.end method
