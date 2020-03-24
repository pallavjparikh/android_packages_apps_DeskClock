.class public final Lcom/android/deskclock/data/DataModel;
.super Ljava/lang/Object;
.source "DataModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/data/DataModel$ExecutedRunnable;,
        Lcom/android/deskclock/data/DataModel$SilentSetting;,
        Lcom/android/deskclock/data/DataModel$AlarmVolumeButtonBehavior;,
        Lcom/android/deskclock/data/DataModel$CitySort;,
        Lcom/android/deskclock/data/DataModel$ClockStyle;
    }
.end annotation


# static fields
.field private static final sDataModel:Lcom/android/deskclock/data/DataModel;


# instance fields
.field private mAlarmModel:Lcom/android/deskclock/data/AlarmModel;

.field private mCityModel:Lcom/android/deskclock/data/CityModel;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

.field private mRingtoneModel:Lcom/android/deskclock/data/RingtoneModel;

.field private mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

.field private mSilentSettingsModel:Lcom/android/deskclock/data/SilentSettingsModel;

.field private mStopwatchModel:Lcom/android/deskclock/data/StopwatchModel;

.field private mTimeModel:Lcom/android/deskclock/data/TimeModel;

.field private mTimerModel:Lcom/android/deskclock/data/TimerModel;

.field private mWidgetModel:Lcom/android/deskclock/data/WidgetModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 161
    new-instance v0, Lcom/android/deskclock/data/DataModel;

    invoke-direct {v0}, Lcom/android/deskclock/data/DataModel;-><init>()V

    sput-object v0, Lcom/android/deskclock/data/DataModel;->sDataModel:Lcom/android/deskclock/data/DataModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataModel()Lcom/android/deskclock/data/DataModel;
    .locals 1

    .line 198
    sget-object v0, Lcom/android/deskclock/data/DataModel;->sDataModel:Lcom/android/deskclock/data/DataModel;

    return-object v0
.end method

.method private declared-synchronized getHandler()Landroid/os/Handler;
    .locals 2

    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/deskclock/data/DataModel;->mHandler:Landroid/os/Handler;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addCityListener(Lcom/android/deskclock/data/CityListener;)V
    .locals 0

    .line 395
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 396
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mCityModel:Lcom/android/deskclock/data/CityModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/CityModel;->addCityListener(Lcom/android/deskclock/data/CityListener;)V

    return-void
.end method

