.class Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$6;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;Landroid/content/Context;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$6;->this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

    iput-object p2, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$6;->this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

    invoke-static {p1}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->access$000(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;)Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$6;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$6;->this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

    invoke-virtual {p0}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->getItemHolder()Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter$ItemHolder;->item:Ljava/lang/Object;

    check-cast p0, Lcom/android/deskclock/provider/Alarm;

    invoke-virtual {p1, v0, p0}, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->onRingtoneClicked(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)V

    return-void
.end method
