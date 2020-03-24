.class Lcom/android/deskclock/alarms/AlarmActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/alarms/AlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/alarms/AlarmActivity;


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/AlarmActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$1;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {}, Lcom/android/deskclock/alarms/AlarmActivity;->access$000()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "Received broadcast: %s"

    invoke-virtual {p2, v3, v1}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object p2, p0, Lcom/android/deskclock/alarms/AlarmActivity$1;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-static {p2}, Lcom/android/deskclock/alarms/AlarmActivity;->access$100(Lcom/android/deskclock/alarms/AlarmActivity;)Z

    move-result p2

    if-nez p2, :cond_7

    const/4 p2, -0x1

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, -0x2501dba7

    const/4 v4, 0x2

    if-eq v1, v3, :cond_2

    const v3, 0x3c67beb5

    if-eq v1, v3, :cond_1

    const v3, 0x62f7ea57

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.android.deskclock.ALARM_DISMISS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move p2, v0

    goto :goto_0

    :cond_1
    const-string v1, "com.android.deskclock.ALARM_DONE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move p2, v4

    goto :goto_0

    :cond_2
    const-string v1, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move p2, v2

    :cond_3
    :goto_0
    if-eqz p2, :cond_6

    if-eq p2, v0, :cond_5

    if-eq p2, v4, :cond_4

    .line 107
    invoke-static {}, Lcom/android/deskclock/alarms/AlarmActivity;->access$000()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "Unknown broadcast: %s"

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 104
    :cond_4
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmActivity$1;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 101
    :cond_5
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmActivity$1;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->access$300(Lcom/android/deskclock/alarms/AlarmActivity;)V

    goto :goto_1

    .line 98
    :cond_6
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmActivity$1;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->access$200(Lcom/android/deskclock/alarms/AlarmActivity;)V

    goto :goto_1

    .line 111
    :cond_7
    invoke-static {}, Lcom/android/deskclock/alarms/AlarmActivity;->access$000()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "Ignored broadcast: %s"

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
