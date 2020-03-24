.class final Lcom/android/deskclock/data/SettingsDAO;
.super Ljava/lang/Object;
.source "SettingsDAO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;
    }
.end annotation


# direct methods
.method static getAlarmCrescendoDuration(Landroid/content/SharedPreferences;)J
    .locals 4

    const-string v0, "alarm_crescendo_duration"

    const-string v1, "0"

    .line 232
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method static getAlarmTimeout(Landroid/content/SharedPreferences;)I
    .locals 2

    const-string v0, "auto_silence"

    const-string v1, "10"

    .line 300
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 301
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static getAlarmVolumeButtonBehavior(Landroid/content/SharedPreferences;)Lcom/android/deskclock/data/DataModel$AlarmVolumeButtonBehavior;
    .locals 4

    const-string v0, "0"

    const-string v1, "volume_button_setting"

    .line 285
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 286
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :pswitch_1
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    .line 289
    sget-object p0, Lcom/android/deskclock/data/DataModel$AlarmVolumeButtonBehavior;->DISMISS:Lcom/android/deskclock/data/DataModel$AlarmVolumeButtonBehavior;

    return-object p0

    .line 291
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown volume button behavior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_2
    sget-object p0, Lcom/android/deskclock/data/DataModel$AlarmVolumeButtonBehavior;->SNOOZE:Lcom/android/deskclock/data/DataModel$AlarmVolumeButtonBehavior;

    return-object p0

    .line 287
    :cond_3
    sget-object p0, Lcom/android/deskclock/data/DataModel$AlarmVolumeButtonBehavior;->NOTHING:Lcom/android/deskclock/data/DataModel$AlarmVolumeButtonBehavior;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getAutoShowHomeClock(Landroid/content/SharedPreferences;)Z
    .locals 2

    const-string v0, "automatic_home_clock"

    const/4 v1, 0x1

    .line 108
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static getCitySort(Landroid/content/SharedPreferences;)Lcom/android/deskclock/data/DataModel$CitySort;
    .locals 2

    .line 89
    sget-object v0, Lcom/android/deskclock/data/DataModel$CitySort;->NAME:Lcom/android/deskclock/data/DataModel$CitySort;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "sort_preference"

    .line 90
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 91
    invoke-static {}, Lcom/android/deskclock/data/DataModel$CitySort;->values()[Lcom/android/deskclock/data/DataModel$CitySort;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method static getClockStyle(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/data/DataModel$ClockStyle;
    .locals 1

    const-string v0, "clock_style"

    .line 138
    invoke-static {p0, p1, v0}, Lcom/android/deskclock/data/SettingsDAO;->getClockStyle(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/android/deskclock/data/DataModel$ClockStyle;

    move-result-object p0

    return-object p0
.end method

.method private static getClockStyle(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/android/deskclock/data/DataModel$ClockStyle;
    .locals 1

    const v0, 0x7f1101c8

    .line 363
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 364
    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 367
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/deskclock/data/DataModel$ClockStyle;->valueOf(Ljava/lang/String;)Lcom/android/deskclock/data/DataModel$ClockStyle;

    move-result-object p0

    return-object p0
.end method

.method static getDefaultAlarmRingtoneUri(Landroid/content/SharedPreferences;)Landroid/net/Uri;
    .locals 2

    const-string v0, "default_alarm_ringtone_uri"

    const/4 v1, 0x0

    .line 216
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 217
    sget-object p0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static getDisplayClockSeconds(Landroid/content/SharedPreferences;)Z
    .locals 2

    const-string v0, "display_clock_seconds"

    const/4 v1, 0x0

    .line 145
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static getFlipAction(Landroid/content/SharedPreferences;)I
    .locals 2

    const-string v0, "flip_action"

    const-string v1, "0"

    .line 353
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 354
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static getGlobalIntentId(Landroid/content/SharedPreferences;)I
    .locals 2

    const-string v0, "intent.extra.alarm.global.id"

    const/4 v1, -0x1

    .line 74
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static getHomeTimeZone(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/util/TimeZone;)Ljava/util/TimeZone;
    .locals 4

    const-string v0, "home_time_zone"

    const/4 v1, 0x0

    .line 115
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/deskclock/data/SettingsDAO;->getTimeZones(Landroid/content/Context;J)Lcom/android/deskclock/data/TimeZones;

    move-result-object p0

    .line 119
    invoke-virtual {p0, v1}, Lcom/android/deskclock/data/TimeZones;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    .line 124
    :cond_0
    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/deskclock/data/TimeZones;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 126
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-object p2
.end method

.method static getScreensaverClockStyle(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/data/DataModel$ClockStyle;
    .locals 1

    const-string v0, "screensaver_clock_style"

    .line 171
    invoke-static {p0, p1, v0}, Lcom/android/deskclock/data/SettingsDAO;->getClockStyle(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/android/deskclock/data/DataModel$ClockStyle;

    move-result-object p0

    return-object p0
.end method

.method static getScreensaverNightModeOn(Landroid/content/SharedPreferences;)Z
    .locals 2

    const-string v0, "screensaver_night_mode"

    const/4 v1, 0x0

    .line 178
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static getShakeAction(Landroid/content/SharedPreferences;)I
    .locals 2

    const-string v0, "shake_action"

    const-string v1, "0"

    .line 358
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 359
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static getSnoozeLength(Landroid/content/SharedPreferences;)I
    .locals 2

    const-string v0, "snooze_duration"

    const-string v1, "10"

    .line 309
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 310
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static getTimeZones(Landroid/content/Context;J)Lcom/android/deskclock/data/TimeZones;
    .locals 13

    .line 318
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03000d

    .line 320
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const v0, 0x7f03000c

    .line 321
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 324
    array-length v0, v8

    array-length v1, p0

    const/4 v9, 0x0

    if-ne v0, v1, :cond_2

    .line 332
    array-length v0, v8

    new-array v10, v0, [Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;

    move v11, v9

    .line 333
    :goto_0
    array-length v0, v8

    if-ge v11, v0, :cond_0

    .line 334
    aget-object v2, v8, v11

    .line 335
    aget-object v0, p0, v11

    const-string v1, "\""

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    new-instance v12, Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;

    const/4 v6, 0x0

    move-object v0, v12

    move-object v1, v7

    move-wide v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;JLcom/android/deskclock/data/SettingsDAO$1;)V

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 338
    :cond_0
    invoke-static {v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 341
    array-length p0, v10

    new-array p0, p0, [Ljava/lang/CharSequence;

    .line 342
    array-length p1, v10

    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 343
    :goto_1
    array-length p2, v10

    if-ge v9, p2, :cond_1

    .line 344
    aget-object p2, v10, v9

    .line 345
    invoke-static {p2}, Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;->access$100(Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v9

    .line 346
    invoke-static {p2}, Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;->access$200(Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 349
    :cond_1
    new-instance p2, Lcom/android/deskclock/data/TimeZones;

    invoke-direct {p2, p0, p1}, Lcom/android/deskclock/data/TimeZones;-><init>([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    return-object p2

    .line 325
    :cond_2
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    array-length v0, v8

    .line 327
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v9

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, p2, v0

    const/4 p0, 0x2

    aput-object v7, p2, p0

    const-string p0, "id count (%d) does not match name count (%d) for locale %s"

    .line 325
    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 328
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static getTimerCrescendoDuration(Landroid/content/SharedPreferences;)J
    .locals 4

    const-string v0, "timer_crescendo_duration"

    const-string v1, "0"

    .line 241
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 242
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method static getTimerRingtoneUri(Landroid/content/SharedPreferences;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    const-string v0, "timer_ringtone"

    const/4 v1, 0x0

    .line 186
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static getTimerVibrate(Landroid/content/SharedPreferences;)Z
    .locals 2

    const-string v0, "timer_vibrate"

    const/4 v1, 0x0

    .line 194
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static getWeekdayOrder(Landroid/content/SharedPreferences;)Lcom/android/deskclock/data/Weekdays$Order;
    .locals 3

    .line 250
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "week_start"

    .line 251
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 252
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    .line 254
    sget-object p0, Lcom/android/deskclock/data/Weekdays$Order;->SAT_TO_FRI:Lcom/android/deskclock/data/Weekdays$Order;

    return-object p0

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown weekday: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    sget-object p0, Lcom/android/deskclock/data/Weekdays$Order;->MON_TO_SUN:Lcom/android/deskclock/data/Weekdays$Order;

    return-object p0

    .line 255
    :cond_2
    sget-object p0, Lcom/android/deskclock/data/Weekdays$Order;->SUN_TO_SAT:Lcom/android/deskclock/data/Weekdays$Order;

    return-object p0
.end method

.method static isRestoreBackupFinished(Landroid/content/SharedPreferences;)Z
    .locals 2

    const-string v0, "restore_finished"

    const/4 v1, 0x0

    .line 266
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static setDefaultAlarmRingtoneUri(Landroid/content/SharedPreferences;Landroid/net/Uri;)V
    .locals 1

    .line 224
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "default_alarm_ringtone_uri"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setDefaultDisplayClockSeconds(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "display_clock_seconds"

    .line 160
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    invoke-static {p0, p1}, Lcom/android/deskclock/data/SettingsDAO;->getClockStyle(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/data/DataModel$ClockStyle;

    move-result-object p0

    sget-object v0, Lcom/android/deskclock/data/DataModel$ClockStyle;->ANALOG:Lcom/android/deskclock/data/DataModel$ClockStyle;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 163
    :goto_0
    invoke-static {p1, p0}, Lcom/android/deskclock/data/SettingsDAO;->setDisplayClockSeconds(Landroid/content/SharedPreferences;Z)V

    :cond_1
    return-void
.end method

.method static setDisplayClockSeconds(Landroid/content/SharedPreferences;Z)V
    .locals 1

    .line 152
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "display_clock_seconds"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setRestoreBackupFinished(Landroid/content/SharedPreferences;Z)V
    .locals 1

    const-string v0, "restore_finished"

    if-eqz p1, :cond_0

    .line 274
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 276
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method static setTimerRingtoneUri(Landroid/content/SharedPreferences;Landroid/net/Uri;)V
    .locals 1

    .line 208
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "timer_ringtone"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setTimerVibrate(Landroid/content/SharedPreferences;Z)V
    .locals 1

    .line 201
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "timer_vibrate"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static toggleCitySort(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 98
    invoke-static {p0}, Lcom/android/deskclock/data/SettingsDAO;->getCitySort(Landroid/content/SharedPreferences;)Lcom/android/deskclock/data/DataModel$CitySort;

    move-result-object v0

    .line 99
    sget-object v1, Lcom/android/deskclock/data/DataModel$CitySort;->NAME:Lcom/android/deskclock/data/DataModel$CitySort;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/android/deskclock/data/DataModel$CitySort;->UTC_OFFSET:Lcom/android/deskclock/data/DataModel$CitySort;

    .line 100
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "sort_preference"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static updateGlobalIntentId(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "intent.extra.alarm.global.id"

    const/4 v1, -0x1

    .line 81
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 82
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
