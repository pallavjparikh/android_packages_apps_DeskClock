.class public final Lcom/android/deskclock/alarms/AlarmTimeClickHandler;
.super Ljava/lang/Object;
.source "AlarmTimeClickHandler.java"


# static fields
.field private static final LOGGER:Lcom/android/deskclock/LogUtils$Logger;


# instance fields
.field private final mAlarmUpdateHandler:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroid/app/Fragment;

.field private mPreviousDaysOfWeekMap:Landroid/os/Bundle;

.field private final mScrollHandler:Lcom/android/deskclock/alarms/ScrollHandler;

.field private mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/android/deskclock/LogUtils$Logger;

    const-string v1, "AlarmTimeClickHandler"

    invoke-direct {v0, v1}, Lcom/android/deskclock/LogUtils$Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Landroid/os/Bundle;Lcom/android/deskclock/alarms/AlarmUpdateHandler;Lcom/android/deskclock/alarms/ScrollHandler;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mFragment:Landroid/app/Fragment;

    .line 59
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mContext:Landroid/content/Context;

    .line 60
    iput-object p3, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mAlarmUpdateHandler:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    .line 61
    iput-object p4, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mScrollHandler:Lcom/android/deskclock/alarms/ScrollHandler;

    if-eqz p2, :cond_0

    const-string p1, "previousDayMap"

    .line 63
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;

    if-nez p1, :cond_1

    .line 66
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;

    :cond_1
    return-void
.end method


