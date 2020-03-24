.class Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder$2;
.super Ljava/lang/Object;
.source "AlarmItemViewHolder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder$2;->this$0:Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder$2;->this$0:Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;

    invoke-virtual {p1}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->getItemHolder()Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    invoke-virtual {p1}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->getAlarmTimeClickHandler()Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder$2;->this$0:Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;

    .line 78
    invoke-virtual {p0}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->getItemHolder()Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter$ItemHolder;->item:Ljava/lang/Object;

    check-cast p0, Lcom/android/deskclock/provider/Alarm;

    .line 77
    invoke-virtual {p1, p0, p2}, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->setAlarmEnabled(Lcom/android/deskclock/provider/Alarm;Z)V

    return-void
.end method
