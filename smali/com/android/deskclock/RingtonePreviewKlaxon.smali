.class public final Lcom/android/deskclock/RingtonePreviewKlaxon;
.super Ljava/lang/Object;
.source "RingtonePreviewKlaxon.java"


# static fields
.field private static sAsyncRingtonePlayer:Lcom/android/deskclock/AsyncRingtonePlayer;


# direct methods
.method private static declared-synchronized getAsyncRingtonePlayer(Landroid/content/Context;)Lcom/android/deskclock/AsyncRingtonePlayer;
    .locals 2

    const-class v0, Lcom/android/deskclock/RingtonePreviewKlaxon;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/android/deskclock/RingtonePreviewKlaxon;->sAsyncRingtonePlayer:Lcom/android/deskclock/AsyncRingtonePlayer;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/deskclock/AsyncRingtonePlayer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/deskclock/RingtonePreviewKlaxon;->sAsyncRingtonePlayer:Lcom/android/deskclock/AsyncRingtonePlayer;

    .line 45
    :cond_0
    sget-object p0, Lcom/android/deskclock/RingtonePreviewKlaxon;->sAsyncRingtonePlayer:Lcom/android/deskclock/AsyncRingtonePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static start(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 35
    invoke-static {p0}, Lcom/android/deskclock/RingtonePreviewKlaxon;->stop(Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RingtonePreviewKlaxon.start()"

    .line 36
    invoke-static {v1, v0}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-static {p0}, Lcom/android/deskclock/RingtonePreviewKlaxon;->getAsyncRingtonePlayer(Landroid/content/Context;)Lcom/android/deskclock/AsyncRingtonePlayer;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/deskclock/AsyncRingtonePlayer;->play(Landroid/net/Uri;J)V

    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RingtonePreviewKlaxon.stop()"

    .line 30
    invoke-static {v1, v0}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {p0}, Lcom/android/deskclock/RingtonePreviewKlaxon;->getAsyncRingtonePlayer(Landroid/content/Context;)Lcom/android/deskclock/AsyncRingtonePlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/AsyncRingtonePlayer;->stop()V

    return-void
.end method