# virtual methods
.method public dismissAlarmInstance(Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mContext:Landroid/content/Context;

    const/16 v1, 0x8

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DISMISS_TAG"

    .line 165
    invoke-static {v0, v2, p1, v1}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 169
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mAlarmUpdateHandler:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->showPredismissToast(Lcom/android/deskclock/provider/AlarmInstance;)V

    return-void
.end method

.method public onClockClicked(Lcom/android/deskclock/provider/Alarm;)V
    .locals 2

    .line 159
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    const v0, 0x7f110182

    const v1, 0x7f1101e6

    .line 160
    invoke-static {v0, v1}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    .line 161
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mFragment:Landroid/app/Fragment;

    iget v0, p1, Lcom/android/deskclock/provider/Alarm;->hour:I

    iget p1, p1, Lcom/android/deskclock/provider/Alarm;->minutes:I

    invoke-static {p0, v0, p1}, Lcom/android/deskclock/alarms/TimePickerDialogFragment;->show(Landroid/app/Fragment;II)V

    return-void
.end method

.method public onDeleteClicked(Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mFragment:Landroid/app/Fragment;

    instance-of v1, v0, Lcom/android/deskclock/AlarmClockFragment;

    if-eqz v1, :cond_0

    .line 150
    check-cast v0, Lcom/android/deskclock/AlarmClockFragment;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/AlarmClockFragment;->removeItem(Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;)V

    .line 152
    :cond_0
    iget-object p1, p1, Lcom/android/deskclock/ItemAdapter$ItemHolder;->item:Ljava/lang/Object;

    check-cast p1, Lcom/android/deskclock/provider/Alarm;

    const v0, 0x7f110175

    const v1, 0x7f1101e6

    .line 153
    invoke-static {v0, v1}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    .line 154
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mAlarmUpdateHandler:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->asyncDeleteAlarm(Lcom/android/deskclock/provider/Alarm;)V

    .line 155
    sget-object p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Deleting alarm."

    invoke-virtual {p0, v0, p1}, Lcom/android/deskclock/LogUtils$Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onEditLabelClicked(Lcom/android/deskclock/provider/Alarm;)V
    .locals 2

    const v0, 0x7f110180

    const v1, 0x7f1101e6

    .line 182
    invoke-static {v0, v1}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    .line 183
    iget-object v0, p1, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mFragment:Landroid/app/Fragment;

    .line 184
    invoke-virtual {v1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/deskclock/LabelDialogFragment;->newInstance(Lcom/android/deskclock/provider/Alarm;Ljava/lang/String;Ljava/lang/String;)Lcom/android/deskclock/LabelDialogFragment;

    move-result-object p1

    .line 185
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/deskclock/LabelDialogFragment;->show(Landroid/app/FragmentManager;Lcom/android/deskclock/LabelDialogFragment;)V

    return-void
.end method

.method public onRingtoneClicked(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)V
    .locals 1

    .line 173
    iput-object p2, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    const p0, 0x7f110181

    const v0, 0x7f1101e6

    .line 174
    invoke-static {p0, v0}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    .line 177
    invoke-static {p1, p2}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->createAlarmRingtonePickerIntent(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)Landroid/content/Intent;

    move-result-object p0

    .line 178
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onTimeSet(II)V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/android/deskclock/provider/Alarm;

    invoke-direct {v0}, Lcom/android/deskclock/provider/Alarm;-><init>()V

    .line 192
    iput p1, v0, Lcom/android/deskclock/provider/Alarm;->hour:I

    .line 193
    iput p2, v0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    .line 194
    iput-boolean v1, v0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 195
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mAlarmUpdateHandler:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->asyncAddAlarm(Lcom/android/deskclock/provider/Alarm;)V

    goto :goto_0

    .line 197
    :cond_0
    iput p1, v0, Lcom/android/deskclock/provider/Alarm;->hour:I

    .line 198
    iput p2, v0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    .line 199
    iput-boolean v1, v0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 200
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mScrollHandler:Lcom/android/deskclock/alarms/ScrollHandler;

    iget-wide v2, v0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-interface {p1, v2, v3}, Lcom/android/deskclock/alarms/ScrollHandler;->setSmoothScrollStableId(J)V

    .line 201
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mAlarmUpdateHandler:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    iget-object p2, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;ZZ)V

    const/4 p1, 0x0

    .line 202
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    :goto_0
    return-void
.end method

.method public saveInstance(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;

    const-string v0, "previousDayMap"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setAlarmEnabled(Lcom/android/deskclock/provider/Alarm;Z)V
    .locals 2

    .line 79
    iget-boolean v0, p1, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    if-eq p2, v0, :cond_1

    .line 80
    iput-boolean p2, p1, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    if-eqz p2, :cond_0

    const v0, 0x7f110178

    goto :goto_0

    :cond_0
    const v0, 0x7f110176

    :goto_0
    const v1, 0x7f1101e6

    .line 81
    invoke-static {v0, v1}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    .line 83
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mAlarmUpdateHandler:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    iget-boolean v0, p1, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;ZZ)V

    .line 84
    sget-object p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updating alarm enabled state to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/LogUtils$Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setAlarmRepeatEnabled(Lcom/android/deskclock/provider/Alarm;Z)V
    .locals 4

    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Lcom/android/deskclock/provider/Alarm;->getNextAlarmTime(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 108
    iget-wide v2, p1, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 113
    iget-object p2, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 114
    invoke-static {p2}, Lcom/android/deskclock/data/Weekdays;->fromBits(I)Lcom/android/deskclock/data/Weekdays;

    move-result-object p2

    iput-object p2, p1, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    .line 115
    iget-object p2, p1, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-virtual {p2}, Lcom/android/deskclock/data/Weekdays;->isRepeating()Z

    move-result p2

    if-nez p2, :cond_1

    .line 116
    sget-object p2, Lcom/android/deskclock/data/Weekdays;->ALL:Lcom/android/deskclock/data/Weekdays;

    iput-object p2, p1, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    goto :goto_0

    .line 120
    :cond_0
    iget-object p2, p1, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-virtual {p2}, Lcom/android/deskclock/data/Weekdays;->getBits()I

    move-result p2

    .line 121
    iget-object v3, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mPreviousDaysOfWeekMap:Landroid/os/Bundle;

    invoke-virtual {v3, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    sget-object p2, Lcom/android/deskclock/data/Weekdays;->NONE:Lcom/android/deskclock/data/Weekdays;

    iput-object p2, p1, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    .line 128
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/deskclock/provider/Alarm;->getNextAlarmTime(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p2

    .line 129
    invoke-virtual {v1, p2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const v0, 0x7f110187

    const v1, 0x7f1101e6

    .line 131
    invoke-static {v0, v1}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    .line 132
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mAlarmUpdateHandler:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;ZZ)V

    return-void
.end method

.method public setAlarmVibrationEnabled(Lcom/android/deskclock/provider/Alarm;Z)V
    .locals 3

    .line 89
    iget-boolean v0, p1, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    if-eq p2, v0, :cond_0

    .line 90
    iput-boolean p2, p1, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    const v0, 0x7f110188

    const v1, 0x7f1101e6

    .line 91
    invoke-static {v0, v1}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    .line 92
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mAlarmUpdateHandler:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;ZZ)V

    .line 93
    sget-object p1, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating vibrate state to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/android/deskclock/LogUtils$Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 97
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mContext:Landroid/content/Context;

    const-string p1, "vibrator"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 98
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x12c

    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method

.method public setDayOfWeekEnabled(Lcom/android/deskclock/provider/Alarm;ZI)V
    .locals 3

    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 137
    invoke-virtual {p1, v0}, Lcom/android/deskclock/provider/Alarm;->getNextAlarmTime(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 139
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/deskclock/data/DataModel;->getWeekdayOrder()Lcom/android/deskclock/data/Weekdays$Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/deskclock/data/Weekdays$Order;->getCalendarDays()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 140
    iget-object v2, p1, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-virtual {v2, p3, p2}, Lcom/android/deskclock/data/Weekdays;->setBit(IZ)Lcom/android/deskclock/data/Weekdays;

    move-result-object p2

    iput-object p2, p1, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    .line 143
    invoke-virtual {p1, v0}, Lcom/android/deskclock/provider/Alarm;->getNextAlarmTime(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p2

    .line 144
    invoke-virtual {v1, p2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 145
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mAlarmUpdateHandler:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;ZZ)V

    return-void
.end method

.method public setSelectedAlarm(Lcom/android/deskclock/provider/Alarm;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    return-void
.end method
