.class Lcom/android/deskclock/alarms/AlarmActivity$4;
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

.field final synthetic val$backgroundColor:I

.field final synthetic val$infoText:Ljava/lang/String;

.field final synthetic val$titleResId:I


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/AlarmActivity;ILjava/lang/String;I)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$4;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    iput p2, p0, Lcom/android/deskclock/alarms/AlarmActivity$4;->val$titleResId:I

    iput-object p3, p0, Lcom/android/deskclock/alarms/AlarmActivity$4;->val$infoText:Ljava/lang/String;

    iput p4, p0, Lcom/android/deskclock/alarms/AlarmActivity$4;->val$backgroundColor:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 623
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$4;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmActivity;->access$500(Lcom/android/deskclock/alarms/AlarmActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 624
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$4;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmActivity;->access$600(Lcom/android/deskclock/alarms/AlarmActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget v1, p0, Lcom/android/deskclock/alarms/AlarmActivity$4;->val$titleResId:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 626
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$4;->val$infoText:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 627
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$4;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmActivity;->access$700(Lcom/android/deskclock/alarms/AlarmActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmActivity$4;->val$infoText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$4;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmActivity;->access$700(Lcom/android/deskclock/alarms/AlarmActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 630
    :cond_0
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$4;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmActivity;->access$800(Lcom/android/deskclock/alarms/AlarmActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 632
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$4;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget p0, p0, Lcom/android/deskclock/alarms/AlarmActivity$4;->val$backgroundColor:I

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
