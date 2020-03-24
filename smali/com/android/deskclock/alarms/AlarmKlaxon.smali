.class final Lcom/android/deskclock/alarms/AlarmKlaxon;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"


# static fields
.field private static final VIBRATE_PATTERN:[J

.field private static sAsyncRingtonePlayer:Lcom/android/deskclock/AsyncRingtonePlayer;

.field private static sStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 36
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/deskclock/alarms/AlarmKlaxon;->VIBRATE_PATTERN:[J

    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lcom/android/deskclock/alarms/AlarmKlaxon;->sStarted:Z

    return-void

    :array_0
    .array-data 8
        0x1f4
        0x1f4
    .end array-data
.end method

.method private static declared-synchronized getAsyncRingtonePlayer(Landroid/content/Context;)Lcom/android/deskclock/AsyncRingtonePlayer;
    .locals 2

    const-class v0, Lcom/android/deskclock/alarms/AlarmKlaxon;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/android/deskclock/alarms/AlarmKlaxon;->sAsyncRingtonePlayer:Lcom/android/deskclock/AsyncRingtonePlayer;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/deskclock/AsyncRingtonePlayer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/deskclock/alarms/AlarmKlaxon;->sAsyncRingtonePlayer:Lcom/android/deskclock/AsyncRingtonePlayer;

    .line 91
    :cond_0
    sget-object p0, Lcom/android/deskclock/alarms/AlarmKlaxon;->sAsyncRingtonePlayer:Lcom/android/deskclock/AsyncRingtonePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getVibrator(Landroid/content/Context;)Landroid/os/Vibrator;
    .locals 1

    const-string v0, "vibrator"

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    return-object p0
.end method

.method public static start(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 5

    .line 54
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmKlaxon;->stop(Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AlarmKlaxon.start()"

    .line 55
    invoke-static {v2, v1}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    sget-object v1, Lcom/android/deskclock/provider/AlarmInstance;->NO_RINGTONE_URI:Landroid/net/Uri;

    iget-object v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/data/DataModel;->getAlarmCrescendoDuration()J

    move-result-wide v1

    .line 59
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmKlaxon;->getAsyncRingtonePlayer(Landroid/content/Context;)Lcom/android/deskclock/AsyncRingtonePlayer;

    move-result-object v3

    iget-object v4, p1, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/deskclock/AsyncRingtonePlayer;->play(Landroid/net/Uri;J)V

    .line 62
    :cond_0
    iget-boolean p1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mVibrate:Z

    if-eqz p1, :cond_2

    .line 63
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmKlaxon;->getVibrator(Landroid/content/Context;)Landroid/os/Vibrator;

    move-result-object p0

    .line 64
    invoke-static {}, Lcom/android/deskclock/Utils;->isLOrLater()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmKlaxon;->vibrateLOrLater(Landroid/os/Vibrator;)V

    goto :goto_0

    .line 67
    :cond_1
    sget-object p1, Lcom/android/deskclock/alarms/AlarmKlaxon;->VIBRATE_PATTERN:[J

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 71
    sput-boolean p0, Lcom/android/deskclock/alarms/AlarmKlaxon;->sStarted:Z

    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 3

    .line 44
    sget-boolean v0, Lcom/android/deskclock/alarms/AlarmKlaxon;->sStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AlarmKlaxon.stop()"

    .line 45
    invoke-static {v2, v1}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    sput-boolean v0, Lcom/android/deskclock/alarms/AlarmKlaxon;->sStarted:Z

    .line 47
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmKlaxon;->getAsyncRingtonePlayer(Landroid/content/Context;)Lcom/android/deskclock/AsyncRingtonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/AsyncRingtonePlayer;->stop()V

    const-string v0, "vibrator"

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    return-void
.end method

.method private static vibrateLOrLater(Landroid/os/Vibrator;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 76
    sget-object v0, Lcom/android/deskclock/alarms/AlarmKlaxon;->VIBRATE_PATTERN:[J

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x4

    .line 77
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0, v0, v2, v1}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    return-void
.end method
