.class final Lcom/android/deskclock/data/RingtoneModel;
.super Ljava/lang/Object;
.source "RingtoneModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/data/RingtoneModel$LocaleChangedReceiver;,
        Lcom/android/deskclock/data/RingtoneModel$SystemAlarmAlertChangeObserver;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCustomRingtones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/CustomRingtone;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mRingtoneTitles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/util/ArrayMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/deskclock/data/RingtoneModel;->mRingtoneTitles:Ljava/util/Map;

    .line 63
    new-instance v0, Lcom/android/deskclock/data/RingtoneModel$LocaleChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/data/RingtoneModel$LocaleChangedReceiver;-><init>(Lcom/android/deskclock/data/RingtoneModel;Lcom/android/deskclock/data/RingtoneModel$1;)V

    iput-object v0, p0, Lcom/android/deskclock/data/RingtoneModel;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Lcom/android/deskclock/data/RingtoneModel;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/deskclock/data/RingtoneModel;->mPrefs:Landroid/content/SharedPreferences;

    .line 74
    iget-object p1, p0, Lcom/android/deskclock/data/RingtoneModel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 75
    new-instance p2, Lcom/android/deskclock/data/RingtoneModel$SystemAlarmAlertChangeObserver;

    invoke-direct {p2, p0, v1}, Lcom/android/deskclock/data/RingtoneModel$SystemAlarmAlertChangeObserver;-><init>(Lcom/android/deskclock/data/RingtoneModel;Lcom/android/deskclock/data/RingtoneModel$1;)V

    .line 76
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 79
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/android/deskclock/data/RingtoneModel;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/deskclock/data/RingtoneModel;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$200(Lcom/android/deskclock/data/RingtoneModel;)Ljava/util/Map;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/deskclock/data/RingtoneModel;->mRingtoneTitles:Ljava/util/Map;

    return-object p0
.end method

.method private getCustomRingtone(Landroid/net/Uri;)Lcom/android/deskclock/data/CustomRingtone;
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/android/deskclock/data/RingtoneModel;->getMutableCustomRingtones()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/data/CustomRingtone;

    .line 109
    invoke-virtual {v0}, Lcom/android/deskclock/data/CustomRingtone;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMutableCustomRingtones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/CustomRingtone;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/android/deskclock/data/RingtoneModel;->mCustomRingtones:Ljava/util/List;

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/deskclock/data/RingtoneModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/deskclock/data/CustomRingtoneDAO;->getCustomRingtones(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/RingtoneModel;->mCustomRingtones:Ljava/util/List;

    .line 196
    iget-object v0, p0, Lcom/android/deskclock/data/RingtoneModel;->mCustomRingtones:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/data/RingtoneModel;->mCustomRingtones:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method addCustomRingtone(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/deskclock/data/CustomRingtone;
    .locals 1

    .line 85
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/RingtoneModel;->getCustomRingtone(Landroid/net/Uri;)Lcom/android/deskclock/data/CustomRingtone;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/data/RingtoneModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, Lcom/android/deskclock/data/CustomRingtoneDAO;->addCustomRingtone(Landroid/content/SharedPreferences;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/deskclock/data/CustomRingtone;

    move-result-object p1

    .line 91
    invoke-direct {p0}, Lcom/android/deskclock/data/RingtoneModel;->getMutableCustomRingtones()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-direct {p0}, Lcom/android/deskclock/data/RingtoneModel;->getMutableCustomRingtones()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object p1
.end method

.method getCustomRingtones()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/CustomRingtone;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lcom/android/deskclock/data/RingtoneModel;->getMutableCustomRingtones()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getRingtoneTitle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 165
    sget-object v0, Lcom/android/deskclock/provider/Alarm;->NO_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object p0, p0, Lcom/android/deskclock/data/RingtoneModel;->mContext:Landroid/content/Context;

    const p1, 0x7f110230

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 170
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/RingtoneModel;->getCustomRingtone(Landroid/net/Uri;)Lcom/android/deskclock/data/CustomRingtone;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v0}, Lcom/android/deskclock/data/CustomRingtone;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/data/RingtoneModel;->mRingtoneTitles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/android/deskclock/data/RingtoneModel;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "No ringtone for uri: %s"

    .line 182
    invoke-static {p1, v0}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    iget-object p0, p0, Lcom/android/deskclock/data/RingtoneModel;->mContext:Landroid/content/Context;

    const p1, 0x7f110268

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/android/deskclock/data/RingtoneModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object p0, p0, Lcom/android/deskclock/data/RingtoneModel;->mRingtoneTitles:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method loadRingtonePermissions()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/android/deskclock/data/RingtoneModel;->getMutableCustomRingtones()Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/data/RingtoneModel;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object p0

    .line 130
    new-instance v1, Landroid/util/ArraySet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 131
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriPermission;

    .line 132
    invoke-virtual {v2}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/data/CustomRingtone;

    .line 137
    invoke-virtual {v0}, Lcom/android/deskclock/data/CustomRingtone;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/deskclock/data/CustomRingtone;->setHasPermissions(Z)Lcom/android/deskclock/data/CustomRingtone;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method loadRingtoneTitles()V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/android/deskclock/data/RingtoneModel;->mRingtoneTitles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance v0, Landroid/media/RingtoneManager;

    iget-object v1, p0, Lcom/android/deskclock/data/RingtoneModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x4

    .line 148
    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 151
    :try_start_0
    invoke-virtual {v0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 152
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 153
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 155
    iget-object v4, p0, Lcom/android/deskclock/data/RingtoneModel;->mRingtoneTitles:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 157
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 151
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    .line 157
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    const-string v0, "Error loading ringtone title cache"

    .line 159
    invoke-static {v0, p0}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method removeCustomRingtone(Landroid/net/Uri;)V
    .locals 5

    .line 97
    invoke-direct {p0}, Lcom/android/deskclock/data/RingtoneModel;->getMutableCustomRingtones()Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/data/CustomRingtone;

    .line 99
    invoke-virtual {v2}, Lcom/android/deskclock/data/CustomRingtone;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    iget-object p0, p0, Lcom/android/deskclock/data/RingtoneModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v2}, Lcom/android/deskclock/data/CustomRingtone;->getId()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lcom/android/deskclock/data/CustomRingtoneDAO;->removeCustomRingtone(Landroid/content/SharedPreferences;J)V

    .line 101
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