.method public addCustomRingtone(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/deskclock/data/CustomRingtone;
    .locals 0

    .line 909
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 910
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mRingtoneModel:Lcom/android/deskclock/data/RingtoneModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/data/RingtoneModel;->addCustomRingtone(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/deskclock/data/CustomRingtone;

    move-result-object p0

    return-object p0
.end method

.method public addLap()Lcom/android/deskclock/data/Lap;
    .locals 0

    .line 810
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 811
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mStopwatchModel:Lcom/android/deskclock/data/StopwatchModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->addLap()Lcom/android/deskclock/data/Lap;

    move-result-object p0

    return-object p0
.end method

.method public addSilentSettingsListener(Lcom/android/deskclock/data/OnSilentSettingsListener;)V
    .locals 0

    .line 951
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 952
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mSilentSettingsModel:Lcom/android/deskclock/data/SilentSettingsModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/SilentSettingsModel;->addSilentSettingsListener(Lcom/android/deskclock/data/OnSilentSettingsListener;)V

    return-void
.end method

.method public addStopwatchListener(Lcom/android/deskclock/data/StopwatchListener;)V
    .locals 0

    .line 754
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 755
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mStopwatchModel:Lcom/android/deskclock/data/StopwatchModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/StopwatchModel;->addStopwatchListener(Lcom/android/deskclock/data/StopwatchListener;)V

    return-void
.end method

.method public addTimer(JLjava/lang/String;Z)Lcom/android/deskclock/data/Timer;
    .locals 0

    .line 468
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 469
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/deskclock/data/TimerModel;->addTimer(JLjava/lang/String;Z)Lcom/android/deskclock/data/Timer;

    move-result-object p0

    return-object p0
.end method

.method public addTimerListener(Lcom/android/deskclock/data/TimerListener;)V
    .locals 0

    .line 415
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 416
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/TimerModel;->addTimerListener(Lcom/android/deskclock/data/TimerListener;)V

    return-void
.end method

.method public addTimerMinute(Lcom/android/deskclock/data/Timer;)V
    .locals 0

    .line 578
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 579
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->addMinute()Lcom/android/deskclock/data/Timer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/TimerModel;->updateTimer(Lcom/android/deskclock/data/Timer;)V

    return-void
.end method

.method public canAddMoreLaps()Z
    .locals 0

    .line 818
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 819
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mStopwatchModel:Lcom/android/deskclock/data/StopwatchModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->canAddMoreLaps()Z

    move-result p0

    return p0
.end method

.method public currentTimeMillis()J
    .locals 2

    .line 848
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimeModel:Lcom/android/deskclock/data/TimeModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimeModel;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedRealtime()J
    .locals 2

    .line 855
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimeModel:Lcom/android/deskclock/data/TimeModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimeModel;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public expireTimer(Landroid/app/Service;Lcom/android/deskclock/data/Timer;)V
    .locals 0

    .line 517
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 518
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/data/TimerModel;->expireTimer(Landroid/app/Service;Lcom/android/deskclock/data/Timer;)V

    return-void
.end method

.method public getAlarmCrescendoDuration()J
    .locals 2

    .line 712
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 713
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mAlarmModel:Lcom/android/deskclock/data/AlarmModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/AlarmModel;->getAlarmCrescendoDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlarmTimeout()I
    .locals 0

    .line 728
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mAlarmModel:Lcom/android/deskclock/data/AlarmModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/AlarmModel;->getAlarmTimeout()I

    move-result p0

    return p0
.end method

.method public getAlarmVolumeButtonBehavior()Lcom/android/deskclock/data/DataModel$AlarmVolumeButtonBehavior;
    .locals 0

    .line 720
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 721
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mAlarmModel:Lcom/android/deskclock/data/AlarmModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/AlarmModel;->getAlarmVolumeButtonBehavior()Lcom/android/deskclock/data/DataModel$AlarmVolumeButtonBehavior;

    move-result-object p0

    return-object p0
.end method

.method public getAllCities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation

    .line 331
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 332
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mCityModel:Lcom/android/deskclock/data/CityModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/CityModel;->getAllCities()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 0

    .line 869
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimeModel:Lcom/android/deskclock/data/TimeModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimeModel;->getCalendar()Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public getCityIndexComparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation

    .line 371
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 372
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mCityModel:Lcom/android/deskclock/data/CityModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/CityModel;->getCityIndexComparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public getCitySort()Lcom/android/deskclock/data/DataModel$CitySort;
    .locals 0

    .line 379
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 380
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mCityModel:Lcom/android/deskclock/data/CityModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/CityModel;->getCitySort()Lcom/android/deskclock/data/DataModel$CitySort;

    move-result-object p0

    return-object p0
.end method

.method public getClockStyle()Lcom/android/deskclock/data/DataModel$ClockStyle;
    .locals 0

    .line 982
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 983
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getClockStyle()Lcom/android/deskclock/data/DataModel$ClockStyle;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentLapTime(J)J
    .locals 0

    .line 835
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 836
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mStopwatchModel:Lcom/android/deskclock/data/StopwatchModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/data/StopwatchModel;->getCurrentLapTime(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getCustomRingtones()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/CustomRingtone;",
            ">;"
        }
    .end annotation

    .line 925
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 926
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mRingtoneModel:Lcom/android/deskclock/data/RingtoneModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/RingtoneModel;->getCustomRingtones()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultAlarmRingtoneUri()Landroid/net/Uri;
    .locals 0

    .line 695
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 696
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mAlarmModel:Lcom/android/deskclock/data/AlarmModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/AlarmModel;->getDefaultAlarmRingtoneUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultTimerRingtoneUri()Landroid/net/Uri;
    .locals 0

    .line 626
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 627
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->getDefaultTimerRingtoneUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayClockSeconds()Z
    .locals 0

    .line 990
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 991
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getDisplayClockSeconds()Z

    move-result p0

    return p0
.end method

.method public getExpiredTimers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Timer;",
            ">;"
        }
    .end annotation

    .line 439
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 440
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->getExpiredTimers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFlipAction()I
    .locals 0

    .line 739
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mAlarmModel:Lcom/android/deskclock/data/AlarmModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/AlarmModel;->getFlipAction()I

    move-result p0

    return p0
.end method

.method public getGlobalIntentId()I
    .locals 0

    .line 967
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getGlobalIntentId()I

    move-result p0

    return p0
.end method

.method public getHomeCity()Lcom/android/deskclock/data/City;
    .locals 0

    .line 339
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 340
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mCityModel:Lcom/android/deskclock/data/CityModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/CityModel;->getHomeCity()Lcom/android/deskclock/data/City;

    move-result-object p0

    return-object p0
.end method

.method public getLaps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Lap;",
            ">;"
        }
    .end annotation

    .line 802
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 803
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mStopwatchModel:Lcom/android/deskclock/data/StopwatchModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->getLaps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLongestLapTime()J
    .locals 2

    .line 826
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 827
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mStopwatchModel:Lcom/android/deskclock/data/StopwatchModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->getLongestLapTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMostRecentExpiredTimer()Lcom/android/deskclock/data/Timer;
    .locals 0

    .line 457
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 458
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->getMostRecentExpiredTimer()Lcom/android/deskclock/data/Timer;

    move-result-object p0

    return-object p0
