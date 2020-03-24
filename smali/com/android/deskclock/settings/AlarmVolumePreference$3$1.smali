.class Lcom/android/deskclock/settings/AlarmVolumePreference$3$1;
.super Ljava/lang/Object;
.source "AlarmVolumePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/settings/AlarmVolumePreference$3;->onStopTrackingTouch(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/settings/AlarmVolumePreference$3;


# direct methods
.method constructor <init>(Lcom/android/deskclock/settings/AlarmVolumePreference$3;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$3$1;->this$1:Lcom/android/deskclock/settings/AlarmVolumePreference$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$3$1;->this$1:Lcom/android/deskclock/settings/AlarmVolumePreference$3;

    iget-object v0, v0, Lcom/android/deskclock/settings/AlarmVolumePreference$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/deskclock/RingtonePreviewKlaxon;->stop(Landroid/content/Context;)V

    .line 115
    iget-object p0, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$3$1;->this$1:Lcom/android/deskclock/settings/AlarmVolumePreference$3;

    iget-object p0, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$3;->this$0:Lcom/android/deskclock/settings/AlarmVolumePreference;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/deskclock/settings/AlarmVolumePreference;->access$202(Lcom/android/deskclock/settings/AlarmVolumePreference;Z)Z

    return-void
.end method
