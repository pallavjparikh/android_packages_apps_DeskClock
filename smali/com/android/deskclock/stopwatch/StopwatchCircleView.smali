.class public final Lcom/android/deskclock/stopwatch/StopwatchCircleView;
.super Landroid/view/View;
.source "StopwatchCircleView.java"


# instance fields
.field private final mArcRect:Landroid/graphics/RectF;

.field private final mCompletedColor:I

.field private final mDotRadius:F

.field private final mFill:Landroid/graphics/Paint;

.field private final mMarkerStrokeSize:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadiusOffset:F

.field private final mRemainderColor:I

.field private final mScreenDensity:F

.field private final mStrokeSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/stopwatch/StopwatchCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mPaint:Landroid/graphics/Paint;

    .line 64
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mFill:Landroid/graphics/Paint;

    .line 65
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mArcRect:Landroid/graphics/RectF;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07006b

    .line 76
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    .line 78
    iput v1, p0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mDotRadius:F

    .line 79
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mScreenDensity:F

    const v1, 0x7f07006a

    .line 80
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mStrokeSize:F

    const v1, 0x7f07006c

    .line 81
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mMarkerStrokeSize:F

    .line 82
    iget p2, p0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mStrokeSize:F

    iget v1, p0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mMarkerStrokeSize:F

    invoke-static {p2, v0, v1}, Lcom/android/deskclock/Utils;->calculateRadiusOffset(FFF)F

    move-result p2

    iput p2, p0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mRadiusOffset:F

    const/4 p2, -0x1

    .line 84
    iput p2, p0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mRemainderColor:I

    const p2, 0x7f04009c

    .line 85
    invoke-static {p1, p2}, Lcom/android/deskclock/ThemeUtils;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mCompletedColor:I

    .line 87
    iget-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mFill:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mCompletedColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mFill:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private getLaps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Lap;",
            ">;"
        }
    .end annotation

    .line 175
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->getLaps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getStopwatch()Lcom/android/deskclock/data/Stopwatch;
    .locals 0

    .line 171
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 107
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mRadiusOffset:F

    sub-float v8, v3, v4

    .line 110
    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mRemainderColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mStrokeSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->getLaps()Ljava/util/List;

    move-result-object v3

    .line 116
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/deskclock/data/DataModel;->canAddMoreLaps()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 125
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object v9

    .line 126
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .line 127
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/data/Lap;

    const/4 v5, 0x0

    .line 128
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/deskclock/data/Lap;

    .line 129
    invoke-virtual {v4}, Lcom/android/deskclock/data/Lap;->getLapTime()J

    move-result-wide v3

    .line 130
    invoke-virtual {v9}, Lcom/android/deskclock/data/Stopwatch;->getTotalTime()J

    move-result-wide v5

    invoke-virtual {v11}, Lcom/android/deskclock/data/Lap;->getAccumulatedTime()J

    move-result-wide v12

    sub-long/2addr v5, v12

    .line 133
    iget-object v12, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mArcRect:Landroid/graphics/RectF;

    int-to-float v13, v2

    sub-float v2, v13, v8

    iput v2, v12, Landroid/graphics/RectF;->top:F

    add-float v2, v13, v8

    .line 134
    iput v2, v12, Landroid/graphics/RectF;->bottom:F

    int-to-float v14, v1

    sub-float v1, v14, v8

    .line 135
    iput v1, v12, Landroid/graphics/RectF;->left:F

    add-float v1, v14, v8

    .line 136
    iput v1, v12, Landroid/graphics/RectF;->right:F

    long-to-float v1, v5

    long-to-float v12, v3

    div-float v15, v1, v12

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v15, v1

    if-lez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v15

    :goto_0
    sub-float v2, v1, v2

    .line 141
    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mArcRect:Landroid/graphics/RectF;

    sub-float/2addr v1, v2

    const/high16 v16, 0x43b40000    # 360.0f

    mul-float v1, v1, v16

    const/high16 v17, 0x43870000    # 270.0f

    add-float v4, v1, v17

    mul-float v5, v2, v16

    const/4 v6, 0x0

    iget-object v2, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v18, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 144
    iget-object v1, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mCompletedColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v2, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mArcRect:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    mul-float v15, v15, v16

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v1, 0x1

    if-le v10, v1, :cond_2

    .line 149
    iget-object v1, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mRemainderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v1, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mMarkerStrokeSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 151
    invoke-virtual {v11}, Lcom/android/deskclock/data/Lap;->getLapTime()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v1, v12

    mul-float v1, v1, v16

    add-float v3, v1, v17

    .line 153
    iget v1, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mScreenDensity:F

    const-wide v4, 0x4076800000000000L    # 360.0

    float-to-double v10, v8

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v10, v10, v18

    div-double/2addr v4, v10

    double-to-float v2, v4

    mul-float v4, v1, v2

    .line 154
    iget-object v2, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mArcRect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_2
    add-float v15, v15, v17

    float-to-double v1, v15

    .line 159
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    float-to-double v3, v8

    .line 160
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-float v5, v5

    add-float/2addr v14, v5

    .line 161
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v3, v1

    double-to-float v1, v3

    add-float/2addr v13, v1

    .line 162
    iget v1, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mDotRadius:F

    iget-object v2, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v13, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 165
    invoke-virtual {v9}, Lcom/android/deskclock/data/Stopwatch;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_3
    return-void

    :cond_4
    :goto_1
    int-to-float v1, v1

    int-to-float v2, v2

    .line 118
    iget-object v0, v0, Lcom/android/deskclock/stopwatch/StopwatchCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v8, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method update()V
    .locals 0

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method
