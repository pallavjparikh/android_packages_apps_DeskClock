.class Lcom/android/deskclock/timer/TimerFragment$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TimerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/timer/TimerFragment;->animateTimerRemove(Lcom/android/deskclock/data/Timer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/TimerFragment;

.field final synthetic val$timerToRemove:Lcom/android/deskclock/data/Timer;


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/data/Timer;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$1;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    iput-object p2, p0, Lcom/android/deskclock/timer/TimerFragment$1;->val$timerToRemove:Lcom/android/deskclock/data/Timer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 558
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment$1;->val$timerToRemove:Lcom/android/deskclock/data/Timer;

    invoke-virtual {p1, p0}, Lcom/android/deskclock/data/DataModel;->removeTimer(Lcom/android/deskclock/data/Timer;)V

    const p0, 0x7f110175

    const p1, 0x7f1101e6

    .line 559
    invoke-static {p0, p1}, Lcom/android/deskclock/events/Events;->sendTimerEvent(II)V

    return-void
.end method