.end method

.method public getRingtoneTitle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 899
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 900
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mRingtoneModel:Lcom/android/deskclock/data/RingtoneModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/RingtoneModel;->getRingtoneTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreensaverClockStyle()Lcom/android/deskclock/data/DataModel$ClockStyle;
    .locals 0

    .line 1006
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 1007
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getScreensaverClockStyle()Lcom/android/deskclock/data/DataModel$ClockStyle;

    move-result-object p0

    return-object p0
.end method

.method public getScreensaverNightModeOn()Z
    .locals 0

    .line 1014
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 1015
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getScreensaverNightModeOn()Z

    move-result p0

    return p0
.end method

.method public getSelectedCities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation

    .line 355
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 356
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mCityModel:Lcom/android/deskclock/data/CityModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/CityModel;->getSelectedCities()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getShakeAction()I
    .locals 0

    .line 743
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mAlarmModel:Lcom/android/deskclock/data/AlarmModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/AlarmModel;->getShakeAction()I

    move-result p0

    return p0
.end method

.method public getShowHomeClock()Z
    .locals 0

    .line 1023
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 1024
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getShowHomeClock()Z

    move-result p0

    return p0
.end method

.method public getSnoozeLength()I
    .locals 0

    .line 735
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mAlarmModel:Lcom/android/deskclock/data/AlarmModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/AlarmModel;->getSnoozeLength()I

    move-result p0

    return p0
.end method

.method public getStopwatch()Lcom/android/deskclock/data/Stopwatch;
    .locals 0

    .line 770
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 771
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mStopwatchModel:Lcom/android/deskclock/data/StopwatchModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    return-object p0
.end method

.method public getTimeZones()Lcom/android/deskclock/data/TimeZones;
    .locals 0

    .line 1054
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 1055
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getTimeZones()Lcom/android/deskclock/data/TimeZones;

    move-result-object p0

    return-object p0
.end method

.method public getTimer(I)Lcom/android/deskclock/data/Timer;
    .locals 0

    .line 448
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 449
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/TimerModel;->getTimer(I)Lcom/android/deskclock/data/Timer;

    move-result-object p0

    return-object p0
.end method

.method public getTimerCrescendoDuration()J
    .locals 2

    .line 667
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 668
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->getTimerCrescendoDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimerRingtoneTitle()Ljava/lang/String;
    .locals 0

    .line 658
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 659
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->getTimerRingtoneTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimerRingtoneUri()Landroid/net/Uri;
    .locals 0

    .line 642
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 643
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->getTimerRingtoneUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getTimerVibrate()Z
    .locals 0

    .line 675
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 676
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->getTimerVibrate()Z

    move-result p0

    return p0
.end method

