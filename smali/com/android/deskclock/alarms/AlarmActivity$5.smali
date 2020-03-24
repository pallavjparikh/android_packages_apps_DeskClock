.class Lcom/android/deskclock/alarms/AlarmActivity$5;
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

.field final synthetic val$containerView:Landroid/view/ViewGroup;

.field final synthetic val$revealView:Lcom/android/deskclock/widget/CircleView;


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/AlarmActivity;Landroid/view/ViewGroup;Lcom/android/deskclock/widget/CircleView;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$5;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    iput-object p2, p0, Lcom/android/deskclock/alarms/AlarmActivity$5;->val$containerView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/deskclock/alarms/AlarmActivity$5;->val$revealView:Lcom/android/deskclock/widget/CircleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 641
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$5;->val$containerView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmActivity$5;->val$revealView:Lcom/android/deskclock/widget/CircleView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
