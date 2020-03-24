.class Lcom/android/deskclock/FetchMatchingAlarmsAction;
.super Ljava/lang/Object;
.source "FetchMatchingAlarmsAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAlarms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/provider/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private final mMatchingAlarms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/provider/Alarm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/deskclock/provider/Alarm;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    .line 52
    iput-object p1, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mAlarms:Ljava/util/List;

    .line 55
    iput-object p3, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mIntent:Landroid/content/Intent;

    .line 56
    iput-object p4, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private getAlarmsByHourMinutes(IILandroid/content/ContentResolver;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/deskclock/provider/Alarm;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x3

    new-array v0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "hour"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "minutes"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "enabled"

    aput-object v4, v0, v3

    const-string v4, "%s=? AND %s=? AND %s=?"

    .line 164
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array p0, p0, [Ljava/lang/String;

    .line 166
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "1"

    aput-object p1, p0, v3

    .line 167
    invoke-static {p3, v0, p0}, Lcom/android/deskclock/provider/Alarm;->getAlarms(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private notifyFailureAndLog(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 175
    invoke-static {p1, p0}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/deskclock/controller/Controller;->notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMatchingAlarms()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/provider/Alarm;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object p0, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    return-object p0
.end method

.method public run()V
    .locals 10

    .line 61
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceNotMainLooper()V

    .line 63
    iget-object v0, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.alarm.SEARCH_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    iget-object p0, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mAlarms:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "android.all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_1

    :sswitch_1
    const-string v2, "android.time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_1

    :sswitch_2
    const-string v2, "android.next"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_1

    :sswitch_3
    const-string v2, "android.label"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    const/16 v2, 0xc

    if-eqz v0, :cond_c

    if-eq v0, v7, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_2

    goto/16 :goto_b

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.alarm.MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mContext:Landroid/content/Context;

    const v1, 0x7f110211

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/FetchMatchingAlarmsAction;->notifyFailureAndLog(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mAlarms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/provider/Alarm;

    .line 148
    iget-object v3, v2, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 149
    iget-object v3, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 154
    iget-object v0, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mContext:Landroid/content/Context;

    const v1, 0x7f11020e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/FetchMatchingAlarmsAction;->notifyFailureAndLog(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    iget-object p0, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mAlarms:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_b

    .line 107
    :cond_7
    iget-object v0, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mAlarms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/provider/Alarm;

    .line 108
    iget-wide v4, v3, Lcom/android/deskclock/provider/Alarm;->id:J

    .line 109
    invoke-static {v1, v4, v5}, Lcom/android/deskclock/provider/AlarmInstance;->getNextUpcomingInstanceByAlarmId(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 110
    iget v4, v4, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_8

    .line 112
    iget-object v4, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 115
    :cond_9
    iget-object v0, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 120
    :cond_a
    iget-object v0, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/deskclock/alarms/AlarmStateManager;->getNextFiringAlarm(Landroid/content/Context;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v0

    if-nez v0, :cond_b

    .line 122
    iget-object v0, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mContext:Landroid/content/Context;

    const v1, 0x7f110212

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/FetchMatchingAlarmsAction;->notifyFailureAndLog(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 128
    :cond_b
    invoke-virtual {v0}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v0

    const/16 v3, 0xb

    .line 130
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 129
    invoke-direct {p0, v3, v0, v1}, Lcom/android/deskclock/FetchMatchingAlarmsAction;->getAlarmsByHourMinutes(IILandroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v0

    .line 132
    iget-object p0, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_b

    .line 74
    :cond_c
    iget-object v0, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.alarm.HOUR"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.alarm.MINUTES"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 77
    iget-object v3, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v8, "android.intent.extra.alarm.IS_PM"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_d

    if-le v0, v2, :cond_d

    .line 78
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_d

    move v8, v7

    goto :goto_4

    :cond_d
    move v8, v6

    :goto_4
    if-ltz v0, :cond_f

    const/16 v9, 0x17

    if-le v0, v9, :cond_e

    goto :goto_5

    :cond_e
    move v9, v6

    goto :goto_6

    :cond_f
    :goto_5
    move v9, v7

    :goto_6
    or-int/2addr v8, v9

    if-ltz v1, :cond_11

    const/16 v9, 0x3b

    if-le v1, v9, :cond_10

    goto :goto_7

    :cond_10
    move v9, v6

    goto :goto_8

    :cond_11
    :goto_7
    move v9, v7

    :goto_8
    or-int/2addr v8, v9

    if-eqz v8, :cond_14

    .line 83
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    if-nez v3, :cond_12

    const-string v2, ""

    goto :goto_9

    .line 84
    :cond_12
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_13

    aget-object v2, v2, v7

    goto :goto_9

    :cond_13
    aget-object v2, v2, v6

    .line 85
    :goto_9
    iget-object v3, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mContext:Landroid/content/Context;

    const v8, 0x7f1101e1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    aput-object v2, v4, v5

    invoke-virtual {v3, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/FetchMatchingAlarmsAction;->notifyFailureAndLog(Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 91
    :cond_14
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    if-ge v0, v2, :cond_15

    add-int/lit8 v0, v0, 0xc

    .line 94
    :cond_15
    iget-object v2, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mAlarms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/provider/Alarm;

    .line 95
    iget v4, v3, Lcom/android/deskclock/provider/Alarm;->hour:I

    if-ne v4, v0, :cond_16

    iget v4, v3, Lcom/android/deskclock/provider/Alarm;->minutes:I

    if-ne v4, v1, :cond_16

    .line 96
    iget-object v4, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 99
    :cond_17
    iget-object v2, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mMatchingAlarms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 100
    iget-object v2, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mContext:Landroid/content/Context;

    const v3, 0x7f11020b

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/android/deskclock/FetchMatchingAlarmsAction;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/FetchMatchingAlarmsAction;->notifyFailureAndLog(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_18
    :goto_b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7c662d4b -> :sswitch_3
        -0x3dd0c4ee -> :sswitch_2
        -0x3dcdfd14 -> :sswitch_1
        0x37cfc9a2 -> :sswitch_0
    .end sparse-switch
.end method
