.class public Lcom/android/deskclock/widget/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# static fields
.field public static final FILL_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/deskclock/widget/CircleView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RADIUS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/deskclock/widget/CircleView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mGravity:I

.field private mRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lcom/android/deskclock/widget/CircleView$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "fillColor"

    invoke-direct {v0, v1, v2}, Lcom/android/deskclock/widget/CircleView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/widget/CircleView;->FILL_COLOR:Landroid/util/Property;

    .line 58
    new-instance v0, Lcom/android/deskclock/widget/CircleView$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "radius"

    invoke-direct {v0, v1, v2}, Lcom/android/deskclock/widget/CircleView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/widget/CircleView;->RADIUS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/widget/CircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/widget/CircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/widget/CircleView;->mCirclePaint:Landroid/graphics/Paint;

    .line 92
    sget-object v0, Lcom/android/deskclock/R$styleable;->CircleView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 95
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/deskclock/widget/CircleView;->mGravity:I

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 96
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/android/deskclock/widget/CircleView;->mCenterX:F

    const/4 p3, 0x2

    .line 97
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/android/deskclock/widget/CircleView;->mCenterY:F

    const/4 p3, 0x4

    .line 98
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/android/deskclock/widget/CircleView;->mRadius:F

    .line 100
    iget-object p0, p0, Lcom/android/deskclock/widget/CircleView;->mCirclePaint:Landroid/graphics/Paint;

    const/4 p2, 0x3

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private applyGravity(II)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .line 292
    invoke-static {p1, p2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    .line 294
    iget p2, p0, Lcom/android/deskclock/widget/CircleView;->mRadius:F

    .line 295
    iget v0, p0, Lcom/android/deskclock/widget/CircleView;->mCenterX:F

    .line 296
    iget v1, p0, Lcom/android/deskclock/widget/CircleView;->mCenterY:F

    and-int/lit8 v2, p1, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    if-eq v2, v5, :cond_2

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/deskclock/widget/CircleView;->mCenterX:F

    goto :goto_0

    .line 300
    :cond_1
    iput v4, p0, Lcom/android/deskclock/widget/CircleView;->mCenterX:F

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    iput v2, p0, Lcom/android/deskclock/widget/CircleView;->mCenterX:F

    :goto_0
    and-int/lit8 v2, p1, 0x70

    const/16 v3, 0x10

    const/16 v7, 0x70

    if-eq v2, v3, :cond_5

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/16 v3, 0x50

    if-eq v2, v3, :cond_3

    if-eq v2, v7, :cond_5

    goto :goto_1

    .line 320
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/deskclock/widget/CircleView;->mCenterY:F

    goto :goto_1

    .line 313
    :cond_4
    iput v4, p0, Lcom/android/deskclock/widget/CircleView;->mCenterY:F

    goto :goto_1

    .line 317
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    iput v2, p0, Lcom/android/deskclock/widget/CircleView;->mCenterY:F

    :goto_1
    const/16 v2, 0x77

    and-int/2addr p1, v2

    if-eq p1, v5, :cond_8

    if-eq p1, v7, :cond_7

    if-eq p1, v2, :cond_6

    goto :goto_2

    .line 326
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v6

    iput p1, p0, Lcom/android/deskclock/widget/CircleView;->mRadius:F

    goto :goto_2

    .line 332
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v6

    iput p1, p0, Lcom/android/deskclock/widget/CircleView;->mRadius:F

    goto :goto_2

    .line 329
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v6

    iput p1, p0, Lcom/android/deskclock/widget/CircleView;->mRadius:F

    .line 336
    :goto_2
    iget p1, p0, Lcom/android/deskclock/widget/CircleView;->mCenterX:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_9

    iget p1, p0, Lcom/android/deskclock/widget/CircleView;->mCenterY:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_9

    iget p1, p0, Lcom/android/deskclock/widget/CircleView;->mRadius:F

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_a

    .line 337
    :cond_9
    invoke-direct {p0, v0, v1, p2}, Lcom/android/deskclock/widget/CircleView;->invalidate(FFF)V

    .line 338
    iget p1, p0, Lcom/android/deskclock/widget/CircleView;->mCenterX:F

    iget p2, p0, Lcom/android/deskclock/widget/CircleView;->mCenterY:F

    iget v0, p0, Lcom/android/deskclock/widget/CircleView;->mRadius:F

    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/widget/CircleView;->invalidate(FFF)V

    :cond_a
    return-void
.end method

.method private invalidate(FFF)V
    .locals 3

    sub-float v0, p1, p3

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sub-float v2, p2, p3

    sub-float/2addr v2, v1

    float-to-int v2, v2

    add-float/2addr p1, p3

    add-float/2addr p1, v1

    float-to-int p1, p1

    add-float/2addr p2, p3

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 278
    invoke-virtual {p0, v0, v2, p1, p2}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method


# virtual methods
.method public final getFillColor()I
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/deskclock/widget/CircleView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    return p0
.end method

.method public final getRadius()F
    .locals 0

    .line 240
    iget p0, p0, Lcom/android/deskclock/widget/CircleView;->mRadius:F

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 125
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 128
    iget v0, p0, Lcom/android/deskclock/widget/CircleView;->mCenterX:F

    iget v1, p0, Lcom/android/deskclock/widget/CircleView;->mCenterY:F

    iget v2, p0, Lcom/android/deskclock/widget/CircleView;->mRadius:F

    iget-object p0, p0, Lcom/android/deskclock/widget/CircleView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 116
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 118
    iget p1, p0, Lcom/android/deskclock/widget/CircleView;->mGravity:I

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/widget/CircleView;->applyGravity(II)V

    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 109
    iget v0, p0, Lcom/android/deskclock/widget/CircleView;->mGravity:I

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0, v0, p1}, Lcom/android/deskclock/widget/CircleView;->applyGravity(II)V

    :cond_0
    return-void
