.class final Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeUpdateRunnable;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeUpdateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeUpdateRunnable;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Lcom/android/deskclock/stopwatch/StopwatchFragment$1;)V
    .locals 0

    .line 536
    invoke-direct {p0, p1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeUpdateRunnable;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 539
    invoke-static {}, Lcom/android/deskclock/Utils;->now()J

    move-result-wide v0

    .line 541
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeUpdateRunnable;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-static {v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$600(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    .line 544
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeUpdateRunnable;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-static {v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$700(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Lcom/android/deskclock/stopwatch/StopwatchCircleView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeUpdateRunnable;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-static {v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$700(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Lcom/android/deskclock/stopwatch/StopwatchCircleView;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeUpdateRunnable;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-static {v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$800(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/view/View;

    move-result-object v2

    .line 545
    :goto_0
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeUpdateRunnable;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-static {v3}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$900(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Lcom/android/deskclock/data/Stopwatch;

    move-result-object v3

    .line 546
    invoke-virtual {v3}, Lcom/android/deskclock/data/Stopwatch;->isPaused()Z

    move-result v4

    const-wide/16 v5, 0x1f4

    if-eqz v4, :cond_1

    const-wide/16 v7, 0x3e8

    rem-long v7, v0, v7

    cmp-long v4, v7, v5

    if-gez v4, :cond_1

    .line 548
    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 551
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeUpdateRunnable;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-static {v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$1000(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 552
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeUpdateRunnable;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-static {v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$1100(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_2

    .line 554
    :cond_2
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeUpdateRunnable;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-static {v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$1000(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 555
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeUpdateRunnable;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-static {v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$1100(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 558
    :goto_2
    invoke-virtual {v3}, Lcom/android/deskclock/data/Stopwatch;->isReset()Z

    move-result v2

    if-nez v2, :cond_4

    .line 559
    invoke-virtual {v3}, Lcom/android/deskclock/data/Stopwatch;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const-wide/16 v5, 0x19

    .line 562
    :goto_3
    invoke-static {}, Lcom/android/deskclock/Utils;->now()J

    move-result-wide v2

    const-wide/16 v7, 0x0

    add-long/2addr v0, v5

    sub-long/2addr v0, v2

    .line 563
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 564
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeUpdateRunnable;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-static {v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$1000(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
