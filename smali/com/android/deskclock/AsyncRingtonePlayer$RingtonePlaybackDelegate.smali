.class Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;
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
    name = "RingtonePlaybackDelegate"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCrescendoDuration:J

.field private mCrescendoStopTime:J

.field private mRingtone:Landroid/media/Ringtone;

.field private mSetLoopingMethod:Ljava/lang/reflect/Method;

.field private mSetVolumeMethod:Ljava/lang/reflect/Method;

.field final synthetic this$0:Lcom/android/deskclock/AsyncRingtonePlayer;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/AsyncRingtonePlayer;)V
    .locals 5

    .line 458
    iput-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->this$0:Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 453
    iput-wide v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mCrescendoDuration:J

    .line 456
    iput-wide v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mCrescendoStopTime:J

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 460
    :try_start_0
    const-class v1, Landroid/media/Ringtone;

    const-string v2, "setVolume"

    new-array v3, v0, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mSetVolumeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 462
    invoke-static {}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$600()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object v2

    const-string v3, "Unable to locate method: Ringtone.setVolume(float)."

    invoke-virtual {v2, v3, v1}, Lcom/android/deskclock/LogUtils$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 466
    :goto_0
    :try_start_1
    const-class v1, Landroid/media/Ringtone;

    const-string v2, "setLooping"

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, p1

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mSetLoopingMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 468
    invoke-static {}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$600()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p1

    const-string v0, "Unable to locate method: Ringtone.setLooping(boolean)."

    invoke-virtual {p1, v0, p0}, Lcom/android/deskclock/LogUtils$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/AsyncRingtonePlayer;Lcom/android/deskclock/AsyncRingtonePlayer$1;)V
    .locals 0

    .line 438
    invoke-direct {p0, p1}, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;-><init>(Lcom/android/deskclock/AsyncRingtonePlayer;)V

    return-void
.end method

.method private setRingtoneVolume(F)V
    .locals 3

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mSetVolumeMethod:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mRingtone:Landroid/media/Ringtone;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 581
    invoke-static {}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$600()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p1

    const-string v0, "Unable to set volume for android.media.Ringtone"

    invoke-virtual {p1, v0, p0}, Lcom/android/deskclock/LogUtils$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private startPlayback(Z)Z
    .locals 6

    .line 544
    invoke-static {}, Lcom/android/deskclock/Utils;->isLOrLater()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mRingtone:Landroid/media/Ringtone;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 546
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 547
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 548
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 545
    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 554
    invoke-static {}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$600()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "Using the in-call alarm"

    invoke-virtual {p1, v3, v2}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 p1, 0x3e000000    # 0.125f

    .line 555
    invoke-direct {p0, p1}, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->setRingtoneVolume(F)V

    goto :goto_0

    .line 556
    :cond_1
    iget-wide v2, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mCrescendoDuration:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 557
    invoke-direct {p0, p1}, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->setRingtoneVolume(F)V

    .line 560
    invoke-static {}, Lcom/android/deskclock/Utils;->now()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mCrescendoDuration:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mCrescendoStopTime:J

    const/4 v0, 0x1

    .line 564
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 566
    iget-object p0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p0}, Landroid/media/Ringtone;->play()V

    return v0
.end method


