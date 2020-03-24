.class Lcom/android/deskclock/ringtone/RingtonePickerActivity$2;
.super Landroid/os/AsyncTask;
.source "RingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/ringtone/RingtonePickerActivity;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/deskclock/provider/Alarm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$2;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    iput-object p2, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$2;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/deskclock/provider/Alarm;
    .locals 2

    .line 237
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$2;->val$cr:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$2;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->access$200(Lcom/android/deskclock/ringtone/RingtonePickerActivity;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/deskclock/provider/Alarm;->getAlarm(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/Alarm;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 239
    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$2;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-static {p0}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->access$300(Lcom/android/deskclock/ringtone/RingtonePickerActivity;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, p1, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    :cond_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 234
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity$2;->doInBackground([Ljava/lang/Void;)Lcom/android/deskclock/provider/Alarm;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/deskclock/provider/Alarm;)V
    .locals 2

    .line 247
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    iget-object v1, p1, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/data/DataModel;->setDefaultAlarmRingtoneUri(Landroid/net/Uri;)V

    .line 250
    new-instance v0, Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$2;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;-><init>(Landroid/content/Context;Lcom/android/deskclock/alarms/ScrollHandler;Landroid/view/ViewGroup;)V

    const/4 p0, 0x0

    const/4 v1, 0x1

    .line 251
    invoke-virtual {v0, p1, p0, v1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;ZZ)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 234
    check-cast p1, Lcom/android/deskclock/provider/Alarm;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity$2;->onPostExecute(Lcom/android/deskclock/provider/Alarm;)V

    return-void
.end method
