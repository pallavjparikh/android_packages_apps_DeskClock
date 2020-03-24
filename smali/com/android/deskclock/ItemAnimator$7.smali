.class Lcom/android/deskclock/ItemAnimator$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/ItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ItemAnimator;


# direct methods
.method constructor <init>(Lcom/android/deskclock/ItemAnimator;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/android/deskclock/ItemAnimator$7;->this$0:Lcom/android/deskclock/ItemAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 276
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 277
    iget-object p0, p0, Lcom/android/deskclock/ItemAnimator$7;->this$0:Lcom/android/deskclock/ItemAnimator;

    invoke-static {p0}, Lcom/android/deskclock/ItemAnimator;->access$100(Lcom/android/deskclock/ItemAnimator;)V

    return-void
.end method