.end method

.method public setCenterX(F)Lcom/android/deskclock/widget/CircleView;
    .locals 3

    .line 198
    iget v0, p0, Lcom/android/deskclock/widget/CircleView;->mCenterX:F

    cmpl-float v1, v0, p1

    if-eqz v1, :cond_0

    .line 200
    iput p1, p0, Lcom/android/deskclock/widget/CircleView;->mCenterX:F

    .line 203
    iget v1, p0, Lcom/android/deskclock/widget/CircleView;->mCenterY:F

    iget v2, p0, Lcom/android/deskclock/widget/CircleView;->mRadius:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/deskclock/widget/CircleView;->invalidate(FFF)V

    .line 204
    iget v0, p0, Lcom/android/deskclock/widget/CircleView;->mCenterY:F

    iget v1, p0, Lcom/android/deskclock/widget/CircleView;->mRadius:F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/deskclock/widget/CircleView;->invalidate(FFF)V

    .line 208
    :cond_0
    iget p1, p0, Lcom/android/deskclock/widget/CircleView;->mGravity:I

    and-int/lit8 p1, p1, -0x8

    iput p1, p0, Lcom/android/deskclock/widget/CircleView;->mGravity:I

    return-object p0
.end method

.method public setCenterY(F)Lcom/android/deskclock/widget/CircleView;
    .locals 3

    .line 221
    iget v0, p0, Lcom/android/deskclock/widget/CircleView;->mCenterY:F

    cmpl-float v1, v0, p1

    if-eqz v1, :cond_0

    .line 223
    iput p1, p0, Lcom/android/deskclock/widget/CircleView;->mCenterY:F

    .line 226
    iget v1, p0, Lcom/android/deskclock/widget/CircleView;->mCenterX:F

    iget v2, p0, Lcom/android/deskclock/widget/CircleView;->mRadius:F

    invoke-direct {p0, v1, v0, v2}, Lcom/android/deskclock/widget/CircleView;->invalidate(FFF)V

    .line 227
    iget v0, p0, Lcom/android/deskclock/widget/CircleView;->mCenterX:F

    iget v1, p0, Lcom/android/deskclock/widget/CircleView;->mRadius:F

    invoke-direct {p0, v0, p1, v1}, Lcom/android/deskclock/widget/CircleView;->invalidate(FFF)V

    .line 231
    :cond_0
    iget p1, p0, Lcom/android/deskclock/widget/CircleView;->mGravity:I

    and-int/lit8 p1, p1, -0x71

    iput p1, p0, Lcom/android/deskclock/widget/CircleView;->mGravity:I

    return-object p0
.end method

.method public setFillColor(I)Lcom/android/deskclock/widget/CircleView;
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/deskclock/widget/CircleView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/deskclock/widget/CircleView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget p1, p0, Lcom/android/deskclock/widget/CircleView;->mCenterX:F

    iget v0, p0, Lcom/android/deskclock/widget/CircleView;->mCenterY:F

    iget v1, p0, Lcom/android/deskclock/widget/CircleView;->mRadius:F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/deskclock/widget/CircleView;->invalidate(FFF)V

    :cond_0
    return-object p0
.end method

.method public setRadius(F)Lcom/android/deskclock/widget/CircleView;
    .locals 3

    .line 251
    iget v0, p0, Lcom/android/deskclock/widget/CircleView;->mRadius:F

    cmpl-float v1, v0, p1

    if-eqz v1, :cond_0

    .line 253
    iput p1, p0, Lcom/android/deskclock/widget/CircleView;->mRadius:F

    .line 256
    iget v1, p0, Lcom/android/deskclock/widget/CircleView;->mCenterX:F

    iget v2, p0, Lcom/android/deskclock/widget/CircleView;->mCenterY:F

    invoke-direct {p0, v1, v2, v0}, Lcom/android/deskclock/widget/CircleView;->invalidate(FFF)V

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 258
    iget v0, p0, Lcom/android/deskclock/widget/CircleView;->mCenterX:F

    iget v1, p0, Lcom/android/deskclock/widget/CircleView;->mCenterY:F

    invoke-direct {p0, v0, v1, p1}, Lcom/android/deskclock/widget/CircleView;->invalidate(FFF)V

    .line 263
    :cond_0
    iget p1, p0, Lcom/android/deskclock/widget/CircleView;->mGravity:I

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    and-int/lit8 p1, p1, -0x8

    .line 264
    iput p1, p0, Lcom/android/deskclock/widget/CircleView;->mGravity:I

    .line 266
    :cond_1
    iget p1, p0, Lcom/android/deskclock/widget/CircleView;->mGravity:I

    and-int/lit8 v0, p1, 0x70

    const/16 v1, 0x70

    if-ne v0, v1, :cond_2

    and-int/lit8 p1, p1, -0x71

    .line 267
    iput p1, p0, Lcom/android/deskclock/widget/CircleView;->mGravity:I

    :cond_2
    return-object p0
.end method
