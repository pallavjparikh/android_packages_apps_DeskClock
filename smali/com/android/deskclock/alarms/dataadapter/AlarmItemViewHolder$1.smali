.class Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder$1;
.super Ljava/lang/Object;
.source "AlarmItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 65
    iput-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder$1;->this$0:Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder$1;->this$0:Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;

    invoke-virtual {p1}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->getItemHolder()Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    invoke-virtual {p1}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->getAlarmInstance()Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder$1;->this$0:Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;

    invoke-virtual {p0}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->getItemHolder()Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    invoke-virtual {p0}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->getAlarmTimeClickHandler()Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->dismissAlarmInstance(Lcom/android/deskclock/provider/AlarmInstance;)V

    :cond_0
    return-void
.end method
