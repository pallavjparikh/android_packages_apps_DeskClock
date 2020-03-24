.class Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$7;
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

    .line 159
    iput-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$7;->this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

    iput-object p2, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$7;->this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

    invoke-static {v0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->access$000(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;)Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$7;->this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

    invoke-virtual {v1}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->getItemHolder()Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->onDeleteClicked(Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;)V

    .line 163
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$7;->val$context:Landroid/content/Context;

    const v0, 0x7f110192

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
