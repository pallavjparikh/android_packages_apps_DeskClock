.class Lcom/android/deskclock/timer/TimerFragment$TimeUpdateRunnable;
.super Ljava/lang/Object;
.source "TimerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/TimerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeUpdateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/TimerFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/timer/TimerFragment;)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$TimeUpdateRunnable;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerFragment$1;)V
    .locals 0

    .line 702
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment$TimeUpdateRunnable;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 705
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 707
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$TimeUpdateRunnable;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {v2}, Lcom/android/deskclock/timer/TimerFragment;->access$800(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/deskclock/timer/TimerPagerAdapter;->updateTime()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 710
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x14

    add-long/2addr v0, v6

    sub-long/2addr v0, v2

    .line 713
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 714
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$TimeUpdateRunnable;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {v2}, Lcom/android/deskclock/timer/TimerFragment;->access$300(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
