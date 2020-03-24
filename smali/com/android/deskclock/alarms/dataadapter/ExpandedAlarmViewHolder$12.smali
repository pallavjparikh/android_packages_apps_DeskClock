.class Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandedAlarmViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->createExpandingAnimator(Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;J)Landroid/animation/Animator;
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

    .line 483
    iput-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$12;->this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$12;->this$0:Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/deskclock/AnimatorUtils;->startDrawableAnimation(Landroid/widget/ImageView;)V

    return-void
.end method
