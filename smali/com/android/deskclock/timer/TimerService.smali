.class public final Lcom/android/deskclock/timer/TimerService;
.super Landroid/app/Service;
.source "TimerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static createAddMinuteTimerIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/timer/TimerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.deskclock.action.ADD_MINUTE_TIMER"

    .line 98
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.android.deskclock.extra.TIMER_ID"

    .line 99
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createResetExpiredTimersIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/timer/TimerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.deskclock.action.RESET_EXPIRED_TIMERS"

    .line 82
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createResetMissedTimersIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/timer/TimerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.deskclock.action.RESET_MISSED_TIMERS"

    .line 92
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createResetUnexpiredTimersIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/timer/TimerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.deskclock.action.RESET_UNEXPIRED_TIMERS"

    .line 87
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createTimerExpiredIntent(Landroid/content/Context;Lcom/android/deskclock/data/Timer;)Landroid/content/Intent;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result p1

    .line 75
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/timer/TimerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.deskclock.action.TIMER_EXPIRED"

    .line 76
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.android.deskclock.extra.TIMER_ID"

    .line 77
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createUpdateNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/timer/TimerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.deskclock.action.UPDATE_NOTIFICATION"

    .line 104
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    const-string p2, "com.android.deskclock.extra.TIMER_ID"

    .line 115
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string v0, "com.android.deskclock.extra.EVENT_LABEL"

    const v1, 0x7f1101e8

    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 117
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "com.android.deskclock.action.RESET_UNEXPIRED_TIMERS"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_1
    const-string v1, "com.android.deskclock.action.UPDATE_NOTIFICATION"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "com.android.deskclock.action.RESET_EXPIRED_TIMERS"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_3
    const-string v1, "com.android.deskclock.action.RESET_MISSED_TIMERS"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_11

    if-eq v1, v5, :cond_f

    if-eq v1, v6, :cond_d

    if-eq v1, v4, :cond_b

    .line 137
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 138
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/deskclock/data/DataModel;->getTimer(I)Lcom/android/deskclock/data/Timer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 183
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->getExpiredTimers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 184
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    return v6

    .line 146
    :cond_2
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x5

    const/4 v9, 0x4

    sparse-switch v7, :sswitch_data_1

    goto :goto_2

    :sswitch_4
    const-string v2, "com.android.deskclock.action.ADD_MINUTE_TIMER"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    move v2, v4

    goto :goto_3

    :sswitch_5
    const-string v2, "com.android.deskclock.action.RESET_TIMER"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    move v2, v9

    goto :goto_3

    :sswitch_6
    const-string v7, "com.android.deskclock.action.SHOW_TIMER"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_3

    :sswitch_7
    const-string v2, "com.android.deskclock.action.TIMER_EXPIRED"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    move v2, v8

    goto :goto_3

    :sswitch_8
    const-string v2, "com.android.deskclock.action.PAUSE_TIMER"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    move v2, v6

    goto :goto_3

    :sswitch_9
    const-string v2, "com.android.deskclock.action.START_TIMER"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    move v2, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v3

    :goto_3
    if-eqz v2, :cond_9

    if-eq v2, v5, :cond_8

    if-eq v2, v6, :cond_7

    if-eq v2, v4, :cond_6

    if-eq v2, v9, :cond_5

    if-eq v2, v8, :cond_4

    goto :goto_4

    :cond_4
    const p1, 0x7f11017b

    .line 176
    invoke-static {p1, v0}, Lcom/android/deskclock/events/Events;->sendTimerEvent(II)V

    .line 177
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/android/deskclock/data/DataModel;->expireTimer(Landroid/app/Service;Lcom/android/deskclock/data/Timer;)V

    goto :goto_4

    .line 173
    :cond_5
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/android/deskclock/data/DataModel;->resetOrDeleteTimer(Lcom/android/deskclock/data/Timer;I)Lcom/android/deskclock/data/Timer;

    goto :goto_4

    :cond_6
    const p1, 0x7f110171

    .line 169
    invoke-static {p1, v0}, Lcom/android/deskclock/events/Events;->sendTimerEvent(II)V

    .line 170
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/deskclock/data/DataModel;->addTimerMinute(Lcom/android/deskclock/data/Timer;)V

    goto :goto_4

    :cond_7
    const p1, 0x7f11017e

    .line 165
    invoke-static {p1, v0}, Lcom/android/deskclock/events/Events;->sendTimerEvent(II)V

    .line 166
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/deskclock/data/DataModel;->pauseTimer(Lcom/android/deskclock/data/Timer;)V

    goto :goto_4

    :cond_8
    const p1, 0x7f110185

    .line 161
    invoke-static {p1, v0}, Lcom/android/deskclock/events/Events;->sendTimerEvent(II)V

    .line 162
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/android/deskclock/data/DataModel;->startTimer(Landroid/app/Service;Lcom/android/deskclock/data/Timer;)V

    goto :goto_4

    :cond_9
    const p3, 0x7f110183

    .line 148
    invoke-static {p3, v0}, Lcom/android/deskclock/events/Events;->sendTimerEvent(II)V

    .line 151
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p3

    sget-object v0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->TIMERS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {p3, v0}, Lcom/android/deskclock/uidata/UiDataModel;->setSelectedTab(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    .line 155
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/android/deskclock/DeskClock;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 157
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 158
    invoke-virtual {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :goto_4
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->getExpiredTimers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 184
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_a
    return v6

    .line 131
    :cond_b
    :try_start_2
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/deskclock/data/DataModel;->resetMissedTimers(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->getExpiredTimers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 184
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_c
    return v6

    .line 127
    :cond_d
    :try_start_3
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/deskclock/data/DataModel;->resetUnexpiredTimers(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->getExpiredTimers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 184
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_e
    return v6

    .line 123
    :cond_f
    :try_start_4
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/deskclock/data/DataModel;->resetOrDeleteExpiredTimers(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 183
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->getExpiredTimers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 184
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_10
    return v6

    .line 119
    :cond_11
    :try_start_5
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->updateTimerNotification()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 183
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->getExpiredTimers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 184
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_12
    return v6

    :catchall_0
    move-exception p1

    .line 183
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/deskclock/data/DataModel;->getExpiredTimers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 184
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_13
    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x7aa5c6f1 -> :sswitch_3
        -0x77a38d35 -> :sswitch_2
        0x33dc94ce -> :sswitch_1
        0x69dae8e4 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x52ece5eb -> :sswitch_9
        -0x4f520357 -> :sswitch_8
        -0x46ae0e28 -> :sswitch_7
        -0x352f1b6a -> :sswitch_6
        -0x11beb2be -> :sswitch_5
        0x7afe532b -> :sswitch_4
    .end sparse-switch
.end method
