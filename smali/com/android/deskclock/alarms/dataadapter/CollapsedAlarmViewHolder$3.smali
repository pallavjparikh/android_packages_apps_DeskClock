.class Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$3;
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

    .line 78
    iput-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$3;->this$0:Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const p1, 0x7f110179

    const v0, 0x7f1101e6

    .line 81
    invoke-static {p1, v0}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    .line 82
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$3;->this$0:Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;

    invoke-virtual {p0}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->getItemHolder()Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    invoke-virtual {p0}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->expand()V

    return-void
.end method
