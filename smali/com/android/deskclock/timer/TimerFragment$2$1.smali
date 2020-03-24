.class Lcom/android/deskclock/timer/TimerFragment$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TimerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/timer/TimerFragment$2;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/timer/TimerFragment$2;


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/TimerFragment$2;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$2$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 633
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 634
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$2$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$2;

    iget-boolean v0, p1, Lcom/android/deskclock/timer/TimerFragment$2;->val$toTimers:Z

    const/16 v1, 0x40

    if-eqz v0, :cond_0

    .line 635
    iget-object p1, p1, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {p1, v1}, Lcom/android/deskclock/timer/TimerFragment;->access$500(Lcom/android/deskclock/timer/TimerFragment;I)V

    .line 638
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$2$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$2;

    iget-object p1, p1, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {p1}, Lcom/android/deskclock/timer/TimerFragment;->access$600(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerSetupView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/timer/TimerSetupView;->reset()V

    goto :goto_0

    .line 640
    :cond_0
    iget-object p1, p1, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {p1, v1}, Lcom/android/deskclock/timer/TimerFragment;->access$700(Lcom/android/deskclock/timer/TimerFragment;I)V

    .line 643
    :goto_0
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$2$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$2;

    iget-object p1, p1, Lcom/android/deskclock/timer/TimerFragment$2;->val$timerToRemove:Lcom/android/deskclock/data/Timer;

    if-eqz p1, :cond_1

    .line 644
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$2$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$2;

    iget-object v0, v0, Lcom/android/deskclock/timer/TimerFragment$2;->val$timerToRemove:Lcom/android/deskclock/data/Timer;

    invoke-virtual {p1, v0}, Lcom/android/deskclock/data/DataModel;->removeTimer(Lcom/android/deskclock/data/Timer;)V

    const p1, 0x7f110175

    const v0, 0x7f1101e6

    .line 645
    invoke-static {p1, v0}, Lcom/android/deskclock/events/Events;->sendTimerEvent(II)V

    .line 650
    :cond_1
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment$2$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$2;

    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClockFragment;->updateFab(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 625
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 628
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment$2$1;->this$1:Lcom/android/deskclock/timer/TimerFragment$2;

    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClockFragment;->updateFab(I)V

    return-void
.end method
