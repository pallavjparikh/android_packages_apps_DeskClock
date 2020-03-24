.class public final Lcom/android/deskclock/timer/TimerCircleView;
.super Landroid/view/View;
.source "TimerCircleView.java"


# instance fields
.field private final mArcRect:Landroid/graphics/RectF;

.field private final mCompletedColor:I

.field private final mDotRadius:F

.field private final mFill:Landroid/graphics/Paint;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadiusOffset:F

.field private final mRemainderColor:I

.field private final mStrokeSize:F

.field private mTimer:Lcom/android/deskclock/data/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/deskclock/timer/TimerCircleView;->mPaint:Landroid/graphics/Paint;

    .line 54
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/deskclock/timer/TimerCircleView;->mFill:Landroid/graphics/Paint;

    .line 55
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/deskclock/timer/TimerCircleView;->mArcRect:Landroid/graphics/RectF;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07006b

    .line 68
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    .line 70
    iput v1, p0, Lcom/android/deskclock/timer/TimerCircleView;->mDotRadius:F

    const v1, 0x7f07006a

    .line 71
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/deskclock/timer/TimerCircleView;->mStrokeSize:F

    .line 72
    iget p2, p0, Lcom/android/deskclock/timer/TimerCircleView;->mStrokeSize:F

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/android/deskclock/Utils;->calculateRadiusOffset(FFF)F

    move-result p2

    iput p2, p0, Lcom/android/deskclock/timer/TimerCircleView;->mRadiusOffset:F

    const/4 p2, -0x1

    .line 74
    iput p2, p0, Lcom/android/deskclock/timer/TimerCircleView;->mRemainderColor:I

    const p2, 0x7f04009c

    .line 75
    invoke-static {p1, p2}, Lcom/android/deskclock/ThemeUtils;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/deskclock/timer/TimerCircleView;->mCompletedColor:I

    .line 77
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerCircleView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerCircleView;->mFill:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/deskclock/timer/TimerCircleView;->mCompletedColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerCircleView;->mFill:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 94
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerCircleView;->mTimer:Lcom/android/deskclock/data/Timer;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 101
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/deskclock/timer/TimerCircleView;->mRadiusOffset:F

    sub-float/2addr v2, v3

    .line 104
    iget-object v3, p0, Lcom/android/deskclock/timer/TimerCircleView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/deskclock/timer/TimerCircleView;->mRemainderColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v3, p0, Lcom/android/deskclock/timer/TimerCircleView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/deskclock/timer/TimerCircleView;->mStrokeSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    iget-object v3, p0, Lcom/android/deskclock/timer/TimerCircleView;->mTimer:Lcom/android/deskclock/data/Timer;

    invoke-virtual {v3}, Lcom/android/deskclock/data/Timer;->isReset()Z

    move-result v3

    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    int-to-float v3, v0

    int-to-float v5, v1

    .line 111
    iget-object v6, p0, Lcom/android/deskclock/timer/TimerCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v5, 0x0

    goto :goto_0

    .line 115
    :cond_1
    iget-object v3, p0, Lcom/android/deskclock/timer/TimerCircleView;->mTimer:Lcom/android/deskclock/data/Timer;

    invoke-virtual {v3}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    iget-object v3, p0, Lcom/android/deskclock/timer/TimerCircleView;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/deskclock/timer/TimerCircleView;->mCompletedColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v0

    int-to-float v6, v1

    .line 119
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v3, p0, Lcom/android/deskclock/timer/TimerCircleView;->mArcRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    sub-float v7, v6, v2

    iput v7, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v2

    .line 126
    iput v6, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    sub-float v7, v6, v2

    .line 127
    iput v7, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v2

    .line 128
    iput v6, v3, Landroid/graphics/RectF;->right:F

    .line 129
    iget-object v3, p0, Lcom/android/deskclock/timer/TimerCircleView;->mTimer:Lcom/android/deskclock/data/Timer;

    invoke-virtual {v3}, Lcom/android/deskclock/data/Timer;->getElapsedTime()J

    move-result-wide v6

    long-to-float v3, v6

    iget-object v6, p0, Lcom/android/deskclock/timer/TimerCircleView;->mTimer:Lcom/android/deskclock/data/Timer;

    invoke-virtual {v6}, Lcom/android/deskclock/data/Timer;->getTotalLength()J

    move-result-wide v6

    long-to-float v6, v6

    div-float/2addr v3, v6

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v5, v3

    .line 133
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerCircleView;->mArcRect:Landroid/graphics/RectF;

    const/high16 v8, 0x43870000    # 270.0f

    mul-float v9, v5, v4

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/deskclock/timer/TimerCircleView;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 136
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerCircleView;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/deskclock/timer/TimerCircleView;->mCompletedColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v8, p0, Lcom/android/deskclock/timer/TimerCircleView;->mArcRect:Landroid/graphics/RectF;

    const/high16 v9, 0x43870000    # 270.0f

    neg-float v5, v3

    mul-float v10, v5, v4

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/deskclock/timer/TimerCircleView;->mPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move v5, v3

    :goto_0
    const/high16 v3, 0x43870000    # 270.0f

    mul-float/2addr v5, v4

    sub-float/2addr v3, v5

    float-to-double v3, v3

    .line 142
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    int-to-float v0, v0

    float-to-double v5, v2

    .line 143
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-float v2, v7

    add-float/2addr v0, v2

    int-to-float v1, v1

    .line 144
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v5, v2

    double-to-float v2, v5

    add-float/2addr v1, v2

    .line 145
    iget v2, p0, Lcom/android/deskclock/timer/TimerCircleView;->mDotRadius:F

    iget-object v3, p0, Lcom/android/deskclock/timer/TimerCircleView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 147
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerCircleView;->mTimer:Lcom/android/deskclock/data/Timer;

    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_3
    return-void
.end method

.method update(Lcom/android/deskclock/data/Timer;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerCircleView;->mTimer:Lcom/android/deskclock/data/Timer;

    if-eq v0, p1, :cond_0

    .line 87
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerCircleView;->mTimer:Lcom/android/deskclock/data/Timer;

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method
