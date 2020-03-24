.class final Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeClickListener;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeClickListener;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Lcom/android/deskclock/stopwatch/StopwatchFragment$1;)V
    .locals 0

    .line 606
    invoke-direct {p0, p1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeClickListener;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 609
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$TimeClickListener;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-static {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$900(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/Stopwatch;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 610
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->pauseStopwatch()Lcom/android/deskclock/data/Stopwatch;

    goto :goto_0

    .line 612
    :cond_0
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->startStopwatch()Lcom/android/deskclock/data/Stopwatch;

    :goto_0
    return-void
.end method
