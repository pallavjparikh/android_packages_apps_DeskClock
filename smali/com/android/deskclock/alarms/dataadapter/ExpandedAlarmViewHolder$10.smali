.class Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandedAlarmViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->onAnimateChange(Ljava/util/List;IIIIJ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

.field final synthetic val$isExpansion:Z


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;Z)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$10;->this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

    iput-boolean p2, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$10;->val$isExpansion:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 289
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$10;->this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->access$100(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;FF)V

    .line 290
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$10;->this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

    iget-object p1, p1, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 291
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$10;->this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

    iget-object p1, p1, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$10;->val$isExpansion:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$10;->this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
