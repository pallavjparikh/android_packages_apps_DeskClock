.class public Lcom/android/deskclock/alarms/AlarmService;
.super Landroid/app/Service;
.source "AlarmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/alarms/AlarmService$ResettableSensorEventListener;,
        Lcom/android/deskclock/alarms/AlarmService$PhoneStateChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTION:Ljava/lang/String;


# instance fields
.field private final mActionsReceiver:Landroid/content/BroadcastReceiver;

.field private final mBinder:Landroid/os/IBinder;

.field private mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

.field private mFlipAction:I

.field private final mFlipListener:Lcom/android/deskclock/alarms/AlarmService$ResettableSensorEventListener;

.field private mIsBound:Z

.field private mIsRegistered:Z

.field private final mPhoneStateListener:Lcom/android/deskclock/alarms/AlarmService$PhoneStateChangeListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShakeAction:I

.field private final mShakeListener:Landroid/hardware/SensorEventListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/alarms/AlarmService;->DEFAULT_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 79
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mIsBound:Z

    .line 85
    new-instance v1, Lcom/android/deskclock/alarms/AlarmService$PhoneStateChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/deskclock/alarms/AlarmService$PhoneStateChangeListener;-><init>(Lcom/android/deskclock/alarms/AlarmService;Lcom/android/deskclock/alarms/AlarmService$1;)V

    iput-object v1, p0, Lcom/android/deskclock/alarms/AlarmService;->mPhoneStateListener:Lcom/android/deskclock/alarms/AlarmService$PhoneStateChangeListener;

    .line 88
    iput-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mIsRegistered:Z

    .line 118
    iput-object v2, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    .line 160
    new-instance v0, Lcom/android/deskclock/alarms/AlarmService$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/alarms/AlarmService$1;-><init>(Lcom/android/deskclock/alarms/AlarmService;)V

    iput-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mActionsReceiver:Landroid/content/BroadcastReceiver;

    .line 295
    new-instance v0, Lcom/android/deskclock/alarms/AlarmService$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/alarms/AlarmService$2;-><init>(Lcom/android/deskclock/alarms/AlarmService;)V

    iput-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mFlipListener:Lcom/android/deskclock/alarms/AlarmService$ResettableSensorEventListener;

    .line 367
    new-instance v0, Lcom/android/deskclock/alarms/AlarmService$3;

    invoke-direct {v0, p0}, Lcom/android/deskclock/alarms/AlarmService$3;-><init>(Lcom/android/deskclock/alarms/AlarmService;)V

    iput-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mShakeListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/alarms/AlarmService;)Lcom/android/deskclock/provider/AlarmInstance;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/deskclock/alarms/AlarmService;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/deskclock/alarms/AlarmService;->mIsBound:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/deskclock/alarms/AlarmService;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/deskclock/alarms/AlarmService;->mFlipAction:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/deskclock/alarms/AlarmService;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/deskclock/alarms/AlarmService;->handleAction(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/deskclock/alarms/AlarmService;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/deskclock/alarms/AlarmService;->mShakeAction:I

    return p0
.end method

.method private attachListeners()V
    .locals 6

    .line 403
    iget v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mFlipAction:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mFlipListener:Lcom/android/deskclock/alarms/AlarmService$ResettableSensorEventListener;

    invoke-interface {v0}, Lcom/android/deskclock/alarms/AlarmService$ResettableSensorEventListener;->reset()V

    .line 405
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmService;->mFlipListener:Lcom/android/deskclock/alarms/AlarmService$ResettableSensorEventListener;

    .line 406
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x3

    const v5, 0x493e0

    .line 405
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z

    .line 411
    :cond_0
    iget v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mShakeAction:I

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmService;->mShakeListener:Landroid/hardware/SensorEventListener;

    .line 413
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const v3, 0xc350

    .line 412
    invoke-virtual {v0, p0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z

    :cond_1
    return-void
.end method

.method private detachListeners()V
    .locals 2

    .line 420
    iget v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mFlipAction:I

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmService;->mFlipListener:Lcom/android/deskclock/alarms/AlarmService$ResettableSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 423
    :cond_0
    iget v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mShakeAction:I

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmService;->mShakeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    return-void
.end method

.method private handleAction(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    const/4 v0, 0x7

    .line 440
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "DISMISS_TAG"

    .line 438
    invoke-static {p0, v1, p1, v0}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 432
    :cond_1
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    const/4 v0, 0x4

    .line 434
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SNOOZE_TAG"

    .line 432
    invoke-static {p0, v1, p1, v0}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method private startAlarm(Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmService.start with instance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p0, v0}, Lcom/android/deskclock/alarms/AlarmStateManager;->setMissedState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 127
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmService;->stopCurrentAlarm()V

    .line 130
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/AlarmAlertWakeLock;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 132
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    .line 133
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->showAlarmNotification(Landroid/app/Service;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 134
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mPhoneStateListener:Lcom/android/deskclock/alarms/AlarmService$PhoneStateChangeListener;

    invoke-virtual {v0}, Lcom/android/deskclock/alarms/AlarmService$PhoneStateChangeListener;->init()Lcom/android/deskclock/alarms/AlarmService$PhoneStateChangeListener;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 135
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmKlaxon;->start(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 136
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmService;->attachListeners()V

    return-void
.end method

.method public static stopAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3

    .line 110
    const-class v0, Lcom/android/deskclock/alarms/AlarmService;

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {p0, v0, v1, v2}, Lcom/android/deskclock/provider/AlarmInstance;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "STOP_ALARM"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private stopCurrentAlarm()V
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "There is no current alarm to stop"

    .line 142
    invoke-static {v0, p0}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 146
    :cond_0
    iget-wide v2, v0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    .line 147
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v2, "AlarmService.stop with instance: %s"

    invoke-static {v2, v4}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmKlaxon;->stop(Landroid/content/Context;)V

    .line 150
    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/deskclock/alarms/AlarmService;->mPhoneStateListener:Lcom/android/deskclock/alarms/AlarmService$PhoneStateChangeListener;

    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 151
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.deskclock.ALARM_DONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    .line 156
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmService;->detachListeners()V

    .line 157
    invoke-static {}, Lcom/android/deskclock/AlarmAlertWakeLock;->releaseCpuLock()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lcom/android/deskclock/alarms/AlarmService;->mIsBound:Z

    .line 93
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmService;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 194
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "phone"

    .line 195
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 198
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.deskclock.ALARM_SNOOZE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.deskclock.ALARM_DISMISS"

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmService;->mActionsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mIsRegistered:Z

    const-string v0, "sensor"

    .line 204
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 205
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getFlipAction()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mFlipAction:I

    .line 206
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getShakeAction()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mShakeAction:I

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AlarmService.onDestroy() called"

    .line 257
    invoke-static {v2, v1}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 259
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    if-eqz v1, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmService;->stopCurrentAlarm()V

    .line 263
    :cond_0
    iget-boolean v1, p0, Lcom/android/deskclock/alarms/AlarmService;->mIsRegistered:Z

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmService;->mActionsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 265
    iput-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mIsRegistered:Z

    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string v1, "AlarmService.onStartCommand() with %s"

    .line 211
    invoke-static {v1, p3}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p3, 0x2

    if-nez p1, :cond_0

    return p3

    .line 216
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/provider/AlarmInstance;->getId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 217
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0xeecb742

    const/4 v6, -0x1

    if-eq v4, v5, :cond_2

    const v5, 0x16875bb4

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "STOP_ALARM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, p2

    goto :goto_1

    :cond_2
    const-string v4, "change_state"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v6

    :goto_1
    if-eqz v3, :cond_6

    if-eq v3, p2, :cond_4

    goto/16 :goto_2

    .line 243
    :cond_4
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    if-eqz p1, :cond_5

    iget-wide v3, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5

    new-array p1, p3, [Ljava/lang/Object;

    .line 245
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v0

    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    iget-wide v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "Can\'t stop alarm for instance: %d because current alarm is: %d"

    .line 244
    invoke-static {p0, p1}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 248
    :cond_5
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmService;->stopCurrentAlarm()V

    .line 249
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_2

    .line 219
    :cond_6
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v3, "intent.extra.alarm.state"

    .line 222
    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x5

    if-ne p1, v3, :cond_9

    .line 224
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 225
    invoke-static {p1, v1, v2}, Lcom/android/deskclock/provider/AlarmInstance;->getInstance(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object p1

    if-nez p1, :cond_7

    new-array p1, p2, [Ljava/lang/Object;

    .line 227
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "No instance found to start alarm: %d"

    invoke-static {p2, p1}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    if-eqz p0, :cond_9

    .line 230
    invoke-static {}, Lcom/android/deskclock/AlarmAlertWakeLock;->releaseCpuLock()V

    goto :goto_2

    .line 235
    :cond_7
    iget-object v3, p0, Lcom/android/deskclock/alarms/AlarmService;->mCurrentAlarm:Lcom/android/deskclock/provider/AlarmInstance;

    if-eqz v3, :cond_8

    iget-wide v3, v3, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    cmp-long v3, v3, v1

    if-nez v3, :cond_8

    new-array p0, p2, [Ljava/lang/Object;

    .line 236
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "Alarm already started for instance: %d"

    invoke-static {p1, p0}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 239
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/deskclock/alarms/AlarmService;->startAlarm(Lcom/android/deskclock/provider/AlarmInstance;)V

    :cond_9
    :goto_2
    return p3
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmService;->mIsBound:Z

    .line 99
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
