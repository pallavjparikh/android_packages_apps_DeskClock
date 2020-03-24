.class public abstract Lcom/android/deskclock/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/BaseActivity$AppColorAnimationListener;
    }
.end annotation


# instance fields
.field private final mAppColorAnimationListener:Lcom/android/deskclock/BaseActivity$AppColorAnimationListener;

.field private mAppColorAnimator:Landroid/animation/ValueAnimator;

.field private mBackground:Landroid/graphics/drawable/ColorDrawable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 37
    new-instance v0, Lcom/android/deskclock/BaseActivity$AppColorAnimationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/BaseActivity$AppColorAnimationListener;-><init>(Lcom/android/deskclock/BaseActivity;Lcom/android/deskclock/BaseActivity$1;)V

    iput-object v0, p0, Lcom/android/deskclock/BaseActivity;->mAppColorAnimationListener:Lcom/android/deskclock/BaseActivity$AppColorAnimationListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/BaseActivity;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/deskclock/BaseActivity;->setAppColor(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/deskclock/BaseActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/deskclock/BaseActivity;->mAppColorAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/deskclock/BaseActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/deskclock/BaseActivity;->mAppColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private setAppColor(I)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/deskclock/BaseActivity;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected adjustAppColor(IZ)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/android/deskclock/BaseActivity;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/deskclock/BaseActivity;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/BaseActivity;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/BaseActivity;->mAppColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/BaseActivity;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_3

    if-eqz p2, :cond_2

    .line 90
    sget-object p2, Lcom/android/deskclock/AnimatorUtils;->ARGB_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {p2, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/BaseActivity;->mAppColorAnimator:Landroid/animation/ValueAnimator;

    .line 92
    iget-object p1, p0, Lcom/android/deskclock/BaseActivity;->mAppColorAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/deskclock/BaseActivity;->mAppColorAnimationListener:Lcom/android/deskclock/BaseActivity$AppColorAnimationListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 93
    iget-object p1, p0, Lcom/android/deskclock/BaseActivity;->mAppColorAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/deskclock/BaseActivity;->mAppColorAnimationListener:Lcom/android/deskclock/BaseActivity$AppColorAnimationListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 94
    iget-object p0, p0, Lcom/android/deskclock/BaseActivity;->mAppColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 96
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/deskclock/BaseActivity;->setAppColor(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const p1, 0x1010054

    .line 56
    invoke-static {p0, p1}, Lcom/android/deskclock/ThemeUtils;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/android/deskclock/BaseActivity;->adjustAppColor(IZ)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 62
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const v0, 0x1010054

    .line 65
    invoke-static {p0, v0}, Lcom/android/deskclock/ThemeUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/BaseActivity;->adjustAppColor(IZ)V

    return-void
.end method