.method public getTimers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Timer;",
            ">;"
        }
    .end annotation

    .line 431
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 432
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->getTimers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUnselectedCities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation

    .line 347
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 348
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mCityModel:Lcom/android/deskclock/data/CityModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/CityModel;->getUnselectedCities()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getWeekdayOrder()Lcom/android/deskclock/data/Weekdays$Order;
    .locals 0

    .line 1032
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 1033
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getWeekdayOrder()Lcom/android/deskclock/data/Weekdays$Order;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 8

    .line 207
    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/data/DataModel;->mContext:Landroid/content/Context;

    .line 210
    new-instance p1, Lcom/android/deskclock/data/TimeModel;

    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/deskclock/data/TimeModel;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/deskclock/data/DataModel;->mTimeModel:Lcom/android/deskclock/data/TimeModel;

    .line 211
    new-instance p1, Lcom/android/deskclock/data/WidgetModel;

    invoke-direct {p1, p2}, Lcom/android/deskclock/data/WidgetModel;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/android/deskclock/data/DataModel;->mWidgetModel:Lcom/android/deskclock/data/WidgetModel;

    .line 212
    new-instance p1, Lcom/android/deskclock/data/NotificationModel;

    invoke-direct {p1}, Lcom/android/deskclock/data/NotificationModel;-><init>()V

    iput-object p1, p0, Lcom/android/deskclock/data/DataModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    .line 213
    new-instance p1, Lcom/android/deskclock/data/RingtoneModel;

    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/android/deskclock/data/RingtoneModel;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/android/deskclock/data/DataModel;->mRingtoneModel:Lcom/android/deskclock/data/RingtoneModel;

    .line 214
    new-instance p1, Lcom/android/deskclock/data/SettingsModel;

    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/deskclock/data/DataModel;->mTimeModel:Lcom/android/deskclock/data/TimeModel;

    invoke-direct {p1, v0, p2, v1}, Lcom/android/deskclock/data/SettingsModel;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/android/deskclock/data/TimeModel;)V

    iput-object p1, p0, Lcom/android/deskclock/data/DataModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    .line 215
    new-instance p1, Lcom/android/deskclock/data/CityModel;

    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/deskclock/data/DataModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-direct {p1, v0, p2, v1}, Lcom/android/deskclock/data/CityModel;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/android/deskclock/data/SettingsModel;)V

    iput-object p1, p0, Lcom/android/deskclock/data/DataModel;->mCityModel:Lcom/android/deskclock/data/CityModel;

    .line 216
    new-instance p1, Lcom/android/deskclock/data/AlarmModel;

    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/deskclock/data/DataModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-direct {p1, v0, v1}, Lcom/android/deskclock/data/AlarmModel;-><init>(Landroid/content/Context;Lcom/android/deskclock/data/SettingsModel;)V

    iput-object p1, p0, Lcom/android/deskclock/data/DataModel;->mAlarmModel:Lcom/android/deskclock/data/AlarmModel;

    .line 217
    new-instance p1, Lcom/android/deskclock/data/SilentSettingsModel;

    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/deskclock/data/DataModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-direct {p1, v0, v1}, Lcom/android/deskclock/data/SilentSettingsModel;-><init>(Landroid/content/Context;Lcom/android/deskclock/data/NotificationModel;)V

    iput-object p1, p0, Lcom/android/deskclock/data/DataModel;->mSilentSettingsModel:Lcom/android/deskclock/data/SilentSettingsModel;

    .line 218
    new-instance p1, Lcom/android/deskclock/data/StopwatchModel;

    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/deskclock/data/DataModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-direct {p1, v0, p2, v1}, Lcom/android/deskclock/data/StopwatchModel;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/android/deskclock/data/NotificationModel;)V

    iput-object p1, p0, Lcom/android/deskclock/data/DataModel;->mStopwatchModel:Lcom/android/deskclock/data/StopwatchModel;

    .line 219
    new-instance p1, Lcom/android/deskclock/data/TimerModel;

    iget-object v3, p0, Lcom/android/deskclock/data/DataModel;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/deskclock/data/DataModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    iget-object v6, p0, Lcom/android/deskclock/data/DataModel;->mRingtoneModel:Lcom/android/deskclock/data/RingtoneModel;

    iget-object v7, p0, Lcom/android/deskclock/data/DataModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/deskclock/data/TimerModel;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/android/deskclock/data/SettingsModel;Lcom/android/deskclock/data/RingtoneModel;Lcom/android/deskclock/data/NotificationModel;)V

    iput-object p1, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    :cond_0
    return-void
