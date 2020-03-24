.class Lcom/android/deskclock/ItemAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/ItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ItemAnimator;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$prevTranslationX:F

.field final synthetic val$prevTranslationY:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/deskclock/ItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;FF)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/deskclock/ItemAnimator$3;->this$0:Lcom/android/deskclock/ItemAnimator;

    iput-object p2, p0, Lcom/android/deskclock/ItemAnimator$3;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/android/deskclock/ItemAnimator$3;->val$view:Landroid/view/View;

    iput p4, p0, Lcom/android/deskclock/ItemAnimator$3;->val$prevTranslationX:F

    iput p5, p0, Lcom/android/deskclock/ItemAnimator$3;->val$prevTranslationY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 144
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 145
    iget-object p1, p0, Lcom/android/deskclock/ItemAnimator$3;->this$0:Lcom/android/deskclock/ItemAnimator;

    invoke-static {p1}, Lcom/android/deskclock/ItemAnimator;->access$000(Lcom/android/deskclock/ItemAnimator;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/deskclock/ItemAnimator$3;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object p1, p0, Lcom/android/deskclock/ItemAnimator$3;->val$view:Landroid/view/View;

    iget v0, p0, Lcom/android/deskclock/ItemAnimator$3;->val$prevTranslationX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 147
    iget-object p1, p0, Lcom/android/deskclock/ItemAnimator$3;->val$view:Landroid/view/View;

    iget v0, p0, Lcom/android/deskclock/ItemAnimator$3;->val$prevTranslationY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 148
    iget-object p1, p0, Lcom/android/deskclock/ItemAnimator$3;->this$0:Lcom/android/deskclock/ItemAnimator;

    iget-object p0, p0, Lcom/android/deskclock/ItemAnimator$3;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 139
    iget-object p1, p0, Lcom/android/deskclock/ItemAnimator$3;->this$0:Lcom/android/deskclock/ItemAnimator;

    iget-object p0, p0, Lcom/android/deskclock/ItemAnimator$3;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
