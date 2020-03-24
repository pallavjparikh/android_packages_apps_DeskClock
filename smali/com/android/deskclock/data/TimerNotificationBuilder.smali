.class Lcom/android/deskclock/data/TimerNotificationBuilder;
.super Ljava/lang/Object;
.source "TimerNotificationBuilder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildChronometer(Ljava/lang/String;JZLjava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 390
    new-instance p0, Landroid/widget/RemoteViews;

    const v0, 0x7f0d0024

    invoke-direct {p0, p1, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const p1, 0x7f0a005c

    const/4 v0, 0x1

    .line 391
    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    const v1, 0x7f0a005c

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v2, p2

    move v5, p4

    .line 392
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    const p1, 0x7f0a012e

    .line 393
    invoke-virtual {p0, p1, p5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object p0
.end method

.method private static getChronometerBase(Lcom/android/deskclock/data/Timer;)J
    .locals 4

    .line 380
    invoke-virtual {p0}, Lcom/android/deskclock/data/Timer;->getRemainingTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 384
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/android/deskclock/data/NotificationModel;Ljava/util/List;)Landroid/app/Notification;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/deskclock/data/NotificationModel;",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Timer;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    move-object/from16 v2, p3

    .line 58
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/data/Timer;

    .line 59
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    .line 62
    invoke-virtual {v3}, Lcom/android/deskclock/data/Timer;->isRunning()Z

    move-result v8

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 65
    invoke-static {v3}, Lcom/android/deskclock/data/TimerNotificationBuilder;->getChronometerBase(Lcom/android/deskclock/data/Timer;)J

    move-result-wide v6

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 68
    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    const v10, 0x7f08009f

    const-string v11, "com.android.deskclock.extra.TIMER_ID"

    const/4 v12, 0x1

    if-ne v2, v12, :cond_2

    if-eqz v8, :cond_1

    .line 74
    invoke-virtual {v3}, Lcom/android/deskclock/data/Timer;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const v10, 0x7f11024c

    .line 75
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v3}, Lcom/android/deskclock/data/Timer;->getLabel()Ljava/lang/String;

    move-result-object v10

    .line 81
    :goto_0
    new-instance v13, Landroid/content/Intent;

    const-class v14, Lcom/android/deskclock/timer/TimerService;

    invoke-direct {v13, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v14, "com.android.deskclock.action.PAUSE_TIMER"

    .line 82
    invoke-virtual {v13, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 83
    invoke-virtual {v3}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result v14

    invoke-virtual {v13, v11, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    const v14, 0x7f110255

    .line 86
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 87
    invoke-static {v0, v13}, Lcom/android/deskclock/Utils;->pendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v13

    .line 88
    new-instance v15, Landroidx/core/app/NotificationCompat$Action$Builder;

    const v1, 0x7f080098

    invoke-direct {v15, v1, v14, v13}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v15}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Landroid/content/Intent;

    const-class v13, Lcom/android/deskclock/timer/TimerService;

    invoke-direct {v1, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v13, "com.android.deskclock.action.ADD_MINUTE_TIMER"

    .line 92
    invoke-virtual {v1, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 93
    invoke-virtual {v3}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result v13

    invoke-virtual {v1, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const v13, 0x7f110257

    .line 96
    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 97
    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->pendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 98
    new-instance v13, Landroidx/core/app/NotificationCompat$Action$Builder;

    const v14, 0x7f08007e

    invoke-direct {v13, v14, v4, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v13}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v10

    goto/16 :goto_2

    :cond_1
    const v1, 0x7f110256

    .line 102
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    new-instance v13, Landroid/content/Intent;

    const-class v14, Lcom/android/deskclock/timer/TimerService;

    invoke-direct {v13, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v14, "com.android.deskclock.action.START_TIMER"

    .line 106
    invoke-virtual {v13, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 107
    invoke-virtual {v3}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result v14

    invoke-virtual {v13, v11, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    const v14, 0x7f110239

    .line 110
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 111
    invoke-static {v0, v13}, Lcom/android/deskclock/Utils;->pendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v13

    .line 112
    new-instance v15, Landroidx/core/app/NotificationCompat$Action$Builder;

    const v12, 0x7f0800aa

    invoke-direct {v15, v12, v14, v13}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v15}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v12, Landroid/content/Intent;

    const-class v13, Lcom/android/deskclock/timer/TimerService;

    invoke-direct {v12, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v13, "com.android.deskclock.action.RESET_TIMER"

    .line 116
    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 117
    invoke-virtual {v3}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result v13

    invoke-virtual {v12, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    const v13, 0x7f110238

    .line 120
    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 121
    invoke-static {v0, v12}, Lcom/android/deskclock/Utils;->pendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 122
    new-instance v13, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-direct {v13, v10, v4, v12}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v13}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-eqz v8, :cond_3

    const v1, 0x7f110266

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-virtual {v4, v1, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v12, 0x1

    const/4 v15, 0x0

    const v1, 0x7f110267

    new-array v13, v12, [Ljava/lang/Object;

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v13, v15

    invoke-virtual {v4, v1, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 133
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/deskclock/timer/TimerService;->createResetUnexpiredTimersIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v12

    const v13, 0x7f11025c

    .line 136
    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 137
    invoke-static {v0, v12}, Lcom/android/deskclock/Utils;->pendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 138
    new-instance v13, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-direct {v13, v10, v4, v12}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v13}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :goto_2
    new-instance v4, Landroid/content/Intent;

    const-class v10, Lcom/android/deskclock/timer/TimerService;

    invoke-direct {v4, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "com.android.deskclock.action.SHOW_TIMER"

    .line 143
    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 144
    invoke-virtual {v3}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result v10

    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const v10, 0x7f1101e9

    const-string v11, "com.android.deskclock.extra.EVENT_LABEL"

    .line 145
    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const/high16 v10, 0x48000000    # 131072.0f

    const/4 v11, 0x0

    .line 148
    invoke-static {v0, v11, v4, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 151
    new-instance v12, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v12, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x1

    .line 152
    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 153
    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 154
    invoke-virtual {v12, v11}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 155
    invoke-virtual {v12, v11}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 156
    invoke-virtual {v12, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 157
    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string v4, "alarm"

    .line 158
    invoke-virtual {v12, v4}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    const v11, 0x7f0800dc

    .line 159
    invoke-virtual {v12, v11}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 160
    invoke-virtual/range {p2 .. p2}, Lcom/android/deskclock/data/NotificationModel;->getTimerNotificationSortKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroidx/core/app/NotificationCompat$Builder;->setSortKey(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 161
    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    new-instance v11, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v11}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    .line 162
    invoke-virtual {v12, v11}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    const v11, 0x7f06002f

    .line 163
    invoke-static {v0, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v12, v11}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 165
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/core/app/NotificationCompat$Action;

    .line 166
    invoke-virtual {v12, v11}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    .line 169
    :cond_4
    invoke-static {}, Lcom/android/deskclock/Utils;->isNOrLater()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object/from16 v4, p0

    move-object v9, v1

    .line 170
    invoke-direct/range {v4 .. v9}, Lcom/android/deskclock/data/TimerNotificationBuilder;->buildChronometer(Ljava/lang/String;JZLjava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 171
    invoke-virtual/range {p2 .. p2}, Lcom/android/deskclock/data/NotificationModel;->getTimerNotificationGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_5

    :cond_5
    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    .line 176
    invoke-virtual {v3}, Lcom/android/deskclock/data/Timer;->getRemainingTime()J

    move-result-wide v5

    const/4 v2, 0x0

    .line 175
    invoke-static {v0, v5, v6, v2}, Lcom/android/deskclock/data/TimerStringFormatter;->formatTimeRemaining(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    if-eqz v8, :cond_7

    .line 179
    invoke-virtual {v3}, Lcom/android/deskclock/data/Timer;->getRemainingTime()J

    move-result-wide v6

    .line 178
    invoke-static {v0, v6, v7, v2}, Lcom/android/deskclock/data/TimerStringFormatter;->formatTimeRemaining(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f110208

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v2

    .line 180
    invoke-virtual {v0, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_7
    const v2, 0x7f1101a2

    .line 182
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 185
    :goto_4
    invoke-virtual {v12, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v12, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 187
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 188
    invoke-static/range {p1 .. p1}, Lcom/android/deskclock/timer/TimerService;->createUpdateNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 189
    invoke-virtual {v3}, Lcom/android/deskclock/data/Timer;->getRemainingTime()J

    move-result-wide v4

    .line 190
    invoke-virtual {v3}, Lcom/android/deskclock/data/Timer;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_8

    const-wide/32 v6, 0xea60

    cmp-long v3, v4, v6

    if-lez v3, :cond_8

    const/4 v3, 0x0

    .line 193
    invoke-static {v0, v3, v2, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 196
    rem-long/2addr v4, v6

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 198
    invoke-static {v1, v2, v3, v0}, Lcom/android/deskclock/data/TimerModel;->schedulePendingIntent(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    const/high16 v4, 0x60000000

    .line 201
    invoke-static {v0, v3, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 204
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 205
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 210
    :cond_9
    :goto_5
    invoke-virtual {v12}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method buildHeadsUp(Landroid/content/Context;Ljava/util/List;)Landroid/app/Notification;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Timer;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    move-object/from16 v2, p2

    .line 214
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/data/Timer;

    .line 218
    invoke-static/range {p1 .. p1}, Lcom/android/deskclock/timer/TimerService;->createResetExpiredTimersIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    .line 219
    invoke-static {v0, v4}, Lcom/android/deskclock/Utils;->pendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 223
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    .line 224
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    const v7, 0x7f110264

    const v8, 0x7f0800ac

    const v9, 0x7f11024b

    const/4 v10, 0x1

    if-ne v2, v10, :cond_1

    .line 226
    invoke-virtual {v3}, Lcom/android/deskclock/data/Timer;->getLabel()Ljava/lang/String;

    move-result-object v11

    .line 227
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 228
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_0
    const v12, 0x7f110262

    .line 234
    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 235
    new-instance v13, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-direct {v13, v8, v12, v4}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v13}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v3}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/deskclock/timer/TimerService;->createAddMinuteTimerIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v4

    .line 239
    invoke-static {v0, v4}, Lcom/android/deskclock/Utils;->pendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    const v8, 0x7f110257

    .line 241
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 242
    new-instance v12, Landroidx/core/app/NotificationCompat$Action$Builder;

    const v13, 0x7f08007e

    invoke-direct {v12, v13, v8, v4}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v12}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array v11, v10, [Ljava/lang/Object;

    .line 244
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v1

    invoke-virtual {v0, v9, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f110263

    .line 247
    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 248
    new-instance v13, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-direct {v13, v8, v12, v4}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v13}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :goto_0
    invoke-static {v3}, Lcom/android/deskclock/data/TimerNotificationBuilder;->getChronometerBase(Lcom/android/deskclock/data/Timer;)J

    move-result-wide v14

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 256
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/deskclock/timer/ExpiredTimersActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    invoke-static {v0, v3}, Lcom/android/deskclock/Utils;->pendingActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 260
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/android/deskclock/timer/ExpiredTimersActivity;

    invoke-direct {v4, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v8, 0x10040000

    .line 261
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 262
    invoke-static {v0, v4}, Lcom/android/deskclock/Utils;->pendingActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 264
    new-instance v8, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v8, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    invoke-virtual {v8, v10}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 266
    invoke-virtual {v8, v10}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 267
    invoke-virtual {v8, v1}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 268
    invoke-virtual {v8, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 269
    invoke-virtual {v8, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 270
    invoke-virtual {v8, v6}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v3, 0x4

    .line 271
    invoke-virtual {v8, v3}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f0800dc

    .line 272
    invoke-virtual {v8, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 273
    invoke-virtual {v8, v4, v10}, Landroidx/core/app/NotificationCompat$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/NotificationCompat$Builder;

    new-instance v3, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    .line 274
    invoke-virtual {v8, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f06002f

    .line 275
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v8, v3}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 277
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/app/NotificationCompat$Action;

    .line 278
    invoke-virtual {v8, v4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    .line 281
    :cond_2
    invoke-static {}, Lcom/android/deskclock/Utils;->isNOrLater()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v16, 0x1

    move-object/from16 v12, p0

    move-object/from16 v17, v11

    .line 282
    invoke-direct/range {v12 .. v17}, Lcom/android/deskclock/data/TimerNotificationBuilder;->buildChronometer(Ljava/lang/String;JZLjava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    :cond_3
    if-ne v2, v10, :cond_4

    .line 285
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-array v3, v10, [Ljava/lang/Object;

    .line 286
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {v0, v9, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_2
    invoke-virtual {v8, v11}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v8, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 291
    :goto_3
    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method buildMissed(Landroid/content/Context;Lcom/android/deskclock/data/NotificationModel;Ljava/util/List;)Landroid/app/Notification;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/deskclock/data/NotificationModel;",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Timer;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 296
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/data/Timer;

    .line 297
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 300
    invoke-static {v1}, Lcom/android/deskclock/data/TimerNotificationBuilder;->getChronometerBase(Lcom/android/deskclock/data/Timer;)J

    move-result-wide v4

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v6, "com.android.deskclock.extra.TIMER_ID"

    const v7, 0x7f08009f

    const/4 v8, 0x1

    if-ne p3, v8, :cond_1

    .line 309
    invoke-virtual {v1}, Lcom/android/deskclock/data/Timer;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f1101fe

    .line 310
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const p3, 0x7f1101fd

    new-array v9, v8, [Ljava/lang/Object;

    .line 313
    invoke-virtual {v1}, Lcom/android/deskclock/data/Timer;->getLabel()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v0

    .line 312
    invoke-virtual {v2, p3, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 317
    :goto_0
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/android/deskclock/timer/TimerService;

    invoke-direct {v9, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "com.android.deskclock.action.RESET_TIMER"

    .line 318
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 319
    invoke-virtual {v1}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result v10

    invoke-virtual {v9, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    const v10, 0x7f11025b

    .line 322
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 323
    invoke-static {p1, v9}, Lcom/android/deskclock/Utils;->pendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 324
    new-instance v10, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-direct {v10, v7, v2, v9}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v2

    goto :goto_1

    :cond_1
    const v9, 0x7f11024a

    new-array v10, v8, [Ljava/lang/Object;

    .line 327
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v10, v0

    invoke-virtual {v2, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 329
    invoke-static {p1}, Lcom/android/deskclock/timer/TimerService;->createResetMissedTimersIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v9

    const v10, 0x7f11025c

    .line 332
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 333
    invoke-static {p1, v9}, Lcom/android/deskclock/Utils;->pendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 334
    new-instance v10, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-direct {v10, v7, v2, v9}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v2

    :goto_1
    move-object v7, p3

    .line 338
    new-instance p3, Landroid/content/Intent;

    const-class v9, Lcom/android/deskclock/timer/TimerService;

    invoke-direct {p3, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "com.android.deskclock.action.SHOW_TIMER"

    .line 339
    invoke-virtual {p3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    .line 340
    invoke-virtual {v1}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result v9

    invoke-virtual {p3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p3

    const v6, 0x7f1101e9

    const-string v9, "com.android.deskclock.extra.EVENT_LABEL"

    .line 341
    invoke-virtual {p3, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p3

    const/high16 v6, 0x48000000    # 131072.0f

    .line 344
    invoke-static {p1, v8, p3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 347
    new-instance v9, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v9, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    invoke-virtual {v9, v8}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 349
    invoke-virtual {v9, v0}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 350
    invoke-virtual {v9, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 351
    invoke-virtual {v9, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 352
    invoke-virtual {v9, v8}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string p3, "alarm"

    .line 353
    invoke-virtual {v9, p3}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    const p3, 0x7f0800dc

    .line 354
    invoke-virtual {v9, p3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 355
    invoke-virtual {v9, v8}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 356
    invoke-virtual {p2}, Lcom/android/deskclock/data/NotificationModel;->getTimerNotificationMissedSortKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v9, p3}, Landroidx/core/app/NotificationCompat$Builder;->setSortKey(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    new-instance p3, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {p3}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    .line 357
    invoke-virtual {v9, p3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 358
    invoke-virtual {v9, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    const p3, 0x7f06002f

    .line 359
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {v9, p3}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 361
    invoke-static {}, Lcom/android/deskclock/Utils;->isNOrLater()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 v6, 0x1

    move-object v2, p0

    .line 362
    invoke-direct/range {v2 .. v7}, Lcom/android/deskclock/data/TimerNotificationBuilder;->buildChronometer(Ljava/lang/String;JZLjava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object p0

    invoke-virtual {v9, p0}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 363
    invoke-virtual {p2}, Lcom/android/deskclock/data/NotificationModel;->getTimerNotificationGroupKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_2

    .line 366
    :cond_2
    invoke-virtual {v1}, Lcom/android/deskclock/data/Timer;->getWallClockExpirationTime()J

    move-result-wide p2

    .line 365
    invoke-static {p1, p2, p3}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .line 367
    invoke-virtual {v9, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v9, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 370
    :goto_2
    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method
