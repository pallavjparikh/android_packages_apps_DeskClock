.class public Lcom/android/deskclock/AnimatorUtils;
.super Ljava/lang/Object;
.source "AnimatorUtils.java"


# static fields
.field public static final ARGB_EVALUATOR:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final BACKGROUND_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DECELERATE_ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final DRAWABLE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRAWABLE_TINT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERPOLATOR_FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final VIEW_BOTTOM:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIEW_LEFT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIEW_RIGHT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIEW_TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sAnimateValue:Ljava/lang/reflect/Method;

.field private static sTryAnimateValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lcom/android/deskclock/AnimatorUtils$1;

    invoke-direct {v0}, Lcom/android/deskclock/AnimatorUtils$1;-><init>()V

    sput-object v0, Lcom/android/deskclock/AnimatorUtils;->DECELERATE_ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 48
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/android/deskclock/AnimatorUtils;->INTERPOLATOR_FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 51
    new-instance v0, Lcom/android/deskclock/AnimatorUtils$2;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "background.alpha"

    invoke-direct {v0, v1, v2}, Lcom/android/deskclock/AnimatorUtils$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/AnimatorUtils;->BACKGROUND_ALPHA:Landroid/util/Property;

    .line 86
    new-instance v0, Lcom/android/deskclock/AnimatorUtils$3;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "drawable.alpha"

    invoke-direct {v0, v1, v2}, Lcom/android/deskclock/AnimatorUtils$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/AnimatorUtils;->DRAWABLE_ALPHA:Landroid/util/Property;

    .line 99
    new-instance v0, Lcom/android/deskclock/AnimatorUtils$4;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "drawable.tint"

    invoke-direct {v0, v1, v2}, Lcom/android/deskclock/AnimatorUtils$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/AnimatorUtils;->DRAWABLE_TINT:Landroid/util/Property;

    .line 120
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/android/deskclock/AnimatorUtils;->ARGB_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v0, 0x1

    .line 123
    sput-boolean v0, Lcom/android/deskclock/AnimatorUtils;->sTryAnimateValue:Z

    .line 181
    new-instance v0, Lcom/android/deskclock/AnimatorUtils$5;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "left"

    invoke-direct {v0, v1, v2}, Lcom/android/deskclock/AnimatorUtils$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/AnimatorUtils;->VIEW_LEFT:Landroid/util/Property;

    .line 194
    new-instance v0, Lcom/android/deskclock/AnimatorUtils$6;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "top"

    invoke-direct {v0, v1, v2}, Lcom/android/deskclock/AnimatorUtils$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/AnimatorUtils;->VIEW_TOP:Landroid/util/Property;

    .line 207
    new-instance v0, Lcom/android/deskclock/AnimatorUtils$7;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "bottom"

    invoke-direct {v0, v1, v2}, Lcom/android/deskclock/AnimatorUtils$7;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/AnimatorUtils;->VIEW_BOTTOM:Landroid/util/Property;

    .line 220
    new-instance v0, Lcom/android/deskclock/AnimatorUtils$8;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "right"

    invoke-direct {v0, v1, v2}, Lcom/android/deskclock/AnimatorUtils$8;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/AnimatorUtils;->VIEW_RIGHT:Landroid/util/Property;

    return-void
.end method

.method public static varargs getAlphaAnimator(Landroid/view/View;[F)Landroid/animation/ValueAnimator;
    .locals 1

    .line 178
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static getBoundsAnimator(Landroid/view/View;IIIIIIII)Landroid/animation/Animator;
    .locals 1

    .line 272
    invoke-virtual {p0, p1}, Landroid/view/View;->setLeft(I)V

    .line 273
    invoke-virtual {p0, p2}, Landroid/view/View;->setTop(I)V

    .line 274
    invoke-virtual {p0, p3}, Landroid/view/View;->setRight(I)V

    .line 275
    invoke-virtual {p0, p4}, Landroid/view/View;->setBottom(I)V

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/animation/PropertyValuesHolder;

    .line 277
    sget-object p2, Lcom/android/deskclock/AnimatorUtils;->VIEW_LEFT:Landroid/util/Property;

    const/4 p3, 0x1

    new-array p4, p3, [I

    const/4 v0, 0x0

    aput p5, p4, v0

    .line 278
    invoke-static {p2, p4}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    aput-object p2, p1, v0

    sget-object p2, Lcom/android/deskclock/AnimatorUtils;->VIEW_TOP:Landroid/util/Property;

    new-array p4, p3, [I

    aput p6, p4, v0

    .line 279
    invoke-static {p2, p4}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    aput-object p2, p1, p3

    sget-object p2, Lcom/android/deskclock/AnimatorUtils;->VIEW_RIGHT:Landroid/util/Property;

    new-array p4, p3, [I

    aput p7, p4, v0

    .line 280
    invoke-static {p2, p4}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 p4, 0x2

    aput-object p2, p1, p4

    sget-object p2, Lcom/android/deskclock/AnimatorUtils;->VIEW_BOTTOM:Landroid/util/Property;

    new-array p3, p3, [I

    aput p8, p3, v0

    .line 281
    invoke-static {p2, p3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, p1, p3

    .line 277
    invoke-static {p0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static getBoundsAnimator(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Landroid/animation/Animator;
    .locals 14

    .line 244
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 246
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 248
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int v6, v3, v4

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int v7, v3, v4

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int v8, v3, v4

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int v9, v3, v1

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v10, v1, v3

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int v11, v1, v3

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v1

    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int v12, v1, v3

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int v13, v1, v0

    move-object v5, p0

    .line 263
    invoke-static/range {v5 .. v13}, Lcom/android/deskclock/AnimatorUtils;->getBoundsAnimator(Landroid/view/View;IIIIIIII)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getScaleAnimator(Landroid/view/View;[F)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    .line 172
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 173
    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 174
    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 172
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static varargs reverse([Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 156
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 157
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    .line 159
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    .line 160
    invoke-static {v2, v4}, Lcom/android/deskclock/AnimatorUtils;->setAnimatedFraction(Landroid/animation/ValueAnimator;F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setAnimatedFraction(Landroid/animation/ValueAnimator;F)V
    .locals 6

    .line 126
    invoke-static {}, Lcom/android/deskclock/Utils;->isLMR1OrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    return-void

    .line 131
    :cond_0
    sget-boolean v0, Lcom/android/deskclock/AnimatorUtils;->sTryAnimateValue:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 135
    :try_start_0
    sget-object v1, Lcom/android/deskclock/AnimatorUtils;->sAnimateValue:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 136
    const-class v1, Landroid/animation/ValueAnimator;

    const-string v3, "animateValue"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    .line 137
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/deskclock/AnimatorUtils;->sAnimateValue:Ljava/lang/reflect/Method;

    .line 138
    sget-object v1, Lcom/android/deskclock/AnimatorUtils;->sAnimateValue:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 141
    :cond_1
    sget-object v1, Lcom/android/deskclock/AnimatorUtils;->sAnimateValue:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Unable to use animateValue directly"

    .line 146
    invoke-static {v2, v1}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    sput-boolean v0, Lcom/android/deskclock/AnimatorUtils;->sTryAnimateValue:Z

    .line 152
    :cond_2
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void
.end method

.method public static setBackgroundAlpha(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 2

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 79
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 80
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-lez v1, :cond_0

    const/4 p0, 0x0

    .line 81
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public static startDrawableAnimation(Landroid/widget/ImageView;)V
    .locals 1

    .line 285
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 286
    instance-of v0, p0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 287
    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method
