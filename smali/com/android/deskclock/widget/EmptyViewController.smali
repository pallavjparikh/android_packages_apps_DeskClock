.class public final Lcom/android/deskclock/widget/EmptyViewController;
.super Ljava/lang/Object;
.source "EmptyViewController.java"


# static fields
.field private static final USE_TRANSITION_FRAMEWORK:Z


# instance fields
.field private final mContentView:Landroid/view/View;

.field private final mEmptyView:Landroid/view/View;

.field private final mEmptyViewTransition:Landroid/transition/Transition;

.field private mIsEmpty:Z

.field private final mMainLayout:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Lcom/android/deskclock/Utils;->isLOrLater()Z

    move-result v0

    sput-boolean v0, Lcom/android/deskclock/widget/EmptyViewController;->USE_TRANSITION_FRAMEWORK:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/deskclock/widget/EmptyViewController;->mMainLayout:Landroid/view/ViewGroup;

    .line 50
    iput-object p2, p0, Lcom/android/deskclock/widget/EmptyViewController;->mContentView:Landroid/view/View;

    .line 51
    iput-object p3, p0, Lcom/android/deskclock/widget/EmptyViewController;->mEmptyView:Landroid/view/View;

    .line 52
    sget-boolean p1, Lcom/android/deskclock/widget/EmptyViewController;->USE_TRANSITION_FRAMEWORK:Z

    if-eqz p1, :cond_0

    .line 53
    new-instance p1, Landroid/transition/TransitionSet;

    invoke-direct {p1}, Landroid/transition/TransitionSet;-><init>()V

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object p1

    .line 55
    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    move-result-object p1

    .line 56
    invoke-virtual {p1, p3}, Landroid/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    move-result-object p1

    new-instance p2, Landroid/transition/Fade;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Landroid/transition/Fade;-><init>(I)V

    .line 57
    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object p1

    new-instance p2, Landroid/transition/Fade;

    invoke-direct {p2, v0}, Landroid/transition/Fade;-><init>(I)V

    .line 58
    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object p1

    const-wide/16 p2, 0x12c

    .line 59
    invoke-virtual {p1, p2, p3}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/widget/EmptyViewController;->mEmptyViewTransition:Landroid/transition/Transition;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/android/deskclock/widget/EmptyViewController;->mEmptyViewTransition:Landroid/transition/Transition;

    :goto_0
    return-void
.end method


# virtual methods
.method public setEmpty(Z)V
    .locals 3

    .line 71
    iget-boolean v0, p0, Lcom/android/deskclock/widget/EmptyViewController;->mIsEmpty:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 74
    :cond_0
    iput-boolean p1, p0, Lcom/android/deskclock/widget/EmptyViewController;->mIsEmpty:Z

    .line 76
    sget-boolean p1, Lcom/android/deskclock/widget/EmptyViewController;->USE_TRANSITION_FRAMEWORK:Z

    if-eqz p1, :cond_1

    .line 77
    iget-object p1, p0, Lcom/android/deskclock/widget/EmptyViewController;->mMainLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/deskclock/widget/EmptyViewController;->mEmptyViewTransition:Landroid/transition/Transition;

    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/android/deskclock/widget/EmptyViewController;->mEmptyView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/deskclock/widget/EmptyViewController;->mIsEmpty:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/android/deskclock/widget/EmptyViewController;->mContentView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/android/deskclock/widget/EmptyViewController;->mIsEmpty:Z

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
