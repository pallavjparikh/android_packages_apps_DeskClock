.class public Lcom/android/deskclock/AlarmAlertWakeLock;
.super Ljava/lang/Object;
.source "AlarmAlertWakeLock.java"


# static fields
.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 1

    .line 37
    sget-object v0, Lcom/android/deskclock/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/AlarmAlertWakeLock;->createPartialWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    sput-object p0, Lcom/android/deskclock/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 42
    sget-object p0, Lcom/android/deskclock/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public static acquireScreenCpuWakeLock(Landroid/content/Context;)V
    .locals 2

    .line 46
    sget-object v0, Lcom/android/deskclock/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "power"

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const v0, 0x30000001

    const-string v1, "AlarmAlertWakeLock"

    .line 50
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    sput-object p0, Lcom/android/deskclock/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 52
    sget-object p0, Lcom/android/deskclock/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public static createPartialWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 2

    const-string v0, "power"

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "AlarmAlertWakeLock"

    .line 33
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    return-object p0
.end method

.method public static releaseCpuLock()V
    .locals 1

    .line 56
    sget-object v0, Lcom/android/deskclock/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/android/deskclock/AlarmAlertWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method
