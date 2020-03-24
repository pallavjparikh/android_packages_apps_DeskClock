.class Lcom/android/deskclock/alarms/AlarmService$1;
.super Landroid/content/BroadcastReceiver;
.source "AlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/alarms/AlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/alarms/AlarmService;


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/AlarmService;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmService$1;->this$0:Lcom/android/deskclock/alarms/AlarmService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v3, "AlarmService received intent %s"

    .line 164
    invoke-static {v3, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmService$1;->this$0:Lcom/android/deskclock/alarms/AlarmService;

    invoke-static {v1}, Lcom/android/deskclock/alarms/AlarmService;->access$100(Lcom/android/deskclock/alarms/AlarmService;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmService$1;->this$0:Lcom/android/deskclock/alarms/AlarmService;

    invoke-static {v1}, Lcom/android/deskclock/alarms/AlarmService;->access$100(Lcom/android/deskclock/alarms/AlarmService;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v1

    iget v1, v1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    goto :goto_2

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmService$1;->this$0:Lcom/android/deskclock/alarms/AlarmService;

    invoke-static {v1}, Lcom/android/deskclock/alarms/AlarmService;->access$200(Lcom/android/deskclock/alarms/AlarmService;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "AlarmActivity bound; AlarmService no-op"

    .line 171
    invoke-static {p1, p0}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v1, -0x1

    .line 175
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x2501dba7

    if-eq v3, v4, :cond_3

    const v2, 0x62f7ea57

    if-eq v3, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "com.android.deskclock.ALARM_DISMISS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move v1, v0

    goto :goto_0

    :cond_3
    const-string v3, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move v1, v2

    :cond_4
    :goto_0
    const p2, 0x7f1101e8

    if-eqz v1, :cond_6

    if-eq v1, v0, :cond_5

    goto :goto_1

    .line 185
    :cond_5
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmService$1;->this$0:Lcom/android/deskclock/alarms/AlarmService;

    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmService;->access$100(Lcom/android/deskclock/alarms/AlarmService;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->deleteInstanceAndUpdateParent(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    const p0, 0x7f110177

    .line 186
    invoke-static {p0, p2}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    goto :goto_1

    .line 180
    :cond_6
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmService$1;->this$0:Lcom/android/deskclock/alarms/AlarmService;

    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmService;->access$100(Lcom/android/deskclock/alarms/AlarmService;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/android/deskclock/alarms/AlarmStateManager;->setSnoozeState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V

    const p0, 0x7f110184

    .line 181
    invoke-static {p0, p2}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    :goto_1
    return-void

    :cond_7
    :goto_2
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "No valid firing alarm"

    .line 166
    invoke-static {p1, p0}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
