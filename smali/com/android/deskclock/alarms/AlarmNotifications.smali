.class public final Lcom/android/deskclock/alarms/AlarmNotifications;
.super Ljava/lang/Object;
.source "AlarmNotifications.java"


# static fields
.field private static final SORT_KEY_FORMAT:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/deskclock/alarms/AlarmNotifications;->SORT_KEY_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public static declared-synchronized clearNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 4

    const-class v0, Lcom/android/deskclock/alarms/AlarmNotifications;

    monitor-enter v0

    .line 442
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing notifications for alarm instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    .line 444
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result p1

    .line 445
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    const/4 v1, 0x0

    .line 446
    invoke-static {p0, p1, v1}, Lcom/android/deskclock/alarms/AlarmNotifications;->updateUpcomingAlarmGroupNotification(Landroid/content/Context;ILandroid/app/Notification;)V

    .line 447
    invoke-static {p0, p1, v1}, Lcom/android/deskclock/alarms/AlarmNotifications;->updateMissedAlarmGroupNotification(Landroid/content/Context;ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static createSortKey(Lcom/android/deskclock/provider/AlarmInstance;)Ljava/lang/String;
    .locals 2

    .line 488
    sget-object v0, Lcom/android/deskclock/alarms/AlarmNotifications;->SORT_KEY_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {p0}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 489
    iget p0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 490
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MISSED "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method static createViewAlarmIntent(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)Landroid/content/Intent;
    .locals 2

    .line 473
    iget-object p1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 474
    :goto_0
    const-class p1, Lcom/android/deskclock/DeskClock;

    invoke-static {p0, p1, v0, v1}, Lcom/android/deskclock/provider/Alarm;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "deskclock.scroll.to.alarm"

    .line 475
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x10000000

    .line 476
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getActiveGroupSummaryNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    const-string v0, "notification"

    .line 217
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 218
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    .line 219
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 220
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 221
    invoke-static {v2}, Lcom/android/deskclock/alarms/AlarmNotifications;->isGroupSummary(Landroid/app/Notification;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFirstActiveNotification(Landroid/content/Context;Ljava/lang/String;ILandroid/app/Notification;)Landroid/app/Notification;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    const-string v0, "notification"

    .line 197
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 198
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    .line 200
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 201
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 202
    invoke-static {v3}, Lcom/android/deskclock/alarms/AlarmNotifications;->isGroupSummary(Landroid/app/Notification;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 203
    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    if-eq v2, p2, :cond_1

    if-eqz p3, :cond_0

    .line 206
    invoke-virtual {v3}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    move-object p3, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method private static isGroupSummary(Landroid/app/Notification;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 177
    iget p0, p0, Landroid/app/Notification;->flags:I

    const/16 v0, 0x200

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static declared-synchronized showAlarmNotification(Landroid/app/Service;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 9

    const-class v0, Lcom/android/deskclock/alarms/AlarmNotifications;

    monitor-enter v0

    .line 384
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Displaying alarm notification for alarm instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 387
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 388
    invoke-virtual {p1, p0}, Lcom/android/deskclock/provider/AlarmInstance;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 389
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v4, 0x7f06002f

    .line 390
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    const v4, 0x7f0800da

    .line 391
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v4, 0x1

    .line 392
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 393
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v2, 0x4

    .line 394
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    const-wide/16 v5, 0x0

    .line 395
    invoke-virtual {v3, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    const-string v5, "alarm"

    .line 396
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 397
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 398
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    const-string v5, "SNOOZE_TAG"

    .line 402
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 401
    invoke-static {p0, v5, p1, v2}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    const-string v5, "intent.extra.from.notification"

    .line 403
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v5, 0x8000000

    const v6, 0x7ffffff8

    .line 404
    invoke-static {p0, v6, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const v7, 0x7f0800a8

    const v8, 0x7f11018e

    .line 407
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 406
    invoke-virtual {v3, v7, v8, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "DISMISS_TAG"

    const/4 v7, 0x7

    .line 411
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 410
    invoke-static {p0, v2, p1, v7}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    const-string v7, "intent.extra.from.notification"

    .line 412
    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 413
    invoke-static {p0, v6, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const v7, 0x7f080081

    const v8, 0x7f11018b

    .line 416
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 415
    invoke-virtual {v3, v7, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 420
    const-class v1, Lcom/android/deskclock/alarms/AlarmActivity;

    iget-wide v7, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {p0, v1, v7, v8}, Lcom/android/deskclock/provider/AlarmInstance;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object v1

    .line 422
    invoke-static {p0, v6, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 426
    const-class v1, Lcom/android/deskclock/alarms/AlarmActivity;

    iget-wide v7, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {p0, v1, v7, v8}, Lcom/android/deskclock/provider/AlarmInstance;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fullscreen_activity"

    .line 429
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10040000

    .line 430
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 432
    invoke-static {p0, v6, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v3, v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x2

    .line 435
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 437
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->clearNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 438
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized showHighPriorityNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 7

    const-class v0, Lcom/android/deskclock/alarms/AlarmNotifications;

    monitor-enter v0

    .line 136
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Displaying high priority notification for alarm instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f11018d

    .line 140
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v3, 0x1

    .line 141
    invoke-static {p0, p1, v3}, Lcom/android/deskclock/AlarmUtils;->getAlarmText(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v4, 0x7f06002f

    .line 142
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    const v4, 0x7f0800da

    .line 143
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 144
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 145
    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->createSortKey(Lcom/android/deskclock/provider/AlarmInstance;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSortKey(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 146
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "alarm"

    .line 147
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 148
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 149
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 151
    invoke-static {}, Lcom/android/deskclock/Utils;->isNOrLater()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    .line 152
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    const-string v2, "DISMISS_TAG"

    const/16 v3, 0x8

    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 156
    invoke-static {p0, v2, p1, v3}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    .line 158
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v3

    const v4, 0x7f080081

    const v5, 0x7f11018b

    .line 160
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x8000000

    .line 161
    invoke-static {p0, v3, v2, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 159
    invoke-virtual {v1, v4, v5, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 165
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->createViewAlarmIntent(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)Landroid/content/Intent;

    move-result-object p1

    .line 166
    invoke-static {p0, v3, p1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 169
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    .line 170
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 171
    invoke-virtual {p1, v3, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    const/4 p1, -0x1

    .line 172
    invoke-static {p0, p1, v1}, Lcom/android/deskclock/alarms/AlarmNotifications;->updateUpcomingAlarmGroupNotification(Landroid/content/Context;ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized showLowPriorityNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 7

    const-class v0, Lcom/android/deskclock/alarms/AlarmNotifications;

    monitor-enter v0

    .line 87
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Displaying low priority notification for alarm instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f11018d

    .line 91
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v3, 0x1

    .line 93
    invoke-static {p0, p1, v3}, Lcom/android/deskclock/AlarmUtils;->getAlarmText(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v4, 0x7f06002f

    .line 94
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    const v4, 0x7f0800da

    .line 95
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 96
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 97
    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->createSortKey(Lcom/android/deskclock/provider/AlarmInstance;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSortKey(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 98
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "alarm"

    .line 99
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 100
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 101
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 103
    invoke-static {}, Lcom/android/deskclock/Utils;->isNOrLater()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    .line 104
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    const-string v2, "DELETE_TAG"

    const/4 v3, 0x2

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 108
    invoke-static {p0, v2, p1, v3}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    .line 111
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v3

    const/high16 v4, 0x8000000

    .line 112
    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "DISMISS_TAG"

    const/16 v5, 0x8

    .line 117
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 116
    invoke-static {p0, v2, p1, v5}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    const v5, 0x7f080081

    const v6, 0x7f11018b

    .line 119
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 120
    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 118
    invoke-virtual {v1, v5, v6, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 124
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->createViewAlarmIntent(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)Landroid/content/Intent;

    move-result-object p1

    .line 125
    invoke-static {p0, v3, p1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 128
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    .line 129
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 130
    invoke-virtual {p1, v3, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    const/4 p1, -0x1

    .line 131
    invoke-static {p0, p1, v1}, Lcom/android/deskclock/alarms/AlarmNotifications;->updateUpcomingAlarmGroupNotification(Landroid/content/Context;ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized showMissedNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 8

    const-class v0, Lcom/android/deskclock/alarms/AlarmNotifications;

    monitor-enter v0

    .line 340
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Displaying missed notification for alarm instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iget-object v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    .line 344
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v4, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    const v5, 0x7f110197

    .line 346
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 347
    iget-object v5, p1, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const v5, 0x7f110196

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v2

    aput-object v1, v7, v6

    .line 348
    invoke-virtual {p0, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 347
    :goto_0
    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f06002f

    .line 349
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 350
    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->createSortKey(Lcom/android/deskclock/provider/AlarmInstance;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSortKey(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f0800da

    .line 351
    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 352
    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "alarm"

    .line 353
    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 354
    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 355
    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 357
    invoke-static {}, Lcom/android/deskclock/Utils;->isNOrLater()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "4"

    .line 358
    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 361
    :cond_1
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v1

    const-string v2, "DISMISS_TAG"

    const/4 v3, 0x7

    .line 365
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 364
    invoke-static {p0, v2, p1, v3}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 366
    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 370
    const-class v2, Lcom/android/deskclock/alarms/AlarmStateManager;

    iget-wide v5, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {p0, v2, v5, v6}, Lcom/android/deskclock/provider/AlarmInstance;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object p1

    const-string v2, "extra_notification_id"

    .line 372
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "show_and_dismiss_alarm"

    .line 373
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    invoke-static {p0, v1, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 377
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    .line 378
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 379
    invoke-virtual {p1, v1, v2}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    const/4 p1, -0x1

    .line 380
    invoke-static {p0, p1, v2}, Lcom/android/deskclock/alarms/AlarmNotifications;->updateMissedAlarmGroupNotification(Landroid/content/Context;ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized showSnoozeNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 7

    const-class v0, Lcom/android/deskclock/alarms/AlarmNotifications;

    monitor-enter v0

    .line 298
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Displaying snoozed notification for alarm instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 301
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 302
    invoke-virtual {p1, p0}, Lcom/android/deskclock/provider/AlarmInstance;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f11018f

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 304
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 303
    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f06002f

    .line 305
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f0800da

    .line 306
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 307
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 308
    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->createSortKey(Lcom/android/deskclock/provider/AlarmInstance;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSortKey(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v2, 0x2

    .line 309
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "alarm"

    .line 310
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 311
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 312
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 314
    invoke-static {}, Lcom/android/deskclock/Utils;->isNOrLater()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    .line 315
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    const-string v2, "DISMISS_TAG"

    const/4 v3, 0x7

    .line 320
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 319
    invoke-static {p0, v2, p1, v3}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    .line 321
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v3

    const v4, 0x7f080081

    const v5, 0x7f11018b

    .line 323
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x8000000

    .line 324
    invoke-static {p0, v3, v2, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 322
    invoke-virtual {v1, v4, v5, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 328
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->createViewAlarmIntent(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)Landroid/content/Intent;

    move-result-object p1

    .line 329
    invoke-static {p0, v3, p1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 332
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    .line 333
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 334
    invoke-virtual {p1, v3, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    const/4 p1, -0x1

    .line 335
    invoke-static {p0, p1, v1}, Lcom/android/deskclock/alarms/AlarmNotifications;->updateUpcomingAlarmGroupNotification(Landroid/content/Context;ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static updateMissedAlarmGroupNotification(Landroid/content/Context;ILandroid/app/Notification;)V
    .locals 4

    .line 264
    invoke-static {}, Lcom/android/deskclock/Utils;->isNOrLater()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    const-string v1, "4"

    .line 270
    invoke-static {p0, v1, p1, p2}, Lcom/android/deskclock/alarms/AlarmNotifications;->getFirstActiveNotification(Landroid/content/Context;Ljava/lang/String;ILandroid/app/Notification;)Landroid/app/Notification;

    move-result-object p1

    const p2, 0x7ffffffa

    if-nez p1, :cond_1

    .line 273
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    return-void

    .line 277
    :cond_1
    invoke-static {p0, v1}, Lcom/android/deskclock/alarms/AlarmNotifications;->getActiveGroupSummaryNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 278
    iget-object v2, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v3, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 279
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 280
    :cond_2
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 281
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 282
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const p1, 0x7f06002f

    .line 283
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    const p0, 0x7f0800da

    .line 284
    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 285
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p0, 0x1

    .line 286
    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 287
    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string p1, "alarm"

    .line 288
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 289
    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 290
    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 291
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 292
    invoke-virtual {v0, p2, p0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    :cond_3
    return-void
.end method

.method static updateNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 2

    .line 454
    iget v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "No notification to update"

    .line 468
    invoke-static {p1, p0}, Lcom/android/deskclock/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 462
    :cond_0
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->showSnoozeNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 459
    :cond_1
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->showHighPriorityNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 465
    :cond_2
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->showMissedNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 456
    :cond_3
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->showLowPriorityNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    :goto_0
    return-void
.end method

.method private static updateUpcomingAlarmGroupNotification(Landroid/content/Context;ILandroid/app/Notification;)V
    .locals 4

    .line 230
    invoke-static {}, Lcom/android/deskclock/Utils;->isNOrLater()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    const-string v1, "1"

    .line 236
    invoke-static {p0, v1, p1, p2}, Lcom/android/deskclock/alarms/AlarmNotifications;->getFirstActiveNotification(Landroid/content/Context;Ljava/lang/String;ILandroid/app/Notification;)Landroid/app/Notification;

    move-result-object p1

    const p2, 0x7ffffffb

    if-nez p1, :cond_1

    .line 239
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    return-void

    .line 243
    :cond_1
    invoke-static {p0, v1}, Lcom/android/deskclock/alarms/AlarmNotifications;->getActiveGroupSummaryNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v3, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 245
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 246
    :cond_2
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 247
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 248
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const p1, 0x7f06002f

    .line 249
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    const p0, 0x7f0800da

    .line 250
    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 251
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p0, 0x1

    .line 252
    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 253
    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string p1, "alarm"

    .line 254
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 255
    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 256
    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 257
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 258
    invoke-virtual {v0, p2, p0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    :cond_3
    return-void
.end method
