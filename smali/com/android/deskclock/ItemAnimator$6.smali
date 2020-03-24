.class Lcom/android/deskclock/ItemAnimator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/ItemAnimator;->animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ItemAnimator;

.field final synthetic val$newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/android/deskclock/ItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/android/deskclock/ItemAnimator$6;->this$0:Lcom/android/deskclock/ItemAnimator;

    iput-object p2, p0, Lcom/android/deskclock/ItemAnimator$6;->val$newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 233
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 234
    iget-object p1, p0, Lcom/android/deskclock/ItemAnimator$6;->this$0:Lcom/android/deskclock/ItemAnimator;

    invoke-static {p1}, Lcom/android/deskclock/ItemAnimator;->access$000(Lcom/android/deskclock/ItemAnimator;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/deskclock/ItemAnimator$6;->val$newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object p1, p0, Lcom/android/deskclock/ItemAnimator$6;->this$0:Lcom/android/deskclock/ItemAnimator;

    iget-object p0, p0, Lcom/android/deskclock/ItemAnimator$6;->val$newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 228
    iget-object p1, p0, Lcom/android/deskclock/ItemAnimator$6;->this$0:Lcom/android/deskclock/ItemAnimator;

    iget-object p0, p0, Lcom/android/deskclock/ItemAnimator$6;->val$newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
