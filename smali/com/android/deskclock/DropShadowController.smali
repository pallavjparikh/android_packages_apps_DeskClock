.class public final Lcom/android/deskclock/DropShadowController;
.super Ljava/lang/Object;
.source "DropShadowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/DropShadowController$ScrollChangeWatcher;
    }
.end annotation


# instance fields
.field private final mDropShadowAnimator:Landroid/animation/ValueAnimator;

.field private final mDropShadowView:Landroid/view/View;

.field private mHairlineView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mScrollChangeWatcher:Lcom/android/deskclock/DropShadowController$ScrollChangeWatcher;

.field private mUiDataModel:Lcom/android/deskclock/uidata/UiDataModel;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/deskclock/DropShadowController$ScrollChangeWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/DropShadowController$ScrollChangeWatcher;-><init>(Lcom/android/deskclock/DropShadowController;Lcom/android/deskclock/DropShadowController$1;)V

    iput-object v0, p0, Lcom/android/deskclock/DropShadowController;->mScrollChangeWatcher:Lcom/android/deskclock/DropShadowController$ScrollChangeWatcher;

    .line 96
    iput-object p1, p0, Lcom/android/deskclock/DropShadowController;->mDropShadowView:Landroid/view/View;

    .line 97
    iget-object p1, p0, Lcom/android/deskclock/DropShadowController;->mDropShadowView:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Lcom/android/deskclock/AnimatorUtils;->getAlphaAnimator(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 98
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/uidata/UiDataModel;->getShortAnimationDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/DropShadowController;->mDropShadowAnimator:Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;Landroid/widget/ListView;)V
    .locals 1

    .line 78
    invoke-direct {p0, p1}, Lcom/android/deskclock/DropShadowController;-><init>(Landroid/view/View;)V

    .line 79
    iput-object p2, p0, Lcom/android/deskclock/DropShadowController;->mListView:Landroid/widget/ListView;

    .line 80
    iget-object p1, p0, Lcom/android/deskclock/DropShadowController;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/deskclock/DropShadowController;->mScrollChangeWatcher:Lcom/android/deskclock/DropShadowController$ScrollChangeWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 81
    invoke-static {p2}, Lcom/android/deskclock/Utils;->isScrolledToTop(Landroid/view/View;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/deskclock/DropShadowController;->updateDropShadow(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1}, Lcom/android/deskclock/DropShadowController;-><init>(Landroid/view/View;)V

    .line 90
    iput-object p2, p0, Lcom/android/deskclock/DropShadowController;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    iget-object p1, p0, Lcom/android/deskclock/DropShadowController;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/deskclock/DropShadowController;->mScrollChangeWatcher:Lcom/android/deskclock/DropShadowController$ScrollChangeWatcher;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 92
    invoke-static {p2}, Lcom/android/deskclock/Utils;->isScrolledToTop(Landroid/view/View;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/deskclock/DropShadowController;->updateDropShadow(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/deskclock/uidata/UiDataModel;Landroid/view/View;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Lcom/android/deskclock/DropShadowController;-><init>(Landroid/view/View;)V

    .line 67
    iput-object p2, p0, Lcom/android/deskclock/DropShadowController;->mUiDataModel:Lcom/android/deskclock/uidata/UiDataModel;

    .line 68
    iget-object p1, p0, Lcom/android/deskclock/DropShadowController;->mUiDataModel:Lcom/android/deskclock/uidata/UiDataModel;

    iget-object v0, p0, Lcom/android/deskclock/DropShadowController;->mScrollChangeWatcher:Lcom/android/deskclock/DropShadowController$ScrollChangeWatcher;

    invoke-virtual {p1, v0}, Lcom/android/deskclock/uidata/UiDataModel;->addTabScrollListener(Lcom/android/deskclock/uidata/TabScrollListener;)V

    .line 69
    iput-object p3, p0, Lcom/android/deskclock/DropShadowController;->mHairlineView:Landroid/view/View;

    .line 70
    invoke-virtual {p2}, Lcom/android/deskclock/uidata/UiDataModel;->isSelectedTabScrolledToTop()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/deskclock/DropShadowController;->updateDropShadow(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/DropShadowController;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/deskclock/DropShadowController;->updateDropShadow(Z)V

    return-void
.end method

.method private updateDropShadow(Z)V
    .locals 2

    if-nez p1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/deskclock/DropShadowController;->mDropShadowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 121
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->isApplicationInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/deskclock/DropShadowController;->mDropShadowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/DropShadowController;->mDropShadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/android/deskclock/DropShadowController;->mHairlineView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p1, :cond_3

    .line 131
    iget-object p1, p0, Lcom/android/deskclock/DropShadowController;->mDropShadowView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_3

    .line 132
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->isApplicationInForeground()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/android/deskclock/DropShadowController;->mDropShadowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 135
    :cond_2
    iget-object p1, p0, Lcom/android/deskclock/DropShadowController;->mDropShadowView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 137
    :goto_1
    iget-object p0, p0, Lcom/android/deskclock/DropShadowController;->mHairlineView:Landroid/view/View;

    if-eqz p0, :cond_3

    const/4 p1, 0x4

    .line 138
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public stop()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/deskclock/DropShadowController;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 107
    iget-object p0, p0, Lcom/android/deskclock/DropShadowController;->mScrollChangeWatcher:Lcom/android/deskclock/DropShadowController$ScrollChangeWatcher;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/DropShadowController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    .line 109
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/DropShadowController;->mUiDataModel:Lcom/android/deskclock/uidata/UiDataModel;

    if-eqz v0, :cond_2

    .line 111
    iget-object p0, p0, Lcom/android/deskclock/DropShadowController;->mScrollChangeWatcher:Lcom/android/deskclock/DropShadowController$ScrollChangeWatcher;

    invoke-virtual {v0, p0}, Lcom/android/deskclock/uidata/UiDataModel;->removeTabScrollListener(Lcom/android/deskclock/uidata/TabScrollListener;)V

    :cond_2
    :goto_0
    return-void
.end method
