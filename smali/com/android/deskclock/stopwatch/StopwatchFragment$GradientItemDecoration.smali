.class final Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "StopwatchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GradientItemDecoration"
.end annotation


# static fields
.field private static final ALPHAS:[I


# instance fields
.field private final mGradient:Landroid/graphics/drawable/GradientDrawable;

.field private final mGradientColors:[I

.field private final mGradientHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 668
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;->ALPHAS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1a
        0x33
        0x4d
        0x66
        0x80
        0x89
        0x93
        0x9d
        0xa7
        0xb1
        0xba
        0xc4
        0xce
        0xd8
        0xe2
        0xeb
        0xf5
        0xff
        0xff
        0xff
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 704
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 696
    sget-object v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;->ALPHAS:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;->mGradientColors:[I

    .line 699
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    .line 705
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    const v0, 0x1010054

    .line 706
    invoke-static {p1, v0}, Lcom/android/deskclock/ThemeUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;->updateGradientColors(I)V

    .line 708
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700ad

    .line 709
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr p1, v0

    .line 710
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;->mGradientHeight:I

    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 715
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 717
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    .line 718
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    .line 720
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;->mGradientHeight:I

    sub-int v1, p2, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p3, p2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 721
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method updateGradientColors(I)V
    .locals 3

    const/4 v0, 0x0

    .line 732
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;->mGradientColors:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 733
    sget-object v2, Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;->ALPHAS:[I

    aget v2, v2, v0

    invoke-static {p1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 737
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$GradientItemDecoration;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    return-void
.end method
