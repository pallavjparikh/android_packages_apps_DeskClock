.class public final Lcom/android/deskclock/alarms/AlarmStateManager;
.super Landroid/content/BroadcastReceiver;
.source "AlarmStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/alarms/AlarmStateManager$AlarmManagerStateChangeScheduler;,
        Lcom/android/deskclock/alarms/AlarmStateManager$StateChangeScheduler;,
        Lcom/android/deskclock/alarms/AlarmStateManager$CurrentTimeFactory;
    }
.end annotation


# static fields
.field private static sCurrentTimeFactory:Lcom/android/deskclock/alarms/AlarmStateManager$CurrentTimeFactory;

.field private static sStateChangeScheduler:Lcom/android/deskclock/alarms/AlarmStateManager$StateChangeScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 143
    new-instance v0, Lcom/android/deskclock/alarms/AlarmStateManager$AlarmManagerStateChangeScheduler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/deskclock/alarms/AlarmStateManager$AlarmManagerStateChangeScheduler;-><init>(Lcom/android/deskclock/alarms/AlarmStateManager$1;)V

    sput-object v0, Lcom/android/deskclock/alarms/AlarmStateManager;->sStateChangeScheduler:Lcom/android/deskclock/alarms/AlarmStateManager$StateChangeScheduler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static cancelPowerOffAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3

    .line 1024
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 1025
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1026
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-string p1, "time"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.qualcomm.qti.poweroffalarm"

    .line 1027
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static cancelScheduledInstanceStateChange(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 1

    .line 358
    sget-object v0, Lcom/android/deskclock/alarms/AlarmStateManager;->sStateChangeScheduler:Lcom/android/deskclock/alarms/AlarmStateManager$StateChangeScheduler;

    invoke-interface {v0, p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager$StateChangeScheduler;->cancelScheduledInstanceStateChange(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    return-void
.end method

.method public static createIndicatorIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 990
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/alarms/AlarmStateManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "indicator"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;
    .locals 3

    .line 328
    const-class v0, Lcom/android/deskclock/alarms/AlarmService;

    iget-wide v1, p2, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {p0, v0, v1, v2}, Lcom/android/deskclock/provider/AlarmInstance;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object p0

    const-string p2, "change_state"

    .line 329
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->getGlobalIntentId()I

    move-result p1

    const-string p2, "intent.extra.alarm.global.id"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_0

    .line 333
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "intent.extra.alarm.state"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method public static deleteAllInstances(Landroid/content/Context;J)V
    .locals 3

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting all instances of alarm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 776
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 777
    invoke-static {v0, p1, p2}, Lcom/android/deskclock/provider/AlarmInstance;->getInstancesByAlarmId(Landroid/content/ContentResolver;J)Ljava/util/List;

    move-result-object p1

    .line 778
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/deskclock/provider/AlarmInstance;

    .line 779
    invoke-static {p0, p2}, Lcom/android/deskclock/alarms/AlarmStateManager;->unregisterInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 780
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p2, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/provider/AlarmInstance;->deleteInstance(Landroid/content/ContentResolver;J)Z

    goto :goto_0

    .line 782
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateNextAlarm(Landroid/content/Context;)V

    return-void
.end method

.method public static deleteInstanceAndUpdateParent(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " and updating parent alarm."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->unregisterInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 621
    iget-object v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 622
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateParentAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 626
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/provider/AlarmInstance;->deleteInstance(Landroid/content/ContentResolver;J)Z

    .line 629
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateNextAlarm(Landroid/content/Context;)V

    return-void
.end method

.method public static fixAlarmInstances(Landroid/content/Context;)V
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Fixing alarm instances"

    .line 809
    invoke-static {v2, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 812
    invoke-static {}, Lcom/android/deskclock/alarms/AlarmStateManager;->getCurrentTime()Ljava/util/Calendar;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 817
    invoke-static {v1, v4, v3}, Lcom/android/deskclock/provider/AlarmInstance;->getInstances(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 819
    new-instance v4, Lcom/android/deskclock/alarms/AlarmStateManager$2;

    invoke-direct {v4}, Lcom/android/deskclock/alarms/AlarmStateManager$2;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 826
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/provider/AlarmInstance;

    .line 827
    iget-object v5, v4, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lcom/android/deskclock/provider/Alarm;->getAlarm(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/Alarm;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 829
    invoke-static {p0, v4}, Lcom/android/deskclock/alarms/AlarmStateManager;->unregisterInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 830
    iget-wide v7, v4, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {v1, v7, v8}, Lcom/android/deskclock/provider/AlarmInstance;->deleteInstance(Landroid/content/ContentResolver;J)Z

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v0

    const-string v4, "Found instance without matching alarm; deleting instance %s"

    .line 831
    invoke-static {v4, v5}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 834
    :cond_0
    invoke-virtual {v4}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/deskclock/provider/Alarm;->getPreviousAlarmTime(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v7

    .line 835
    invoke-virtual {v4}, Lcom/android/deskclock/provider/AlarmInstance;->getMissedTimeToLive()Ljava/util/Calendar;

    move-result-object v8

    .line 836
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 848
    :cond_1
    invoke-static {p0, v4, v0}, Lcom/android/deskclock/alarms/AlarmStateManager;->registerInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V

    goto :goto_0

    .line 837
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v7

    .line 838
    invoke-virtual {v5, v2}, Lcom/android/deskclock/provider/Alarm;->getNextAlarmTime(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v5

    const-string v8, "MM/dd/yyyy hh:mm a"

    .line 839
    invoke-static {v8, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 840
    invoke-static {v8, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v0

    aput-object v5, v8, v6

    const-string v5, "A time change has caused an existing alarm scheduled to fire at %s to be replaced by a new alarm scheduled to fire at %s"

    .line 841
    invoke-static {v5, v8}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 846
    invoke-static {p0, v4}, Lcom/android/deskclock/alarms/AlarmStateManager;->deleteInstanceAndUpdateParent(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 852
    :cond_3
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateNextAlarm(Landroid/content/Context;)V

    return-void
.end method

.method private static getCurrentTime()Ljava/util/Calendar;
    .locals 1

    .line 158
    sget-object v0, Lcom/android/deskclock/alarms/AlarmStateManager;->sCurrentTimeFactory:Lcom/android/deskclock/alarms/AlarmStateManager$CurrentTimeFactory;

    if-nez v0, :cond_0

    .line 159
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_0
    invoke-interface {v0}, Lcom/android/deskclock/alarms/AlarmStateManager$CurrentTimeFactory;->getCurrentTime()Ljava/util/Calendar;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getNextFiringAlarm(Landroid/content/Context;)Lcom/android/deskclock/provider/AlarmInstance;
    .locals 4

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "alarm_state<5"

    .line 201
    invoke-static {p0, v1, v0}, Lcom/android/deskclock/provider/AlarmInstance;->getInstances(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 204
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/provider/AlarmInstance;

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 920
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmStateManager received intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "change_state"

    .line 922
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_5

    .line 923
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 924
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 925
    invoke-static {v0}, Lcom/android/deskclock/provider/AlarmInstance;->getId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 924
    invoke-static {v1, v4, v5}, Lcom/android/deskclock/provider/AlarmInstance;->getInstance(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v1

    if-nez v1, :cond_0

    .line 927
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can not change state for unknown instance: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 931
    :cond_0
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getGlobalIntentId()I

    move-result v0

    const-string v4, "intent.extra.alarm.global.id"

    .line 932
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "intent.extra.alarm.state"

    .line 933
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "SNOOZE_TAG"

    const-string v6, "DISMISS_TAG"

    if-eq v4, v0, :cond_1

    .line 935
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IntentId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " GlobalId: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " AlarmState: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 938
    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 939
    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "Ignoring old Intent"

    .line 940
    invoke-static {p1, p0}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "intent.extra.from.notification"

    .line 945
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 946
    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    const v2, 0x7f1101e9

    if-eqz v0, :cond_2

    const p1, 0x7f110177

    .line 947
    invoke-static {p1, v2}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    goto :goto_0

    .line 948
    :cond_2
    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f110184

    .line 949
    invoke-static {p1, v2}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    :cond_3
    :goto_0
    if-ltz v3, :cond_4

    .line 954
    invoke-static {p0, v1, v3}, Lcom/android/deskclock/alarms/AlarmStateManager;->setAlarmState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;I)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    .line 956
    invoke-static {p0, v1, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->registerInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V

    goto :goto_2

    :cond_5
    const-string v1, "show_and_dismiss_alarm"

    .line 958
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 959
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 960
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 961
    invoke-static {v0}, Lcom/android/deskclock/provider/AlarmInstance;->getId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 960
    invoke-static {v1, v4, v5}, Lcom/android/deskclock/provider/AlarmInstance;->getInstance(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v0

    if-nez v0, :cond_7

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Null alarminstance for SHOW_AND_DISMISS"

    .line 964
    invoke-static {v1, v0}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "extra_notification_id"

    .line 966
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v3, :cond_6

    .line 968
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    :cond_6
    return-void

    .line 973
    :cond_7
    iget-object p1, v0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    if-nez p1, :cond_8

    const-wide/16 v1, -0x1

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 974
    :goto_1
    const-class p1, Lcom/android/deskclock/DeskClock;

    invoke-static {p0, p1, v1, v2}, Lcom/android/deskclock/provider/Alarm;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object p1

    const-string v3, "deskclock.scroll.to.alarm"

    .line 975
    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x10000000

    .line 976
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 979
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 981
    invoke-static {p0, v0}, Lcom/android/deskclock/alarms/AlarmStateManager;->deleteInstanceAndUpdateParent(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public static registerInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V
    .locals 12

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering instance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 676
    iget-object v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/deskclock/provider/Alarm;->getAlarm(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/Alarm;

    move-result-object v2

    .line 677
    invoke-static {}, Lcom/android/deskclock/alarms/AlarmStateManager;->getCurrentTime()Ljava/util/Calendar;

    move-result-object v3

    .line 678
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v4

    .line 679
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getTimeout()Ljava/util/Calendar;

    move-result-object v5

    .line 680
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getLowNotificationTime()Ljava/util/Calendar;

    move-result-object v6

    .line 681
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getHighNotificationTime()Ljava/util/Calendar;

    move-result-object v7

    .line 682
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getMissedTimeToLive()Ljava/util/Calendar;

    move-result-object v8

    .line 685
    iget v9, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    const/4 v10, 0x7

    if-ne v9, v10, :cond_0

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Alarm Instance is dismissed, but never deleted"

    .line 687
    invoke-static {v0, p2}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->deleteInstanceAndUpdateParent(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    return-void

    :cond_0
    const/4 v10, 0x1

    const/4 v11, 0x5

    if-ne v9, v11, :cond_2

    if-eqz v5, :cond_1

    .line 692
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v10

    :cond_1
    if-nez v1, :cond_6

    .line 694
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setFiredState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    return-void

    :cond_2
    const/4 v5, 0x6

    if-ne v9, v5, :cond_4

    .line 698
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 699
    iget-object v5, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    if-nez v5, :cond_3

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Cannot restore missed instance for one-time alarm"

    .line 700
    invoke-static {v0, p2}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->deleteInstanceAndUpdateParent(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    return-void

    .line 713
    :cond_3
    iput-boolean v10, v2, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 714
    invoke-static {v0, v2}, Lcom/android/deskclock/provider/Alarm;->updateAlarm(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/Alarm;)Z

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    if-ne v9, v0, :cond_6

    .line 717
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 718
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setPreDismissState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 720
    :cond_5
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->deleteInstanceAndUpdateParent(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    :goto_0
    return-void

    .line 726
    :cond_6
    :goto_1
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 728
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->deleteInstanceAndUpdateParent(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_2

    .line 729
    :cond_7
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 733
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 734
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xd

    const/16 v2, 0xf

    .line 735
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 736
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 737
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setFiredState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_2

    .line 739
    :cond_8
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setMissedState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_2

    .line 741
    :cond_9
    iget v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 744
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->showSnoozeNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 745
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, v0, p1, v11}, Lcom/android/deskclock/alarms/AlarmStateManager;->scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V

    goto :goto_2

    .line 747
    :cond_a
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 748
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setHighNotificationState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_2

    .line 749
    :cond_b
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 751
    iget v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 752
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setHideNotificationState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_2

    .line 754
    :cond_c
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setLowNotificationState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_2

    .line 758
    :cond_d
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setSilentState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    :goto_2
    if-eqz p2, :cond_e

    .line 763
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateNextAlarm(Landroid/content/Context;)V

    :cond_e
    return-void
.end method

.method private static scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V
    .locals 1

    .line 348
    sget-object v0, Lcom/android/deskclock/alarms/AlarmStateManager;->sStateChangeScheduler:Lcom/android/deskclock/alarms/AlarmStateManager$StateChangeScheduler;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/deskclock/alarms/AlarmStateManager$StateChangeScheduler;->scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V

    return-void
.end method

.method private static setAlarmState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    .line 864
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "Null alarm instance while setting state to %d"

    invoke-static {p1, p0}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 896
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Trying to change to unknown alarm state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 890
    :pswitch_0
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setPreDismissState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 893
    :pswitch_1
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->deleteInstanceAndUpdateParent(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 887
    :pswitch_2
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setMissedState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 881
    :pswitch_3
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setFiredState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 884
    :pswitch_4
    invoke-static {p0, p1, v1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setSnoozeState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V

    goto :goto_0

    .line 878
    :pswitch_5
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setHighNotificationState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 875
    :pswitch_6
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setHideNotificationState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 872
    :pswitch_7
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setLowNotificationState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 869
    :pswitch_8
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setSilentState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setDismissState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting dismissed state to instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 600
    iput v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 601
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 602
    invoke-static {v0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 604
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->cancelPowerOffAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    return-void
.end method

.method public static setFiredState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 9

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting fire state to instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v0, 0x5

    .line 463
    iput v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 464
    invoke-static {v4, p1}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 466
    iget-object v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/android/deskclock/provider/AlarmInstance;->deleteOtherInstances(Landroid/content/Context;Landroid/content/ContentResolver;JJ)V

    :cond_0
    const v0, 0x7f11017b

    .line 473
    invoke-static {v0, v1}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    .line 475
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getTimeout()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    .line 477
    invoke-static {p0, v0, p1, v1}, Lcom/android/deskclock/alarms/AlarmStateManager;->scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V

    .line 481
    :cond_1
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateNextAlarm(Landroid/content/Context;)V

    return-void
.end method

.method public static setHideNotificationState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting hide notification state to instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    .line 419
    iput v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 420
    invoke-static {v0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 423
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->clearNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 424
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getHighNotificationTime()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, p1, v1}, Lcom/android/deskclock/alarms/AlarmStateManager;->scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V

    return-void
.end method

.method public static setHighNotificationState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting high notification state to instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x3

    .line 441
    iput v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 442
    invoke-static {v0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 445
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->showHighPriorityNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 446
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p0, v0, p1, v1}, Lcom/android/deskclock/alarms/AlarmStateManager;->scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V

    return-void
.end method

.method public static setLowNotificationState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting low notification state to instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    .line 397
    iput v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 398
    invoke-static {v0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 401
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->showLowPriorityNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 402
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getHighNotificationTime()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, p1, v1}, Lcom/android/deskclock/alarms/AlarmStateManager;->scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V

    return-void
.end method

.method public static setMissedState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting missed state to instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmService;->stopAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 547
    iget-object v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 548
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateParentAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 552
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x6

    .line 553
    iput v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 554
    invoke-static {v0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 557
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->showMissedNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 558
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getMissedTimeToLive()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {p0, v0, p1, v1}, Lcom/android/deskclock/alarms/AlarmStateManager;->scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V

    .line 561
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->cancelPowerOffAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 563
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateNextAlarm(Landroid/content/Context;)V

    return-void
.end method

.method private static setPowerOffAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set next power off alarm : instance id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1016
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.poweroffalarm.action.SET_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 1017
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.qualcomm.qti.poweroffalarm"

    .line 1018
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1019
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-string p1, "time"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1020
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setPreDismissState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting predismissed state to instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x8

    .line 578
    iput v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 579
    invoke-static {v0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 582
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->clearNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 583
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {p0, v0, p1, v1}, Lcom/android/deskclock/alarms/AlarmStateManager;->scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V

    .line 587
    iget-object v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 588
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateParentAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 591
    :cond_0
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->cancelPowerOffAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 592
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateNextAlarm(Landroid/content/Context;)V

    return-void
.end method

.method public static setSilentState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting silent state to instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 375
    iput v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 376
    invoke-static {v0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 379
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->clearNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 380
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getLowNotificationTime()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/deskclock/alarms/AlarmStateManager;->scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V

    return-void
.end method

.method public static setSnoozeState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V
    .locals 5

    .line 495
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmService;->stopAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 498
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getSnoozeLength()I

    move-result v0

    .line 499
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    .line 500
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting snoozed state to instance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-static {p0, v1}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 503
    invoke-static {v2, v3}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    invoke-virtual {p1, v1}, Lcom/android/deskclock/provider/AlarmInstance;->setAlarmTime(Ljava/util/Calendar;)V

    const/4 v1, 0x4

    .line 506
    iput v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 507
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 510
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->showSnoozeNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 511
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p0, v1, p1, v2}, Lcom/android/deskclock/alarms/AlarmStateManager;->scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V

    if-eqz p2, :cond_0

    .line 516
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 517
    new-instance p2, Lcom/android/deskclock/alarms/AlarmStateManager$1;

    invoke-direct {p2, p0, v0}, Lcom/android/deskclock/alarms/AlarmStateManager$1;-><init>(Landroid/content/Context;I)V

    .line 526
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 530
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateNextAlarm(Landroid/content/Context;)V

    return-void
.end method

.method public static unregisterInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregistering instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 642
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmService;->stopAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 643
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->clearNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 644
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->cancelScheduledInstanceStateChange(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 645
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setDismissState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    return-void
.end method

.method private static updateNextAlarm(Landroid/content/Context;)V
    .locals 2

    .line 179
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->getNextFiringAlarm(Landroid/content/Context;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {p0, v0}, Lcom/android/deskclock/alarms/AlarmStateManager;->setPowerOffAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 185
    :cond_0
    invoke-static {}, Lcom/android/deskclock/Utils;->isPreL()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-static {p0, v0}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateNextAlarmInSystemSettings(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-static {p0, v0}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateNextAlarmInAlarmManager(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    :goto_0
    return-void
.end method

.method private static updateNextAlarmInAlarmManager(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "alarm"

    .line 247
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/high16 v2, 0x20000000

    goto :goto_0

    :cond_0
    move v2, v1

    .line 251
    :goto_0
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->createIndicatorIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    .line 250
    invoke-static {p0, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz p1, :cond_1

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting upcoming AlarmClockInfo for alarm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 258
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v1

    .line 259
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->createViewAlarmIntent(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v5, 0x8000000

    .line 258
    invoke-static {p0, v1, p1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 262
    new-instance p1, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-direct {p1, v3, v4, p0}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    .line 263
    invoke-static {v0, p1, v2}, Lcom/android/deskclock/Utils;->updateNextAlarm(Landroid/app/AlarmManager;Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "Canceling upcoming AlarmClockInfo"

    .line 265
    invoke-static {p1, p0}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static updateNextAlarmInSystemSettings(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const/16 v0, 0x27

    .line 226
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated next alarm time to: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.deskclock.ALARM_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to update next alarm to: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private static updateParentAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 6

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 279
    iget-object v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/provider/Alarm;->getAlarm(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/Alarm;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 281
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parent has been deleted with instance: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 285
    :cond_0
    iget-object v3, v1, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-virtual {v3}, Lcom/android/deskclock/data/Weekdays;->isRepeating()Z

    move-result v3

    if-nez v3, :cond_2

    .line 286
    iget-boolean p0, v1, Lcom/android/deskclock/provider/Alarm;->deleteAfterUse:Z

    if-eqz p0, :cond_1

    .line 287
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Deleting parent alarm: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    iget-wide p0, v1, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v0, p0, p1}, Lcom/android/deskclock/provider/Alarm;->deleteAlarm(Landroid/content/ContentResolver;J)Z

    goto :goto_0

    .line 290
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Disabling parent alarm: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    iput-boolean v2, v1, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 292
    invoke-static {v0, v1}, Lcom/android/deskclock/provider/Alarm;->updateAlarm(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/Alarm;)Z

    goto :goto_0

    .line 298
    :cond_2
    invoke-static {}, Lcom/android/deskclock/alarms/AlarmStateManager;->getCurrentTime()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/deskclock/provider/Alarm;->createInstanceAfter(Ljava/util/Calendar;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v3

    .line 299
    iget v4, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    const/4 v5, 0x5

    if-le v4, v5, :cond_3

    .line 300
    invoke-virtual {v3}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 301
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/deskclock/provider/Alarm;->createInstanceAfter(Ljava/util/Calendar;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v3

    .line 304
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating new instance for repeating alarm "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v3}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    .line 304
    invoke-static {p1, v1}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    invoke-static {v0, v3}, Lcom/android/deskclock/provider/AlarmInstance;->addInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Lcom/android/deskclock/provider/AlarmInstance;

    const/4 p1, 0x1

    .line 307
    invoke-static {p0, v3, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->registerInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 902
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "indicator"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 906
    :cond_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v5

    .line 907
    invoke-static {p1}, Lcom/android/deskclock/AlarmAlertWakeLock;->createPartialWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    .line 908
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 909
    new-instance v0, Lcom/android/deskclock/alarms/AlarmStateManager$3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/deskclock/alarms/AlarmStateManager$3;-><init>(Lcom/android/deskclock/alarms/AlarmStateManager;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Landroid/os/PowerManager$WakeLock;)V

    invoke-static {v0}, Lcom/android/deskclock/AsyncHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method
