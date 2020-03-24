.class Lcom/android/deskclock/AsyncRingtonePlayer$1;
.super Landroid/os/Handler;
.source "AsyncRingtonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AsyncRingtonePlayer;->getNewHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AsyncRingtonePlayer;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AsyncRingtonePlayer;Landroid/os/Looper;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$1;->this$0:Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$1;->this$0:Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-static {p1}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$100(Lcom/android/deskclock/AsyncRingtonePlayer;)Lcom/android/deskclock/AsyncRingtonePlayer$PlaybackDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$1;->this$0:Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-static {v0}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$000(Lcom/android/deskclock/AsyncRingtonePlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/deskclock/AsyncRingtonePlayer$PlaybackDelegate;->adjustVolume(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 152
    iget-object p0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$1;->this$0:Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-static {p0}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$200(Lcom/android/deskclock/AsyncRingtonePlayer;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$1;->this$0:Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-static {p1}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$100(Lcom/android/deskclock/AsyncRingtonePlayer;)Lcom/android/deskclock/AsyncRingtonePlayer$PlaybackDelegate;

    move-result-object p1

    iget-object p0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$1;->this$0:Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-static {p0}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$000(Lcom/android/deskclock/AsyncRingtonePlayer;)Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/deskclock/AsyncRingtonePlayer$PlaybackDelegate;->stop(Landroid/content/Context;)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RINGTONE_URI_KEY"

    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "CRESCENDO_DURATION_KEY"

    .line 142
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 143
    iget-object p1, p0, Lcom/android/deskclock/AsyncRingtonePlayer$1;->this$0:Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-static {p1}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$100(Lcom/android/deskclock/AsyncRingtonePlayer;)Lcom/android/deskclock/AsyncRingtonePlayer$PlaybackDelegate;

    move-result-object p1

    iget-object v3, p0, Lcom/android/deskclock/AsyncRingtonePlayer$1;->this$0:Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-static {v3}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$000(Lcom/android/deskclock/AsyncRingtonePlayer;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/android/deskclock/AsyncRingtonePlayer$PlaybackDelegate;->play(Landroid/content/Context;Landroid/net/Uri;J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 144
    iget-object p0, p0, Lcom/android/deskclock/AsyncRingtonePlayer$1;->this$0:Lcom/android/deskclock/AsyncRingtonePlayer;

    invoke-static {p0}, Lcom/android/deskclock/AsyncRingtonePlayer;->access$200(Lcom/android/deskclock/AsyncRingtonePlayer;)V

    :cond_3
    :goto_0
    return-void
.end method
