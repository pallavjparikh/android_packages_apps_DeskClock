.class final Lcom/android/deskclock/timer/TimerItemFragment$ResetAddListener;
.super Ljava/lang/Object;
.source "TimerItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/TimerItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResetAddListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/TimerItemFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/timer/TimerItemFragment;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerItemFragment$ResetAddListener;->this$0:Lcom/android/deskclock/timer/TimerItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/timer/TimerItemFragment;Lcom/android/deskclock/timer/TimerItemFragment$1;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerItemFragment$ResetAddListener;-><init>(Lcom/android/deskclock/timer/TimerItemFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerItemFragment$ResetAddListener;->this$0:Lcom/android/deskclock/timer/TimerItemFragment;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerItemFragment;->getTimer()Lcom/android/deskclock/data/Timer;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/android/deskclock/data/Timer;->isPaused()Z

    move-result v1

    const v2, 0x7f1101e6

    if-eqz v1, :cond_0

    .line 100
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Lcom/android/deskclock/data/DataModel;->resetOrDeleteTimer(Lcom/android/deskclock/data/Timer;I)Lcom/android/deskclock/data/Timer;

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v0}, Lcom/android/deskclock/data/Timer;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/deskclock/data/Timer;->isMissed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    :cond_1
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/deskclock/data/DataModel;->addTimerMinute(Lcom/android/deskclock/data/Timer;)V

    const v0, 0x7f110171

    .line 103
    invoke-static {v0, v2}, Lcom/android/deskclock/events/Events;->sendTimerEvent(II)V

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerItemFragment$ResetAddListener;->this$0:Lcom/android/deskclock/timer/TimerItemFragment;

    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerItemFragment;->getTimer()Lcom/android/deskclock/data/Timer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/Timer;->getRemainingTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_2

    const p0, 0x7f11023f

    const/4 v3, 0x1

    .line 109
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/deskclock/data/TimerStringFormatter;->formatString(Landroid/content/Context;IJZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
