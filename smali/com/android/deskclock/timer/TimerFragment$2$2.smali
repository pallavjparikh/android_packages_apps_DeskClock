.class Lcom/android/deskclock/timer/TimerFragment$2$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TimerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/timer/TimerFragment$2;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/timer/TimerFragment$2;


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/TimerFragment$2;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$2$2;->this$1:Lcom/android/deskclock/timer/TimerFragment$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 663
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 664
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$2$2;->this$1:Lcom/android/deskclock/timer/TimerFragment$2;

    iget-object p1, p1, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {p1}, Lcom/android/deskclock/timer/TimerFragment;->access$300(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 665
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$2$2;->this$1:Lcom/android/deskclock/timer/TimerFragment$2;

    iget-object p1, p1, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {p1}, Lcom/android/deskclock/timer/TimerFragment;->access$600(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerSetupView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 666
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$2$2;->this$1:Lcom/android/deskclock/timer/TimerFragment$2;

    iget-object p1, p1, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {p1}, Lcom/android/deskclock/timer/TimerFragment;->access$300(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 667
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment$2$2;->this$1:Lcom/android/deskclock/timer/TimerFragment$2;

    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {p0}, Lcom/android/deskclock/timer/TimerFragment;->access$600(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerSetupView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method
