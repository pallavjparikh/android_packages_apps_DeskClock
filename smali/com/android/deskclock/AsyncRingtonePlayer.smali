.class public final Lcom/android/deskclock/AsyncRingtonePlayer;
.super Ljava/lang/Object;
.source "AsyncRingtonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;,
        Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;,
        Lcom/android/deskclock/AsyncRingtonePlayer$PlaybackDelegate;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/android/deskclock/LogUtils$Logger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPlaybackDelegate:Lcom/android/deskclock/AsyncRingtonePlayer$PlaybackDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/android/deskclock/LogUtils$Logger;

    const-string v1, "AsyncRingtonePlayer"

    invoke-direct {v0, v1}, Lcom/android/deskclock/LogUtils$Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/AsyncRingtonePlayer;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AsyncRingtonePlayer;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/deskclock/AsyncRingtonePlayer;)Lcom/android/deskclock/AsyncRingtonePlayer$PlaybackDelegate;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/deskclock/AsyncRingtonePlayer;->getPlaybackDelegate()Lcom/android/deskclock/AsyncRingtonePlayer$PlaybackDelegate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(JJJ)F
    .locals 0

    .line 50
    invoke-static/range {p0 .. p5}, Lcom/android/deskclock/AsyncRingtonePlayer;->computeVolume(JJJ)F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/deskclock/AsyncRingtonePlayer;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/deskclock/AsyncRingtonePlayer;->scheduleVolumeAdjustment()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/deskclock/AsyncRingtonePlayer;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/deskclock/AsyncRingtonePlayer;->checkAsyncRingtonePlayerThread()V

    return-void
.end method

.method static synthetic access$600()Lcom/android/deskclock/LogUtils$Logger;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/deskclock/AsyncRingtonePlayer;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Context;)Z
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/android/deskclock/AsyncRingtonePlayer;->isInTelephoneCall(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/android/deskclock/AsyncRingtonePlayer;->getInCallRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/android/deskclock/AsyncRingtonePlayer;->getFallbackRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private checkAsyncRingtonePlayerThread()V
    .locals 2

    .line 187
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-eq v0, p0, :cond_0

    .line 188
    sget-object p0, Lcom/android/deskclock/AsyncRingtonePlayer;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v1, "Must be on the AsyncRingtonePlayer thread!"

    invoke-virtual {p0, v1, v0}, Lcom/android/deskclock/LogUtils$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static computeVolume(JJJ)F
    .locals 2

    sub-long/2addr p2, p0

    long-to-float p0, p2

    long-to-float p1, p4

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    const/high16 p0, 0x42200000    # 40.0f

    mul-float p2, p1, p0

    sub-float/2addr p2, p0

    const/high16 p0, 0x41a00000    # 20.0f

    div-float p0, p2, p0

    float-to-double p3, p0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 208
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    double-to-float p0, p3

    .line 210
    sget-object p3, Lcom/android/deskclock/AsyncRingtonePlayer;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const/high16 p5, 0x42c80000    # 100.0f

    mul-float/2addr p1, p5

    .line 211
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p5, 0x0

    aput-object p1, p4, p5

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p5, 0x1

    aput-object p1, p4, p5

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p4, p2

    const-string p1, "Ringtone crescendo %,.2f%% complete (scalar: %f, volume: %f dB)"

    .line 210
    invoke-virtual {p3, p1, p4}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method private static getFallbackRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    const/high16 v0, 0x7f100000

    .line 180
    invoke-static {p0, v0}, Lcom/android/deskclock/Utils;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static getInCallRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    const/high16 v0, 0x7f100000

    .line 173
    invoke-static {p0, v0}, Lcom/android/deskclock/Utils;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getNewHandler()Landroid/os/Handler;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ringtone-player"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v1, Lcom/android/deskclock/AsyncRingtonePlayer$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/deskclock/AsyncRingtonePlayer$1;-><init>(Lcom/android/deskclock/AsyncRingtonePlayer;Landroid/os/Looper;)V

    return-object v1
.end method

.method private getPlaybackDelegate()Lcom/android/deskclock/AsyncRingtonePlayer$PlaybackDelegate;
    .locals 2

    .line 220
    invoke-direct {p0}, Lcom/android/deskclock/AsyncRingtonePlayer;->checkAsyncRingtonePlayerThread()V

    .line 222
    iget-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer;->mPlaybackDelegate:Lcom/android/deskclock/AsyncRingtonePlayer$PlaybackDelegate;

    if-nez v0, :cond_1

    .line 223
    invoke-static {}, Lcom/android/deskclock/Utils;->isMOrLater()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;-><init>(Lcom/android/deskclock/AsyncRingtonePlayer;Lcom/android/deskclock/AsyncRingtonePlayer$1;)V

    iput-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer;->mPlaybackDelegate:Lcom/android/deskclock/AsyncRingtonePlayer$PlaybackDelegate;

    goto :goto_0

    .line 230
    :cond_0
    new-instance v0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;-><init>(Lcom/android/deskclock/AsyncRingtonePlayer;Lcom/android/deskclock/AsyncRingtonePlayer$1;)V

    iput-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer;->mPlaybackDelegate:Lcom/android/deskclock/AsyncRingtonePlayer$PlaybackDelegate;

    .line 234
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/deskclock/AsyncRingtonePlayer;->mPlaybackDelegate:Lcom/android/deskclock/AsyncRingtonePlayer$PlaybackDelegate;

    return-object p0
.end method

.method private static isInTelephoneCall(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    .line 165
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 166
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private postMessage(ILandroid/net/Uri;JJ)V
    .locals 2

    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/deskclock/AsyncRingtonePlayer;->getNewHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "RINGTONE_URI_KEY"

    .line 118
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "CRESCENDO_DURATION_KEY"

    .line 119
    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 123
    :cond_1
    iget-object p2, p0, Lcom/android/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 124
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private scheduleVolumeAdjustment()V
    .locals 9

    .line 91
    sget-object v0, Lcom/android/deskclock/AsyncRingtonePlayer;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Adjusting volume."

    invoke-virtual {v0, v2, v1}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x32

    move-object v2, p0

    .line 97
    invoke-direct/range {v2 .. v8}, Lcom/android/deskclock/AsyncRingtonePlayer;->postMessage(ILandroid/net/Uri;JJ)V

    return-void
.end method


# virtual methods
.method public play(Landroid/net/Uri;J)V
    .locals 10

    .line 79
    sget-object v0, Lcom/android/deskclock/AsyncRingtonePlayer;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Posting play."

    invoke-virtual {v0, v2, v1}, Lcom/android/deskclock/LogUtils$Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x1

    const-wide/16 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    move-wide v6, p2

    .line 80
    invoke-direct/range {v3 .. v9}, Lcom/android/deskclock/AsyncRingtonePlayer;->postMessage(ILandroid/net/Uri;JJ)V

    return-void
.end method

.method public stop()V
    .locals 10

    .line 85
    sget-object v0, Lcom/android/deskclock/AsyncRingtonePlayer;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Posting stop."

    invoke-virtual {v0, v2, v1}, Lcom/android/deskclock/LogUtils$Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v3, p0

    .line 86
    invoke-direct/range {v3 .. v9}, Lcom/android/deskclock/AsyncRingtonePlayer;->postMessage(ILandroid/net/Uri;JJ)V

    return-void
.end method
