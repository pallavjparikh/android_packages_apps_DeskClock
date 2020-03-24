.class public abstract Lcom/android/deskclock/timer/TimerKlaxon;
.super Ljava/lang/Object;
.source "TimerKlaxon.java"


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

    sput-object v0, Lcom/android/deskclock/timer/TimerKlaxon;->VIBRATE_PATTERN:[J

    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lcom/android/deskclock/timer/TimerKlaxon;->sStarted:Z

    return-void

    :array_0
    .array-data 8
        0x1f4
        0x1f4
    .end array-data
.end method

.method private static declared-synchronized getAsyncRingtonePlayer(Landroid/content/Context;)Lcom/android/deskclock/AsyncRingtonePlayer;
    .locals 2

    const-class v0, Lcom/android/deskclock/timer/TimerKlaxon;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Lcom/android/deskclock/timer/TimerKlaxon;->sAsyncRingtonePlayer:Lcom/android/deskclock/AsyncRingtonePlayer;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/deskclock/AsyncRingtonePlayer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/deskclock/timer/TimerKlaxon;->sAsyncRingtonePlayer:Lcom/android/deskclock/AsyncRingtonePlayer;

    .line 96
    :cond_0
    sget-object p0, Lcom/android/deskclock/timer/TimerKlaxon;->sAsyncRingtonePlayer:Lcom/android/deskclock/AsyncRingtonePlayer;
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

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    return-object p0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 5

    .line 55
    invoke-static {p0}, Lcom/android/deskclock/timer/TimerKlaxon;->stop(Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "TimerKlaxon.start()"

    .line 56
    invoke-static {v2, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/data/DataModel;->isTimerRingtoneSilent()Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Playing silent ringtone for timer"

    .line 61
    invoke-static {v2, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/data/DataModel;->getTimerRingtoneUri()Landroid/net/Uri;

    move-result-object v1

    .line 64
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/deskclock/data/DataModel;->getTimerCrescendoDuration()J

    move-result-wide v2

    .line 65
    invoke-static {p0}, Lcom/android/deskclock/timer/TimerKlaxon;->getAsyncRingtonePlayer(Landroid/content/Context;)Lcom/android/deskclock/AsyncRingtonePlayer;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/deskclock/AsyncRingtonePlayer;->play(Landroid/net/Uri;J)V

    .line 68
    :goto_0
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/data/DataModel;->getTimerVibrate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    invoke-static {p0}, Lcom/android/deskclock/timer/TimerKlaxon;->getVibrator(Landroid/content/Context;)Landroid/os/Vibrator;

    move-result-object p0

    .line 70
    invoke-static {}, Lcom/android/deskclock/Utils;->isLOrLater()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-static {p0}, Lcom/android/deskclock/timer/TimerKlaxon;->vibrateLOrLater(Landroid/os/Vibrator;)V

    goto :goto_1

    .line 73
    :cond_1
    sget-object v1, Lcom/android/deskclock/timer/TimerKlaxon;->VIBRATE_PATTERN:[J

    invoke-virtual {p0, v1, v0}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 76
    sput-boolean p0, Lcom/android/deskclock/timer/TimerKlaxon;->sStarted:Z

    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 3

    .line 45
    sget-boolean v0, Lcom/android/deskclock/timer/TimerKlaxon;->sStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "TimerKlaxon.stop()"

    .line 46
    invoke-static {v2, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    sput-boolean v0, Lcom/android/deskclock/timer/TimerKlaxon;->sStarted:Z

    .line 48
    invoke-static {p0}, Lcom/android/deskclock/timer/TimerKlaxon;->getAsyncRingtonePlayer(Landroid/content/Context;)Lcom/android/deskclock/AsyncRingtonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/AsyncRingtonePlayer;->stop()V

    const-string v0, "vibrator"

    .line 49
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

    .line 81
    sget-object v0, Lcom/android/deskclock/timer/TimerKlaxon;->VIBRATE_PATTERN:[J

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x4

    .line 82
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    const/4 v2, 0x0

    .line 81
    invoke-virtual {p0, v0, v2, v1}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    return-void
.end method
