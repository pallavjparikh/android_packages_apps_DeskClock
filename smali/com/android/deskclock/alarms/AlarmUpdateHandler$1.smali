.class Lcom/android/deskclock/alarms/AlarmUpdateHandler$1;
.super Landroid/os/AsyncTask;
.source "AlarmUpdateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/alarms/AlarmUpdateHandler;->asyncAddAlarm(Lcom/android/deskclock/provider/Alarm;)V
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


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/AlarmUpdateHandler;Lcom/android/deskclock/provider/Alarm;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$1;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    iput-object p2, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$1;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/deskclock/provider/AlarmInstance;
    .locals 3

    .line 66
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$1;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    if-eqz p1, :cond_0

    const p1, 0x7f110174

    const v0, 0x7f1101e6

    .line 67
    invoke-static {p1, v0}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    .line 68
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$1;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->access$000(Lcom/android/deskclock/alarms/AlarmUpdateHandler;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$1;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    invoke-static {p1, v0}, Lcom/android/deskclock/provider/Alarm;->addAlarm(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/Alarm;

    .line 74
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$1;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->access$100(Lcom/android/deskclock/alarms/AlarmUpdateHandler;)Lcom/android/deskclock/alarms/ScrollHandler;

    move-result-object p1

    iget-wide v1, v0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-interface {p1, v1, v2}, Lcom/android/deskclock/alarms/ScrollHandler;->setSmoothScrollStableId(J)V

    .line 77
    iget-boolean p1, v0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    if-eqz p1, :cond_0

    .line 78
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$1;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    invoke-static {p0, v0}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->access$200(Lcom/android/deskclock/alarms/AlarmUpdateHandler;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler$1;->doInBackground([Ljava/lang/Void;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 87
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$1;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    .line 88
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->access$300(Lcom/android/deskclock/alarms/AlarmUpdateHandler;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 87
    invoke-static {p0, v0, v1}, Lcom/android/deskclock/AlarmUtils;->popAlarmSetSnackbar(Landroid/view/View;J)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p1, Lcom/android/deskclock/provider/AlarmInstance;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler$1;->onPostExecute(Lcom/android/deskclock/provider/AlarmInstance;)V

    return-void
.end method
