.class Lcom/android/deskclock/timer/TimerFragment$2;
.super Ljava/lang/Object;
.source "TimerFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/timer/TimerFragment;->animateToView(Landroid/view/View;Lcom/android/deskclock/data/Timer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/TimerFragment;

.field final synthetic val$animateDown:Z

.field final synthetic val$animationDuration:J

.field final synthetic val$timerToRemove:Lcom/android/deskclock/data/Timer;

.field final synthetic val$toTimers:Z

.field final synthetic val$toView:Landroid/view/View;

.field final synthetic val$viewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/TimerFragment;Landroid/view/ViewTreeObserver;ZLandroid/view/View;JZLcom/android/deskclock/data/Timer;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    iput-object p2, p0, Lcom/android/deskclock/timer/TimerFragment$2;->val$viewTreeObserver:Landroid/view/ViewTreeObserver;

    iput-boolean p3, p0, Lcom/android/deskclock/timer/TimerFragment$2;->val$animateDown:Z

    iput-object p4, p0, Lcom/android/deskclock/timer/TimerFragment$2;->val$toView:Landroid/view/View;

    iput-wide p5, p0, Lcom/android/deskclock/timer/TimerFragment$2;->val$animationDuration:J

    iput-boolean p7, p0, Lcom/android/deskclock/timer/TimerFragment$2;->val$toTimers:Z

    iput-object p8, p0, Lcom/android/deskclock/timer/TimerFragment$2;->val$timerToRemove:Lcom/android/deskclock/data/Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    .line 599
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$2;->val$viewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$2;->val$viewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {v0}, Lcom/android/deskclock/timer/TimerFragment;->access$300(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 605
    :goto_0
    iget-boolean v2, p0, Lcom/android/deskclock/timer/TimerFragment$2;->val$animateDown:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    neg-float v0, v0

    .line 607
    :goto_1
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$2;->val$toView:Landroid/view/View;

    neg-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 608
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {v2}, Lcom/android/deskclock/timer/TimerFragment;->access$400(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 609
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$2;->val$toView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 610
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {v2}, Lcom/android/deskclock/timer/TimerFragment;->access$400(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 612
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {v2}, Lcom/android/deskclock/timer/TimerFragment;->access$400(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;

    move-result-object v2

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v0, v6, v7

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 614
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$2;->val$toView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v5, [F

    aput v1, v6, v7

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 615
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x2

    new-array v8, v6, [Landroid/animation/Animator;

    aput-object v0, v8, v7

    aput-object v2, v8, v5

    .line 616
    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 617
    iget-wide v8, p0, Lcom/android/deskclock/timer/TimerFragment$2;->val$animationDuration:J

    invoke-virtual {v4, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 618
    sget-object v0, Lcom/android/deskclock/AnimatorUtils;->INTERPOLATOR_FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 620
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment$2;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {v0}, Lcom/android/deskclock/timer/TimerFragment;->access$400(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;

    move-result-object v0

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v5, [F

    aput v1, v8, v7

    invoke-static {v0, v2, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 621
    iget-wide v1, p0, Lcom/android/deskclock/timer/TimerFragment$2;->val$animationDuration:J

    const-wide/16 v8, 0x2

    div-long/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 622
    new-instance v1, Lcom/android/deskclock/timer/TimerFragment$2$1;

    invoke-direct {v1, p0}, Lcom/android/deskclock/timer/TimerFragment$2$1;-><init>(Lcom/android/deskclock/timer/TimerFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 654
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment$2;->val$toView:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v5, [F

    aput v3, v10, v7

    invoke-static {v1, v2, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 655
    iget-wide v2, p0, Lcom/android/deskclock/timer/TimerFragment$2;->val$animationDuration:J

    div-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 656
    iget-wide v2, p0, Lcom/android/deskclock/timer/TimerFragment$2;->val$animationDuration:J

    div-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 658
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v5

    aput-object v4, v3, v6

    .line 659
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 660
    new-instance v0, Lcom/android/deskclock/timer/TimerFragment$2$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/timer/TimerFragment$2$2;-><init>(Lcom/android/deskclock/timer/TimerFragment$2;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 670
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return v5
.end method
