.class Lcom/android/deskclock/AlarmInitReceiver$1;
.super Ljava/lang/Object;
.source "AlarmInitReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmInitReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmInitReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic val$wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmInitReceiver;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->this$0:Lcom/android/deskclock/AlarmInitReceiver;

    iput-object p2, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p4, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "AlarmInitReceiver finished"

    const/4 v1, 0x0

    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/deskclock/DeskClockBackupAgent;->processRestoredData(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/deskclock/alarms/AlarmStateManager;->fixAlarmInstances(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 150
    iget-object p0, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    new-array p0, v1, [Ljava/lang/Object;

    .line 151
    invoke-static {v0, p0}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v2

    .line 149
    iget-object v3, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v3}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 150
    iget-object p0, p0, Lcom/android/deskclock/AlarmInitReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    new-array p0, v1, [Ljava/lang/Object;

    .line 151
    invoke-static {v0, p0}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method
