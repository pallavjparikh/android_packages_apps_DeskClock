.class final Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;
.super Landroid/os/AsyncTask;
.source "SilentSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/SilentSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckSilenceSettingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/deskclock/data/DataModel$SilentSetting;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/data/SilentSettingsModel;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/data/SilentSettingsModel;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;->this$0:Lcom/android/deskclock/data/SilentSettingsModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/data/SilentSettingsModel;Lcom/android/deskclock/data/SilentSettingsModel$1;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;-><init>(Lcom/android/deskclock/data/SilentSettingsModel;)V

    return-void
.end method

.method private isAlarmStreamMuted()Z
    .locals 2

    const/4 v0, 0x0

    .line 197
    :try_start_0
    iget-object p0, p0, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;->this$0:Lcom/android/deskclock/data/SilentSettingsModel;

    invoke-static {p0}, Lcom/android/deskclock/data/SilentSettingsModel;->access$600(Lcom/android/deskclock/data/SilentSettingsModel;)Landroid/media/AudioManager;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private isAppNotificationBlocked()Z
    .locals 0

    .line 215
    :try_start_0
    iget-object p0, p0, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;->this$0:Lcom/android/deskclock/data/SilentSettingsModel;

    invoke-static {p0}, Lcom/android/deskclock/data/SilentSettingsModel;->access$700(Lcom/android/deskclock/data/SilentSettingsModel;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private isDoNotDisturbBlockingAlarms()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 182
    invoke-static {}, Lcom/android/deskclock/Utils;->isMOrLater()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 187
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;->this$0:Lcom/android/deskclock/data/SilentSettingsModel;

    invoke-static {p0}, Lcom/android/deskclock/data/SilentSettingsModel;->access$500(Lcom/android/deskclock/data/SilentSettingsModel;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :catch_0
    :cond_1
    return v1
.end method

.method private isSystemAlarmRingtoneSilent()Z
    .locals 2

    const/4 v0, 0x0

    .line 206
    :try_start_0
    iget-object p0, p0, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;->this$0:Lcom/android/deskclock/data/SilentSettingsModel;

    invoke-static {p0}, Lcom/android/deskclock/data/SilentSettingsModel;->access$700(Lcom/android/deskclock/data/SilentSettingsModel;)Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/deskclock/data/DataModel$SilentSetting;
    .locals 0

    .line 152
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;->isDoNotDisturbBlockingAlarms()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    sget-object p0, Lcom/android/deskclock/data/DataModel$SilentSetting;->DO_NOT_DISTURB:Lcom/android/deskclock/data/DataModel$SilentSetting;

    return-object p0

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;->isAlarmStreamMuted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    sget-object p0, Lcom/android/deskclock/data/DataModel$SilentSetting;->MUTED_VOLUME:Lcom/android/deskclock/data/DataModel$SilentSetting;

    return-object p0

    .line 156
    :cond_1
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;->isSystemAlarmRingtoneSilent()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 157
    sget-object p0, Lcom/android/deskclock/data/DataModel$SilentSetting;->SILENT_RINGTONE:Lcom/android/deskclock/data/DataModel$SilentSetting;

    return-object p0

    .line 158
    :cond_2
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;->isAppNotificationBlocked()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 159
    sget-object p0, Lcom/android/deskclock/data/DataModel$SilentSetting;->BLOCKED_NOTIFICATIONS:Lcom/android/deskclock/data/DataModel$SilentSetting;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 149
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;->doInBackground([Ljava/lang/Void;)Lcom/android/deskclock/data/DataModel$SilentSetting;

    move-result-object p0

    return-object p0
.end method

.method protected onCancelled()V
    .locals 1

    .line 166
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 167
    iget-object v0, p0, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;->this$0:Lcom/android/deskclock/data/SilentSettingsModel;

    invoke-static {v0}, Lcom/android/deskclock/data/SilentSettingsModel;->access$300(Lcom/android/deskclock/data/SilentSettingsModel;)Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 168
    iget-object p0, p0, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;->this$0:Lcom/android/deskclock/data/SilentSettingsModel;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/deskclock/data/SilentSettingsModel;->access$302(Lcom/android/deskclock/data/SilentSettingsModel;Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;)Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;

    :cond_0
    return-void
.end method

.method protected onPostExecute(Lcom/android/deskclock/data/DataModel$SilentSetting;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;->this$0:Lcom/android/deskclock/data/SilentSettingsModel;

    invoke-static {v0}, Lcom/android/deskclock/data/SilentSettingsModel;->access$300(Lcom/android/deskclock/data/SilentSettingsModel;)Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;->this$0:Lcom/android/deskclock/data/SilentSettingsModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/deskclock/data/SilentSettingsModel;->access$302(Lcom/android/deskclock/data/SilentSettingsModel;Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;)Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;

    .line 176
    iget-object p0, p0, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;->this$0:Lcom/android/deskclock/data/SilentSettingsModel;

    invoke-static {p0, p1}, Lcom/android/deskclock/data/SilentSettingsModel;->access$400(Lcom/android/deskclock/data/SilentSettingsModel;Lcom/android/deskclock/data/DataModel$SilentSetting;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 149
    check-cast p1, Lcom/android/deskclock/data/DataModel$SilentSetting;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/SilentSettingsModel$CheckSilenceSettingsTask;->onPostExecute(Lcom/android/deskclock/data/DataModel$SilentSetting;)V

    return-void
.end method
