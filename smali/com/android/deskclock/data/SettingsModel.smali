.class final Lcom/android/deskclock/data/SettingsModel;
.super Ljava/lang/Object;
.source "SettingsModel.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultTimerRingtoneUri:Landroid/net/Uri;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mTimeModel:Lcom/android/deskclock/data/TimeModel;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/android/deskclock/data/TimeModel;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/deskclock/data/SettingsModel;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    .line 49
    iput-object p3, p0, Lcom/android/deskclock/data/SettingsModel;->mTimeModel:Lcom/android/deskclock/data/TimeModel;

    .line 52
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/deskclock/data/SettingsDAO;->setDefaultDisplayClockSeconds(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-void
.end method


# virtual methods
.method getAlarmCrescendoDuration()J
    .locals 2

    .line 153
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/android/deskclock/data/SettingsDAO;->getAlarmCrescendoDuration(Landroid/content/SharedPreferences;)J

    move-result-wide v0

    return-wide v0
.end method

.method getAlarmTimeout()I
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/android/deskclock/data/SettingsDAO;->getAlarmTimeout(Landroid/content/SharedPreferences;)I

    move-result p0

    return p0
.end method

.method getAlarmVolumeButtonBehavior()Lcom/android/deskclock/data/DataModel$AlarmVolumeButtonBehavior;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/android/deskclock/data/SettingsDAO;->getAlarmVolumeButtonBehavior(Landroid/content/SharedPreferences;)Lcom/android/deskclock/data/DataModel$AlarmVolumeButtonBehavior;

    move-result-object p0

    return-object p0
.end method

.method getCitySort()Lcom/android/deskclock/data/DataModel$CitySort;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/android/deskclock/data/SettingsDAO;->getCitySort(Landroid/content/SharedPreferences;)Lcom/android/deskclock/data/DataModel$CitySort;

    move-result-object p0

    return-object p0
.end method

.method getClockStyle()Lcom/android/deskclock/data/DataModel$ClockStyle;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/deskclock/data/SettingsModel;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, p0}, Lcom/android/deskclock/data/SettingsDAO;->getClockStyle(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/data/DataModel$ClockStyle;

    move-result-object p0

    return-object p0
.end method

.method getDefaultAlarmRingtoneUri()Landroid/net/Uri;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/android/deskclock/data/SettingsDAO;->getDefaultAlarmRingtoneUri(Landroid/content/SharedPreferences;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method getDefaultTimerRingtoneUri()Landroid/net/Uri;
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/deskclock/data/SettingsModel;->mDefaultTimerRingtoneUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/deskclock/data/SettingsModel;->mContext:Landroid/content/Context;

    const v1, 0x7f100001

    invoke-static {v0, v1}, Lcom/android/deskclock/Utils;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/SettingsModel;->mDefaultTimerRingtoneUri:Landroid/net/Uri;

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mDefaultTimerRingtoneUri:Landroid/net/Uri;

    return-object p0
.end method

.method getDisplayClockSeconds()Z
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/android/deskclock/data/SettingsDAO;->getDisplayClockSeconds(Landroid/content/SharedPreferences;)Z

    move-result p0

    return p0
.end method

.method getFlipAction()I
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/android/deskclock/data/SettingsDAO;->getFlipAction(Landroid/content/SharedPreferences;)I

    move-result p0

    return p0
.end method

.method getGlobalIntentId()I
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/android/deskclock/data/SettingsDAO;->getGlobalIntentId(Landroid/content/SharedPreferences;)I

    move-result p0

    return p0
.end method

.method getHomeTimeZone()Ljava/util/TimeZone;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/deskclock/data/SettingsModel;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/android/deskclock/data/SettingsDAO;->getHomeTimeZone(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/util/TimeZone;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method getScreensaverClockStyle()Lcom/android/deskclock/data/DataModel$ClockStyle;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/deskclock/data/SettingsModel;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, p0}, Lcom/android/deskclock/data/SettingsDAO;->getScreensaverClockStyle(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/data/DataModel$ClockStyle;

    move-result-object p0

    return-object p0
.end method

.method getScreensaverNightModeOn()Z
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/android/deskclock/data/SettingsDAO;->getScreensaverNightModeOn(Landroid/content/SharedPreferences;)Z

    move-result p0

    return p0
.end method

.method getShakeAction()I
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/android/deskclock/data/SettingsDAO;->getShakeAction(Landroid/content/SharedPreferences;)I

    move-result p0

    return p0
.end method

.method getShowHomeClock()Z
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/deskclock/data/SettingsDAO;->getAutoShowHomeClock(Landroid/content/SharedPreferences;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 103
    iget-object v2, p0, Lcom/android/deskclock/data/SettingsModel;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2, p0, v0}, Lcom/android/deskclock/data/SettingsDAO;->getHomeTimeZone(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/util/TimeZone;)Ljava/util/TimeZone;

    move-result-object p0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 105
    invoke-virtual {p0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    if-eq p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method getSnoozeLength()I
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/android/deskclock/data/SettingsDAO;->getSnoozeLength(Landroid/content/SharedPreferences;)I

    move-result p0

    return p0
.end method

.method getTimeZones()Lcom/android/deskclock/data/TimeZones;
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/android/deskclock/data/SettingsModel;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mTimeModel:Lcom/android/deskclock/data/TimeModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/TimeModel;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/data/SettingsDAO;->getTimeZones(Landroid/content/Context;J)Lcom/android/deskclock/data/TimeZones;

    move-result-object p0

    return-object p0
.end method

.method getTimerCrescendoDuration()J
    .locals 2

    .line 157
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/android/deskclock/data/SettingsDAO;->getTimerCrescendoDuration(Landroid/content/SharedPreferences;)J

    move-result-wide v0

    return-wide v0
.end method

.method getTimerRingtoneUri()Landroid/net/Uri;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getDefaultTimerRingtoneUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/deskclock/data/SettingsDAO;->getTimerRingtoneUri(Landroid/content/SharedPreferences;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method getTimerVibrate()Z
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/android/deskclock/data/SettingsDAO;->getTimerVibrate(Landroid/content/SharedPreferences;)Z

    move-result p0

    return p0
.end method

.method getWeekdayOrder()Lcom/android/deskclock/data/Weekdays$Order;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/android/deskclock/data/SettingsDAO;->getWeekdayOrder(Landroid/content/SharedPreferences;)Lcom/android/deskclock/data/Weekdays$Order;

    move-result-object p0

    return-object p0
.end method

.method isRestoreBackupFinished()Z
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/android/deskclock/data/SettingsDAO;->isRestoreBackupFinished(Landroid/content/SharedPreferences;)Z

    move-result p0

    return p0
.end method

.method setDefaultAlarmRingtoneUri(Landroid/net/Uri;)V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, p1}, Lcom/android/deskclock/data/SettingsDAO;->setDefaultAlarmRingtoneUri(Landroid/content/SharedPreferences;Landroid/net/Uri;)V

    return-void
.end method

.method setDisplayClockSeconds(Z)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, p1}, Lcom/android/deskclock/data/SettingsDAO;->setDisplayClockSeconds(Landroid/content/SharedPreferences;Z)V

    return-void
.end method

.method setRestoreBackupFinished(Z)V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, p1}, Lcom/android/deskclock/data/SettingsDAO;->setRestoreBackupFinished(Landroid/content/SharedPreferences;Z)V

    return-void
.end method

.method setTimerRingtoneUri(Landroid/net/Uri;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, p1}, Lcom/android/deskclock/data/SettingsDAO;->setTimerRingtoneUri(Landroid/content/SharedPreferences;Landroid/net/Uri;)V

    return-void
.end method

.method setTimerVibrate(Z)V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, p1}, Lcom/android/deskclock/data/SettingsDAO;->setTimerVibrate(Landroid/content/SharedPreferences;Z)V

    return-void
.end method

.method toggleCitySort()V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/android/deskclock/data/SettingsDAO;->toggleCitySort(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method updateGlobalIntentId()V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/android/deskclock/data/SettingsDAO;->updateGlobalIntentId(Landroid/content/SharedPreferences;)V

    return-void
.end method
