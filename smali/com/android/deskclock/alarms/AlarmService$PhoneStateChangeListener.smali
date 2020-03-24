.class final Lcom/android/deskclock/alarms/AlarmService$PhoneStateChangeListener;
.super Landroid/telephony/PhoneStateListener;
.source "AlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/alarms/AlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhoneStateChangeListener"
.end annotation


# instance fields
.field private mPhoneCallState:I

.field final synthetic this$0:Lcom/android/deskclock/alarms/AlarmService;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/alarms/AlarmService;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmService$PhoneStateChangeListener;->this$0:Lcom/android/deskclock/alarms/AlarmService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/alarms/AlarmService;Lcom/android/deskclock/alarms/AlarmService$1;)V
    .locals 0

    .line 269
    invoke-direct {p0, p1}, Lcom/android/deskclock/alarms/AlarmService$PhoneStateChangeListener;-><init>(Lcom/android/deskclock/alarms/AlarmService;)V

    return-void
.end method


# virtual methods
.method init()Lcom/android/deskclock/alarms/AlarmService$PhoneStateChangeListener;
    .locals 1

    const/4 v0, -0x1

    .line 274
    iput v0, p0, Lcom/android/deskclock/alarms/AlarmService$PhoneStateChangeListener;->mPhoneCallState:I

    return-object p0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    .line 280
    iget p2, p0, Lcom/android/deskclock/alarms/AlarmService$PhoneStateChangeListener;->mPhoneCallState:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 281
    iput p1, p0, Lcom/android/deskclock/alarms/AlarmService$PhoneStateChangeListener;->mPhoneCallState:I

    :cond_0
    if-eqz p1, :cond_1

    .line 284
    iget p2, p0, Lcom/android/deskclock/alarms/AlarmService$PhoneStateChangeListener;->mPhoneCallState:I

    if-eq p1, p2, :cond_1

    .line 285
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmService$PhoneStateChangeListener;->this$0:Lcom/android/deskclock/alarms/AlarmService;

    .line 286
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmService;->access$100(Lcom/android/deskclock/alarms/AlarmService;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "AlarmService"

    .line 285
    invoke-static {p0, v0, p1, p2}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    return-void
.end method
