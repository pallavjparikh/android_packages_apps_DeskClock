.class final Lcom/android/deskclock/uidata/PeriodicCallbackModel;
.super Ljava/lang/Object;
.source "PeriodicCallbackModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/uidata/PeriodicCallbackModel$TimeChangedReceiver;,
        Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;,
        Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/android/deskclock/LogUtils$Logger;

.field private static sHandler:Landroid/os/Handler;


# instance fields
.field private final mPeriodicRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/android/deskclock/LogUtils$Logger;

    const-string v1, "Periodic"

    invoke-direct {v0, v1}, Lcom/android/deskclock/LogUtils$Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$TimeChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/uidata/PeriodicCallbackModel$TimeChangedReceiver;-><init>(Lcom/android/deskclock/uidata/PeriodicCallbackModel;Lcom/android/deskclock/uidata/PeriodicCallbackModel$1;)V

    iput-object v0, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->mPeriodicRunnables:Ljava/util/List;

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object p0, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$400()Lcom/android/deskclock/LogUtils$Logger;
    .locals 1

    .line 48
    sget-object v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .line 48
    invoke-static {}, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/deskclock/uidata/PeriodicCallbackModel;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->mPeriodicRunnables:Ljava/util/List;

    return-object p0
.end method

.method private addPeriodicCallback(Ljava/lang/Runnable;Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;J)V
    .locals 1

    .line 110
    new-instance v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;-><init>(Ljava/lang/Runnable;Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;J)V

    .line 111
    iget-object p0, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->mPeriodicRunnables:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {v0}, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->access$100(Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;)V

    return-void
.end method

.method static getDelay(JLcom/android/deskclock/uidata/PeriodicCallbackModel$Period;J)J
    .locals 6

    sub-long v0, p0, p3

    .line 141
    sget-object v2, Lcom/android/deskclock/uidata/PeriodicCallbackModel$1;->$SwitchMap$com$android$deskclock$uidata$PeriodicCallbackModel$Period:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    .line 158
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 159
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x5

    .line 160
    invoke-virtual {p2, v0, v3}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 161
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 162
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 163
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 164
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 165
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :goto_0
    sub-long/2addr v0, p0

    add-long/2addr v0, p3

    return-wide v0

    .line 168
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unexpected period: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/32 v2, 0x36ee80

    .line 153
    rem-long v4, v0, v2

    :goto_1
    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0xdbba0

    .line 148
    rem-long v4, v0, v2

    goto :goto_1

    :cond_3
    const-wide/32 v2, 0xea60

    .line 143
    rem-long v4, v0, v2

    goto :goto_1
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 1

    .line 173
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 174
    sget-object v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->sHandler:Landroid/os/Handler;

    .line 177
    :cond_0
    sget-object v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->sHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method addMidnightCallback(Ljava/lang/Runnable;J)V
    .locals 1

    .line 103
    sget-object v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;->MIDNIGHT:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->addPeriodicCallback(Ljava/lang/Runnable;Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;J)V

    return-void
.end method

.method addMinuteCallback(Ljava/lang/Runnable;J)V
    .locals 1

    .line 79
    sget-object v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;->MINUTE:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->addPeriodicCallback(Ljava/lang/Runnable;Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;J)V

    return-void
.end method

.method addQuarterHourCallback(Ljava/lang/Runnable;J)V
    .locals 1

    .line 87
    sget-object v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;->QUARTER_HOUR:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->addPeriodicCallback(Ljava/lang/Runnable;Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;J)V

    return-void
.end method

.method removePeriodicCallback(Ljava/lang/Runnable;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->mPeriodicRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;

    .line 120
    invoke-static {v1}, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->access$200(Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;)Ljava/lang/Runnable;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 121
    invoke-static {v1}, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->access$300(Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;)V

    .line 122
    iget-object p0, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->mPeriodicRunnables:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
