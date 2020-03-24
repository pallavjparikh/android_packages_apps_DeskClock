.class Lcom/android/deskclock/settings/AlarmVolumePreference$3;
.super Ljava/lang/Object;
.source "AlarmVolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/deskclock/settings/AlarmVolumePreference;Landroid/media/AudioManager;Landroid/content/Context;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$3;->this$0:Lcom/android/deskclock/settings/AlarmVolumePreference;

    iput-object p2, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$3;->val$audioManager:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 95
    iget-object p1, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$3;->val$audioManager:Landroid/media/AudioManager;

    const/4 p3, 0x4

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$3;->this$0:Lcom/android/deskclock/settings/AlarmVolumePreference;

    invoke-static {p0}, Lcom/android/deskclock/settings/AlarmVolumePreference;->access$100(Lcom/android/deskclock/settings/AlarmVolumePreference;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$3;->this$0:Lcom/android/deskclock/settings/AlarmVolumePreference;

    invoke-static {v0}, Lcom/android/deskclock/settings/AlarmVolumePreference;->access$200(Lcom/android/deskclock/settings/AlarmVolumePreference;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$3;->val$context:Landroid/content/Context;

    .line 109
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/data/DataModel;->getDefaultAlarmRingtoneUri()Landroid/net/Uri;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Lcom/android/deskclock/RingtonePreviewKlaxon;->start(Landroid/content/Context;Landroid/net/Uri;)V

    .line 110
    iget-object v0, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$3;->this$0:Lcom/android/deskclock/settings/AlarmVolumePreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/deskclock/settings/AlarmVolumePreference;->access$202(Lcom/android/deskclock/settings/AlarmVolumePreference;Z)Z

    .line 111
    new-instance v0, Lcom/android/deskclock/settings/AlarmVolumePreference$3$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/settings/AlarmVolumePreference$3$1;-><init>(Lcom/android/deskclock/settings/AlarmVolumePreference$3;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
