.class public Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;
.super Ljava/lang/Object;
.source "DigitalAppWidgetCityViewsFactory.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/android/deskclock/LogUtils$Logger;


# instance fields
.field private final m12HourFontSize:F

.field private final m24HourFontSize:F

.field private mCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFillInIntent:Landroid/content/Intent;

.field private mFontScale:F

.field private mHomeCity:Lcom/android/deskclock/data/City;

.field private mShowHomeClock:Z

.field private final mWidgetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/android/deskclock/LogUtils$Logger;

    const-string v1, "DigWidgetViewsFactory"

    invoke-direct {v0, v1}, Lcom/android/deskclock/LogUtils$Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mFillInIntent:Landroid/content/Intent;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 59
    iput v0, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mFontScale:F

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mCities:Ljava/util/List;

    .line 66
    iput-object p1, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mContext:Landroid/content/Context;

    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mWidgetId:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700a6

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->m12HourFontSize:F

    const p2, 0x7f0700a7

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->m24HourFontSize:F

    return-void
.end method

.method private hide(Landroid/widget/RemoteViews;III)V
    .locals 0

    const/4 p0, 0x4

    .line 209
    invoke-virtual {p1, p4, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 210
    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 211
    invoke-virtual {p1, p3, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method private update(Landroid/widget/RemoteViews;Lcom/android/deskclock/data/City;III)V
    .locals 5

    const/4 v0, 0x0

    const v1, 0x3ecccccd    # 0.4f

    .line 181
    invoke-static {v1, v0}, Lcom/android/deskclock/Utils;->get12ModeFormat(FZ)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "setFormat12Hour"

    invoke-virtual {p1, p3, v2, v1}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 182
    invoke-static {v0}, Lcom/android/deskclock/Utils;->get24ModeFormat(Z)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "setFormat24Hour"

    invoke-virtual {p1, p3, v2, v1}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 184
    iget-object v1, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget v1, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->m24HourFontSize:F

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->m12HourFontSize:F

    .line 186
    :goto_0
    iget v2, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mFontScale:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, p3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 187
    invoke-virtual {p2}, Lcom/android/deskclock/data/City;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setTimeZone"

    invoke-virtual {p1, p3, v2, v1}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Lcom/android/deskclock/data/City;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 191
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 192
    invoke-virtual {p2}, Lcom/android/deskclock/data/City;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    const/4 v2, 0x7

    .line 193
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    .line 197
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 198
    invoke-virtual {p2, v2, v4, v3}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 199
    iget-object p0, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mContext:Landroid/content/Context;

    const v2, 0x7f11026e

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-virtual {p1, p5, p0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_2
    if-eqz v1, :cond_3

    move p0, v0

    goto :goto_2

    :cond_3
    const/16 p0, 0x8

    .line 203
    :goto_2
    invoke-virtual {p1, p5, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 204
    invoke-virtual {p1, p3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 205
    invoke-virtual {p1, p4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getCount()I
    .locals 4

    monitor-enter p0

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mShowHomeClock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mCities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    double-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getViewAt(I)Landroid/widget/RemoteViews;
    .locals 9

    monitor-enter p0

    .line 108
    :try_start_0
    iget-boolean v0, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mShowHomeClock:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v3, v0

    add-int/lit8 v0, v3, 0x1

    const/4 v4, 0x0

    if-ne v3, v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mHomeCity:Lcom/android/deskclock/data/City;

    :goto_1
    move-object v5, v1

    goto :goto_2

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mCities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    iget-object v1, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mCities:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/data/City;

    goto :goto_1

    :cond_2
    move-object v5, v4

    .line 114
    :goto_2
    iget-object v1, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mCities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mCities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/deskclock/data/City;

    :cond_3
    move-object v0, v4

    .line 116
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d008c

    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    if-eqz v5, :cond_4

    const v6, 0x7f0a00c0

    const v7, 0x7f0a0063

    const v8, 0x7f0a0060

    move-object v3, p0

    move-object v4, v1

    .line 121
    invoke-direct/range {v3 .. v8}, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->update(Landroid/widget/RemoteViews;Lcom/android/deskclock/data/City;III)V

    goto :goto_3

    :cond_4
    const v3, 0x7f0a00c0

    const v4, 0x7f0a0063

    const v5, 0x7f0a0060

    .line 123
    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->hide(Landroid/widget/RemoteViews;III)V

    :goto_3
    if-eqz v0, :cond_5

    const v6, 0x7f0a00fa

    const v7, 0x7f0a0064

    const v8, 0x7f0a0061

    move-object v3, p0

    move-object v4, v1

    move-object v5, v0

    .line 128
    invoke-direct/range {v3 .. v8}, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->update(Landroid/widget/RemoteViews;Lcom/android/deskclock/data/City;III)V

    goto :goto_4

    :cond_5
    const v0, 0x7f0a00fa

    const v3, 0x7f0a0064

    const v4, 0x7f0a0061

    .line 130
    invoke-direct {p0, v1, v0, v3, v4}, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->hide(Landroid/widget/RemoteViews;III)V

    .line 134
    :goto_4
    invoke-virtual {p0}, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->getCount()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_6

    goto :goto_5

    :cond_6
    move v3, v2

    :goto_5
    const p1, 0x7f0a0066

    if-eqz v3, :cond_7

    const/16 v2, 0x8

    .line 135
    :cond_7
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const p1, 0x7f0a0177

    .line 137
    iget-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mFillInIntent:Landroid/content/Intent;

    invoke-virtual {v1, p1, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getViewTypeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate()V
    .locals 3

    .line 76
    sget-object v0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DigitalAppWidgetCityViewsFactory onCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mWidgetId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized onDataSetChanged()V
    .locals 4

    monitor-enter p0

    .line 170
    :try_start_0
    new-instance v0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;-><init>(Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$1;)V

    .line 171
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/deskclock/data/DataModel;->run(Ljava/lang/Runnable;)V

    .line 174
    invoke-static {v0}, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;->access$100(Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;)Lcom/android/deskclock/data/City;

    move-result-object v2

    iput-object v2, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mHomeCity:Lcom/android/deskclock/data/City;

    .line 175
    invoke-static {v0}, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;->access$200(Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mCities:Ljava/util/List;

    .line 176
    invoke-static {v0}, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;->access$300(Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mShowHomeClock:Z

    .line 177
    iget-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mWidgetId:I

    iget-object v3, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mCities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/alarmclock/WidgetUtils;->getScaleRatio(Landroid/content/Context;Landroid/os/Bundle;II)F

    move-result v0

    iput v0, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mFontScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy()V
    .locals 3

    .line 81
    sget-object v0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DigitalAppWidgetCityViewsFactory onDestroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;->mWidgetId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
