.class public Lcom/android/deskclock/ItemAnimator;
.super Landroidx/recyclerview/widget/SimpleItemAnimator;
.source "ItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/ItemAnimator$OnAnimateChangeListener;,
        Lcom/android/deskclock/ItemAnimator$PayloadItemHolderInfo;
    }
.end annotation


# instance fields
.field private final mAddAnimatorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mChangeAnimatorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mMoveAnimatorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveAnimatorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/ItemAnimator;->mAddAnimatorsList:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/ItemAnimator;->mRemoveAnimatorsList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/ItemAnimator;->mChangeAnimatorsList:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/ItemAnimator;->mMoveAnimatorsList:Ljava/util/List;

    .line 45
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/ItemAnimator;->mAnimators:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/ItemAnimator;)Ljava/util/Map;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/deskclock/ItemAnimator;->mAnimators:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/deskclock/ItemAnimator;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/deskclock/ItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method private dispatchFinishedWhenDone()V
    .locals 1

    .line 323
    invoke-virtual {p0}, Lcom/android/deskclock/ItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    :cond_0
    return-void
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 7

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/deskclock/ItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 78
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 79
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 81
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getAddDuration()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 83
    new-instance v2, Lcom/android/deskclock/ItemAnimator$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/deskclock/ItemAnimator$2;-><init>(Lcom/android/deskclock/ItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;F)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 97
    iget-object v0, p0, Lcom/android/deskclock/ItemAnimator;->mAddAnimatorsList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object p0, p0, Lcom/android/deskclock/ItemAnimator;->mAnimators:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 0

    .line 251
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This method should not be used"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 9

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/deskclock/ItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 162
    invoke-virtual {p0, p2}, Lcom/android/deskclock/ItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 164
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v6

    .line 165
    instance-of p4, p3, Lcom/android/deskclock/ItemAnimator$PayloadItemHolderInfo;

    if-eqz p4, :cond_0

    .line 166
    move-object p4, p3

    check-cast p4, Lcom/android/deskclock/ItemAnimator$PayloadItemHolderInfo;

    invoke-virtual {p4}, Lcom/android/deskclock/ItemAnimator$PayloadItemHolderInfo;->getPayloads()Ljava/util/List;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    move-object v1, p4

    const/4 p4, 0x0

    const/4 v8, 0x1

    if-ne p1, p2, :cond_2

    .line 169
    move-object v0, p2

    check-cast v0, Lcom/android/deskclock/ItemAnimator$OnAnimateChangeListener;

    iget v2, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v3, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->right:I

    iget v5, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->bottom:I

    .line 170
    invoke-interface/range {v0 .. v7}, Lcom/android/deskclock/ItemAnimator$OnAnimateChangeListener;->onAnimateChange(Ljava/util/List;IIIIJ)Landroid/animation/Animator;

    move-result-object p1

    if-nez p1, :cond_1

    .line 173
    invoke-virtual {p0, p2, p4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return p4

    .line 176
    :cond_1
    new-instance p3, Lcom/android/deskclock/ItemAnimator$4;

    invoke-direct {p3, p0, p2}, Lcom/android/deskclock/ItemAnimator$4;-><init>(Lcom/android/deskclock/ItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 189
    iget-object p3, p0, Lcom/android/deskclock/ItemAnimator;->mChangeAnimatorsList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object p0, p0, Lcom/android/deskclock/ItemAnimator;->mAnimators:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v8

    .line 192
    :cond_2
    instance-of p3, p1, Lcom/android/deskclock/ItemAnimator$OnAnimateChangeListener;

    if-eqz p3, :cond_6

    instance-of p3, p2, Lcom/android/deskclock/ItemAnimator$OnAnimateChangeListener;

    if-nez p3, :cond_3

    goto :goto_3

    .line 200
    :cond_3
    move-object p3, p1

    check-cast p3, Lcom/android/deskclock/ItemAnimator$OnAnimateChangeListener;

    .line 201
    invoke-interface {p3, p1, p2, v6, v7}, Lcom/android/deskclock/ItemAnimator$OnAnimateChangeListener;->onAnimateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;J)Landroid/animation/Animator;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 203
    new-instance v0, Lcom/android/deskclock/ItemAnimator$5;

    invoke-direct {v0, p0, p1}, Lcom/android/deskclock/ItemAnimator$5;-><init>(Lcom/android/deskclock/ItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 216
    iget-object v0, p0, Lcom/android/deskclock/ItemAnimator;->mAnimators:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/android/deskclock/ItemAnimator;->mChangeAnimatorsList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    :cond_4
    invoke-virtual {p0, p1, v8}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 222
    :goto_1
    move-object p3, p2

    check-cast p3, Lcom/android/deskclock/ItemAnimator$OnAnimateChangeListener;

    .line 223
    invoke-interface {p3, p1, p2, v6, v7}, Lcom/android/deskclock/ItemAnimator$OnAnimateChangeListener;->onAnimateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;J)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 225
    new-instance p3, Lcom/android/deskclock/ItemAnimator$6;

    invoke-direct {p3, p0, p2}, Lcom/android/deskclock/ItemAnimator$6;-><init>(Lcom/android/deskclock/ItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 238
    iget-object p3, p0, Lcom/android/deskclock/ItemAnimator;->mAnimators:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object p0, p0, Lcom/android/deskclock/ItemAnimator;->mChangeAnimatorsList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 241
    :cond_5
    invoke-virtual {p0, p2, p4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    :goto_2
    return v8

    .line 195
    :cond_6
    :goto_3
    invoke-virtual {p0, p1, v8}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 196
    invoke-virtual {p0, p2, v8}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return p4
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 8

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/deskclock/ItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 108
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide p2

    const/4 v0, 0x0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return v0

    .line 115
    :cond_0
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 116
    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v5

    .line 117
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v6

    neg-int v1, p4

    int-to-float v1, v1

    .line 118
    invoke-virtual {v4, v1}, Landroid/view/View;->setTranslationX(F)V

    neg-int v1, p5

    int-to-float v1, v1

    .line 119
    invoke-virtual {v4, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v1, 0x0

    const/4 v7, 0x1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 123
    sget-object p4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array p5, v7, [F

    aput v1, p5, v0

    invoke-static {p4, p5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    .line 124
    sget-object p5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v7, [F

    aput v1, v2, v0

    invoke-static {p5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p5

    .line 125
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object p4, v2, v0

    aput-object p5, v2, v7

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p4

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 127
    sget-object p4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array p5, v7, [F

    aput v1, p5, v0

    invoke-static {p4, p5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    .line 128
    iget-object p5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-array v1, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object p4, v1, v0

    invoke-static {p5, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p4

    goto :goto_0

    .line 130
    :cond_2
    sget-object p4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array p5, v7, [F

    aput v1, p5, v0

    invoke-static {p4, p5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    .line 131
    iget-object p5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-array v1, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object p4, v1, v0

    invoke-static {p5, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 134
    :goto_0
    invoke-virtual {p4, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 135
    sget-object p2, Lcom/android/deskclock/AnimatorUtils;->INTERPOLATOR_FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p4, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 136
    new-instance p2, Lcom/android/deskclock/ItemAnimator$3;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/deskclock/ItemAnimator$3;-><init>(Lcom/android/deskclock/ItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;FF)V

    invoke-virtual {p4, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 151
    iget-object p2, p0, Lcom/android/deskclock/ItemAnimator;->mMoveAnimatorsList:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object p0, p0, Lcom/android/deskclock/ItemAnimator;->mAnimators:Ljava/util/Map;

    invoke-interface {p0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v7
.end method

.method public animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 7

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/deskclock/ItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 51
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 53
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 55
    new-instance v2, Lcom/android/deskclock/ItemAnimator$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/deskclock/ItemAnimator$1;-><init>(Lcom/android/deskclock/ItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;F)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    iget-object v0, p0, Lcom/android/deskclock/ItemAnimator;->mRemoveAnimatorsList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p0, p0, Lcom/android/deskclock/ItemAnimator;->mAnimators:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 348
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result p0

    .line 350
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/android/deskclock/ItemAnimator;->mAnimators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 295
    iget-object v1, p0, Lcom/android/deskclock/ItemAnimator;->mAnimators:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object p1, p0, Lcom/android/deskclock/ItemAnimator;->mAddAnimatorsList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 297
    iget-object p1, p0, Lcom/android/deskclock/ItemAnimator;->mRemoveAnimatorsList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 298
    iget-object p1, p0, Lcom/android/deskclock/ItemAnimator;->mChangeAnimatorsList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 299
    iget-object p1, p0, Lcom/android/deskclock/ItemAnimator;->mMoveAnimatorsList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/ItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public endAnimations()V
    .locals 2

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/deskclock/ItemAnimator;->mAnimators:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 311
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 312
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    goto :goto_0

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/ItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public isRunning()Z
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/android/deskclock/ItemAnimator;->mAnimators:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public obtainHolderInfo()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1

    .line 342
    new-instance p0, Lcom/android/deskclock/ItemAnimator$PayloadItemHolderInfo;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/deskclock/ItemAnimator$PayloadItemHolderInfo;-><init>(Lcom/android/deskclock/ItemAnimator$1;)V

    return-object p0
.end method

.method public recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$State;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;"
        }
    .end annotation

    .line 332
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object p0

    .line 334
    instance-of p1, p0, Lcom/android/deskclock/ItemAnimator$PayloadItemHolderInfo;

    if-eqz p1, :cond_0

    .line 335
    move-object p1, p0

    check-cast p1, Lcom/android/deskclock/ItemAnimator$PayloadItemHolderInfo;

    invoke-virtual {p1, p4}, Lcom/android/deskclock/ItemAnimator$PayloadItemHolderInfo;->setPayloads(Ljava/util/List;)V

    :cond_0
    return-object p0
.end method

.method public runPendingAnimations()V
    .locals 6

    .line 256
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 257
    iget-object v1, p0, Lcom/android/deskclock/ItemAnimator;->mRemoveAnimatorsList:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 258
    iget-object v1, p0, Lcom/android/deskclock/ItemAnimator;->mRemoveAnimatorsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 260
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 261
    iget-object v2, p0, Lcom/android/deskclock/ItemAnimator;->mAddAnimatorsList:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 262
    iget-object v2, p0, Lcom/android/deskclock/ItemAnimator;->mAddAnimatorsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 264
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 265
    iget-object v3, p0, Lcom/android/deskclock/ItemAnimator;->mChangeAnimatorsList:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 266
    iget-object v3, p0, Lcom/android/deskclock/ItemAnimator;->mChangeAnimatorsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 268
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 269
    iget-object v4, p0, Lcom/android/deskclock/ItemAnimator;->mMoveAnimatorsList:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 270
    iget-object v4, p0, Lcom/android/deskclock/ItemAnimator;->mMoveAnimatorsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 272
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 273
    new-instance v5, Lcom/android/deskclock/ItemAnimator$7;

    invoke-direct {v5, p0}, Lcom/android/deskclock/ItemAnimator$7;-><init>(Lcom/android/deskclock/ItemAnimator;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 283
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 284
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 285
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 286
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 287
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 288
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
