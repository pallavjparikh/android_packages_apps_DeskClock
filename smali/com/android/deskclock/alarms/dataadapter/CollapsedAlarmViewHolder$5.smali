.class Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CollapsedAlarmViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->onAnimateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;J)Landroid/animation/Animator;
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

    .line 169
    iput-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$5;->this$0:Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$5;->this$0:Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;

    iget-object p1, p1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->clock:Lcom/android/deskclock/widget/TextTime;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$5;->this$0:Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;

    iget-object p1, p1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->onOff:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 174
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$5;->this$0:Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;

    iget-object p1, p1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$5;->this$0:Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;

    iget-object p1, p1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 176
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$5;->this$0:Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->access$000(Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;F)V

    .line 177
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$5;->this$0:Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;

    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    return-void
.end method
