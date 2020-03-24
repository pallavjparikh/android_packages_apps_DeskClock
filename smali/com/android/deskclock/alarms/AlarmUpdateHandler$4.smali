.class Lcom/android/deskclock/alarms/AlarmUpdateHandler$4;
.super Ljava/lang/Object;
.source "AlarmUpdateHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/alarms/AlarmUpdateHandler;->showUndoBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

.field final synthetic val$deletedAlarm:Lcom/android/deskclock/provider/Alarm;


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/AlarmUpdateHandler;Lcom/android/deskclock/provider/Alarm;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$4;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    iput-object p2, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$4;->val$deletedAlarm:Lcom/android/deskclock/provider/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 207
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$4;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->access$402(Lcom/android/deskclock/alarms/AlarmUpdateHandler;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/Alarm;

    .line 208
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$4;->this$0:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$4;->val$deletedAlarm:Lcom/android/deskclock/provider/Alarm;

    invoke-virtual {p1, p0}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->asyncAddAlarm(Lcom/android/deskclock/provider/Alarm;)V

    return-void
.end method
