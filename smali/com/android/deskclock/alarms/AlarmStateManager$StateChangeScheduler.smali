.class interface abstract Lcom/android/deskclock/alarms/AlarmStateManager$StateChangeScheduler;
.super Ljava/lang/Object;
.source "AlarmStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/alarms/AlarmStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "StateChangeScheduler"
.end annotation


# virtual methods
.method public abstract cancelScheduledInstanceStateChange(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
.end method

.method public abstract scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V
.end method
