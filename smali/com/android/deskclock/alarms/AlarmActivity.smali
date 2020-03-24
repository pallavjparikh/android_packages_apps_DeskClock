.class public Lcom/android/deskclock/alarms/AlarmActivity;
.super Lcom/android/deskclock/BaseActivity;
.source "AlarmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final LOGGER:Lcom/android/deskclock/LogUtils$Logger;

.field private static final PULSE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final REVEAL_INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAlarmAnimator:Landroid/animation/ValueAnimator;

.field private mAlarmButton:Landroid/widget/ImageView;

.field private mAlarmHandled:Z

.field private mAlarmInstance:Lcom/android/deskclock/provider/AlarmInstance;

.field private mAlertInfoView:Landroid/widget/TextView;

.field private mAlertTitleView:Landroid/widget/TextView;

.field private mAlertView:Landroid/view/ViewGroup;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContentView:Landroid/view/ViewGroup;

.field private mCurrentHourColor:I

.field private mDismissAnimator:Landroid/animation/ValueAnimator;

.field private mDismissButton:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private mHintView:Landroid/widget/TextView;

.field private mInitialPointerIndex:I

.field private mPulseAnimator:Landroid/animation/ValueAnimator;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mServiceBound:Z

.field private mSnoozeAnimator:Landroid/animation/ValueAnimator;

.field private mSnoozeButton:Landroid/widget/ImageView;

