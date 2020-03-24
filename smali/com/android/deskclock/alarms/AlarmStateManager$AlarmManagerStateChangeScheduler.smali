.class Lcom/android/deskclock/alarms/AlarmStateManager$AlarmManagerStateChangeScheduler;
.super Ljava/lang/Object;
.source "AlarmStateManager.java"

# interfaces
.implements Lcom/android/deskclock/alarms/AlarmStateManager$StateChangeScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/alarms/AlarmStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlarmManagerStateChangeScheduler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/alarms/AlarmStateManager$1;)V
    .locals 0

    .line 1034
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmStateManager$AlarmManagerStateChangeScheduler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelScheduledInstanceStateChange(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 2

    .line 1059
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Canceling instance "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " timers"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1062
    invoke-virtual {p2}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result p0

    const-string v0, "ALARM_MANAGER"

    const/4 v1, 0x0

    .line 1063
    invoke-static {p1, v0, p2, v1}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x20000000

    .line 1062
    invoke-static {p1, p0, p2, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p2, "alarm"

    .line 1067
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 1068
    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1069
    invoke-virtual {p0}, Landroid/app/PendingIntent;->cancel()V

    :cond_0
    return-void
.end method

.method public scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V
    .locals 6

    .line 1038
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    .line 1039
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p0, v3

    iget-wide v4, p3, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    .line 1040
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, p0, v4

    invoke-static {p1, p2}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v2, 0x3

    aput-object p2, p0, v2

    const-string p2, "Scheduling state change %d to instance %d at %s (%d)"

    .line 1039
    invoke-static {p2, p0}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1042
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "ALARM_MANAGER"

    invoke-static {p1, p2, p3, p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p2, 0x10000000

    .line 1044
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1045
    invoke-virtual {p3}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result p2

    const/high16 p3, 0x8000000

    invoke-static {p1, p2, p0, p3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p2, "alarm"

    .line 1048
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 1049
    invoke-static {}, Lcom/android/deskclock/Utils;->isMOrLater()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1051
    invoke-virtual {p1, v3, v0, v1, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1053
    :cond_0
    invoke-virtual {p1, v3, v0, v1, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method
