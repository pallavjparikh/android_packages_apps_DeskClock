.class final Lcom/android/deskclock/data/AlarmModel;
.super Ljava/lang/Object;
.source "AlarmModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/data/AlarmModel$SystemAlarmAlertChangeObserver;
    }
.end annotation


# instance fields
.field private mDefaultAlarmRingtoneUri:Landroid/net/Uri;

.field private final mSettingsModel:Lcom/android/deskclock/data/SettingsModel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/deskclock/data/SettingsModel;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/android/deskclock/data/AlarmModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 45
    new-instance p2, Lcom/android/deskclock/data/AlarmModel$SystemAlarmAlertChangeObserver;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/deskclock/data/AlarmModel$SystemAlarmAlertChangeObserver;-><init>(Lcom/android/deskclock/data/AlarmModel;Lcom/android/deskclock/data/AlarmModel$1;)V

    .line 46
    sget-object p0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/deskclock/data/AlarmModel;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/deskclock/data/AlarmModel;->mDefaultAlarmRingtoneUri:Landroid/net/Uri;

    return-object p1
.end method


# virtual methods
.method getAlarmCrescendoDuration()J
    .locals 2

    .line 66
    iget-object p0, p0, Lcom/android/deskclock/data/AlarmModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getAlarmCrescendoDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method getAlarmTimeout()I
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/deskclock/data/AlarmModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getAlarmTimeout()I

    move-result p0

    return p0
.end method

.method getAlarmVolumeButtonBehavior()Lcom/android/deskclock/data/DataModel$AlarmVolumeButtonBehavior;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/deskclock/data/AlarmModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getAlarmVolumeButtonBehavior()Lcom/android/deskclock/data/DataModel$AlarmVolumeButtonBehavior;

    move-result-object p0

    return-object p0
.end method

.method getDefaultAlarmRingtoneUri()Landroid/net/Uri;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/deskclock/data/AlarmModel;->mDefaultAlarmRingtoneUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/deskclock/data/AlarmModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {v0}, Lcom/android/deskclock/data/SettingsModel;->getDefaultAlarmRingtoneUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/AlarmModel;->mDefaultAlarmRingtoneUri:Landroid/net/Uri;

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/data/AlarmModel;->mDefaultAlarmRingtoneUri:Landroid/net/Uri;

    return-object p0
.end method

.method getFlipAction()I
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/deskclock/data/AlarmModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getFlipAction()I

    move-result p0

    return p0
.end method

.method getShakeAction()I
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/deskclock/data/AlarmModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getShakeAction()I

    move-result p0

    return p0
.end method

.method getSnoozeLength()I
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/deskclock/data/AlarmModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getSnoozeLength()I

    move-result p0

    return p0
.end method

.method setDefaultAlarmRingtoneUri(Landroid/net/Uri;)V
    .locals 1

    .line 59
    sget-object v0, Lcom/android/deskclock/provider/Alarm;->NO_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/deskclock/data/AlarmModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/data/SettingsModel;->setDefaultAlarmRingtoneUri(Landroid/net/Uri;)V

    .line 61
    iput-object p1, p0, Lcom/android/deskclock/data/AlarmModel;->mDefaultAlarmRingtoneUri:Landroid/net/Uri;

    :cond_0
    return-void
.end method