.field private mVolumeBehavior:Lcom/android/deskclock/data/DataModel$AlarmVolumeButtonBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    new-instance v0, Lcom/android/deskclock/LogUtils$Logger;

    const-string v1, "AlarmActivity"

    invoke-direct {v0, v1}, Lcom/android/deskclock/LogUtils$Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/alarms/AlarmActivity;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    .line 75
    invoke-static {v3, v2, v1, v0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    sput-object v3, Lcom/android/deskclock/alarms/AlarmActivity;->PULSE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 77
    invoke-static {v2, v2, v1, v0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/alarms/AlarmActivity;->REVEAL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/android/deskclock/BaseActivity;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Lcom/android/deskclock/alarms/AlarmActivity$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/alarms/AlarmActivity$1;-><init>(Lcom/android/deskclock/alarms/AlarmActivity;)V

    iput-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    new-instance v0, Lcom/android/deskclock/alarms/AlarmActivity$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/alarms/AlarmActivity$2;-><init>(Lcom/android/deskclock/alarms/AlarmActivity;)V

    iput-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v0, -0x1

    .line 153
    iput v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mInitialPointerIndex:I

    return-void
.end method

.method static synthetic access$000()Lcom/android/deskclock/LogUtils$Logger;
    .locals 1

    .line 69
    sget-object v0, Lcom/android/deskclock/alarms/AlarmActivity;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/alarms/AlarmActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmHandled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/deskclock/alarms/AlarmActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->snooze()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/alarms/AlarmActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->dismiss()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/deskclock/alarms/AlarmActivity;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mHintView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/deskclock/alarms/AlarmActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlertView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/deskclock/alarms/AlarmActivity;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlertTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/deskclock/alarms/AlarmActivity;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlertInfoView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/deskclock/alarms/AlarmActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mContentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/deskclock/alarms/AlarmActivity;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private bindAlarmService()V
    .locals 3

    .line 534
    iget-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mServiceBound:Z

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/alarms/AlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 536
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 537
    iput-boolean v2, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mServiceBound:Z

    :cond_0
    return-void
.end method

.method private dismiss()V
    .locals 9

    const/4 v0, 0x1

    .line 513
    iput-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmHandled:Z

    .line 514
    sget-object v1, Lcom/android/deskclock/alarms/AlarmActivity;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmInstance:Lcom/android/deskclock/provider/AlarmInstance;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "Dismissed: %s"

    invoke-virtual {v1, v2, v0}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 516
    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/alarms/AlarmActivity;->setAnimatedFractions(FF)V

    .line 518
    iget-object v3, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mDismissButton:Landroid/widget/ImageView;

    const v0, 0x7f11018c

    .line 519
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v8, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mCurrentHourColor:I

    const v4, 0x7f11018c

    const/4 v5, 0x0

    const/4 v7, -0x1

    move-object v2, p0

    .line 518
    invoke-direct/range {v2 .. v8}, Lcom/android/deskclock/alarms/AlarmActivity;->getAlertAnimator(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;II)Landroid/animation/Animator;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 522
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmInstance:Lcom/android/deskclock/provider/AlarmInstance;

    invoke-static {p0, v0}, Lcom/android/deskclock/alarms/AlarmStateManager;->deleteInstanceAndUpdateParent(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    const v0, 0x7f110177

    const v1, 0x7f1101e6

    .line 524
    invoke-static {v0, v1}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    .line 527
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->unbindAlarmService()V

    return-void
.end method

.method private getAlarmBounceAnimator(FI)Landroid/animation/ValueAnimator;
    .locals 5

    .line 574
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 575
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    const/4 p1, 0x2

    const/4 v3, 0x0

    aput v3, v2, p1

    .line 574
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 576
    sget-object v0, Lcom/android/deskclock/AnimatorUtils;->DECELERATE_ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x1f4

    .line 577
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 578
    new-instance v0, Lcom/android/deskclock/alarms/AlarmActivity$3;

    invoke-direct {v0, p0, p2}, Lcom/android/deskclock/alarms/AlarmActivity$3;-><init>(Lcom/android/deskclock/alarms/AlarmActivity;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method private getAlertAnimator(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;II)Landroid/animation/Animator;
    .locals 7

    const v0, 0x1020002

    .line 594
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 596
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 597
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 599
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    .line 600
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 602
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 603
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 605
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    mul-int/2addr v3, v3

    mul-int/2addr v5, v5

    add-int/2addr v3, v5

    int-to-double v5, v3

    .line 606
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    .line 608
    new-instance v5, Lcom/android/deskclock/widget/CircleView;

    invoke-direct {v5, p0}, Lcom/android/deskclock/widget/CircleView;-><init>(Landroid/content/Context;)V

    int-to-float p1, p1

    .line 609
    invoke-virtual {v5, p1}, Lcom/android/deskclock/widget/CircleView;->setCenterX(F)Lcom/android/deskclock/widget/CircleView;

    move-result-object p1

    int-to-float v2, v2

    .line 610
    invoke-virtual {p1, v2}, Lcom/android/deskclock/widget/CircleView;->setCenterY(F)Lcom/android/deskclock/widget/CircleView;

    move-result-object p1

    .line 611
    invoke-virtual {p1, p5}, Lcom/android/deskclock/widget/CircleView;->setFillColor(I)Lcom/android/deskclock/widget/CircleView;

    move-result-object p1

    .line 612
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 616
    sget-object p5, Lcom/android/deskclock/widget/CircleView;->RADIUS:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v4

    const/4 v1, 0x1

    aput v3, v2, v1

    invoke-static {p1, p5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    const-wide/16 v2, 0x1f4

    .line 618
    invoke-virtual {p5, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 619
    sget-object v5, Lcom/android/deskclock/alarms/AlarmActivity;->REVEAL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p5, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 620
    new-instance v5, Lcom/android/deskclock/alarms/AlarmActivity$4;

    invoke-direct {v5, p0, p2, p3, p6}, Lcom/android/deskclock/alarms/AlarmActivity$4;-><init>(Lcom/android/deskclock/alarms/AlarmActivity;ILjava/lang/String;I)V

    invoke-virtual {p5, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 636
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p3, v1, [F

    const/4 p6, 0x0

    aput p6, p3, v4

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 637
    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 638
    new-instance p3, Lcom/android/deskclock/alarms/AlarmActivity$5;

    invoke-direct {p3, p0, v0, p1}, Lcom/android/deskclock/alarms/AlarmActivity$5;-><init>(Lcom/android/deskclock/alarms/AlarmActivity;Landroid/view/ViewGroup;Lcom/android/deskclock/widget/CircleView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 645
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 646
    invoke-virtual {p1, p5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 647
    new-instance p2, Lcom/android/deskclock/alarms/AlarmActivity$6;

    invoke-direct {p2, p0, p4}, Lcom/android/deskclock/alarms/AlarmActivity$6;-><init>(Lcom/android/deskclock/alarms/AlarmActivity;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method private getButtonAnimator(Landroid/widget/ImageView;I)Landroid/animation/ValueAnimator;
    .locals 6

    const/4 p0, 0x5

    new-array p0, p0, [Landroid/animation/PropertyValuesHolder;

    .line 563
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    .line 564
    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p0, v2

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    .line 565
    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, p0, v3

    sget-object v0, Lcom/android/deskclock/AnimatorUtils;->BACKGROUND_ALPHA:Landroid/util/Property;

    new-array v4, v1, [I

    fill-array-data v4, :array_2

    .line 566
    invoke-static {v0, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p0, v1

    sget-object v0, Lcom/android/deskclock/AnimatorUtils;->DRAWABLE_ALPHA:Landroid/util/Property;

    new-array v4, v1, [I

    fill-array-data v4, :array_3

    .line 567
    invoke-static {v0, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, p0, v4

    sget-object v0, Lcom/android/deskclock/AnimatorUtils;->DRAWABLE_TINT:Landroid/util/Property;

    sget-object v4, Lcom/android/deskclock/AnimatorUtils;->ARGB_EVALUATOR:Landroid/animation/TypeEvaluator;

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v5, -0x1

    .line 570
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    .line 569
    invoke-static {v0, v4, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 v0, 0x4

    aput-object p2, p0, v0

    .line 563
    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_3
    .array-data 4
        0xa5
        0xff
    .end array-data
.end method

.method private getFraction(FFF)F
    .locals 0

    sub-float/2addr p3, p1

    sub-float/2addr p2, p1

    div-float/2addr p3, p2

    const/high16 p0, 0x3f800000    # 1.0f

    .line 559
    invoke-static {p3, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private hideNavigationBar()V
    .locals 1

    .line 427
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1202

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private hintDismiss()V
    .locals 4

    .line 461
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 462
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 463
    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mDismissButton:Landroid/widget/ImageView;

    .line 464
    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v2, v0

    int-to-float v0, v2

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const v1, 0x7f1101cd

    goto :goto_0

    :cond_0
    const v1, 0x7f1101ce

    .line 465
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/alarms/AlarmActivity;->getAlarmBounceAnimator(FI)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 466
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private hintSnooze()V
    .locals 4

    .line 452
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 453
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 454
    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mSnoozeButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mSnoozeButton:Landroid/widget/ImageView;

    .line 455
    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v2, v0

    int-to-float v0, v2

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const v1, 0x7f1101cd

    goto :goto_0

    :cond_0
    const v1, 0x7f1101ce

    .line 456
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/alarms/AlarmActivity;->getAlarmBounceAnimator(FI)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 457
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private isAccessibilityEnabled()Z
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 446
    :cond_1
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v0, 0x10

    .line 447
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p0

    .line 448
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private resetAnimations()V
    .locals 2

    const/4 v0, 0x0

    .line 474
    invoke-direct {p0, v0, v0}, Lcom/android/deskclock/alarms/AlarmActivity;->setAnimatedFractions(FF)V

    .line 476
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mPulseAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 477
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private setAnimatedFractions(FF)V
    .locals 2

    .line 552
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 553
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1, v0}, Lcom/android/deskclock/AnimatorUtils;->setAnimatedFraction(Landroid/animation/ValueAnimator;F)V

    .line 554
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mSnoozeAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, p1}, Lcom/android/deskclock/AnimatorUtils;->setAnimatedFraction(Landroid/animation/ValueAnimator;F)V

    .line 555
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mDismissAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p0, p2}, Lcom/android/deskclock/AnimatorUtils;->setAnimatedFraction(Landroid/animation/ValueAnimator;F)V

    return-void
.end method

.method private snooze()V
    .locals 12

    const/4 v0, 0x1

    .line 486
    iput-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmHandled:Z

    .line 487
    sget-object v1, Lcom/android/deskclock/alarms/AlarmActivity;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmInstance:Lcom/android/deskclock/provider/AlarmInstance;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Snoozed: %s"

    invoke-virtual {v1, v3, v2}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const v1, 0x7f04009c

    .line 489
    invoke-static {p0, v1}, Lcom/android/deskclock/ThemeUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v11

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 490
    invoke-direct {p0, v1, v2}, Lcom/android/deskclock/alarms/AlarmActivity;->setAnimatedFractions(FF)V

    .line 492
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/data/DataModel;->getSnoozeLength()I

    move-result v1

    .line 493
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    .line 494
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/high16 v5, 0x7f0f0000

    .line 493
    invoke-virtual {v2, v5, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 495
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 496
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    const v3, 0x7f0f0001

    .line 495
    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 498
    iget-object v6, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mSnoozeButton:Landroid/widget/ImageView;

    const v7, 0x7f110190

    move-object v5, p0

    move v10, v11

    invoke-direct/range {v5 .. v11}, Lcom/android/deskclock/alarms/AlarmActivity;->getAlertAnimator(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;II)Landroid/animation/Animator;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 501
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmInstance:Lcom/android/deskclock/provider/AlarmInstance;

    invoke-static {p0, v0, v4}, Lcom/android/deskclock/alarms/AlarmStateManager;->setSnoozeState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V

    const v0, 0x7f110184

    const v1, 0x7f1101e6

    .line 503
    invoke-static {v0, v1}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    .line 506
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->unbindAlarmService()V

    return-void
.end method

.method private unbindAlarmService()V
    .locals 1

    .line 545
    iget-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 547
    iput-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mServiceBound:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 287
    sget-object v0, Lcom/android/deskclock/alarms/AlarmActivity;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "dispatchKeyEvent: %s"

    invoke-virtual {v0, v3, v2}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x18

    if-eq v0, v2, :cond_0

    const/16 v2, 0x19

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa4

    if-eq v0, v2, :cond_0

    const/16 v2, 0x4f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x50

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    iget-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmHandled:Z

    if-nez v0, :cond_5

    .line 299
    sget-object v0, Lcom/android/deskclock/alarms/AlarmActivity$7;->$SwitchMap$com$android$deskclock$data$DataModel$AlarmVolumeButtonBehavior:[I

    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mVolumeBehavior:Lcom/android/deskclock/data/DataModel$AlarmVolumeButtonBehavior;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 307
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->dismiss()V

    :cond_2
    return v1

    .line 301
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 302
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->snooze()V

    :cond_4
    return v1

    .line 313
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 323
    iget-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmHandled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 324
    sget-object p0, Lcom/android/deskclock/alarms/AlarmActivity;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "onClick ignored: %s"

    invoke-virtual {p0, p1, v0}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 327
    :cond_0
    sget-object v0, Lcom/android/deskclock/alarms/AlarmActivity;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string v1, "onClick: %s"

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mSnoozeButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->snooze()V

    goto :goto_0

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mDismissButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 334
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->dismiss()V

    :cond_2
    :goto_0
    return-void

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mSnoozeButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 340
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->hintSnooze()V

    goto :goto_1

    .line 341
    :cond_4
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mDismissButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_5

    .line 342
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->hintDismiss()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 157
    invoke-super {p0, p1}, Lcom/android/deskclock/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x4

    .line 159
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lcom/android/deskclock/provider/AlarmInstance;->getInstance(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmInstance:Lcom/android/deskclock/provider/AlarmInstance;

    .line 162
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmInstance:Lcom/android/deskclock/provider/AlarmInstance;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 164
    sget-object p1, Lcom/android/deskclock/alarms/AlarmActivity;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Error displaying alarm for intent: %s"

    invoke-virtual {p1, v1, v0}, Lcom/android/deskclock/LogUtils$Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 167
    :cond_0
    iget v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 168
    sget-object v2, Lcom/android/deskclock/alarms/AlarmActivity;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "Skip displaying alarm for instance: %s"

    invoke-virtual {v2, p1, v0}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 173
    :cond_1
    sget-object v2, Lcom/android/deskclock/alarms/AlarmActivity;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const-string p1, "Displaying alarm for instance: %s"

    invoke-virtual {v2, p1, v4}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->getAlarmVolumeButtonBehavior()Lcom/android/deskclock/data/DataModel$AlarmVolumeButtonBehavior;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mVolumeBehavior:Lcom/android/deskclock/data/DataModel$AlarmVolumeButtonBehavior;

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v2, 0x680081

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 185
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->hideNavigationBar()V

    .line 188
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f050005

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 192
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    const-string p1, "accessibility"

    .line 195
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const p1, 0x7f0d001c

    .line 197
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0a0041

    .line 199
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlertView:Landroid/view/ViewGroup;

    .line 200
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlertView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0044

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlertTitleView:Landroid/widget/TextView;

    .line 201
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlertView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0043

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlertInfoView:Landroid/widget/TextView;

    const p1, 0x7f0a006f

    .line 203
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mContentView:Landroid/view/ViewGroup;

    .line 204
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mContentView:Landroid/view/ViewGroup;

    const v2, 0x7f0a003c

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmButton:Landroid/widget/ImageView;

    .line 205
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mContentView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0125

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mSnoozeButton:Landroid/widget/ImageView;

    .line 206
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mContentView:Landroid/view/ViewGroup;

    const v2, 0x7f0a008c

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mDismissButton:Landroid/widget/ImageView;

    .line 207
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mContentView:Landroid/view/ViewGroup;

    const v2, 0x7f0a00a9

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mHintView:Landroid/widget/TextView;

    .line 209
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mContentView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0160

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 210
    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mContentView:Landroid/view/ViewGroup;

    const v3, 0x7f0a0089

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextClock;

    .line 211
    iget-object v3, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mContentView:Landroid/view/ViewGroup;

    const v4, 0x7f0a00f2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/widget/CircleView;

    .line 213
    iget-object v4, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmInstance:Lcom/android/deskclock/provider/AlarmInstance;

    invoke-virtual {v4, p0}, Lcom/android/deskclock/provider/AlarmInstance;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-static {v2, v1}, Lcom/android/deskclock/Utils;->setTimeFormat(Landroid/widget/TextClock;Z)V

    const p1, 0x1010054

    .line 216
    invoke-static {p0, p1}, Lcom/android/deskclock/ThemeUtils;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mCurrentHourColor:I

    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v4, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mCurrentHourColor:I

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mSnoozeButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmButton:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v4}, Lcom/android/deskclock/AnimatorUtils;->getScaleAnimator(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmAnimator:Landroid/animation/ValueAnimator;

    .line 224
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mSnoozeButton:Landroid/widget/ImageView;

    const/4 v4, -0x1

    invoke-direct {p0, p1, v4}, Lcom/android/deskclock/alarms/AlarmActivity;->getButtonAnimator(Landroid/widget/ImageView;I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mSnoozeAnimator:Landroid/animation/ValueAnimator;

    .line 225
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mDismissButton:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mCurrentHourColor:I

    invoke-direct {p0, p1, v5}, Lcom/android/deskclock/alarms/AlarmActivity;->getButtonAnimator(Landroid/widget/ImageView;I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mDismissAnimator:Landroid/animation/ValueAnimator;

    new-array p1, v2, [Landroid/animation/PropertyValuesHolder;

    .line 226
    sget-object v5, Lcom/android/deskclock/widget/CircleView;->RADIUS:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v6, 0x0

    aput v6, v2, v1

    .line 227
    invoke-virtual {v3}, Lcom/android/deskclock/widget/CircleView;->getRadius()F

    move-result v6

    aput v6, v2, v0

    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, p1, v1

    sget-object v2, Lcom/android/deskclock/widget/CircleView;->FILL_COLOR:Landroid/util/Property;

    sget-object v5, Lcom/android/deskclock/AnimatorUtils;->ARGB_EVALUATOR:Landroid/animation/TypeEvaluator;

    new-array v6, v0, [Ljava/lang/Integer;

    .line 229
    invoke-virtual {v3}, Lcom/android/deskclock/widget/CircleView;->getFillColor()I

    move-result v7

    invoke-static {v7, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 228
    invoke-static {v2, v5, v6}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, p1, v0

    .line 226
    invoke-static {v3, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mPulseAnimator:Landroid/animation/ValueAnimator;

    .line 230
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mPulseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 231
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mPulseAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/deskclock/alarms/AlarmActivity;->PULSE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 232
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 233
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected onPause()V
    .locals 1

    .line 273
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 275
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->unbindAlarmService()V

    .line 278
    iget-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 238
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/provider/AlarmInstance;->getId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 242
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/deskclock/provider/AlarmInstance;->getInstance(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmInstance:Lcom/android/deskclock/provider/AlarmInstance;

    .line 244
    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmInstance:Lcom/android/deskclock/provider/AlarmInstance;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 245
    sget-object v2, Lcom/android/deskclock/alarms/AlarmActivity;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v3

    const-string v0, "No alarm instance for instanceId: %d"

    invoke-virtual {v2, v0, v4}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 251
    :cond_0
    iget v0, v2, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 252
    sget-object v0, Lcom/android/deskclock/alarms/AlarmActivity;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v2, "Skip displaying alarm for instance: %s"

    invoke-virtual {v0, v2, v1}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 257
    :cond_1
    iget-boolean v0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mReceiverRegistered:Z

    if-nez v0, :cond_2

    .line 259
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.deskclock.ALARM_DONE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.deskclock.ALARM_SNOOZE"

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.deskclock.ALARM_DISMISS"

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 263
    iput-boolean v4, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mReceiverRegistered:Z

    .line 266
    :cond_2
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->bindAlarmService()V

    .line 268
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->resetAnimations()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 348
    iget-boolean p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmHandled:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 349
    sget-object p0, Lcom/android/deskclock/alarms/AlarmActivity;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v0

    const-string p2, "onTouch ignored: %s"

    invoke-virtual {p0, p2, p1}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 353
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-nez p1, :cond_1

    .line 355
    sget-object v4, Lcom/android/deskclock/alarms/AlarmActivity;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v0

    const-string v6, "onTouch started: %s"

    invoke-virtual {v4, v6, v5}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mInitialPointerIndex:I

    .line 361
    iget-object v4, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 363
    sget-object v4, Lcom/android/deskclock/alarms/AlarmActivity;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v0

    const-string v6, "onTouch canceled: %s"

    invoke-virtual {v4, v6, v5}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    iput v3, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mInitialPointerIndex:I

    .line 369
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->resetAnimations()V

    .line 372
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 373
    iget v5, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mInitialPointerIndex:I

    if-eq v5, v3, :cond_b

    .line 374
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-eq v5, v4, :cond_3

    goto/16 :goto_4

    :cond_3
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 379
    fill-array-data v5, :array_0

    .line 380
    iget-object v6, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 382
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    aget v7, v5, v0

    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 383
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    aget v5, v5, v1

    int-to-float v5, v5

    sub-float/2addr v7, v5

    .line 385
    iget-object v5, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    iget-object v8, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmButton:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v5, v8

    .line 386
    iget-object v8, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmButton:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmButton:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    .line 389
    iget-object v9, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v9

    if-ne v9, v1, :cond_4

    int-to-float v8, v8

    .line 390
    iget-object v9, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mSnoozeButton:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {p0, v8, v9, v6}, Lcom/android/deskclock/alarms/AlarmActivity;->getFraction(FFF)F

    move-result v8

    int-to-float v5, v5

    .line 391
    iget-object v9, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getRight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {p0, v5, v9, v6}, Lcom/android/deskclock/alarms/AlarmActivity;->getFraction(FFF)F

    move-result v5

    move v6, v5

    move v5, v8

    goto :goto_1

    :cond_4
    int-to-float v5, v5

    .line 393
    iget-object v9, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mSnoozeButton:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getRight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {p0, v5, v9, v6}, Lcom/android/deskclock/alarms/AlarmActivity;->getFraction(FFF)F

    move-result v5

    int-to-float v8, v8

    .line 394
    iget-object v9, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {p0, v8, v9, v6}, Lcom/android/deskclock/alarms/AlarmActivity;->getFraction(FFF)F

    move-result v6

    .line 396
    :goto_1
    invoke-direct {p0, v5, v6}, Lcom/android/deskclock/alarms/AlarmActivity;->setAnimatedFractions(FF)V

    if-eq p1, v1, :cond_5

    const/4 v8, 0x6

    if-ne p1, v8, :cond_b

    .line 399
    :cond_5
    sget-object p1, Lcom/android/deskclock/alarms/AlarmActivity;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v8, v1, [Ljava/lang/Object;

    aput-object p2, v8, v0

    const-string p2, "onTouch ended: %s"

    invoke-virtual {p1, p2, v8}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    iput v3, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mInitialPointerIndex:I

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p2, v5, p1

    if-nez p2, :cond_6

    .line 403
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->snooze()V

    goto :goto_4

    :cond_6
    cmpl-float p1, v6, p1

    if-nez p1, :cond_7

    .line 405
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->dismiss()V

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    cmpl-float p2, v5, p1

    if-gtz p2, :cond_9

    cmpl-float p1, v6, p1

    if-lez p1, :cond_8

    goto :goto_2

    .line 410
    :cond_8
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p1, v7

    if-gtz p1, :cond_a

    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v7, p1

    if-gtz p1, :cond_a

    .line 412
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmActivity;->hintDismiss()V

    goto :goto_3

    :cond_9
    :goto_2
    new-array p1, v2, [Landroid/animation/ValueAnimator;

    .line 409
    iget-object p2, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mAlarmAnimator:Landroid/animation/ValueAnimator;

    aput-object p2, p1, v0

    iget-object p2, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mSnoozeAnimator:Landroid/animation/ValueAnimator;

    aput-object p2, p1, v1

    iget-object p2, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mDismissAnimator:Landroid/animation/ValueAnimator;

    aput-object p2, p1, v4

    invoke-static {p1}, Lcom/android/deskclock/AnimatorUtils;->reverse([Landroid/animation/ValueAnimator;)V

    .line 416
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 417
    iget-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-nez p1, :cond_b

    .line 418
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmActivity;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_b
    :goto_4
    return v1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
