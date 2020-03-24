.class public Lcom/android/deskclock/VerticalViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "VerticalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/VerticalViewPager$VerticalPageTransformer;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/VerticalViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/android/deskclock/VerticalViewPager;->init()V

    return-void
.end method

.method private flipXY(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 3

    .line 76
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 77
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    div-float/2addr v1, p0

    mul-float/2addr v1, v0

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    div-float/2addr v2, v0

    mul-float/2addr v2, p0

    .line 82
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-object p1
.end method

.method private init()V
    .locals 2

    .line 54
    new-instance v0, Lcom/android/deskclock/VerticalViewPager$VerticalPageTransformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/deskclock/VerticalViewPager$VerticalPageTransformer;-><init>(Lcom/android/deskclock/VerticalViewPager$1;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    const/4 v0, 0x2

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canScrollVertically(I)Z
    .locals 0

    .line 49
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Lcom/android/deskclock/VerticalViewPager;->flipXY(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/deskclock/VerticalViewPager;->flipXY(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 69
    invoke-direct {p0, p1}, Lcom/android/deskclock/VerticalViewPager;->flipXY(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/deskclock/VerticalViewPager;->flipXY(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    return v0
.end method