.end method

.method public is24HourFormat()Z
    .locals 0

    .line 862
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimeModel:Lcom/android/deskclock/data/TimeModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimeModel;->is24HourFormat()Z

    move-result p0

    return p0
.end method

.method public isApplicationInForeground()Z
    .locals 0

    .line 308
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 309
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/NotificationModel;->isApplicationInForeground()Z

    move-result p0

    return p0
.end method

.method public isRestoreBackupFinished()Z
    .locals 0

    .line 1040
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->isRestoreBackupFinished()Z

    move-result p0

    return p0
.end method

.method public isTimerRingtoneSilent()Z
    .locals 0

    .line 634
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 635
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->isTimerRingtoneSilent()Z

    move-result p0

    return p0
.end method

.method public loadRingtonePermissions()V
    .locals 0

    .line 890
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceNotMainLooper()V

    .line 891
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mRingtoneModel:Lcom/android/deskclock/data/RingtoneModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/RingtoneModel;->loadRingtonePermissions()V

    return-void
.end method

.method public loadRingtoneTitles()V
    .locals 0

    .line 882
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceNotMainLooper()V

    .line 883
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mRingtoneModel:Lcom/android/deskclock/data/RingtoneModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/RingtoneModel;->loadRingtoneTitles()V

    return-void
.end method

.method public pauseStopwatch()Lcom/android/deskclock/data/Stopwatch;
    .locals 1

    .line 786
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 787
    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mStopwatchModel:Lcom/android/deskclock/data/StopwatchModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/Stopwatch;->pause()Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/deskclock/data/StopwatchModel;->setStopwatch(Lcom/android/deskclock/data/Stopwatch;)Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    return-object p0
.end method

.method public pauseTimer(Lcom/android/deskclock/data/Timer;)V
    .locals 0

    .line 508
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 509
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->pause()Lcom/android/deskclock/data/Timer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/TimerModel;->updateTimer(Lcom/android/deskclock/data/Timer;)V

    return-void
.end method

.method public removeCityListener(Lcom/android/deskclock/data/CityListener;)V
    .locals 0

    .line 403
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 404
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mCityModel:Lcom/android/deskclock/data/CityModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/CityModel;->removeCityListener(Lcom/android/deskclock/data/CityListener;)V

    return-void
.end method

.method public removeCustomRingtone(Landroid/net/Uri;)V
    .locals 0

    .line 917
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 918
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mRingtoneModel:Lcom/android/deskclock/data/RingtoneModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/RingtoneModel;->removeCustomRingtone(Landroid/net/Uri;)V

    return-void
.end method

.method public removeSilentSettingsListener(Lcom/android/deskclock/data/OnSilentSettingsListener;)V
    .locals 0

    .line 959
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 960
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mSilentSettingsModel:Lcom/android/deskclock/data/SilentSettingsModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/SilentSettingsModel;->removeSilentSettingsListener(Lcom/android/deskclock/data/OnSilentSettingsListener;)V

    return-void
.end method

.method public removeStopwatchListener(Lcom/android/deskclock/data/StopwatchListener;)V
    .locals 0

    .line 762
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 763
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mStopwatchModel:Lcom/android/deskclock/data/StopwatchModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/StopwatchModel;->removeStopwatchListener(Lcom/android/deskclock/data/StopwatchListener;)V

    return-void
.end method

.method public removeTimer(Lcom/android/deskclock/data/Timer;)V
    .locals 0

    .line 476
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 477
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/TimerModel;->removeTimer(Lcom/android/deskclock/data/Timer;)V

    return-void
.end method

.method public removeTimerListener(Lcom/android/deskclock/data/TimerListener;)V
    .locals 0

    .line 423
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 424
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/TimerModel;->removeTimerListener(Lcom/android/deskclock/data/TimerListener;)V

    return-void
.end method

.method public resetMissedTimers(I)V
    .locals 0

    .line 570
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 571
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/TimerModel;->resetMissedTimers(I)V

    return-void
.end method

.method public resetOrDeleteExpiredTimers(I)V
    .locals 0

    .line 550
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 551
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/TimerModel;->resetOrDeleteExpiredTimers(I)V

    return-void
.end method

