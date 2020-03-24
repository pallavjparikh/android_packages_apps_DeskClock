.class public Lcom/android/deskclock/CircleButtonsLayout;
.super Landroid/widget/FrameLayout;
.source "CircleButtonsLayout.java"


# instance fields
.field private mCircleView:Landroid/view/View;

.field private mDiamOffset:F

.field private mLabel:Landroid/widget/TextView;

.field private mResetAddButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/CircleButtonsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07006a

    .line 33
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const v0, 0x7f07006b

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x7f07006c

    .line 35
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 36
    invoke-static {p2, v0, p1}, Lcom/android/deskclock/Utils;->calculateRadiusOffset(FFF)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/deskclock/CircleButtonsLayout;->mDiamOffset:F

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 45
    invoke-virtual {p0}, Lcom/android/deskclock/CircleButtonsLayout;->remeasureViews()V

    .line 46
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected remeasureViews()V
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/android/deskclock/CircleButtonsLayout;->mLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0a015d

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/CircleButtonsLayout;->mCircleView:Landroid/view/View;

    const v0, 0x7f0a014e

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/CircleButtonsLayout;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f0a00f7

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/deskclock/CircleButtonsLayout;->mResetAddButton:Landroid/widget/Button;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/CircleButtonsLayout;->mCircleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/android/deskclock/CircleButtonsLayout;->mCircleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v3, v2

    .line 59
    iget v4, p0, Lcom/android/deskclock/CircleButtonsLayout;->mDiamOffset:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 61
    iget-object v4, p0, Lcom/android/deskclock/CircleButtonsLayout;->mResetAddButton:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 63
    invoke-virtual {v4}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 64
    div-int/lit8 v5, v3, 0x6

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v2, v0, :cond_1

    .line 66
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v6, v1, v0

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 70
    :cond_1
    iget-object v4, p0, Lcom/android/deskclock/CircleButtonsLayout;->mLabel:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 71
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 72
    div-int/lit8 v5, v3, 0x6

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v2, v0, :cond_2

    .line 74
    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 128
    :cond_2
    div-int/lit8 v3, v3, 0x2

    .line 130
    div-int/lit8 v1, v1, 0x2

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-int v0, v3, v1

    sub-int/2addr v3, v1

    mul-int/2addr v0, v3

    int-to-double v0, v0

    .line 132
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    .line 134
    iget-object p0, p0, Lcom/android/deskclock/CircleButtonsLayout;->mLabel:Landroid/widget/TextView;

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_3
    return-void
.end method
