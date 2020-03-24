.class final Lcom/android/deskclock/data/SilentSettingsModel;
.super Ljava/lang/Object;
.source "SilentSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/data/SilentSettingsModel$DoNotDisturbChangeReceiver;,
        Lcom/android/deskclock/data/SilentSettingsModel$ContentChangeWatcher;,
        Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;
    }
.end annotation


# static fields
.field private static final VOLUME_URI:Landroid/net/Uri;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mCheckSilenceSettingsTask:Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/OnSilentSettingsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

.field private mSilentSetting:Lcom/android/deskclock/data/DataModel$SilentSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "volume_alarm_speaker"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/data/SilentSettingsModel;->VOLUME_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/deskclock/data/NotificationModel;)V
    .locals 4

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mListeners:Ljava/util/List;

    .line 84
    iput-object p1, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    const-string p2, "audio"

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mAudioManager:Landroid/media/AudioManager;

    const-string p2, "notification"

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mNotificationManager:Landroid/app/NotificationManager;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 92
    new-instance v0, Lcom/android/deskclock/data/SilentSettingsModel$ContentChangeWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/data/SilentSettingsModel$ContentChangeWatcher;-><init>(Lcom/android/deskclock/data/SilentSettingsModel;Lcom/android/deskclock/data/SilentSettingsModel$1;)V

    .line 93
    sget-object v2, Lcom/android/deskclock/data/SilentSettingsModel;->VOLUME_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 94
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    invoke-static {}, Lcom/android/deskclock/Utils;->isMOrLater()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 96
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/android/deskclock/data/SilentSettingsModel$DoNotDisturbChangeReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/data/SilentSettingsModel$DoNotDisturbChangeReceiver;-><init>(Lcom/android/deskclock/data/SilentSettingsModel;Lcom/android/deskclock/data/SilentSettingsModel$1;)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/data/SilentSettingsModel;)Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mCheckSilenceSettingsTask:Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/deskclock/data/SilentSettingsModel;Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;)Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mCheckSilenceSettingsTask:Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/deskclock/data/SilentSettingsModel;Lcom/android/deskclock/data/DataModel$SilentSetting;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/SilentSettingsModel;->setSilentState(Lcom/android/deskclock/data/DataModel$SilentSetting;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/deskclock/data/SilentSettingsModel;)Landroid/app/NotificationManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/deskclock/data/SilentSettingsModel;)Landroid/media/AudioManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/deskclock/data/SilentSettingsModel;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private setSilentState(Lcom/android/deskclock/data/DataModel$SilentSetting;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mSilentSetting:Lcom/android/deskclock/data/DataModel$SilentSetting;

    if-eq v0, p1, :cond_0

    .line 136
    iput-object p1, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mSilentSetting:Lcom/android/deskclock/data/DataModel$SilentSetting;

    .line 138
    iget-object p0, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/data/OnSilentSettingsListener;

    .line 139
    invoke-interface {v1, v0, p1}, Lcom/android/deskclock/data/OnSilentSettingsListener;->onSilentSettingsChange(Lcom/android/deskclock/data/DataModel$SilentSetting;Lcom/android/deskclock/data/DataModel$SilentSetting;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method addSilentSettingsListener(Lcom/android/deskclock/data/OnSilentSettingsListener;)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method removeSilentSettingsListener(Lcom/android/deskclock/data/OnSilentSettingsListener;)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method updateSilentState()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mCheckSilenceSettingsTask:Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 117
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 118
    iput-object v1, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mCheckSilenceSettingsTask:Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mNotificationModel:Lcom/android/deskclock/data/NotificationModel;

    invoke-virtual {v0}, Lcom/android/deskclock/data/NotificationModel;->isApplicationInForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    new-instance v0, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;-><init>(Lcom/android/deskclock/data/SilentSettingsModel;Lcom/android/deskclock/data/SilentSettingsModel$1;)V

    iput-object v0, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mCheckSilenceSettingsTask:Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;

    .line 123
    iget-object p0, p0, Lcom/android/deskclock/data/SilentSettingsModel;->mCheckSilenceSettingsTask:Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 125
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/deskclock/data/SilentSettingsModel;->setSilentState(Lcom/android/deskclock/data/DataModel$SilentSetting;)V

    :goto_0
    return-void
.end method
