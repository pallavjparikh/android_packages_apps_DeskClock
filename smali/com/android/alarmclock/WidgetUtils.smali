.class public final Lcom/android/alarmclock/WidgetUtils;
.super Ljava/lang/Object;
.source "WidgetUtils.java"


# direct methods
.method private static getHeightScaleRatio(Landroid/content/Context;Landroid/os/Bundle;I)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    .line 72
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    .line 77
    :cond_0
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_3

    const-string p2, "appWidgetMinHeight"

    .line 80
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    return v0

    .line 85
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 86
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    const p1, 0x7f0700ca

    .line 87
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    div-float/2addr v0, p1

    .line 88
    invoke-static {p0}, Lcom/android/deskclock/Utils;->isPortrait(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 p0, 0x3fe00000    # 1.75f

    mul-float/2addr v0, p0

    :cond_3
    return v0
.end method

.method public static getScaleRatio(Landroid/content/Context;Landroid/os/Bundle;II)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    .line 34
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    .line 39
    :cond_0
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_6

    const-string v1, "appWidgetMinWidth"

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 47
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 48
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, v1

    mul-float/2addr v3, v1

    const v1, 0x7f0700cb

    .line 49
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v3, v1

    .line 50
    invoke-static {p0, p1, p2}, Lcom/android/alarmclock/WidgetUtils;->getHeightScaleRatio(Landroid/content/Context;Landroid/os/Bundle;I)F

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const p2, 0x3f547ae1    # 0.83f

    mul-float/2addr p1, p2

    if-lez p3, :cond_4

    cmpl-float p0, p1, v0

    if-lez p0, :cond_3

    move p1, v0

    :cond_3
    return p1

    :cond_4
    const p2, 0x3fcccccd    # 1.6f

    .line 57
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 58
    invoke-static {p0}, Lcom/android/deskclock/Utils;->isPortrait(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x3f35c28f    # 0.71f

    .line 59
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    goto :goto_0

    :cond_5
    const p0, 0x3ee66666    # 0.45f

    .line 62
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :goto_0
    return p0

    :cond_6
    return v0
.end method
