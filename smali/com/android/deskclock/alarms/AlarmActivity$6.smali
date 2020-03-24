.class Lcom/android/deskclock/alarms/AlarmActivity$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/alarms/AlarmActivity;->getAlertAnimator(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;II)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/alarms/AlarmActivity;

.field final synthetic val$accessibilityText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/AlarmActivity;Ljava/lang/String;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$6;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    iput-object p2, p0, Lcom/android/deskclock/alarms/AlarmActivity$6;->val$accessibilityText:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 650
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$6;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmActivity;->access$500(Lcom/android/deskclock/alarms/AlarmActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity$6;->val$accessibilityText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 651
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$6;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmActivity;->access$900(Lcom/android/deskclock/alarms/AlarmActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/deskclock/alarms/AlarmActivity$6$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/alarms/AlarmActivity$6$1;-><init>(Lcom/android/deskclock/alarms/AlarmActivity$6;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
