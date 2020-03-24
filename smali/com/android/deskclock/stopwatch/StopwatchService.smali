.class public final Lcom/android/deskclock/stopwatch/StopwatchService;
.super Landroid/app/Service;
.source "StopwatchService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.android.deskclock.extra.EVENT_LABEL"

    const v0, 0x7f1101e8

    .line 61
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 62
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p3, "com.android.deskclock.action.PAUSE_STOPWATCH"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v3

    goto :goto_1

    :sswitch_1
    const-string p3, "com.android.deskclock.action.SHOW_STOPWATCH"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_2
    const-string p3, "com.android.deskclock.action.START_STOPWATCH"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_1

    :sswitch_3
    const-string p3, "com.android.deskclock.action.LAP_STOPWATCH"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_1

    :sswitch_4
    const-string p3, "com.android.deskclock.action.RESET_STOPWATCH"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_4

    if-eq p2, v3, :cond_3

    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_1

    goto :goto_2

    :cond_1
    const p0, 0x7f11017d

    .line 89
    invoke-static {p0, p1}, Lcom/android/deskclock/events/Events;->sendStopwatchEvent(II)V

    .line 90
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->addLap()Lcom/android/deskclock/data/Lap;

    goto :goto_2

    :cond_2
    const p0, 0x7f11017f

    .line 84
    invoke-static {p0, p1}, Lcom/android/deskclock/events/Events;->sendStopwatchEvent(II)V

    .line 85
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->resetStopwatch()Lcom/android/deskclock/data/Stopwatch;

    goto :goto_2

    :cond_3
    const p0, 0x7f11017e

    .line 79
    invoke-static {p0, p1}, Lcom/android/deskclock/events/Events;->sendStopwatchEvent(II)V

    .line 80
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->pauseStopwatch()Lcom/android/deskclock/data/Stopwatch;

    goto :goto_2

    :cond_4
    const p0, 0x7f110185

    .line 74
    invoke-static {p0, p1}, Lcom/android/deskclock/events/Events;->sendStopwatchEvent(II)V

    .line 75
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->startStopwatch()Lcom/android/deskclock/data/Stopwatch;

    goto :goto_2

    :cond_5
    const p2, 0x7f110183

    .line 64
    invoke-static {p2, p1}, Lcom/android/deskclock/events/Events;->sendStopwatchEvent(II)V

    .line 67
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p1

    sget-object p2, Lcom/android/deskclock/uidata/UiDataModel$Tab;->STOPWATCH:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {p1, p2}, Lcom/android/deskclock/uidata/UiDataModel;->setSelectedTab(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    .line 68
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/android/deskclock/DeskClock;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 69
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a2b9a76 -> :sswitch_4
        -0x48e1c1ea -> :sswitch_3
        -0x45826f23 -> :sswitch_2
        -0x289fcd22 -> :sswitch_1
        -0x2602f68f -> :sswitch_0
    .end sparse-switch
.end method
