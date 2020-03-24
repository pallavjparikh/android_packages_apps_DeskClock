.class Lcom/android/deskclock/timer/ExpiredTimersActivity$TimeUpdateRunnable;
.super Ljava/lang/Object;
.source "ExpiredTimersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/ExpiredTimersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeUpdateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/ExpiredTimersActivity;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/timer/ExpiredTimersActivity;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity$TimeUpdateRunnable;->this$0:Lcom/android/deskclock/timer/ExpiredTimersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/timer/ExpiredTimersActivity;Lcom/android/deskclock/timer/ExpiredTimersActivity$1;)V
    .locals 0

    .line 247
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/ExpiredTimersActivity$TimeUpdateRunnable;-><init>(Lcom/android/deskclock/timer/ExpiredTimersActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 252
    iget-object v2, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity$TimeUpdateRunnable;->this$0:Lcom/android/deskclock/timer/ExpiredTimersActivity;

    invoke-static {v2}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->access$300(Lcom/android/deskclock/timer/ExpiredTimersActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 254
    iget-object v4, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity$TimeUpdateRunnable;->this$0:Lcom/android/deskclock/timer/ExpiredTimersActivity;

    invoke-static {v4}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->access$300(Lcom/android/deskclock/timer/ExpiredTimersActivity;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/timer/TimerItem;

    .line 255
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v5

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/deskclock/data/DataModel;->getTimer(I)Lcom/android/deskclock/data/Timer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 257
    invoke-virtual {v4, v5}, Lcom/android/deskclock/timer/TimerItem;->update(Lcom/android/deskclock/data/Timer;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 261
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x14

    add-long/2addr v0, v6

    sub-long/2addr v0, v2

    .line 264
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 265
    iget-object v2, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity$TimeUpdateRunnable;->this$0:Lcom/android/deskclock/timer/ExpiredTimersActivity;

    invoke-static {v2}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->access$300(Lcom/android/deskclock/timer/ExpiredTimersActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
