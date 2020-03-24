.class Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$8;
.super Ljava/lang/Object;
.source "ExpandedAlarmViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;-><init>(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$8;->this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 170
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 171
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$8;->this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

    invoke-static {v0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->access$000(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;)Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$8;->this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

    invoke-virtual {v1}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->getItemHolder()Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    iget-object v1, v1, Lcom/android/deskclock/ItemAdapter$ItemHolder;->item:Ljava/lang/Object;

    check-cast v1, Lcom/android/deskclock/provider/Alarm;

    invoke-virtual {v0, v1, p1}, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->setAlarmRepeatEnabled(Lcom/android/deskclock/provider/Alarm;Z)V

    .line 172
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$8;->this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

    invoke-virtual {p0}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->getItemHolder()Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    const-string p1, "ANIMATE_REPEAT_DAYS"

    invoke-virtual {p0, p1}, Lcom/android/deskclock/ItemAdapter$ItemHolder;->notifyItemChanged(Ljava/lang/Object;)V

    return-void
.end method
