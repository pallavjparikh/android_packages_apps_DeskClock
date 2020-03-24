.class final Lcom/android/deskclock/data/TimerModel;
.super Ljava/lang/Object;
.source "TimerModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/data/TimerModel$PreferenceListener;,
        Lcom/android/deskclock/data/TimerModel$LocaleChangedReceiver;
    }
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private mExpiredTimers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mMissedTimers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationBuilder:Lcom/android/deskclock/data/TimerNotificationBuilder;

.field private final mNotificationManager:Landroidx/core/app/NotificationManagerCompat;

.field private final mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

.field private final mPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mRingingIds:Ljava/util/Set;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRingtoneModel:Lcom/android/deskclock/data/RingtoneModel;

.field private mService:Landroid/app/Service;

.field private final mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

.field private final mTimerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/TimerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTimerRingtoneTitle:Ljava/lang/String;

.field private mTimerRingtoneUri:Landroid/net/Uri;

.field private mTimers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Timer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/android/deskclock/data/SettingsModel;Lcom/android/deskclock/data/RingtoneModel;Lcom/android/deskclock/data/NotificationModel;)V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/android/deskclock/data/TimerModel$LocaleChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/data/TimerModel$LocaleChangedReceiver;-><init>(Lcom/android/deskclock/data/TimerModel;Lcom/android/deskclock/data/TimerModel$1;)V

    iput-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    new-instance v0, Lcom/android/deskclock/data/TimerModel$PreferenceListener;

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/data/TimerModel$PreferenceListener;-><init>(Lcom/android/deskclock/data/TimerModel;Lcom/android/deskclock/data/TimerModel$1;)V

    iput-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mTimerListeners:Ljava/util/List;

    .line 99
    new-instance v0, Lcom/android/deskclock/data/TimerNotificationBuilder;

    invoke-direct {v0}, Lcom/android/deskclock/data/TimerNotificationBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationBuilder:Lcom/android/deskclock/data/TimerNotificationBuilder;

    .line 106
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mRingingIds:Ljava/util/Set;

    .line 133
    iput-object p1, p0, Lcom/android/deskclock/data/TimerModel;->mContext:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Lcom/android/deskclock/data/TimerModel;->mPrefs:Landroid/content/SharedPreferences;

    .line 135
    iput-object p3, p0, Lcom/android/deskclock/data/TimerModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    .line 136
    iput-object p4, p0, Lcom/android/deskclock/data/TimerModel;->mRingtoneModel:Lcom/android/deskclock/data/RingtoneModel;

    .line 137
    iput-object p5, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    .line 138
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 140
    iget-object p1, p0, Lcom/android/deskclock/data/TimerModel;->mContext:Landroid/content/Context;

    const-string p3, "alarm"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/deskclock/data/TimerModel;->mAlarmManager:Landroid/app/AlarmManager;

    .line 143
    iget-object p1, p0, Lcom/android/deskclock/data/TimerModel;->mPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 146
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lcom/android/deskclock/data/TimerModel;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$202(Lcom/android/deskclock/data/TimerModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/deskclock/data/TimerModel;->mTimerRingtoneTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/deskclock/data/TimerModel;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->updateHeadsUpNotification()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/deskclock/data/TimerModel;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/deskclock/data/TimerModel;->mTimerRingtoneUri:Landroid/net/Uri;

    return-object p1
.end method

.method private doRemoveTimer(Lcom/android/deskclock/data/Timer;)V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, p1}, Lcom/android/deskclock/data/TimerDAO;->removeTimer(Landroid/content/SharedPreferences;Lcom/android/deskclock/data/Timer;)V

    .line 570
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->getMutableTimers()Ljava/util/List;

    move-result-object v0

    .line 571
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    .line 578
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/data/Timer;

    .line 581
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 582
    iput-object v1, p0, Lcom/android/deskclock/data/TimerModel;->mExpiredTimers:Ljava/util/List;

    .line 586
    :cond_1
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isMissed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    iput-object v1, p0, Lcom/android/deskclock/data/TimerModel;->mMissedTimers:Ljava/util/List;

    .line 591
    :cond_2
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->updateAlarmManager()V

    .line 594
    invoke-direct {p0, p1, v1}, Lcom/android/deskclock/data/TimerModel;->updateRinger(Lcom/android/deskclock/data/Timer;Lcom/android/deskclock/data/Timer;)V

    .line 597
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mTimerListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/data/TimerListener;

    .line 598
    invoke-interface {v0, p1}, Lcom/android/deskclock/data/TimerListener;->timerRemoved(Lcom/android/deskclock/data/Timer;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private doResetOrDeleteTimer(Lcom/android/deskclock/data/Timer;ZI)Lcom/android/deskclock/data/Timer;
    .locals 0

    if-eqz p2, :cond_2

    .line 619
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isMissed()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 620
    :cond_0
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getDeleteAfterUse()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 621
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/TimerModel;->doRemoveTimer(Lcom/android/deskclock/data/Timer;)V

    if-eqz p3, :cond_1

    const p0, 0x7f110175

    .line 623
    invoke-static {p0, p3}, Lcom/android/deskclock/events/Events;->sendTimerEvent(II)V

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 626
    :cond_2
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isReset()Z

    move-result p2

    if-nez p2, :cond_3

    .line 627
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->reset()Lcom/android/deskclock/data/Timer;

    move-result-object p1

    .line 628
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/TimerModel;->doUpdateTimer(Lcom/android/deskclock/data/Timer;)Lcom/android/deskclock/data/Timer;

    if-eqz p3, :cond_3

    const p0, 0x7f11017f

    .line 630
    invoke-static {p0, p3}, Lcom/android/deskclock/events/Events;->sendTimerEvent(II)V

    :cond_3
    return-object p1
.end method

.method private doUpdateAfterRebootTimer(Lcom/android/deskclock/data/Timer;)V
    .locals 4

    .line 644
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->updateAfterReboot()Lcom/android/deskclock/data/Timer;

    move-result-object p1

    .line 645
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getRemainingTime()J

    move-result-wide v0

    const-wide/32 v2, -0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->miss()Lcom/android/deskclock/data/Timer;

    move-result-object p1

    .line 648
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/TimerModel;->doUpdateTimer(Lcom/android/deskclock/data/Timer;)Lcom/android/deskclock/data/Timer;

    return-void
.end method

.method private doUpdateAfterTimeSetTimer(Lcom/android/deskclock/data/Timer;)V
    .locals 0

    .line 652
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->updateAfterTimeSet()Lcom/android/deskclock/data/Timer;

    move-result-object p1

    .line 653
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/TimerModel;->doUpdateTimer(Lcom/android/deskclock/data/Timer;)Lcom/android/deskclock/data/Timer;

    return-void
.end method

.method private doUpdateTimer(Lcom/android/deskclock/data/Timer;)Lcom/android/deskclock/data/Timer;
    .locals 4

    .line 521
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->getMutableTimers()Ljava/util/List;

    move-result-object v0

    .line 522
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 523
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/data/Timer;

    if-ne p1, v2, :cond_0

    return-object p1

    .line 531
    :cond_0
    iget-object v3, p0, Lcom/android/deskclock/data/TimerModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v3, p1}, Lcom/android/deskclock/data/TimerDAO;->updateTimer(Landroid/content/SharedPreferences;Lcom/android/deskclock/data/Timer;)V

    .line 534
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/data/Timer;

    .line 537
    invoke-virtual {v2}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 538
    :cond_1
    iput-object v3, p0, Lcom/android/deskclock/data/TimerModel;->mExpiredTimers:Ljava/util/List;

    .line 541
    :cond_2
    invoke-virtual {v2}, Lcom/android/deskclock/data/Timer;->isMissed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isMissed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 542
    :cond_3
    iput-object v3, p0, Lcom/android/deskclock/data/TimerModel;->mMissedTimers:Ljava/util/List;

    .line 546
    :cond_4
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->updateAlarmManager()V

    .line 549
    invoke-direct {p0, v2, p1}, Lcom/android/deskclock/data/TimerModel;->updateRinger(Lcom/android/deskclock/data/Timer;Lcom/android/deskclock/data/Timer;)V

    .line 552
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mTimerListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/data/TimerListener;

    .line 553
    invoke-interface {v1, v2, p1}, Lcom/android/deskclock/data/TimerListener;->timerUpdated(Lcom/android/deskclock/data/Timer;Lcom/android/deskclock/data/Timer;)V

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private getMissedTimers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Timer;",
            ">;"
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->getMutableMissedTimers()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getMutableExpiredTimers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Timer;",
            ">;"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mExpiredTimers:Ljava/util/List;

    if-nez v0, :cond_2

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mExpiredTimers:Ljava/util/List;

    .line 486
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->getMutableTimers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/data/Timer;

    .line 487
    invoke-virtual {v1}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    iget-object v2, p0, Lcom/android/deskclock/data/TimerModel;->mExpiredTimers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mExpiredTimers:Ljava/util/List;

    sget-object v1, Lcom/android/deskclock/data/Timer;->EXPIRY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 494
    :cond_2
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mExpiredTimers:Ljava/util/List;

    return-object p0
