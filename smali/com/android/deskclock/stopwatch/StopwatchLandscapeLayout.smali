.class public Lcom/android/deskclock/stopwatch/StopwatchLandscapeLayout;
.super Landroid/view/ViewGroup;
.source "StopwatchLandscapeLayout.java"


# instance fields
.field private mLapsListView:Landroid/view/View;

.field private mStopwatchView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0a00bc

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchLandscapeLayout;->mLapsListView:Landroid/view/View;

    const v0, 0x7f0a0133

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchLandscapeLayout;->mStopwatchView:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 119
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    .line 120
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    .line 121
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    .line 122
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p4, p5

    sub-int p5, p3, p1

    sub-int/2addr p4, p2

    .line 125
    div-int/lit8 p4, p4, 0x2

    .line 126
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 129
    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchLandscapeLayout;->mLapsListView:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 131
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchLandscapeLayout;->mLapsListView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchLandscapeLayout;->mLapsListView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v3, p2, p4

    .line 133
    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    if-eqz v0, :cond_1

    sub-int v4, p3, v1

    move v5, p3

    goto :goto_1

    :cond_1
    add-int v4, p1, v1

    move v5, v4

    move v4, p1

    .line 145
    :goto_1
    iget-object v6, p0, Lcom/android/deskclock/stopwatch/StopwatchLandscapeLayout;->mLapsListView:Landroid/view/View;

    invoke-virtual {v6, v4, v3, v5, v2}, Landroid/view/View;->layout(IIII)V

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchLandscapeLayout;->mStopwatchView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 152
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchLandscapeLayout;->mStopwatchView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr p2, p4

    .line 153
    div-int/lit8 p4, v3, 0x2

    sub-int/2addr p2, p4

    add-int/2addr v3, p2

    if-eqz v0, :cond_3

    sub-int/2addr p5, v1

    sub-int/2addr p5, v2

    .line 158
    div-int/lit8 p5, p5, 0x2

    add-int/2addr p1, p5

    add-int/2addr v2, p1

    goto :goto_2

    :cond_3
    sub-int/2addr p5, v1

    sub-int/2addr p5, v2

    .line 161
    div-int/lit8 p5, p5, 0x2

    sub-int p1, p3, p5

    sub-int p3, p1, v2

    move v2, p1

    move p1, p3

    .line 165
    :goto_2
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchLandscapeLayout;->mStopwatchView:Landroid/view/View;

    invoke-virtual {p0, p1, p2, v2, v3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 86
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 88
    div-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    .line 90
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v5, -0x80000000

    .line 91
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 95
    iget-object v5, p0, Lcom/android/deskclock/stopwatch/StopwatchLandscapeLayout;->mLapsListView:Landroid/view/View;

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-eq v5, v7, :cond_0

    .line 97
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchLandscapeLayout;->mLapsListView:Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Landroid/view/View;->measure(II)V

    .line 100
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchLandscapeLayout;->mLapsListView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 101
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 102
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchLandscapeLayout;->mLapsListView:Landroid/view/View;

    invoke-virtual {v4, v2, v0}, Landroid/view/View;->measure(II)V

    :cond_0
    sub-int/2addr v1, v3

    .line 109
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 110
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchLandscapeLayout;->mStopwatchView:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 113
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method
