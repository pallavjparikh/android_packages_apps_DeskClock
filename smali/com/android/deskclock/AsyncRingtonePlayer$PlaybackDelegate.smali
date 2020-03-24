.class interface abstract Lcom/android/deskclock/AsyncRingtonePlayer$PlaybackDelegate;
.super Ljava/lang/Object;
.source "AsyncRingtonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AsyncRingtonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PlaybackDelegate"
.end annotation


# virtual methods
.method public abstract adjustVolume(Landroid/content/Context;)Z
.end method

.method public abstract play(Landroid/content/Context;Landroid/net/Uri;J)Z
.end method

.method public abstract stop(Landroid/content/Context;)V
.end method
