.class final Lcom/android/deskclock/VerticalViewPager$VerticalPageTransformer;
.super Ljava/lang/Object;
.source "VerticalViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VerticalPageTransformer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/VerticalViewPager$1;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/deskclock/VerticalViewPager$VerticalPageTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 4

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p2, v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 94
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v3, p2, v1

    if-gtz v3, :cond_1

    .line 96
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    int-to-float p0, p0

    neg-float v1, p2

    mul-float/2addr p0, v1

    .line 98
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p0, v0

    mul-float/2addr p2, p0

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method
