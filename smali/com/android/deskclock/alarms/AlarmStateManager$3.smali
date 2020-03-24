.class Lcom/android/deskclock/alarms/AlarmStateManager$3;
.super Ljava/lang/Object;
.source "AlarmStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/alarms/AlarmStateManager;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/alarms/AlarmStateManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic val$wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/AlarmStateManager;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .line 909
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmStateManager$3;->this$0:Lcom/android/deskclock/alarms/AlarmStateManager;

    iput-object p2, p0, Lcom/android/deskclock/alarms/AlarmStateManager$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/deskclock/alarms/AlarmStateManager$3;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/deskclock/alarms/AlarmStateManager$3;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p5, p0, Lcom/android/deskclock/alarms/AlarmStateManager$3;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 912
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmStateManager$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmStateManager$3;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/deskclock/alarms/AlarmStateManager;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 913
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmStateManager$3;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 914
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmStateManager$3;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method
