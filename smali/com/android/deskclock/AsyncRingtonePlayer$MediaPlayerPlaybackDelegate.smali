.class Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;
.super Ljava/lang/Object;
.source "AsyncRingtonePlayer.java"

# interfaces
.implements Lcom/android/deskclock/AsyncRingtonePlayer$PlaybackDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AsyncRingtonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerPlaybackDelegate"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCrescendoDuration:J

.field private mCrescendoStopTime:J

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/android/deskclock/AsyncRingtonePlayer;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/AsyncRingtonePlayer;)V
    .locals 2

    .line 261
    iput-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->this$0:Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 270
    iput-wide v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mCrescendoDuration:J

    .line 273
    iput-wide v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mCrescendoStopTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/AsyncRingtonePlayer;Lcom/android/deskclock/AsyncRingtonePlayer$1;)V
    .locals 0

    .line 261
    invoke-direct {p0, p1}, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;-><init>(Lcom/android/deskclock/AsyncRingtonePlayer;)V

    return-void
.end method

.method private startPlayback(Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 348
    :cond_0
    invoke-static {}, Lcom/android/deskclock/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 350
    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 351
    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 352
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 349
    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 359
    invoke-static {}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$600()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Using the in-call alarm"

    invoke-virtual {p1, v4, v3}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v3, 0x3e000000    # 0.125f

    invoke-virtual {p1, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 361
    :cond_2
    iget-wide v3, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mCrescendoDuration:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_3

    .line 362
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 365
    invoke-static {}, Lcom/android/deskclock/Utils;->now()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mCrescendoDuration:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mCrescendoStopTime:J

    move v2, v0

    .line 369
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 370
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 371
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 372
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 373
    iget-object p0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return v2
.end method


# virtual methods
.method public adjustVolume(Landroid/content/Context;)Z
    .locals 9

    .line 407
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->this$0:Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-static {p1}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$500(Lcom/android/deskclock/AsyncRingtonePlayer;)V

    .line 410
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    invoke-static {}, Lcom/android/deskclock/Utils;->now()J

    move-result-wide v3

    .line 418
    iget-wide v5, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mCrescendoStopTime:J

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    .line 419
    iput-wide v1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mCrescendoDuration:J

    .line 420
    iput-wide v1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mCrescendoStopTime:J

    .line 421
    iget-object p0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return v0

    .line 426
    :cond_1
    iget-wide v7, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mCrescendoDuration:J

    invoke-static/range {v3 .. v8}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$1000(JJJ)F

    move-result p1

    .line 427
    iget-object p0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 428
    invoke-static {}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$600()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer volume set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    .line 411
    :cond_2
    :goto_0
    iput-wide v1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mCrescendoDuration:J

    .line 412
    iput-wide v1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mCrescendoStopTime:J

    return v0
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;J)Z
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->this$0:Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-static {v0}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$500(Lcom/android/deskclock/AsyncRingtonePlayer;)V

    .line 281
    iput-wide p3, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mCrescendoDuration:J

    .line 283
    invoke-static {}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$600()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p3

    const/4 p4, 0x0

    new-array v0, p4, [Ljava/lang/Object;

    const-string v1, "Play ringtone via android.media.MediaPlayer."

    invoke-virtual {p3, v1, v0}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iget-object p3, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mAudioManager:Landroid/media/AudioManager;

    if-nez p3, :cond_0

    const-string p3, "audio"

    .line 286
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mAudioManager:Landroid/media/AudioManager;

    .line 289
    :cond_0
    invoke-static {p1}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$700(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 290
    invoke-static {p1}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$800(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p2

    :cond_1
    if-nez p2, :cond_2

    const/4 p2, 0x4

    .line 293
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p2

    .line 294
    invoke-static {}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$600()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using default alarm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, p4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    :cond_2
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 298
    iget-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate$1;

    invoke-direct {v1, p0, p1}, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate$1;-><init>(Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 313
    invoke-direct {p0, p3}, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->startPlayback(Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception v0

    .line 315
    invoke-static {}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$600()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using the fallback ringtone, could not play "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Lcom/android/deskclock/LogUtils$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    :try_start_1
    iget-object p2, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->reset()V

    .line 321
    iget-object p2, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {p1}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$900(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 322
    invoke-direct {p0, p3}, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->startPlayback(Z)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p0

    :catchall_1
    move-exception p0

    .line 325
    invoke-static {}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$600()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p1

    const-string p2, "Failed to play fallback ringtone"

    invoke-virtual {p1, p2, p0}, Lcom/android/deskclock/LogUtils$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return p4
.end method

.method public stop(Landroid/content/Context;)V
    .locals 2

    .line 383
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->this$0:Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-static {p1}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$500(Lcom/android/deskclock/AsyncRingtonePlayer;)V

    .line 385
    invoke-static {}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$600()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Stop ringtone via android.media.MediaPlayer."

    invoke-virtual {p1, v1, v0}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 387
    iput-wide v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mCrescendoDuration:J

    .line 388
    iput-wide v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mCrescendoStopTime:J

    .line 391
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 392
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 393
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 394
    iput-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 397
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_1

    .line 398
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    return-void
.end method
