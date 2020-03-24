.class Lcom/android/deskclock/data/StopwatchNotificationBuilder;
.super Ljava/lang/Object;
.source "StopwatchNotificationBuilder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/android/deskclock/data/NotificationModel;Lcom/android/deskclock/data/Stopwatch;)Landroid/app/Notification;
    .locals 16

    move-object/from16 v0, p1

    .line 53
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.android.deskclock.action.SHOW_STOPWATCH"

    .line 54
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f1101e9

    const-string v3, "com.android.deskclock.extra.EVENT_LABEL"

    .line 55
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/4 v4, 0x0

    const/high16 v5, 0x48000000    # 131072.0f

    .line 57
    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 61
    invoke-virtual/range {p3 .. p3}, Lcom/android/deskclock/data/Stopwatch;->isRunning()Z

    move-result v11

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/deskclock/data/Stopwatch;->getTotalTime()J

    move-result-wide v8

    sub-long v7, v6, v8

    .line 66
    new-instance v13, Landroid/widget/RemoteViews;

    const v6, 0x7f0d0024

    invoke-direct {v13, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v6, 0x7f0a005c

    const/4 v9, 0x0

    move-object v5, v13

    move v10, v11

    .line 67
    invoke-virtual/range {v5 .. v10}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 69
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x1

    const v8, 0x7f0a012e

    if-eqz v11, :cond_2

    .line 73
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v9, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "com.android.deskclock.action.PAUSE_STOPWATCH"

    .line 74
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 75
    invoke-virtual {v9, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    const v10, 0x7f110237

    .line 78
    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 79
    invoke-static {v0, v9}, Lcom/android/deskclock/Utils;->pendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 80
    new-instance v14, Landroidx/core/app/NotificationCompat$Action$Builder;

    const v15, 0x7f080098

    invoke-direct {v14, v15, v10, v9}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v14}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/deskclock/data/DataModel;->canAddMoreLaps()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 84
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v9, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "com.android.deskclock.action.LAP_STOPWATCH"

    .line 85
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 86
    invoke-virtual {v9, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f110235

    .line 89
    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 90
    invoke-static {v0, v2}, Lcom/android/deskclock/Utils;->pendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 91
    new-instance v9, Landroidx/core/app/NotificationCompat$Action$Builder;

    const v10, 0x7f0800b1

    invoke-direct {v9, v10, v3, v2}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/deskclock/data/DataModel;->getLaps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    add-int/2addr v2, v7

    const v3, 0x7f110236

    new-array v9, v7, [Ljava/lang/Object;

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v4

    invoke-virtual {v12, v3, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v13, v8, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v13, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 102
    invoke-virtual {v13, v8, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 106
    :cond_2
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v9, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "com.android.deskclock.action.START_STOPWATCH"

    .line 107
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 108
    invoke-virtual {v9, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    const v10, 0x7f11023d

    .line 111
    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 112
    invoke-static {v0, v9}, Lcom/android/deskclock/Utils;->pendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 113
    new-instance v14, Landroidx/core/app/NotificationCompat$Action$Builder;

    const v15, 0x7f0800aa

    invoke-direct {v14, v15, v10, v9}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v14}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v9, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "com.android.deskclock.action.RESET_STOPWATCH"

    .line 117
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 118
    invoke-virtual {v9, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f110238

    .line 121
    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 122
    invoke-static {v0, v2}, Lcom/android/deskclock/Utils;->pendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 123
    new-instance v9, Landroidx/core/app/NotificationCompat$Action$Builder;

    const v10, 0x7f08009f

    invoke-direct {v9, v10, v3, v2}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f11023e

    .line 126
    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v8, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v13, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 130
    :goto_0
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {v2, v7}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 132
    invoke-virtual {v2, v11}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 133
    invoke-virtual {v2, v13}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 134
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 135
    invoke-virtual/range {p3 .. p3}, Lcom/android/deskclock/data/Stopwatch;->isPaused()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 136
    invoke-virtual {v2, v6}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f0800db

    .line 137
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    new-instance v1, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    .line 138
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f06002f

    .line 139
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 141
    invoke-static {}, Lcom/android/deskclock/Utils;->isNOrLater()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    invoke-virtual/range {p2 .. p2}, Lcom/android/deskclock/data/NotificationModel;->getStopwatchNotificationGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 145
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/NotificationCompat$Action;

    .line 146
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    .line 149
    :cond_4
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
