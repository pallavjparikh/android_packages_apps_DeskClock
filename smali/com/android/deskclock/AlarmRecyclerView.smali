.class public Lcom/android/deskclock/AlarmRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "AlarmRecyclerView.java"


# instance fields
.field private mIgnoreRequestLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/AlarmRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/AlarmRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance p1, Lcom/android/deskclock/AlarmRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/android/deskclock/AlarmRecyclerView$1;-><init>(Lcom/android/deskclock/AlarmRecyclerView;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/android/deskclock/AlarmRecyclerView;->mIgnoreRequestLayout:Z

    .line 55
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/android/deskclock/AlarmRecyclerView;->mIgnoreRequestLayout:Z

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/android/deskclock/AlarmRecyclerView;->mIgnoreRequestLayout:Z

    if-nez v0, :cond_1

    .line 62
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method
