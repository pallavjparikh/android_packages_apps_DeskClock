.class public Lcom/android/deskclock/AlarmInitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmInitReceiver.java"


# static fields
.field private static final ACTION_BOOT_COMPLETED:Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    invoke-static {}, Lcom/android/deskclock/Utils;->isNOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 53
    :goto_0
    sput-object v0, Lcom/android/deskclock/AlarmInitReceiver;->ACTION_BOOT_COMPLETED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmInitReceiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    .line 73
    invoke-static {p1}, Lcom/android/deskclock/AlarmAlertWakeLock;->createPartialWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 74
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 77
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/deskclock/data/DataModel;->updateGlobalIntentId()V

    .line 81
    sget-object v4, Lcom/android/deskclock/AlarmInitReceiver;->ACTION_BOOT_COMPLETED:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/deskclock/data/DataModel;->updateAfterReboot()V

    goto :goto_0

    :cond_0
    const-string v4, "android.intent.action.TIME_SET"

    .line 85
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/deskclock/data/DataModel;->updateAfterTimeSet()V

    :cond_1
    :goto_0
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    .line 90
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    .line 91
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 92
    :cond_2
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/deskclock/controller/Controller;->updateShortcuts()V

    :cond_3
    const-string v4, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 99
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 100
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/deskclock/data/DataModel;->updateAllNotifications()V

    .line 101
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/deskclock/controller/Controller;->updateShortcuts()V

    :cond_4
    const-string v4, "org.codeaurora.poweroffalarm.action.UPDATE_ALARM"

    .line 105
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide/16 v4, 0x0

    const-string v0, "time"

    .line 106
    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "status"

    .line 107
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    cmp-long v8, v6, v4

    if-eqz v8, :cond_8

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 111
    invoke-static {v8, v9, v2}, Lcom/android/deskclock/provider/AlarmInstance;->getInstances(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 113
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/deskclock/provider/AlarmInstance;

    .line 114
    invoke-virtual {v10}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    cmp-long v11, v11, v6

    if-nez v11, :cond_5

    move-object v9, v10

    :cond_6
    if-eqz v9, :cond_8

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    .line 123
    invoke-static {p1, v9}, Lcom/android/deskclock/alarms/AlarmStateManager;->setDismissState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_1

    :cond_7
    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    const-string v0, "snooze_time"

    .line 125
    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long p2, v4, v6

    if-lez p2, :cond_8

    .line 127
    invoke-static {p1, v9}, Lcom/android/deskclock/alarms/AlarmNotifications;->clearNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 129
    invoke-virtual {p2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 130
    invoke-virtual {v9, p2}, Lcom/android/deskclock/provider/AlarmInstance;->setAlarmTime(Ljava/util/Calendar;)V

    const/4 p2, 0x4

    .line 131
    iput p2, v9, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 132
    invoke-static {v8, v9}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 139
    :cond_8
    :goto_1
    new-instance p2, Lcom/android/deskclock/AlarmInitReceiver$1;

    invoke-direct {p2, p0, p1, v1, v3}, Lcom/android/deskclock/AlarmInitReceiver$1;-><init>(Lcom/android/deskclock/AlarmInitReceiver;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;Landroid/os/PowerManager$WakeLock;)V

    invoke-static {p2}, Lcom/android/deskclock/AsyncHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method