.end method

.method private getMutableMissedTimers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Timer;",
            ">;"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mMissedTimers:Ljava/util/List;

    if-nez v0, :cond_2

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mMissedTimers:Ljava/util/List;

    .line 501
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->getMutableTimers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/data/Timer;

    .line 502
    invoke-virtual {v1}, Lcom/android/deskclock/data/Timer;->isMissed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/android/deskclock/data/TimerModel;->mMissedTimers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mMissedTimers:Ljava/util/List;

    sget-object v1, Lcom/android/deskclock/data/Timer;->EXPIRY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 509
    :cond_2
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mMissedTimers:Ljava/util/List;

    return-object p0
.end method

.method private getMutableTimers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Timer;",
            ">;"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mTimers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/deskclock/data/TimerDAO;->getTimers(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mTimers:Ljava/util/List;

    .line 476
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mTimers:Ljava/util/List;

    sget-object v1, Lcom/android/deskclock/data/Timer;->ID_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 479
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mTimers:Ljava/util/List;

    return-object p0
.end method

.method static schedulePendingIntent(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V
    .locals 2

    .line 838
    invoke-static {}, Lcom/android/deskclock/Utils;->isMOrLater()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 842
    :cond_0
    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method private updateAlarmManager()V
    .locals 7

    .line 665
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->getMutableTimers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/data/Timer;

    .line 666
    invoke-virtual {v2}, Lcom/android/deskclock/data/Timer;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    goto :goto_1

    .line 669
    :cond_1
    invoke-virtual {v2}, Lcom/android/deskclock/data/Timer;->getExpirationTime()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/android/deskclock/data/Timer;->getExpirationTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    :goto_1
    move-object v1, v2

    goto :goto_0

    .line 676
    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/deskclock/timer/TimerService;->createTimerExpiredIntent(Landroid/content/Context;Lcom/android/deskclock/data/Timer;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 680
    iget-object v1, p0, Lcom/android/deskclock/data/TimerModel;->mContext:Landroid/content/Context;

    const/high16 v3, 0x60000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 683
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 684
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_2

    .line 688
    :cond_3
    iget-object v3, p0, Lcom/android/deskclock/data/TimerModel;->mContext:Landroid/content/Context;

    const/high16 v4, 0x48000000    # 131072.0f

    invoke-static {v3, v2, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 690
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Lcom/android/deskclock/data/Timer;->getExpirationTime()J

    move-result-wide v1

    invoke-static {p0, v1, v2, v0}, Lcom/android/deskclock/data/TimerModel;->schedulePendingIntent(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateHeadsUpNotification()V
    .locals 3

    .line 789
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mService:Landroid/app/Service;

    if-nez v0, :cond_0

    return-void

    .line 793
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->getExpiredTimers()Ljava/util/List;

    move-result-object v0

    .line 796
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 797
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    const/4 v0, 0x0

    .line 798
    iput-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mService:Landroid/app/Service;

    return-void

    .line 803
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationBuilder:Lcom/android/deskclock/data/TimerNotificationBuilder;

    iget-object v2, p0, Lcom/android/deskclock/data/TimerModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/deskclock/data/TimerNotificationBuilder;->buildHeadsUp(Landroid/content/Context;Ljava/util/List;)Landroid/app/Notification;

    move-result-object v0

    .line 804
    iget-object v1, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {v1}, Lcom/android/deskclock/data/NotificationModel;->getExpiredTimerNotificationId()I

    move-result v1

    .line 805
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mService:Landroid/app/Service;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private updateRinger(Lcom/android/deskclock/data/Timer;Lcom/android/deskclock/data/Timer;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getState()Lcom/android/deskclock/data/Timer$State;

    move-result-object v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 703
    :cond_1
    invoke-virtual {p2}, Lcom/android/deskclock/data/Timer;->getState()Lcom/android/deskclock/data/Timer$State;

    move-result-object v0

    :goto_1
    if-ne v1, v0, :cond_2

    return-void

    .line 711
    :cond_2
    sget-object v2, Lcom/android/deskclock/data/Timer$State;->EXPIRED:Lcom/android/deskclock/data/Timer$State;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mRingingIds:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/deskclock/data/TimerModel;->mRingingIds:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 712
    iget-object p2, p0, Lcom/android/deskclock/data/TimerModel;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/deskclock/AlarmAlertWakeLock;->acquireScreenCpuWakeLock(Landroid/content/Context;)V

    .line 713
    iget-object p2, p0, Lcom/android/deskclock/data/TimerModel;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/deskclock/timer/TimerKlaxon;->start(Landroid/content/Context;)V

    .line 717
    :cond_3
    sget-object p2, Lcom/android/deskclock/data/Timer$State;->EXPIRED:Lcom/android/deskclock/data/Timer$State;

    if-ne v1, p2, :cond_4

    iget-object p2, p0, Lcom/android/deskclock/data/TimerModel;->mRingingIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/deskclock/data/TimerModel;->mRingingIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 718
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/deskclock/timer/TimerKlaxon;->stop(Landroid/content/Context;)V

    .line 719
    invoke-static {}, Lcom/android/deskclock/AlarmAlertWakeLock;->releaseCpuLock()V

    :cond_4
    return-void
.end method


# virtual methods
.method addTimer(JLjava/lang/String;Z)Lcom/android/deskclock/data/Timer;
    .locals 17

    move-object/from16 v0, p0

    .line 216
    new-instance v15, Lcom/android/deskclock/data/Timer;

    sget-object v3, Lcom/android/deskclock/data/Timer$State;->RESET:Lcom/android/deskclock/data/Timer$State;

    const/4 v2, -0x1

    const-wide/high16 v8, -0x8000000000000000L

    const-wide/high16 v10, -0x8000000000000000L

    move-object v1, v15

    move-wide/from16 v4, p1

    move-wide/from16 v6, p1

    move-wide/from16 v12, p1

    move-object/from16 v14, p3

    move-object/from16 v16, v15

    move/from16 v15, p4

    invoke-direct/range {v1 .. v15}, Lcom/android/deskclock/data/Timer;-><init>(ILcom/android/deskclock/data/Timer$State;JJJJJLjava/lang/String;Z)V

    .line 220
    iget-object v1, v0, Lcom/android/deskclock/data/TimerModel;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v2, v16

    invoke-static {v1, v2}, Lcom/android/deskclock/data/TimerDAO;->addTimer(Landroid/content/SharedPreferences;Lcom/android/deskclock/data/Timer;)Lcom/android/deskclock/data/Timer;

    move-result-object v1

    .line 223
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/data/TimerModel;->getMutableTimers()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/data/TimerModel;->updateNotification()V

    .line 230
    iget-object v0, v0, Lcom/android/deskclock/data/TimerModel;->mTimerListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/data/TimerListener;

    .line 231
    invoke-interface {v2, v1}, Lcom/android/deskclock/data/TimerListener;->timerAdded(Lcom/android/deskclock/data/Timer;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method addTimerListener(Lcom/android/deskclock/data/TimerListener;)V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mTimerListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method expireTimer(Landroid/app/Service;Lcom/android/deskclock/data/Timer;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mService:Landroid/app/Service;

    if-nez v0, :cond_0

    .line 245
    iput-object p1, p0, Lcom/android/deskclock/data/TimerModel;->mService:Landroid/app/Service;

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Expected TimerServices to be identical"

    .line 249
    invoke-static {v0, p1}, Lcom/android/deskclock/LogUtils;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/deskclock/data/Timer;->expire()Lcom/android/deskclock/data/Timer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/TimerModel;->updateTimer(Lcom/android/deskclock/data/Timer;)V

    return-void
.end method

.method getDefaultTimerRingtoneUri()Landroid/net/Uri;
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getDefaultTimerRingtoneUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method getExpiredTimers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Timer;",
            ">;"
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->getMutableExpiredTimers()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getMostRecentExpiredTimer()Lcom/android/deskclock/data/Timer;
    .locals 1

    .line 204
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->getMutableExpiredTimers()Ljava/util/List;

    move-result-object p0

    .line 205
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/data/Timer;

    :goto_0
    return-object p0
.end method

.method getTimer(I)Lcom/android/deskclock/data/Timer;
    .locals 2

    .line 190
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->getMutableTimers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/data/Timer;

    .line 191
    invoke-virtual {v0}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getTimerCrescendoDuration()J
    .locals 2

    .line 456
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getTimerCrescendoDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method getTimerRingtoneTitle()Ljava/lang/String;
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mTimerRingtoneTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 432
    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->isTimerRingtoneSilent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mContext:Landroid/content/Context;

    const v1, 0x7f110230

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mTimerRingtoneTitle:Ljava/lang/String;

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->getDefaultTimerRingtoneUri()Landroid/net/Uri;

    move-result-object v0

    .line 437
    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->getTimerRingtoneUri()Landroid/net/Uri;

    move-result-object v1

    .line 439
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mContext:Landroid/content/Context;

    const v1, 0x7f1101ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mTimerRingtoneTitle:Ljava/lang/String;

    goto :goto_0

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mRingtoneModel:Lcom/android/deskclock/data/RingtoneModel;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/data/RingtoneModel;->getRingtoneTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mTimerRingtoneTitle:Ljava/lang/String;

    .line 448
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mTimerRingtoneTitle:Ljava/lang/String;

    return-object p0
.end method

.method getTimerRingtoneUri()Landroid/net/Uri;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mTimerRingtoneUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {v0}, Lcom/android/deskclock/data/SettingsModel;->getTimerRingtoneUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mTimerRingtoneUri:Landroid/net/Uri;

    .line 417
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mTimerRingtoneUri:Landroid/net/Uri;

    return-object p0
.end method

.method getTimerVibrate()Z
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getTimerVibrate()Z

    move-result p0

    return p0
.end method

.method getTimers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Timer;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->getMutableTimers()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method isTimerRingtoneSilent()Z
    .locals 1

    .line 406
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->getTimerRingtoneUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method removeTimer(Lcom/android/deskclock/data/Timer;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/TimerModel;->doRemoveTimer(Lcom/android/deskclock/data/Timer;)V

    .line 279
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->updateHeadsUpNotification()V

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->updateNotification()V

    :goto_0
    return-void
.end method

.method removeTimerListener(Lcom/android/deskclock/data/TimerListener;)V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mTimerListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method resetMissedTimers(I)V
    .locals 3

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->getTimers()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 367
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/data/Timer;

    .line 368
    invoke-virtual {v1}, Lcom/android/deskclock/data/Timer;->isMissed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 369
    invoke-direct {p0, v1, v2, p1}, Lcom/android/deskclock/data/TimerModel;->doResetOrDeleteTimer(Lcom/android/deskclock/data/Timer;ZI)Lcom/android/deskclock/data/Timer;

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->updateMissedNotification()V

    return-void
.end method

.method resetOrDeleteExpiredTimers(I)V
    .locals 3

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->getTimers()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 350
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/data/Timer;

    .line 351
    invoke-virtual {v1}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 352
    invoke-direct {p0, v1, v2, p1}, Lcom/android/deskclock/data/TimerModel;->doResetOrDeleteTimer(Lcom/android/deskclock/data/Timer;ZI)Lcom/android/deskclock/data/Timer;

    goto :goto_0

    .line 357
    :cond_1
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->updateHeadsUpNotification()V

    return-void
.end method

.method resetTimer(Lcom/android/deskclock/data/Timer;ZI)Lcom/android/deskclock/data/Timer;
    .locals 0

    .line 298
    invoke-direct {p0, p1, p2, p3}, Lcom/android/deskclock/data/TimerModel;->doResetOrDeleteTimer(Lcom/android/deskclock/data/Timer;ZI)Lcom/android/deskclock/data/Timer;

    move-result-object p2

    .line 301
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isMissed()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->updateMissedNotification()V

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 304
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->updateHeadsUpNotification()V

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->updateNotification()V

    :goto_0
    return-object p2
.end method

.method resetUnexpiredTimers(I)V
    .locals 3

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->getTimers()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 384
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/data/Timer;

    .line 385
    invoke-virtual {v1}, Lcom/android/deskclock/data/Timer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/deskclock/data/Timer;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    .line 386
    invoke-direct {p0, v1, v2, p1}, Lcom/android/deskclock/data/TimerModel;->doResetOrDeleteTimer(Lcom/android/deskclock/data/Timer;ZI)Lcom/android/deskclock/data/Timer;

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->updateNotification()V

    return-void
.end method

.method setTimerRingtoneUri(Landroid/net/Uri;)V
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/SettingsModel;->setTimerRingtoneUri(Landroid/net/Uri;)V

    return-void
.end method

.method setTimerVibrate(Z)V
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/SettingsModel;->setTimerVibrate(Z)V

    return-void
.end method

.method updateMissedNotification()V
    .locals 4

    .line 765
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {v0}, Lcom/android/deskclock/data/NotificationModel;->isApplicationInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/NotificationModel;->getMissedTimerNotificationId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    return-void

    .line 770
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->getMissedTimers()Ljava/util/List;

    move-result-object v0

    .line 772
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 773
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/NotificationModel;->getMissedTimerNotificationId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    return-void

    .line 777
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationBuilder:Lcom/android/deskclock/data/TimerNotificationBuilder;

    iget-object v2, p0, Lcom/android/deskclock/data/TimerModel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/deskclock/data/TimerNotificationBuilder;->buildMissed(Landroid/content/Context;Lcom/android/deskclock/data/NotificationModel;Ljava/util/List;)Landroid/app/Notification;

    move-result-object v0

    .line 779
    iget-object v1, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {v1}, Lcom/android/deskclock/data/NotificationModel;->getMissedTimerNotificationId()I

    move-result v1

    .line 780
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationManager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {p0, v1, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method updateNotification()V
    .locals 4

    .line 729
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {v0}, Lcom/android/deskclock/data/NotificationModel;->isApplicationInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/NotificationModel;->getUnexpiredTimerNotificationId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    return-void

    .line 735
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 736
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->getMutableTimers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/data/Timer;

    .line 737
    invoke-virtual {v2}, Lcom/android/deskclock/data/Timer;->isRunning()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/android/deskclock/data/Timer;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 738
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 743
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 744
    iget-object v0, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/NotificationModel;->getUnexpiredTimerNotificationId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    return-void

    .line 749
    :cond_4
    sget-object v1, Lcom/android/deskclock/data/Timer;->EXPIRY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 752
    iget-object v1, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationBuilder:Lcom/android/deskclock/data/TimerNotificationBuilder;

    iget-object v2, p0, Lcom/android/deskclock/data/TimerModel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    .line 753
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/deskclock/data/TimerNotificationBuilder;->build(Landroid/content/Context;Lcom/android/deskclock/data/NotificationModel;Ljava/util/List;)Landroid/app/Notification;

    move-result-object v0

    .line 754
    iget-object v1, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {v1}, Lcom/android/deskclock/data/NotificationModel;->getUnexpiredTimerNotificationId()I

    move-result v1

    .line 755
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel;->mNotificationManager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {p0, v1, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method updateTimer(Lcom/android/deskclock/data/Timer;)V
    .locals 3

    .line 259
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/TimerModel;->doUpdateTimer(Lcom/android/deskclock/data/Timer;)Lcom/android/deskclock/data/Timer;

    move-result-object v0

    .line 262
    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->updateNotification()V

    .line 265
    invoke-virtual {v0}, Lcom/android/deskclock/data/Timer;->getState()Lcom/android/deskclock/data/Timer$State;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getState()Lcom/android/deskclock/data/Timer$State;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 266
    invoke-virtual {v0}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->updateHeadsUpNotification()V

    :cond_1
    return-void
.end method

.method updateTimersAfterReboot()V
    .locals 2

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->getTimers()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 317
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/data/Timer;

    .line 318
    invoke-direct {p0, v1}, Lcom/android/deskclock/data/TimerModel;->doUpdateAfterRebootTimer(Lcom/android/deskclock/data/Timer;)V

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->updateNotification()V

    .line 323
    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->updateMissedNotification()V

    .line 324
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->updateHeadsUpNotification()V

    return-void
.end method

.method updateTimersAfterTimeSet()V
    .locals 2

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->getTimers()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 332
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/data/Timer;

    .line 333
    invoke-direct {p0, v1}, Lcom/android/deskclock/data/TimerModel;->doUpdateAfterTimeSetTimer(Lcom/android/deskclock/data/Timer;)V

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->updateNotification()V

    .line 338
    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->updateMissedNotification()V

    .line 339
    invoke-direct {p0}, Lcom/android/deskclock/data/TimerModel;->updateHeadsUpNotification()V

    return-void
.end method
