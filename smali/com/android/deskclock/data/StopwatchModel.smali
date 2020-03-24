.class final Lcom/android/deskclock/data/StopwatchModel;
.super Ljava/lang/Object;
.source "StopwatchModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/data/StopwatchModel$LocaleChangedReceiver;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Lap;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mNotificationBuilder:Lcom/android/deskclock/data/StopwatchNotificationBuilder;

.field private final mNotificationManager:Landroidx/core/app/NotificationManagerCompat;

.field private final mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private mStopwatch:Lcom/android/deskclock/data/Stopwatch;

.field private final mStopwatchListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/StopwatchListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/android/deskclock/data/NotificationModel;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/deskclock/data/StopwatchModel$LocaleChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/data/StopwatchModel$LocaleChangedReceiver;-><init>(Lcom/android/deskclock/data/StopwatchModel;Lcom/android/deskclock/data/StopwatchModel$1;)V

    iput-object v0, p0, Lcom/android/deskclock/data/StopwatchModel;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/data/StopwatchModel;->mStopwatchListeners:Ljava/util/List;

    .line 55
    new-instance v0, Lcom/android/deskclock/data/StopwatchNotificationBuilder;

    invoke-direct {v0}, Lcom/android/deskclock/data/StopwatchNotificationBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/data/StopwatchModel;->mNotificationBuilder:Lcom/android/deskclock/data/StopwatchNotificationBuilder;

    .line 65
    iput-object p1, p0, Lcom/android/deskclock/data/StopwatchModel;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/deskclock/data/StopwatchModel;->mPrefs:Landroid/content/SharedPreferences;

    .line 67
    iput-object p3, p0, Lcom/android/deskclock/data/StopwatchModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    .line 68
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/data/StopwatchModel;->mNotificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 71
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object p2, p0, Lcom/android/deskclock/data/StopwatchModel;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/deskclock/data/StopwatchModel;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private getMutableLaps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Lap;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/android/deskclock/data/StopwatchModel;->mLaps:Ljava/util/List;

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/deskclock/data/StopwatchModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/deskclock/data/StopwatchDAO;->getLaps(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/StopwatchModel;->mLaps:Ljava/util/List;

    .line 243
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/data/StopwatchModel;->mLaps:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method addLap()Lcom/android/deskclock/data/Lap;
    .locals 9

    .line 139
    iget-object v0, p0, Lcom/android/deskclock/data/StopwatchModel;->mStopwatch:Lcom/android/deskclock/data/Stopwatch;

    invoke-virtual {v0}, Lcom/android/deskclock/data/Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->canAddMoreLaps()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/Stopwatch;->getTotalTime()J

    move-result-wide v5

    .line 144
    invoke-direct {p0}, Lcom/android/deskclock/data/StopwatchModel;->getMutableLaps()Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 147
    iget-object v1, p0, Lcom/android/deskclock/data/StopwatchModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1, v2, v5, v6}, Lcom/android/deskclock/data/StopwatchDAO;->addLap(Landroid/content/SharedPreferences;IJ)V

    .line 149
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/data/Lap;

    invoke-virtual {v1}, Lcom/android/deskclock/data/Lap;->getAccumulatedTime()J

    move-result-wide v3

    :goto_0
    sub-long v3, v5, v3

    .line 152
    new-instance v8, Lcom/android/deskclock/data/Lap;

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/deskclock/data/Lap;-><init>(IJJ)V

    .line 153
    invoke-interface {v0, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/android/deskclock/data/StopwatchModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {v0}, Lcom/android/deskclock/data/NotificationModel;->isApplicationInForeground()Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->updateNotification()V

    .line 161
    :cond_2
    iget-object p0, p0, Lcom/android/deskclock/data/StopwatchModel;->mStopwatchListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/data/StopwatchListener;

    .line 162
    invoke-interface {v0, v8}, Lcom/android/deskclock/data/StopwatchListener;->lapAdded(Lcom/android/deskclock/data/Lap;)V

    goto :goto_1

    :cond_3
    return-object v8

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method addStopwatchListener(Lcom/android/deskclock/data/StopwatchListener;)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/deskclock/data/StopwatchModel;->mStopwatchListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method canAddMoreLaps()Z
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->getLaps()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/16 v0, 0x62

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method clearLaps()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/deskclock/data/StopwatchModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/deskclock/data/StopwatchDAO;->clearLaps(Landroid/content/SharedPreferences;)V

    .line 174
    invoke-direct {p0}, Lcom/android/deskclock/data/StopwatchModel;->getMutableLaps()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method getCurrentLapTime(J)J
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->getLaps()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/data/Lap;

    .line 216
    invoke-virtual {p0}, Lcom/android/deskclock/data/Lap;->getAccumulatedTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    .line 217
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method getLaps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Lap;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Lcom/android/deskclock/data/StopwatchModel;->getMutableLaps()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getLongestLapTime()J
    .locals 6

    .line 190
    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->getLaps()Ljava/util/List;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->getLaps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/data/Lap;

    .line 194
    invoke-virtual {v4}, Lcom/android/deskclock/data/Lap;->getLapTime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Lcom/android/deskclock/data/Stopwatch;->getTotalTime()J

    move-result-wide v4

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/data/Lap;

    invoke-virtual {p0}, Lcom/android/deskclock/data/Lap;->getAccumulatedTime()J

    move-result-wide v0

    sub-long/2addr v4, v0

    .line 200
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_1
    return-wide v2
.end method

.method getStopwatch()Lcom/android/deskclock/data/Stopwatch;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/deskclock/data/StopwatchModel;->mStopwatch:Lcom/android/deskclock/data/Stopwatch;

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/deskclock/data/StopwatchModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/deskclock/data/StopwatchDAO;->getStopwatch(Landroid/content/SharedPreferences;)Lcom/android/deskclock/data/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/StopwatchModel;->mStopwatch:Lcom/android/deskclock/data/Stopwatch;

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/data/StopwatchModel;->mStopwatch:Lcom/android/deskclock/data/Stopwatch;

    return-object p0
.end method

.method removeStopwatchListener(Lcom/android/deskclock/data/StopwatchListener;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/deskclock/data/StopwatchModel;->mStopwatchListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method setStopwatch(Lcom/android/deskclock/data/Stopwatch;)Lcom/android/deskclock/data/Stopwatch;
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/android/deskclock/data/StopwatchModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1, p1}, Lcom/android/deskclock/data/StopwatchDAO;->setStopwatch(Landroid/content/SharedPreferences;Lcom/android/deskclock/data/Stopwatch;)V

    .line 107
    iput-object p1, p0, Lcom/android/deskclock/data/StopwatchModel;->mStopwatch:Lcom/android/deskclock/data/Stopwatch;

    .line 110
    iget-object v1, p0, Lcom/android/deskclock/data/StopwatchModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {v1}, Lcom/android/deskclock/data/NotificationModel;->isApplicationInForeground()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->updateNotification()V

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/android/deskclock/data/Stopwatch;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->clearLaps()V

    .line 120
    :cond_1
    iget-object p0, p0, Lcom/android/deskclock/data/StopwatchModel;->mStopwatchListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/data/StopwatchListener;

    .line 121
    invoke-interface {v1, v0, p1}, Lcom/android/deskclock/data/StopwatchListener;->stopwatchUpdated(Lcom/android/deskclock/data/Stopwatch;Lcom/android/deskclock/data/Stopwatch;)V

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method updateNotification()V
    .locals 4

    .line 224
    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/android/deskclock/data/Stopwatch;->isReset()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/deskclock/data/StopwatchModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {v1}, Lcom/android/deskclock/data/NotificationModel;->isApplicationInForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/data/StopwatchModel;->mNotificationBuilder:Lcom/android/deskclock/data/StopwatchNotificationBuilder;

    iget-object v2, p0, Lcom/android/deskclock/data/StopwatchModel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/deskclock/data/StopwatchModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    .line 234
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/deskclock/data/StopwatchNotificationBuilder;->build(Landroid/content/Context;Lcom/android/deskclock/data/NotificationModel;Lcom/android/deskclock/data/Stopwatch;)Landroid/app/Notification;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/android/deskclock/data/StopwatchModel;->mNotificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget-object p0, p0, Lcom/android/deskclock/data/StopwatchModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/NotificationModel;->getStopwatchNotificationId()I

    move-result p0

    invoke-virtual {v1, p0, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void

    .line 228
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/deskclock/data/StopwatchModel;->mNotificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget-object p0, p0, Lcom/android/deskclock/data/StopwatchModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/NotificationModel;->getStopwatchNotificationId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    return-void
.end method
