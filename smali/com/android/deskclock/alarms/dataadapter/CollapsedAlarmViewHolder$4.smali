.class Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$4;
.super Ljava/lang/Object;
.source "CollapsedAlarmViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$4;->this$0:Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$4;->this$0:Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;

    invoke-virtual {p1}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->getItemHolder()Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    invoke-virtual {p1}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->getAlarmTimeClickHandler()Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$4;->this$0:Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;

    invoke-virtual {v0}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->getItemHolder()Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    iget-object v0, v0, Lcom/android/deskclock/ItemAdapter$ItemHolder;->item:Ljava/lang/Object;

    check-cast v0, Lcom/android/deskclock/provider/Alarm;

    invoke-virtual {p1, v0}, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->onClockClicked(Lcom/android/deskclock/provider/Alarm;)V

    const p1, 0x7f11017a

    const v0, 0x7f1101e6

    .line 90
    invoke-static {p1, v0}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    .line 91
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$4;->this$0:Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;

    invoke-virtual {p0}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->getItemHolder()Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    invoke-virtual {p0}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->expand()V

    return-void
.end method
