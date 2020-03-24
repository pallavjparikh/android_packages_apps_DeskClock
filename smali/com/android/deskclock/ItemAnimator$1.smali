.class Lcom/android/deskclock/ItemAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/ItemAnimator;->animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ItemAnimator;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$prevAlpha:F


# direct methods
.method constructor <init>(Lcom/android/deskclock/ItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;F)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/deskclock/ItemAnimator$1;->this$0:Lcom/android/deskclock/ItemAnimator;

    iput-object p2, p0, Lcom/android/deskclock/ItemAnimator$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/android/deskclock/ItemAnimator$1;->val$prevAlpha:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 63
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 64
    iget-object p1, p0, Lcom/android/deskclock/ItemAnimator$1;->this$0:Lcom/android/deskclock/ItemAnimator;

    invoke-static {p1}, Lcom/android/deskclock/ItemAnimator;->access$000(Lcom/android/deskclock/ItemAnimator;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/deskclock/ItemAnimator$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p1, p0, Lcom/android/deskclock/ItemAnimator$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v0, p0, Lcom/android/deskclock/ItemAnimator$1;->val$prevAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 66
    iget-object p1, p0, Lcom/android/deskclock/ItemAnimator$1;->this$0:Lcom/android/deskclock/ItemAnimator;

    iget-object p0, p0, Lcom/android/deskclock/ItemAnimator$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/android/deskclock/ItemAnimator$1;->this$0:Lcom/android/deskclock/ItemAnimator;

    iget-object p0, p0, Lcom/android/deskclock/ItemAnimator$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
