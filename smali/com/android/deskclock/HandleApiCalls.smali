.class public Lcom/android/deskclock/HandleApiCalls;
.super Landroid/app/Activity;
.source "HandleApiCalls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/HandleApiCalls$SnoozeAlarmAsync;,
        Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/android/deskclock/LogUtils$Logger;


# instance fields
.field private mAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lcom/android/deskclock/LogUtils$Logger;

    const-string v1, "HandleApiCalls"

    invoke-direct {v0, v1}, Lcom/android/deskclock/LogUtils$Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/deskclock/LogUtils$Logger;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    return-object v0
.end method

.method public static dismissAlarm(Lcom/android/deskclock/provider/Alarm;Landroid/app/Activity;)V
    .locals 4

    .line 127
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    .line 128
    invoke-static {v1, v2, v3}, Lcom/android/deskclock/provider/AlarmInstance;->getNextUpcomingInstanceByAlarmId(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object p0

    if-nez p0, :cond_0

    const p0, 0x7f11020c

    .line 131
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 132
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/deskclock/controller/Controller;->notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V

    .line 133
    sget-object p0, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "No alarm instance to dismiss"

    invoke-virtual {p0, v0, p1}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 137
    :cond_0
    invoke-static {p0, p1}, Lcom/android/deskclock/HandleApiCalls;->dismissAlarmInstance(Lcom/android/deskclock/provider/AlarmInstance;Landroid/app/Activity;)V

    return-void
.end method

.method public static dismissAlarmInstance(Lcom/android/deskclock/provider/AlarmInstance;Landroid/app/Activity;)V
    .locals 7

    .line 141
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceNotMainLooper()V

    .line 143
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 145
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 147
    iget v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-eq v2, v5, :cond_2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/Utils;->isAlarmWithin24Hours(Lcom/android/deskclock/provider/AlarmInstance;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    invoke-static {v0, p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->setPreDismissState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_1

    :cond_1
    const v2, 0x7f110191

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v4

    .line 155
    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lcom/android/deskclock/controller/Controller;->notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V

    .line 158
    sget-object v2, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Can\'t dismiss alarm more than 24 hours in advance"

    invoke-virtual {v2, v6, v5}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 149
    :cond_2
    :goto_0
    invoke-static {v0, p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->deleteInstanceAndUpdateParent(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    :goto_1
    const v2, 0x7f110193

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    .line 162
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/deskclock/controller/Controller;->notifyVoiceSuccess(Landroid/app/Activity;Ljava/lang/String;)V

    .line 164
    sget-object p1, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alarm dismissed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const p0, 0x7f110177

    const p1, 0x7f1101e8

    .line 165
    invoke-static {p0, p1}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    return-void
.end method

.method private static getAlertFromIntent(Landroid/content/Intent;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    const-string v0, "android.intent.extra.alarm.RINGTONE"

    .line 570
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const-string p1, "silent"

    .line 573
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 577
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 574
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/deskclock/provider/Alarm;->NO_RINGTONE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method private static getDaysFromIntent(Landroid/content/Intent;Lcom/android/deskclock/data/Weekdays;)Lcom/android/deskclock/data/Weekdays;
    .locals 2

    const-string v0, "android.intent.extra.alarm.DAYS"

    .line 548
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    .line 552
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 554
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [I

    const/4 p1, 0x0

    .line 555
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 556
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 558
    :cond_1
    invoke-static {p0}, Lcom/android/deskclock/data/Weekdays;->fromCalendarDays([I)Lcom/android/deskclock/data/Weekdays;

    move-result-object p0

    return-object p0

    .line 561
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p0

    if-eqz p0, :cond_3

    .line 563
    invoke-static {p0}, Lcom/android/deskclock/data/Weekdays;->fromCalendarDays([I)Lcom/android/deskclock/data/Weekdays;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p1
.end method

.method private static getLabelFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 543
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "android.intent.extra.alarm.MESSAGE"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private getSelectedTimer(Landroid/net/Uri;)Lcom/android/deskclock/data/Timer;
    .locals 0

    .line 424
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0

    long-to-int p0, p0

    .line 425
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/deskclock/data/DataModel;->getTimer(I)Lcom/android/deskclock/data/Timer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleDismissAlarm(Landroid/content/Intent;)V
    .locals 3

    .line 118
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    sget-object v1, Lcom/android/deskclock/uidata/UiDataModel$Tab;->ALARMS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/uidata/UiDataModel;->setSelectedTab(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    .line 121
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/deskclock/HandleApiCalls;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/android/deskclock/DeskClock;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 123
    new-instance v0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;

    iget-object v1, p0, Lcom/android/deskclock/HandleApiCalls;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0}, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/app/Activity;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private handleDismissTimer(Landroid/content/Intent;)V
    .locals 7

    .line 390
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x1

    const v1, 0x7f0f0004

    const v2, 0x7f1101e8

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 392
    invoke-direct {p0, p1}, Lcom/android/deskclock/HandleApiCalls;->getSelectedTimer(Landroid/net/Uri;)Lcom/android/deskclock/data/Timer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 394
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/deskclock/data/DataModel;->resetOrDeleteTimer(Lcom/android/deskclock/data/Timer;I)Lcom/android/deskclock/data/Timer;

    .line 395
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v2

    .line 396
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {v2, p0, v0}, Lcom/android/deskclock/controller/Controller;->notifyVoiceSuccess(Landroid/app/Activity;Ljava/lang/String;)V

    .line 397
    sget-object p0, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer dismissed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 399
    :cond_0
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object p1

    const v0, 0x7f1101e2

    .line 400
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-virtual {p1, p0, v0}, Lcom/android/deskclock/controller/Controller;->notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V

    .line 401
    sget-object p0, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "Could not dismiss timer: invalid URI"

    invoke-virtual {p0, v0, p1}, Lcom/android/deskclock/LogUtils$Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 404
    :cond_1
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->getExpiredTimers()Ljava/util/List;

    move-result-object p1

    .line 405
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 406
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/deskclock/data/Timer;

    .line 407
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lcom/android/deskclock/data/DataModel;->resetOrDeleteTimer(Lcom/android/deskclock/data/Timer;I)Lcom/android/deskclock/data/Timer;

    goto :goto_0

    .line 409
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 410
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 411
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 410
    invoke-virtual {v2, v1, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 412
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/deskclock/controller/Controller;->notifyVoiceSuccess(Landroid/app/Activity;Ljava/lang/String;)V

    .line 413
    sget-object p0, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 415
    :cond_3
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object p1

    const v0, 0x7f11020f

    .line 416
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-virtual {p1, p0, v0}, Lcom/android/deskclock/controller/Controller;->notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V

    .line 417
    sget-object p0, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "Could not dismiss timer: no expired timers"

    invoke-virtual {p0, v0, p1}, Lcom/android/deskclock/LogUtils$Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private handleSetAlarm(Landroid/content/Intent;)V
    .locals 14

    const-string v0, "android.intent.extra.alarm.HOUR"

    .line 304
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "android.intent.extra.alarm.MINUTES"

    const/4 v3, -0x1

    const-string v4, " "

    const/4 v5, 0x2

    const/4 v6, 0x3

    const v7, 0x7f1101e1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v1, 0x17

    if-le v0, v1, :cond_2

    .line 307
    :cond_0
    invoke-virtual {p1, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-array v1, v6, [Ljava/lang/Object;

    .line 308
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v8

    aput-object v4, v1, v5

    invoke-virtual {p0, v7, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 309
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/android/deskclock/controller/Controller;->notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V

    .line 310
    sget-object p0, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal hour: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v9, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    move v0, v3

    .line 316
    :cond_2
    invoke-virtual {p1, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-ltz v10, :cond_7

    const/16 v1, 0x3b

    if-le v10, v1, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v1, "android.intent.extra.alarm.SKIP_UI"

    .line 324
    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 325
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    if-ne v0, v3, :cond_4

    .line 331
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p1

    sget-object v1, Lcom/android/deskclock/uidata/UiDataModel$Tab;->ALARMS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {p1, v1}, Lcom/android/deskclock/uidata/UiDataModel;->setSelectedTab(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    .line 334
    const-class p1, Lcom/android/deskclock/DeskClock;

    const-wide/16 v1, -0x1

    invoke-static {p0, p1, v1, v2}, Lcom/android/deskclock/provider/Alarm;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x10000000

    .line 335
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "deskclock.create.new"

    .line 336
    invoke-virtual {p1, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 339
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    new-array p1, v6, [Ljava/lang/Object;

    .line 340
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v8

    aput-object v4, p1, v5

    invoke-virtual {p0, v7, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 341
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/deskclock/controller/Controller;->notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V

    .line 342
    sget-object p0, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array p1, v9, [Ljava/lang/Object;

    const-string v0, "Missing alarm time; opening UI"

    invoke-virtual {p0, v0, p1}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 346
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v10

    move-object v5, v7

    move-object v6, v13

    .line 348
    invoke-direct/range {v1 .. v6}, Lcom/android/deskclock/HandleApiCalls;->setSelectionFromIntent(Landroid/content/Intent;IILjava/lang/StringBuilder;Ljava/util/List;)V

    .line 351
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 352
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Lcom/android/deskclock/provider/Alarm;->getAlarms(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 355
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const v2, 0x7f1101e8

    if-nez v1, :cond_5

    .line 357
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/provider/Alarm;

    .line 358
    iput-boolean v8, p1, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 359
    invoke-static {v12, p1}, Lcom/android/deskclock/provider/Alarm;->updateAlarm(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/Alarm;)Z

    .line 362
    iget-wide v0, p1, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {p0, v0, v1}, Lcom/android/deskclock/alarms/AlarmStateManager;->deleteAllInstances(Landroid/content/Context;J)V

    const v0, 0x7f110189

    .line 364
    invoke-static {v0, v2}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    .line 365
    sget-object v0, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated alarm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 368
    :cond_5
    new-instance v0, Lcom/android/deskclock/provider/Alarm;

    invoke-direct {v0}, Lcom/android/deskclock/provider/Alarm;-><init>()V

    .line 369
    invoke-static {v0, p1}, Lcom/android/deskclock/HandleApiCalls;->updateAlarmFromIntent(Lcom/android/deskclock/provider/Alarm;Landroid/content/Intent;)V

    .line 370
    iget-object p1, v0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-virtual {p1}, Lcom/android/deskclock/data/Weekdays;->isRepeating()Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz v11, :cond_6

    move p1, v8

    goto :goto_0

    :cond_6
    move p1, v9

    :goto_0
    iput-boolean p1, v0, Lcom/android/deskclock/provider/Alarm;->deleteAfterUse:Z

    .line 373
    invoke-static {v12, v0}, Lcom/android/deskclock/provider/Alarm;->addAlarm(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/Alarm;

    const p1, 0x7f110174

    .line 375
    invoke-static {p1, v2}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    .line 376
    sget-object p1, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created new alarm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v0

    .line 380
    :goto_1
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 381
    invoke-virtual {p1, v0}, Lcom/android/deskclock/provider/Alarm;->createInstanceAfter(Ljava/util/Calendar;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object p1

    .line 382
    invoke-direct {p0, p1, v11}, Lcom/android/deskclock/HandleApiCalls;->setupInstance(Lcom/android/deskclock/provider/AlarmInstance;Z)V

    .line 384
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 385
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 386
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v0

    const v1, 0x7f110194

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v9

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/deskclock/controller/Controller;->notifyVoiceSuccess(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_2
    new-array p1, v6, [Ljava/lang/Object;

    .line 318
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v8

    aput-object v4, p1, v5

    invoke-virtual {p0, v7, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 319
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/deskclock/controller/Controller;->notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V

    .line 320
    sget-object p0, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal minute: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v9, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private handleSetTimer(Landroid/content/Intent;)V
    .locals 8

    const-string v0, "android.intent.extra.alarm.LENGTH"

    .line 457
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 459
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p1

    sget-object v0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->TIMERS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {p1, v0}, Lcom/android/deskclock/uidata/UiDataModel;->setSelectedTab(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    .line 462
    invoke-static {p0}, Lcom/android/deskclock/timer/TimerFragment;->createTimerSetupIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 463
    sget-object p0, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Showing timer setup"

    invoke-virtual {p0, v0, p1}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 468
    :cond_0
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    const p1, 0x7f1101e3

    .line 470
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 471
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcom/android/deskclock/controller/Controller;->notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V

    .line 472
    sget-object p0, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid timer length requested: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v3, ""

    .line 476
    invoke-static {p1, v3}, Lcom/android/deskclock/HandleApiCalls;->getLabelFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.alarm.SKIP_UI"

    .line 477
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v2, 0x0

    .line 481
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/deskclock/data/DataModel;->getTimers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/deskclock/data/Timer;

    .line 482
    invoke-virtual {v5}, Lcom/android/deskclock/data/Timer;->isReset()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 483
    :cond_2
    invoke-virtual {v5}, Lcom/android/deskclock/data/Timer;->getLength()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-eqz v6, :cond_3

    goto :goto_0

    .line 484
    :cond_3
    invoke-virtual {v5}, Lcom/android/deskclock/data/Timer;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    move-object v2, v5

    :cond_5
    const v4, 0x7f1101e8

    if-nez v2, :cond_6

    .line 492
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3, p1}, Lcom/android/deskclock/data/DataModel;->addTimer(JLjava/lang/String;Z)Lcom/android/deskclock/data/Timer;

    move-result-object v2

    const v0, 0x7f110174

    .line 493
    invoke-static {v0, v4}, Lcom/android/deskclock/events/Events;->sendTimerEvent(II)V

    .line 497
    :cond_6
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/deskclock/data/DataModel;->startTimer(Lcom/android/deskclock/data/Timer;)V

    const v0, 0x7f110185

    .line 498
    invoke-static {v0, v4}, Lcom/android/deskclock/events/Events;->sendTimerEvent(II)V

    .line 499
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v0

    const v1, 0x7f110246

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/deskclock/controller/Controller;->notifyVoiceSuccess(Landroid/app/Activity;Ljava/lang/String;)V

    if-nez p1, :cond_7

    .line 504
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p1

    sget-object v0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->TIMERS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {p1, v0}, Lcom/android/deskclock/uidata/UiDataModel;->setSelectedTab(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    .line 507
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/deskclock/DeskClock;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    invoke-virtual {v2}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result v0

    const-string v1, "com.android.deskclock.extra.TIMER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 507
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method private handleShowAlarms()V
    .locals 2

    const v0, 0x7f110183

    const v1, 0x7f1101e8

    .line 432
    invoke-static {v0, v1}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    .line 435
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    sget-object v1, Lcom/android/deskclock/uidata/UiDataModel$Tab;->ALARMS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/uidata/UiDataModel;->setSelectedTab(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    .line 436
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/DeskClock;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleShowTimers(Landroid/content/Intent;)V
    .locals 2

    const p1, 0x7f110183

    const v0, 0x7f1101e8

    .line 440
    invoke-static {p1, v0}, Lcom/android/deskclock/events/Events;->sendTimerEvent(II)V

    .line 442
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/deskclock/DeskClock;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 444
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getTimers()Ljava/util/List;

    move-result-object v0

    .line 445
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/data/Timer;

    .line 447
    invoke-virtual {v0}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result v0

    const-string v1, "com.android.deskclock.extra.TIMER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    :cond_0
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    sget-object v1, Lcom/android/deskclock/uidata/UiDataModel$Tab;->TIMERS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/uidata/UiDataModel;->setSelectedTab(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    .line 452
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleSnoozeAlarm(Landroid/content/Intent;)V
    .locals 1

    .line 250
    new-instance v0, Lcom/android/deskclock/HandleApiCalls$SnoozeAlarmAsync;

    invoke-direct {v0, p1, p0}, Lcom/android/deskclock/HandleApiCalls$SnoozeAlarmAsync;-><init>(Landroid/content/Intent;Landroid/app/Activity;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setSelectionFromIntent(Landroid/content/Intent;IILjava/lang/StringBuilder;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "hour"

    .line 604
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=?"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, " AND "

    .line 606
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "minutes"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p3, "android.intent.extra.alarm.MESSAGE"

    .line 609
    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 610
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "label"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    .line 611
    invoke-static {p1, p3}, Lcom/android/deskclock/HandleApiCalls;->getLabelFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_0
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "daysofweek"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    sget-object p3, Lcom/android/deskclock/data/Weekdays;->NONE:Lcom/android/deskclock/data/Weekdays;

    invoke-static {p1, p3}, Lcom/android/deskclock/HandleApiCalls;->getDaysFromIntent(Landroid/content/Intent;Lcom/android/deskclock/data/Weekdays;)Lcom/android/deskclock/data/Weekdays;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/deskclock/data/Weekdays;->getBits()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p3, "android.intent.extra.alarm.VIBRATE"

    .line 619
    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 620
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "vibrate"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 621
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "1"

    goto :goto_0

    :cond_1
    const-string p3, "0"

    :goto_0
    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string p3, "android.intent.extra.alarm.RINGTONE"

    .line 624
    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 625
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ringtone"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->getDefaultAlarmRingtoneUri()Landroid/net/Uri;

    move-result-object p0

    .line 629
    invoke-static {p1, p0}, Lcom/android/deskclock/HandleApiCalls;->getAlertFromIntent(Landroid/content/Intent;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 630
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private setupInstance(Lcom/android/deskclock/provider/AlarmInstance;Z)V
    .locals 2

    .line 513
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->addInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Lcom/android/deskclock/provider/AlarmInstance;

    const/4 v0, 0x1

    .line 514
    invoke-static {p0, p1, v0}, Lcom/android/deskclock/alarms/AlarmStateManager;->registerInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V

    .line 515
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/deskclock/AlarmUtils;->popAlarmSetToast(Landroid/content/Context;J)V

    if-nez p2, :cond_0

    .line 518
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p2

    sget-object v0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->ALARMS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {p2, v0}, Lcom/android/deskclock/uidata/UiDataModel;->setSelectedTab(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    .line 521
    const-class p2, Lcom/android/deskclock/DeskClock;

    iget-object v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p2, v0, v1}, Lcom/android/deskclock/provider/Alarm;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object p2

    iget-object p1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    const-string v0, "deskclock.scroll.to.alarm"

    .line 522
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 523
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 524
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static snoozeAlarm(Lcom/android/deskclock/provider/AlarmInstance;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 4

    .line 285
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceNotMainLooper()V

    .line 287
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 288
    invoke-virtual {p0}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v0, 0x7f110195

    .line 289
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {p1, p0, v1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setSnoozeState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V

    .line 292
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/android/deskclock/controller/Controller;->notifyVoiceSuccess(Landroid/app/Activity;Ljava/lang/String;)V

    .line 293
    sget-object p1, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Alarm snoozed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const p0, 0x7f110184

    const p1, 0x7f1101e8

    .line 294
    invoke-static {p0, p1}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    return-void
.end method

.method private static updateAlarmFromIntent(Lcom/android/deskclock/provider/Alarm;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    .line 533
    iput-boolean v0, p0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 534
    iget v0, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    const-string v1, "android.intent.extra.alarm.HOUR"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    .line 535
    iget v0, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    const-string v1, "android.intent.extra.alarm.MINUTES"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    .line 536
    iget-boolean v0, p0, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    const-string v1, "android.intent.extra.alarm.VIBRATE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    .line 537
    iget-object v0, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/android/deskclock/HandleApiCalls;->getAlertFromIntent(Landroid/content/Intent;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    .line 538
    iget-object v0, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/deskclock/HandleApiCalls;->getLabelFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    .line 539
    iget-object v0, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-static {p1, v0}, Lcom/android/deskclock/HandleApiCalls;->getDaysFromIntent(Landroid/content/Intent;Lcom/android/deskclock/data/Weekdays;)Lcom/android/deskclock/data/Weekdays;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/HandleApiCalls;->mAppContext:Landroid/content/Context;

    .line 77
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v0, :cond_1

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 82
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, -0x1

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "android.intent.action.SHOW_TIMERS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_1
    const-string v2, "android.intent.action.SHOW_ALARMS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_2
    const-string v2, "android.intent.action.SET_TIMER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_3
    const-string v2, "android.intent.action.SET_ALARM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :sswitch_4
    const-string v2, "android.intent.action.DISMISS_TIMER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_5
    const-string v2, "android.intent.action.DISMISS_ALARM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_6
    const-string v2, "android.intent.action.SNOOZE_ALARM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x5

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 105
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/deskclock/HandleApiCalls;->handleDismissTimer(Landroid/content/Intent;)V

    goto :goto_3

    .line 102
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/deskclock/HandleApiCalls;->handleSnoozeAlarm(Landroid/content/Intent;)V

    goto :goto_3

    .line 99
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/deskclock/HandleApiCalls;->handleDismissAlarm(Landroid/content/Intent;)V

    goto :goto_3

    .line 96
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/deskclock/HandleApiCalls;->handleShowTimers(Landroid/content/Intent;)V

    goto :goto_3

    .line 93
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/deskclock/HandleApiCalls;->handleSetTimer(Landroid/content/Intent;)V

    goto :goto_3

    .line 90
    :pswitch_5
    invoke-direct {p0}, Lcom/android/deskclock/HandleApiCalls;->handleShowAlarms()V

    goto :goto_3

    .line 87
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/deskclock/HandleApiCalls;->handleSetAlarm(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 109
    :try_start_2
    sget-object v0, Lcom/android/deskclock/HandleApiCalls;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/LogUtils$Logger;->wtf(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x30069423 -> :sswitch_6
        0x7a3cb77 -> :sswitch_5
        0x8ae586b -> :sswitch_4
        0xf06f0cf -> :sswitch_3
        0x10117dc3 -> :sswitch_2
        0x4253c1df -> :sswitch_1
        0x629ad36b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
