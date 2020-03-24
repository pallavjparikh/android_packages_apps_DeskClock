.class Lcom/android/deskclock/alarms/AlarmActivity$2;
.super Ljava/lang/Object;
.source "AlarmActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/alarms/AlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/alarms/AlarmActivity;


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/AlarmActivity;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$2;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 119
    invoke-static {}, Lcom/android/deskclock/alarms/AlarmActivity;->access$000()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Finished binding to AlarmService"

    invoke-virtual {p0, p2, p1}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 124
    invoke-static {}, Lcom/android/deskclock/alarms/AlarmActivity;->access$000()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Disconnected from AlarmService"

    invoke-virtual {p0, v0, p1}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
