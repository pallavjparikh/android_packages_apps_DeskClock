.class Lcom/android/deskclock/MoveScreensaverRunnable$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MoveScreensaverRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/MoveScreensaverRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/MoveScreensaverRunnable;

.field final synthetic val$newX:F

.field final synthetic val$newY:F


# direct methods
.method constructor <init>(Lcom/android/deskclock/MoveScreensaverRunnable;FF)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/deskclock/MoveScreensaverRunnable$1;->this$0:Lcom/android/deskclock/MoveScreensaverRunnable;

    iput p2, p0, Lcom/android/deskclock/MoveScreensaverRunnable$1;->val$newX:F

    iput p3, p0, Lcom/android/deskclock/MoveScreensaverRunnable$1;->val$newY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 138
    iget-object p1, p0, Lcom/android/deskclock/MoveScreensaverRunnable$1;->this$0:Lcom/android/deskclock/MoveScreensaverRunnable;

    invoke-static {p1}, Lcom/android/deskclock/MoveScreensaverRunnable;->access$000(Lcom/android/deskclock/MoveScreensaverRunnable;)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/android/deskclock/MoveScreensaverRunnable$1;->val$newX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 139
    iget-object p1, p0, Lcom/android/deskclock/MoveScreensaverRunnable$1;->this$0:Lcom/android/deskclock/MoveScreensaverRunnable;

    invoke-static {p1}, Lcom/android/deskclock/MoveScreensaverRunnable;->access$000(Lcom/android/deskclock/MoveScreensaverRunnable;)Landroid/view/View;

    move-result-object p1

    iget p0, p0, Lcom/android/deskclock/MoveScreensaverRunnable$1;->val$newY:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setY(F)V

    return-void
.end method
