.class public final Lcom/android/deskclock/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static final TEMP_ATTR:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 30
    sput-object v0, Lcom/android/deskclock/ThemeUtils;->TEMP_ATTR:[I

    return-void
.end method

.method public static resolveColor(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-static {p0, p1, v0}, Lcom/android/deskclock/ThemeUtils;->resolveColor(Landroid/content/Context;I[I)I

    move-result p0

    return p0
.end method

.method public static resolveColor(Landroid/content/Context;I[I)I
    .locals 3

    .line 59
    sget-object v0, Lcom/android/deskclock/ThemeUtils;->TEMP_ATTR:[I

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/android/deskclock/ThemeUtils;->TEMP_ATTR:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 61
    sget-object p1, Lcom/android/deskclock/ThemeUtils;->TEMP_ATTR:[I

    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/high16 p1, -0x10000

    if-nez p2, :cond_0

    .line 66
    :try_start_1
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    .line 69
    :cond_0
    :try_start_2
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0, p2, p1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    :catchall_1
    move-exception p0

    .line 62
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 88
    sget-object v0, Lcom/android/deskclock/ThemeUtils;->TEMP_ATTR:[I

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lcom/android/deskclock/ThemeUtils;->TEMP_ATTR:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 90
    sget-object p1, Lcom/android/deskclock/ThemeUtils;->TEMP_ATTR:[I

    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    :try_start_1
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    :catchall_1
    move-exception p0

    .line 91
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
