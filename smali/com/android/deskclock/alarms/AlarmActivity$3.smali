.class Lcom/android/deskclock/alarms/AlarmActivity$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/alarms/AlarmActivity;->getAlarmBounceAnimator(FI)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/alarms/AlarmActivity;

.field final synthetic val$hintResId:I


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/AlarmActivity;I)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$3;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    iput p2, p0, Lcom/android/deskclock/alarms/AlarmActivity$3;->val$hintResId:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 581
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$3;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmActivity;->access$400(Lcom/android/deskclock/alarms/AlarmActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget v0, p0, Lcom/android/deskclock/alarms/AlarmActivity$3;->val$hintResId:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 582
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$3;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmActivity;->access$400(Lcom/android/deskclock/alarms/AlarmActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 583
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$3;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmActivity;->access$400(Lcom/android/deskclock/alarms/AlarmActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 584
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmActivity$3;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->access$400(Lcom/android/deskclock/alarms/AlarmActivity;)Landroid/widget/TextView;

    move-result-object p0

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