.method public resetOrDeleteTimer(Lcom/android/deskclock/data/Timer;I)Lcom/android/deskclock/data/Timer;
    .locals 1

    .line 540
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 541
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/deskclock/data/TimerModel;->resetTimer(Lcom/android/deskclock/data/Timer;ZI)Lcom/android/deskclock/data/Timer;

    move-result-object p0

    return-object p0
.end method

.method public resetStopwatch()Lcom/android/deskclock/data/Stopwatch;
    .locals 1

    .line 794
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 795
    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mStopwatchModel:Lcom/android/deskclock/data/StopwatchModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/Stopwatch;->reset()Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/deskclock/data/StopwatchModel;->setStopwatch(Lcom/android/deskclock/data/Stopwatch;)Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    return-object p0
.end method

.method public resetUnexpiredTimers(I)V
    .locals 0

    .line 560
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 561
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/TimerModel;->resetUnexpiredTimers(I)V

    return-void
.end method

.method public run(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 229
    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/deskclock/data/DataModel;->run(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public run(Ljava/lang/Runnable;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 257
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 258
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 262
    :cond_0
    new-instance v0, Lcom/android/deskclock/data/DataModel$ExecutedRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/deskclock/data/DataModel$ExecutedRunnable;-><init>(Ljava/lang/Runnable;Lcom/android/deskclock/data/DataModel$1;)V

    .line 263
    invoke-direct {p0}, Lcom/android/deskclock/data/DataModel;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    monitor-enter v0

    .line 267
    :try_start_0
    invoke-static {v0}, Lcom/android/deskclock/data/DataModel$ExecutedRunnable;->access$500(Lcom/android/deskclock/data/DataModel$ExecutedRunnable;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 268
    invoke-virtual {v0, p2, p3}, Ljava/lang/Object;->wait(J)V

    .line 270
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setApplicationInForeground(Z)V
    .locals 1

    .line 291
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 293
    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {v0}, Lcom/android/deskclock/data/NotificationModel;->isApplicationInForeground()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/data/NotificationModel;->setApplicationInForeground(Z)V

    .line 297
    iget-object p1, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p1}, Lcom/android/deskclock/data/TimerModel;->updateNotification()V

    .line 298
    iget-object p1, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p1}, Lcom/android/deskclock/data/TimerModel;->updateMissedNotification()V

    .line 299
    iget-object p1, p0, Lcom/android/deskclock/data/DataModel;->mStopwatchModel:Lcom/android/deskclock/data/StopwatchModel;

    invoke-virtual {p1}, Lcom/android/deskclock/data/StopwatchModel;->updateNotification()V

    .line 300
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mSilentSettingsModel:Lcom/android/deskclock/data/SilentSettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SilentSettingsModel;->updateSilentState()V

    :cond_0
    return-void
.end method

.method public setDefaultAlarmRingtoneUri(Landroid/net/Uri;)V
    .locals 0

    .line 703
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 704
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mAlarmModel:Lcom/android/deskclock/data/AlarmModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/AlarmModel;->setDefaultAlarmRingtoneUri(Landroid/net/Uri;)V

    return-void
.end method

.method public setDisplayClockSeconds(Z)V
    .locals 0

    .line 998
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 999
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/SettingsModel;->setDisplayClockSeconds(Z)V

    return-void
.end method

.method public setRestoreBackupFinished(Z)V
    .locals 0

    .line 1047
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/SettingsModel;->setRestoreBackupFinished(Z)V

    return-void
.end method

.method public setSelectedCities(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/deskclock/data/City;",
            ">;)V"
        }
    .end annotation

    .line 363
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 364
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mCityModel:Lcom/android/deskclock/data/CityModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/CityModel;->setSelectedCities(Ljava/util/Collection;)V

    return-void
.end method

.method public setTimerLabel(Lcom/android/deskclock/data/Timer;Ljava/lang/String;)V
    .locals 0

    .line 587
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 588
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p1, p2}, Lcom/android/deskclock/data/Timer;->setLabel(Ljava/lang/String;)Lcom/android/deskclock/data/Timer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/TimerModel;->updateTimer(Lcom/android/deskclock/data/Timer;)V

    return-void
.end method

.method public setTimerRingtoneUri(Landroid/net/Uri;)V
    .locals 0

    .line 650
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 651
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/TimerModel;->setTimerRingtoneUri(Landroid/net/Uri;)V

    return-void
.end method

.method public setTimerVibrate(Z)V
    .locals 0

    .line 683
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 684
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/TimerModel;->setTimerVibrate(Z)V

    return-void
.end method

.method public startStopwatch()Lcom/android/deskclock/data/Stopwatch;
    .locals 1

    .line 778
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 779
    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mStopwatchModel:Lcom/android/deskclock/data/StopwatchModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/Stopwatch;->start()Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/deskclock/data/StopwatchModel;->setStopwatch(Lcom/android/deskclock/data/Stopwatch;)Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    return-object p0
.end method

.method public startTimer(Landroid/app/Service;Lcom/android/deskclock/data/Timer;)V
    .locals 5

    .line 492
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 493
    invoke-virtual {p2}, Lcom/android/deskclock/data/Timer;->start()Lcom/android/deskclock/data/Timer;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {v1, v0}, Lcom/android/deskclock/data/TimerModel;->updateTimer(Lcom/android/deskclock/data/Timer;)V

    .line 495
    invoke-virtual {p2}, Lcom/android/deskclock/data/Timer;->getRemainingTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-gtz p2, :cond_1

    if-eqz p1, :cond_0

    .line 497
    invoke-virtual {p0, p1, v0}, Lcom/android/deskclock/data/DataModel;->expireTimer(Landroid/app/Service;Lcom/android/deskclock/data/Timer;)V

    goto :goto_0

    .line 499
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/deskclock/timer/TimerService;->createTimerExpiredIntent(Landroid/content/Context;Lcom/android/deskclock/data/Timer;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method

.method public startTimer(Lcom/android/deskclock/data/Timer;)V
    .locals 1

    const/4 v0, 0x0

    .line 484
    invoke-virtual {p0, v0, p1}, Lcom/android/deskclock/data/DataModel;->startTimer(Landroid/app/Service;Lcom/android/deskclock/data/Timer;)V

    return-void
.end method

.method public toggleCitySort()V
    .locals 0

    .line 387
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 388
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mCityModel:Lcom/android/deskclock/data/CityModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/CityModel;->toggleCitySort()V

    return-void
.end method

.method public updateAfterReboot()V
    .locals 1

    .line 238
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 239
    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {v0}, Lcom/android/deskclock/data/TimerModel;->updateTimersAfterReboot()V

    .line 240
    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mStopwatchModel:Lcom/android/deskclock/data/StopwatchModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/Stopwatch;->updateAfterReboot()Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/deskclock/data/StopwatchModel;->setStopwatch(Lcom/android/deskclock/data/Stopwatch;)Lcom/android/deskclock/data/Stopwatch;

    return-void
.end method

.method public updateAfterTimeSet()V
    .locals 1

    .line 247
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 248
    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {v0}, Lcom/android/deskclock/data/TimerModel;->updateTimersAfterTimeSet()V

    .line 249
    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mStopwatchModel:Lcom/android/deskclock/data/StopwatchModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/Stopwatch;->updateAfterTimeSet()Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/deskclock/data/StopwatchModel;->setStopwatch(Lcom/android/deskclock/data/Stopwatch;)Lcom/android/deskclock/data/Stopwatch;

    return-void
.end method

.method public updateAllNotifications()V
    .locals 1

    .line 317
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 318
    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {v0}, Lcom/android/deskclock/data/TimerModel;->updateNotification()V

    .line 319
    iget-object v0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {v0}, Lcom/android/deskclock/data/TimerModel;->updateMissedNotification()V

    .line 320
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mStopwatchModel:Lcom/android/deskclock/data/StopwatchModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->updateNotification()V

    return-void
.end method

.method public updateGlobalIntentId()V
    .locals 0

    .line 974
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 975
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->updateGlobalIntentId()V

    return-void
.end method

.method public updateTimerNotification()V
    .locals 0

    .line 618
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 619
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mTimerModel:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimerModel;->updateNotification()V

    return-void
.end method

.method public updateWidgetCount(Ljava/lang/Class;II)V
    .locals 0

    .line 939
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 940
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel;->mWidgetModel:Lcom/android/deskclock/data/WidgetModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/deskclock/data/WidgetModel;->updateWidgetCount(Ljava/lang/Class;II)V

    return-void
.end method
