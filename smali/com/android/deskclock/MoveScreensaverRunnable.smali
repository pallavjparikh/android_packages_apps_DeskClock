.class public final Lcom/android/deskclock/MoveScreensaverRunnable;
.super Ljava/lang/Object;
.source "MoveScreensaverRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mAcceleration:Landroid/view/animation/Interpolator;

.field private mActiveAnimator:Landroid/animation/Animator;

.field private final mContentView:Landroid/view/View;

.field private final mDeceleration:Landroid/view/animation/Interpolator;

.field private final mSaverView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mAcceleration:Landroid/view/animation/Interpolator;

    .line 47
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mDeceleration:Landroid/view/animation/Interpolator;

    .line 63
    iput-object p1, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mContentView:Landroid/view/View;

    .line 64
    iput-object p2, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mSaverView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/MoveScreensaverRunnable;)Landroid/view/View;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mSaverView:Landroid/view/View;

    return-object p0
.end method

.method private static getRandomPoint(F)F
    .locals 4

    .line 155
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    float-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-int p0, v0

    int-to-float p0, p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 99
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 101
    iget-object v0, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mSaverView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0xbb8

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 108
    iget-object v4, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mSaverView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v4, v0, v4

    int-to-float v4, v4

    invoke-static {v4}, Lcom/android/deskclock/MoveScreensaverRunnable;->getRandomPoint(F)F

    move-result v4

    .line 109
    iget-object v5, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mSaverView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    invoke-static {v0}, Lcom/android/deskclock/MoveScreensaverRunnable;->getRandomPoint(F)F

    move-result v0

    .line 111
    iget-object v5, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mSaverView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setX(F)V

    .line 112
    iget-object v4, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mSaverView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setY(F)V

    .line 113
    iget-object v0, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mSaverView:Landroid/view/View;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v3}, Lcom/android/deskclock/AnimatorUtils;->getAlphaAnimator(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mActiveAnimator:Landroid/animation/Animator;

    .line 114
    iget-object v0, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mActiveAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 115
    iget-object v0, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mActiveAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mDeceleration:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 116
    iget-object p0, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mActiveAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto/16 :goto_1

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mSaverView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-static {v0}, Lcom/android/deskclock/MoveScreensaverRunnable;->getRandomPoint(F)F

    move-result v0

    .line 120
    iget-object v4, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mSaverView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v4}, Lcom/android/deskclock/MoveScreensaverRunnable;->getRandomPoint(F)F

    move-result v4

    .line 123
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 124
    invoke-virtual {v5, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 125
    iget-object v6, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mAcceleration:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    iget-object v6, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mSaverView:Landroid/view/View;

    new-array v7, v3, [F

    fill-array-data v7, :array_1

    invoke-static {v6, v7}, Lcom/android/deskclock/AnimatorUtils;->getAlphaAnimator(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mSaverView:Landroid/view/View;

    new-array v8, v3, [F

    fill-array-data v8, :array_2

    .line 127
    invoke-static {v7, v8}, Lcom/android/deskclock/AnimatorUtils;->getScaleAnimator(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 130
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 131
    invoke-virtual {v6, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 132
    iget-object v1, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mDeceleration:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 133
    iget-object v1, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mSaverView:Landroid/view/View;

    new-array v2, v3, [F

    fill-array-data v2, :array_3

    invoke-static {v1, v2}, Lcom/android/deskclock/AnimatorUtils;->getAlphaAnimator(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mSaverView:Landroid/view/View;

    new-array v3, v3, [F

    fill-array-data v3, :array_4

    .line 134
    invoke-static {v2, v3}, Lcom/android/deskclock/AnimatorUtils;->getScaleAnimator(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 135
    new-instance v1, Lcom/android/deskclock/MoveScreensaverRunnable$1;

    invoke-direct {v1, p0, v0, v4}, Lcom/android/deskclock/MoveScreensaverRunnable$1;-><init>(Lcom/android/deskclock/MoveScreensaverRunnable;FF)V

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 144
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 145
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 146
    iput-object v0, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mActiveAnimator:Landroid/animation/Animator;

    .line 147
    iget-object p0, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mActiveAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public start()V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/android/deskclock/MoveScreensaverRunnable;->stop()V

    .line 75
    iget-object v0, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mSaverView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 78
    invoke-virtual {p0}, Lcom/android/deskclock/MoveScreensaverRunnable;->run()V

    .line 81
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    const-wide/16 v1, -0xbb8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/deskclock/uidata/UiDataModel;->addMinuteCallback(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 88
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/deskclock/uidata/UiDataModel;->removePeriodicCallback(Ljava/lang/Runnable;)V

    .line 91
    iget-object v0, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mActiveAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/android/deskclock/MoveScreensaverRunnable;->mActiveAnimator:Landroid/animation/Animator;

    :cond_0
    return-void
.end method
