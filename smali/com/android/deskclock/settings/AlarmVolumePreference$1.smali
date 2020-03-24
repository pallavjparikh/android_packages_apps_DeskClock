.class Lcom/android/deskclock/settings/AlarmVolumePreference$1;
.super Landroid/database/ContentObserver;
.source "AlarmVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/settings/AlarmVolumePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/settings/AlarmVolumePreference;

.field final synthetic val$audioManager:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Lcom/android/deskclock/settings/AlarmVolumePreference;Landroid/os/Handler;Landroid/media/AudioManager;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$1;->this$0:Lcom/android/deskclock/settings/AlarmVolumePreference;

    iput-object p3, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$1;->val$audioManager:Landroid/media/AudioManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$1;->this$0:Lcom/android/deskclock/settings/AlarmVolumePreference;

    invoke-static {p1}, Lcom/android/deskclock/settings/AlarmVolumePreference;->access$000(Lcom/android/deskclock/settings/AlarmVolumePreference;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object p0, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$1;->val$audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
