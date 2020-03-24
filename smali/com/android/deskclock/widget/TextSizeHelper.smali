.class public final Lcom/android/deskclock/widget/TextSizeHelper;
.super Ljava/lang/Object;
.source "TextSizeHelper.java"


# instance fields
.field private mHeightConstraint:I

.field private mIgnoreRequestLayout:Z

.field private mMaxTextSize:F

.field private final mMeasurePaint:Landroid/text/TextPaint;

.field private final mTextView:Landroid/widget/TextView;

.field private mWidthConstraint:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mMeasurePaint:Landroid/text/TextPaint;

    const v0, 0x7fffffff

    .line 42
    iput v0, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mWidthConstraint:I

    .line 45
    iput v0, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mHeightConstraint:I

    .line 51
    iput-object p1, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mMaxTextSize:F

    return-void
.end method

.method private adjustTextSize()V
    .locals 9

    .line 91
    iget-object v0, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 92
    iget v1, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mMaxTextSize:F

    .line 93
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget v2, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mWidthConstraint:I

    const v3, 0x7fffffff

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mHeightConstraint:I

    if-ge v2, v3, :cond_4

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mMeasurePaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 97
    iget v2, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mMaxTextSize:F

    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v1

    move v1, v3

    :goto_0
    cmpl-float v5, v2, v1

    if-ltz v5, :cond_3

    add-float v5, v2, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 99
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    .line 100
    iget-object v6, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mMeasurePaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 102
    iget-object v6, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mMeasurePaint:Landroid/text/TextPaint;

    invoke-static {v0, v6}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v6

    .line 103
    iget-object v7, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mMeasurePaint:Landroid/text/TextPaint;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v7

    int-to-float v7, v7

    .line 104
    iget v8, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mWidthConstraint:I

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_2

    iget v6, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mHeightConstraint:I

    int-to-float v6, v6

    cmpl-float v6, v7, v6

    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    add-float v1, v5, v3

    move v4, v5

    goto :goto_0

    :cond_2
    :goto_1
    sub-float/2addr v5, v3

    move v2, v5

    goto :goto_0

    :cond_3
    move v1, v4

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mIgnoreRequestLayout:Z

    .line 115
    iget-object v0, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 116
    iput-boolean v2, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mIgnoreRequestLayout:Z

    :cond_5
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2

    .line 57
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 59
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 63
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 65
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    sub-int v1, p2, v0

    .line 68
    :cond_1
    iget-object p2, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->isLayoutRequested()Z

    move-result p2

    if-nez p2, :cond_2

    iget p2, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mWidthConstraint:I

    if-ne p2, p1, :cond_2

    iget p2, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mHeightConstraint:I

    if-eq p2, v1, :cond_3

    .line 70
    :cond_2
    iput p1, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mWidthConstraint:I

    .line 71
    iput v1, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mHeightConstraint:I

    .line 73
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextSizeHelper;->adjustTextSize()V

    :cond_3
    return-void
.end method

.method public onTextChanged(II)V
    .locals 0

    if-eq p1, p2, :cond_0

    .line 82
    iget-object p0, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public shouldIgnoreRequestLayout()Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/android/deskclock/widget/TextSizeHelper;->mIgnoreRequestLayout:Z

    return p0
.end method
