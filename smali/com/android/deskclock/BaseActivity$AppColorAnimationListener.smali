.class final Lcom/android/deskclock/BaseActivity$AppColorAnimationListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppColorAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/BaseActivity;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/BaseActivity;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/deskclock/BaseActivity$AppColorAnimationListener;->this$0:Lcom/android/deskclock/BaseActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/BaseActivity;Lcom/android/deskclock/BaseActivity$1;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/android/deskclock/BaseActivity$AppColorAnimationListener;-><init>(Lcom/android/deskclock/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/deskclock/BaseActivity$AppColorAnimationListener;->this$0:Lcom/android/deskclock/BaseActivity;

    invoke-static {v0}, Lcom/android/deskclock/BaseActivity;->access$200(Lcom/android/deskclock/BaseActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 119
    iget-object p0, p0, Lcom/android/deskclock/BaseActivity$AppColorAnimationListener;->this$0:Lcom/android/deskclock/BaseActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/deskclock/BaseActivity;->access$202(Lcom/android/deskclock/BaseActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 112
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 113
    iget-object p0, p0, Lcom/android/deskclock/BaseActivity$AppColorAnimationListener;->this$0:Lcom/android/deskclock/BaseActivity;

    invoke-static {p0, p1}, Lcom/android/deskclock/BaseActivity;->access$100(Lcom/android/deskclock/BaseActivity;I)V

    return-void
.end method
