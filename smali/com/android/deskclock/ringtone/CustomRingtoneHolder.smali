.class Lcom/android/deskclock/ringtone/CustomRingtoneHolder;
.super Lcom/android/deskclock/ringtone/RingtoneHolder;
.source "CustomRingtoneHolder.java"


# direct methods
.method constructor <init>(Lcom/android/deskclock/data/CustomRingtone;)V
    .locals 2

    .line 24
    invoke-virtual {p1}, Lcom/android/deskclock/data/CustomRingtone;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/deskclock/data/CustomRingtone;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/deskclock/data/CustomRingtone;->hasPermissions()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;-><init>(Landroid/net/Uri;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getItemViewType()I
    .locals 0

    const p0, -0x7f0d0074

    return p0
.end method
