.class final Lcom/android/deskclock/data/AlarmModel$SystemAlarmAlertChangeObserver;
.super Landroid/database/ContentObserver;
.source "AlarmModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/AlarmModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SystemAlarmAlertChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/data/AlarmModel;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/data/AlarmModel;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/deskclock/data/AlarmModel$SystemAlarmAlertChangeObserver;->this$0:Lcom/android/deskclock/data/AlarmModel;

    .line 96
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/data/AlarmModel;Lcom/android/deskclock/data/AlarmModel$1;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/AlarmModel$SystemAlarmAlertChangeObserver;-><init>(Lcom/android/deskclock/data/AlarmModel;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 102
    iget-object p0, p0, Lcom/android/deskclock/data/AlarmModel$SystemAlarmAlertChangeObserver;->this$0:Lcom/android/deskclock/data/AlarmModel;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/deskclock/data/AlarmModel;->access$102(Lcom/android/deskclock/data/AlarmModel;Landroid/net/Uri;)Landroid/net/Uri;

    return-void
.end method
