.class Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;
.super Landroid/os/AsyncTask;
.source "AlarmUpdateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/alarms/AlarmUpdateHandler;->asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;ZZ)V
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
        "Lcom/android/deskclock/provider/AlarmInstance;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

.field final synthetic val$alarm:Lcom/android/deskclock/provider/Alarm;

.field final synthetic val$minorUpdate:Z

.field final synthetic val$popToast:Z


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/AlarmUpdateHandler;Lcom/android/deskclock/provider/Alarm;ZZ)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    iput-object p2, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iput-boolean p3, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;->val$minorUpdate:Z

    iput-boolean p4, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;->val$popToast:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/deskclock/provider/AlarmInstance;
    .locals 5

    .line 108
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->access$000(Lcom/android/deskclock/alarms/AlarmUpdateHandler;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    invoke-static {p1, v0}, Lcom/android/deskclock/provider/Alarm;->updateAlarm(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/Alarm;)Z

    .line 113
    iget-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;->val$minorUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v2, v0, Lcom/android/deskclock/provider/Alarm;->id:J

    .line 116
    invoke-static {p1, v2, v3}, Lcom/android/deskclock/provider/AlarmInstance;->getInstancesByAlarmId(Landroid/content/ContentResolver;J)Ljava/util/List;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/provider/AlarmInstance;

    .line 119
    new-instance v3, Lcom/android/deskclock/provider/AlarmInstance;

    invoke-direct {v3, v2}, Lcom/android/deskclock/provider/AlarmInstance;-><init>(Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 122
    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-boolean v4, v2, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    iput-boolean v4, v3, Lcom/android/deskclock/provider/AlarmInstance;->mVibrate:Z

    .line 123
    iget-object v4, v2, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    iput-object v4, v3, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    .line 124
    iget-object v2, v2, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    iput-object v2, v3, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    .line 128
    invoke-static {p1, v3}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 130
    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    invoke-static {v2}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->access$000(Lcom/android/deskclock/alarms/AlarmUpdateHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/deskclock/alarms/AlarmNotifications;->updateNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    :cond_0
    return-object v1

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->access$000(Lcom/android/deskclock/alarms/AlarmUpdateHandler;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v2, v0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {p1, v2, v3}, Lcom/android/deskclock/alarms/AlarmStateManager;->deleteAllInstances(Landroid/content/Context;J)V

    .line 137
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-boolean v0, p1, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->access$200(Lcom/android/deskclock/alarms/AlarmUpdateHandler;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;->doInBackground([Ljava/lang/Void;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 2

    .line 142
    iget-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;->val$popToast:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 143
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    .line 144
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->access$300(Lcom/android/deskclock/alarms/AlarmUpdateHandler;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 143
    invoke-static {p0, v0, v1}, Lcom/android/deskclock/AlarmUtils;->popAlarmSetSnackbar(Landroid/view/View;J)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 105
    check-cast p1, Lcom/android/deskclock/provider/AlarmInstance;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;->onPostExecute(Lcom/android/deskclock/provider/AlarmInstance;)V

    return-void
.end method
