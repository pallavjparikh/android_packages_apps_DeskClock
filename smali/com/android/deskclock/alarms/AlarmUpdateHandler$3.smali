.class Lcom/android/deskclock/alarms/AlarmUpdateHandler$3;
.super Landroid/os/AsyncTask;
.source "AlarmUpdateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/alarms/AlarmUpdateHandler;->asyncDeleteAlarm(Lcom/android/deskclock/provider/Alarm;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

.field final synthetic val$alarm:Lcom/android/deskclock/provider/Alarm;


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/AlarmUpdateHandler;Lcom/android/deskclock/provider/Alarm;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$3;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    iput-object p2, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$3;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 161
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$3;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 163
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$3;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->access$000(Lcom/android/deskclock/alarms/AlarmUpdateHandler;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$3;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v0, v0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {p1, v0, v1}, Lcom/android/deskclock/alarms/AlarmStateManager;->deleteAllInstances(Landroid/content/Context;J)V

    .line 166
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$3;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->access$000(Lcom/android/deskclock/alarms/AlarmUpdateHandler;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$3;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v0, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {p1, v0, v1}, Lcom/android/deskclock/provider/Alarm;->deleteAlarm(Landroid/content/ContentResolver;J)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 157
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$3;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$3;->val$alarm:Lcom/android/deskclock/provider/Alarm;

    invoke-static {p1, v0}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->access$402(Lcom/android/deskclock/alarms/AlarmUpdateHandler;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/Alarm;

    .line 173
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$3;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->access$500(Lcom/android/deskclock/alarms/AlarmUpdateHandler;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 157
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
