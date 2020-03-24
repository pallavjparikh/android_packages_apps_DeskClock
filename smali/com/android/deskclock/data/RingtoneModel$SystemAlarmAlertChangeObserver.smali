.class final Lcom/android/deskclock/data/RingtoneModel$SystemAlarmAlertChangeObserver;
.super Landroid/database/ContentObserver;
.source "RingtoneModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/RingtoneModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SystemAlarmAlertChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/data/RingtoneModel;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/data/RingtoneModel;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/android/deskclock/data/RingtoneModel$SystemAlarmAlertChangeObserver;->this$0:Lcom/android/deskclock/data/RingtoneModel;

    .line 209
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/data/RingtoneModel;Lcom/android/deskclock/data/RingtoneModel$1;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/RingtoneModel$SystemAlarmAlertChangeObserver;-><init>(Lcom/android/deskclock/data/RingtoneModel;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 214
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 217
    iget-object p0, p0, Lcom/android/deskclock/data/RingtoneModel$SystemAlarmAlertChangeObserver;->this$0:Lcom/android/deskclock/data/RingtoneModel;

    invoke-static {p0}, Lcom/android/deskclock/data/RingtoneModel;->access$200(Lcom/android/deskclock/data/RingtoneModel;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method