# virtual methods
.method public adjustVolume(Landroid/content/Context;)Z
    .locals 9

    .line 614
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->this$0:Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-static {p1}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$500(Lcom/android/deskclock/AsyncRingtonePlayer;)V

    .line 617
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mRingtone:Landroid/media/Ringtone;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 624
    :cond_0
    invoke-static {}, Lcom/android/deskclock/Utils;->now()J

    move-result-wide v3

    .line 625
    iget-wide v5, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mCrescendoStopTime:J

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    .line 626
    iput-wide v1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mCrescendoDuration:J

    .line 627
    iput-wide v1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mCrescendoStopTime:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 628
    invoke-direct {p0, p1}, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->setRingtoneVolume(F)V

    return v0

    .line 632
    :cond_1
    iget-wide v7, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mCrescendoDuration:J

    invoke-static/range {v3 .. v8}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$1000(JJJ)F

    move-result p1

    .line 633
    invoke-direct {p0, p1}, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->setRingtoneVolume(F)V

    const/4 p0, 0x1

    return p0

    .line 618
    :cond_2
    :goto_0
    iput-wide v1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mCrescendoDuration:J

    .line 619
    iput-wide v1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mCrescendoStopTime:J

    return v0
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;J)Z
    .locals 4

    .line 477
    iget-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->this$0:Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-static {v0}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$500(Lcom/android/deskclock/AsyncRingtonePlayer;)V

    .line 478
    iput-wide p3, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mCrescendoDuration:J

    .line 480
    invoke-static {}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$600()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p3

    const/4 p4, 0x0

    new-array v0, p4, [Ljava/lang/Object;

    const-string v1, "Play ringtone via android.media.Ringtone."

    invoke-virtual {p3, v1, v0}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    iget-object p3, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mAudioManager:Landroid/media/AudioManager;

    if-nez p3, :cond_0

    const-string p3, "audio"

    .line 483
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mAudioManager:Landroid/media/AudioManager;

    .line 486
    :cond_0
    invoke-static {p1}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$700(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 488
    invoke-static {p1}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$800(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p2

    .line 492
    :cond_1
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mRingtone:Landroid/media/Ringtone;

    .line 494
    iget-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mRingtone:Landroid/media/Ringtone;

    if-nez v0, :cond_2

    const/4 p2, 0x4

    .line 496
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p2

    .line 497
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mRingtone:Landroid/media/Ringtone;

    .line 502
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mSetLoopingMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mRingtone:Landroid/media/Ringtone;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, p4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 504
    invoke-static {}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$600()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object v1

    const-string v2, "Unable to turn looping on for android.media.Ringtone"

    invoke-virtual {v1, v2, v0}, Lcom/android/deskclock/LogUtils$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 508
    iput-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mRingtone:Landroid/media/Ringtone;

    .line 512
    :goto_0
    iget-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mRingtone:Landroid/media/Ringtone;

    if-nez v0, :cond_3

    .line 513
    invoke-static {}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$600()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p2

    new-array v0, p4, [Ljava/lang/Object;

    const-string v1, "Unable to locate alarm ringtone, using internal fallback ringtone."

    invoke-virtual {p2, v1, v0}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    invoke-static {p1}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$900(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p2

    .line 515
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mRingtone:Landroid/media/Ringtone;

    .line 519
    :cond_3
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->startPlayback(Z)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    :catchall_0
    move-exception v0

    .line 521
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

    .line 523
    invoke-static {p1}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$900(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mRingtone:Landroid/media/Ringtone;

    .line 525
    :try_start_2
    invoke-direct {p0, p3}, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->startPlayback(Z)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p0

    :catchall_1
    move-exception p0

    .line 528
    invoke-static {}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$600()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p1

    const-string p2, "Failed to play fallback ringtone"

    invoke-virtual {p1, p2, p0}, Lcom/android/deskclock/LogUtils$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return p4
.end method

.method public stop(Landroid/content/Context;)V
    .locals 3

    .line 590
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->this$0:Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-static {p1}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$500(Lcom/android/deskclock/AsyncRingtonePlayer;)V

    .line 592
    invoke-static {}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$600()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Stop ringtone via android.media.Ringtone."

    invoke-virtual {p1, v2, v1}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    .line 594
    iput-wide v1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mCrescendoDuration:J

    .line 595
    iput-wide v1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mCrescendoStopTime:J

    .line 597
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mRingtone:Landroid/media/Ringtone;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 598
    invoke-static {}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$600()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ringtone.stop() invoked."

    invoke-virtual {p1, v1, v0}, Lcom/android/deskclock/LogUtils$Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p1}, Landroid/media/Ringtone;->stop()V

    :cond_0
    const/4 p1, 0x0

    .line 602
    iput-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mRingtone:Landroid/media/Ringtone;

    .line 604
    iget-object p0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$RingtonePlaybackDelegate;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_1

    .line 605
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    return-void
.end method
