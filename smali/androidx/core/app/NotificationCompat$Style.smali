.class public abstract Landroidx/core/app/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field protected mBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1727
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    return-void
.end method

.method private calculateTopPadding()I
    .locals 4

    .line 2008
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 2009
    sget v0, Landroidx/core/R$dimen;->notification_top_pad:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2010
    sget v1, Landroidx/core/R$dimen;->notification_top_pad_large_text:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2012
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3fa66666    # 1.3f

    .line 2013
    invoke-static {p0, v2, v3}, Landroidx/core/app/NotificationCompat$Style;->constrain(FFF)F

    move-result p0

    sub-float/2addr p0, v2

    const v3, 0x3e999998    # 0.29999995f

    div-float/2addr p0, v3

    sub-float/2addr v2, p0

    int-to-float v0, v0

    mul-float/2addr v2, v0

    int-to-float v0, v1

    mul-float/2addr p0, v0

    add-float/2addr v2, p0

    .line 2017
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static constrain(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private createColoredBitmap(III)Landroid/graphics/Bitmap;
    .locals 2

    .line 1954
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p3, :cond_0

    .line 1955
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    if-nez p3, :cond_1

    .line 1956
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    .line 1957
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 1958
    invoke-virtual {p0, v1, v1, p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p2, :cond_2

    .line 1960
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1963
    :cond_2
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1964
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private createIconWithBackground(IIII)Landroid/graphics/Bitmap;
    .locals 1

    .line 1970
    sget v0, Landroidx/core/R$drawable;->notification_icon_background:I

    if-nez p4, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, v0, p4, p2}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 1972
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1973
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x1

    .line 1974
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    sub-int/2addr p2, p3

    .line 1975
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    .line 1976
    invoke-virtual {p0, p2, p2, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1977
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    const/4 p2, -0x1

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1978
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p4
.end method

.method private hideNormalContent(Landroid/widget/RemoteViews;)V
    .locals 1

    .line 2002
    sget p0, Landroidx/core/R$id;->title:I

    const/16 v0, 0x8

    invoke-virtual {p1, p0, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2003
    sget p0, Landroidx/core/R$id;->text2:I

    invoke-virtual {p1, p0, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2004
    sget p0, Landroidx/core/R$id;->text:I

    invoke-virtual {p1, p0, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
.end method

.method public applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;
    .locals 12

    .line 1803
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1804
    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1808
    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->getPriority()I

    move-result p2

    const/4 v1, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ge p2, v1, :cond_0

    move p2, v8

    goto :goto_0

    :cond_0
    move p2, v9

    .line 1809
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/16 v10, 0x10

    if-lt v2, v10, :cond_2

    if-ge v2, v3, :cond_2

    const-string v2, "setBackgroundResource"

    if-eqz p2, :cond_1

    .line 1812
    sget p2, Landroidx/core/R$id;->notification_background:I

    sget v4, Landroidx/core/R$drawable;->notification_bg_low:I

    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1814
    sget p2, Landroidx/core/R$id;->icon:I

    sget v4, Landroidx/core/R$drawable;->notification_template_icon_low_bg:I

    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1

    .line 1817
    :cond_1
    sget p2, Landroidx/core/R$id;->notification_background:I

    sget v4, Landroidx/core/R$drawable;->notification_bg:I

    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1819
    sget p2, Landroidx/core/R$id;->icon:I

    sget v4, Landroidx/core/R$drawable;->notification_template_icon_bg:I

    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1824
    :cond_2
    :goto_1
    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p2, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    const/16 v11, 0x8

    if-eqz v2, :cond_5

    .line 1827
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v10, :cond_3

    .line 1828
    sget p2, Landroidx/core/R$id;->icon:I

    invoke-virtual {v7, p2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1829
    sget p2, Landroidx/core/R$id;->icon:I

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v7, p2, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_2

    .line 1831
    :cond_3
    sget p2, Landroidx/core/R$id;->icon:I

    invoke-virtual {v7, p2, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2
    if-eqz p1, :cond_7

    .line 1833
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->icon:I

    if-eqz p1, :cond_7

    .line 1834
    sget p1, Landroidx/core/R$dimen;->notification_right_icon_size:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 1836
    sget p2, Landroidx/core/R$dimen;->notification_small_icon_background_padding:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int p2, p1, p2

    .line 1838
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_4

    .line 1839
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    .line 1843
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v1

    .line 1839
    invoke-direct {p0, v2, p1, p2, v1}, Landroidx/core/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1844
    sget p2, Landroidx/core/R$id;->right_icon:I

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_3

    .line 1846
    :cond_4
    sget p1, Landroidx/core/R$id;->right_icon:I

    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p2, p2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget p2, p2, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, p2, v1}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1849
    :goto_3
    sget p1, Landroidx/core/R$id;->right_icon:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_7

    .line 1851
    iget-object p1, p2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->icon:I

    if-eqz p1, :cond_7

    .line 1852
    sget p1, Landroidx/core/R$id;->icon:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1853
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_6

    .line 1854
    sget p1, Landroidx/core/R$dimen;->notification_large_icon_width:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sget p2, Landroidx/core/R$dimen;->notification_big_circle_margin:I

    .line 1856
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    .line 1857
    sget p2, Landroidx/core/R$dimen;->notification_small_icon_size_as_large:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 1859
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    .line 1863
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v1

    .line 1859
    invoke-direct {p0, v2, p1, p2, v1}, Landroidx/core/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1864
    sget p2, Landroidx/core/R$id;->icon:I

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_4

    .line 1866
    :cond_6
    sget p1, Landroidx/core/R$id;->icon:I

    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p2, p2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget p2, p2, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, p2, v1}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1870
    :cond_7
    :goto_4
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz p1, :cond_8

    .line 1871
    sget p2, Landroidx/core/R$id;->title:I

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1873
    :cond_8
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_9

    .line 1874
    sget p2, Landroidx/core/R$id;->text:I

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move p1, v8

    goto :goto_5

    :cond_9
    move p1, v9

    .line 1878
    :goto_5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v3, :cond_a

    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object p2, p2, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_a

    move p2, v8

    goto :goto_6

    :cond_a
    move p2, v9

    .line 1879
    :goto_6
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v2, :cond_b

    .line 1880
    sget p1, Landroidx/core/R$id;->info:I

    invoke-virtual {v7, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1881
    sget p1, Landroidx/core/R$id;->info:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_7
    move p1, v8

    move p2, p1

    goto :goto_9

    .line 1884
    :cond_b
    iget v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    if-lez v1, :cond_d

    .line 1885
    sget p1, Landroidx/core/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 1887
    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget p2, p2, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    if-le p2, p1, :cond_c

    .line 1888
    sget p1, Landroidx/core/R$id;->info:I

    sget p2, Landroidx/core/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_8

    .line 1891
    :cond_c
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object p1

    .line 1892
    sget p2, Landroidx/core/R$id;->info:I

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1894
    :goto_8
    sget p1, Landroidx/core/R$id;->info:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_7

    .line 1898
    :cond_d
    sget v1, Landroidx/core/R$id;->info:I

    invoke-virtual {v7, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1902
    :goto_9
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_f

    .line 1903
    sget v2, Landroidx/core/R$id;->text:I

    invoke-virtual {v7, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1904
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_e

    .line 1905
    sget v2, Landroidx/core/R$id;->text2:I

    invoke-virtual {v7, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1906
    sget v1, Landroidx/core/R$id;->text2:I

    invoke-virtual {v7, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v1, v8

    goto :goto_a

    .line 1909
    :cond_e
    sget v1, Landroidx/core/R$id;->text2:I

    invoke-virtual {v7, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_f
    move v1, v9

    :goto_a
    if-eqz v1, :cond_11

    .line 1915
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v10, :cond_11

    if-eqz p3, :cond_10

    .line 1918
    sget p3, Landroidx/core/R$dimen;->notification_subtext_size:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    .line 1920
    sget v0, Landroidx/core/R$id;->text:I

    invoke-virtual {v7, v0, v9, p3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 1924
    :cond_10
    sget v2, Landroidx/core/R$id;->line1:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 1927
    :cond_11
    iget-object p3, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_13

    .line 1928
    iget-object p2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean p2, p2, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    if-eqz p2, :cond_12

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v10, :cond_12

    .line 1929
    sget p2, Landroidx/core/R$id;->chronometer:I

    invoke-virtual {v7, p2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1930
    sget p2, Landroidx/core/R$id;->chronometer:I

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 1931
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v0

    .line 1932
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-string p0, "setBase"

    .line 1930
    invoke-virtual {v7, p2, p0, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 1933
    sget p0, Landroidx/core/R$id;->chronometer:I

    const-string p2, "setStarted"

    invoke-virtual {v7, p0, p2, v8}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto :goto_b

    .line 1935
    :cond_12
    sget p2, Landroidx/core/R$id;->time:I

    invoke-virtual {v7, p2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1936
    sget p2, Landroidx/core/R$id;->time:I

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v0

    const-string p0, "setTime"

    invoke-virtual {v7, p2, p0, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    :goto_b
    move p2, v8

    .line 1940
    :cond_13
    sget p0, Landroidx/core/R$id;->right_side:I

    if-eqz p2, :cond_14

    move p2, v9

    goto :goto_c

    :cond_14
    move p2, v11

    :goto_c
    invoke-virtual {v7, p0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1941
    sget p0, Landroidx/core/R$id;->line3:I

    if-eqz p1, :cond_15

    goto :goto_d

    :cond_15
    move v9, v11

    :goto_d
    invoke-virtual {v7, p0, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v7
.end method

.method public buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 7

    .line 1990
    invoke-direct {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->hideNormalContent(Landroid/widget/RemoteViews;)V

    .line 1991
    sget v0, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 1992
    sget v0, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1993
    sget p2, Landroidx/core/R$id;->notification_main_column:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1994
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    .line 1996
    sget v2, Landroidx/core/R$id;->notification_main_column_container:I

    const/4 v3, 0x0

    .line 1997
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;->calculateTopPadding()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    .line 1996
    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_0
    return-void
.end method

.method public createColoredBitmap(II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1950
    invoke-direct {p0, p1, p2, v0}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public abstract makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
.end method

.method public abstract makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
.end method

.method public abstract makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
.end method

.method public setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1

    .line 1730
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eq v0, p1, :cond_0

    .line 1731
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 1732
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p1, :cond_0

    .line 1733
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method
