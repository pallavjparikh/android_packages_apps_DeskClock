.class Lcom/android/deskclock/stopwatch/StopwatchFragment$StopwatchWatcher;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"

# interfaces
.implements Lcom/android/deskclock/data/StopwatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopwatchWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$StopwatchWatcher;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Lcom/android/deskclock/stopwatch/StopwatchFragment$1;)V
    .locals 0

    .line 582
    invoke-direct {p0, p1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$StopwatchWatcher;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    return-void
.end method


# virtual methods
.method public lapAdded(Lcom/android/deskclock/data/Lap;)V
    .locals 0

    return-void
.end method

.method public stopwatchUpdated(Lcom/android/deskclock/data/Stopwatch;Lcom/android/deskclock/data/Stopwatch;)V
    .locals 0

    .line 585
    invoke-virtual {p2}, Lcom/android/deskclock/data/Stopwatch;->isReset()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 587
    iget-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$StopwatchWatcher;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/deskclock/DeskClockFragment;->setTabScrolledToTop(Z)V

    .line 588
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->isApplicationInForeground()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 589
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$StopwatchWatcher;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$1300(Lcom/android/deskclock/stopwatch/StopwatchFragment;I)V

    :cond_0
    return-void

    .line 593
    :cond_1
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->isApplicationInForeground()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 594
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$StopwatchWatcher;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    const/16 p1, 0xb

    invoke-static {p0, p1}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$1300(Lcom/android/deskclock/stopwatch/StopwatchFragment;I)V

    :cond_2
    return-void
.end method
