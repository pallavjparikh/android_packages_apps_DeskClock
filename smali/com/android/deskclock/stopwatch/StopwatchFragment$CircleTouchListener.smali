.class final Lcom/android/deskclock/stopwatch/StopwatchFragment$CircleTouchListener;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CircleTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$CircleTouchListener;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Lcom/android/deskclock/stopwatch/StopwatchFragment$1;)V
    .locals 0

    .line 620
    invoke-direct {p0, p1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$CircleTouchListener;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 623
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 627
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    .line 628
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v2, p1

    int-to-float p1, v2

    div-float/2addr p1, v1

    .line 629
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 631
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v2, p0

    .line 632
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    sub-float/2addr p0, p1

    div-float/2addr v2, v1

    float-to-double p1, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 634
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    div-float/2addr p0, v1

    float-to-double v4, p0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double/2addr p1, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, p1, v1

    const/4 p1, 0x1

    if-gtz p0, :cond_1

    move v0, p1

    :cond_1
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method
