.class Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate$1;
.super Ljava/lang/Object;
.source "AsyncRingtonePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->play(Landroid/content/Context;Landroid/net/Uri;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;Landroid/content/Context;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate$1;->this$1:Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;

    iput-object p2, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 301
    invoke-static {}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$600()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Error occurred while playing audio. Stopping AlarmKlaxon."

    invoke-virtual {p1, p3, p2}, Lcom/android/deskclock/LogUtils$Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate$1;->this$1:Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;

    iget-object p0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/deskclock/AsyncRingtonePlayer$MediaPlayerPlaybackDelegate;->stop(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method
