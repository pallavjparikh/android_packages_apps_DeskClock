.class final Lcom/android/deskclock/timer/TimerItemFragment$TimeTextListener;
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
    name = "TimeTextListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/TimerItemFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/timer/TimerItemFragment;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerItemFragment$TimeTextListener;->this$0:Lcom/android/deskclock/timer/TimerItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/timer/TimerItemFragment;Lcom/android/deskclock/timer/TimerItemFragment$1;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerItemFragment$TimeTextListener;-><init>(Lcom/android/deskclock/timer/TimerItemFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerItemFragment$TimeTextListener;->this$0:Lcom/android/deskclock/timer/TimerItemFragment;

    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerItemFragment;->getTimer()Lcom/android/deskclock/data/Timer;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Lcom/android/deskclock/data/Timer;->isPaused()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/deskclock/data/Timer;->isReset()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/data/Timer;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 132
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/deskclock/data/DataModel;->pauseTimer(Lcom/android/deskclock/data/Timer;)V

    goto :goto_1

    .line 130
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/deskclock/data/DataModel;->startTimer(Lcom/android/deskclock/data/Timer;)V

    :cond_2
    :goto_1
    return-void
.end method
