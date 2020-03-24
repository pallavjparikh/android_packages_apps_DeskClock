.class public Lcom/android/alarmclock/DigitalAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "DigitalAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;
    }
.end annotation


# static fields
.field private static final DAY_CHANGE_INTENT:Landroid/content/Intent;

.field private static final LOGGER:Lcom/android/deskclock/LogUtils$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 99
    new-instance v0, Lcom/android/deskclock/LogUtils$Logger;

    const-string v1, "DigitalWidgetProvider"

    invoke-direct {v0, v1}, Lcom/android/deskclock/LogUtils$Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/alarmclock/DigitalAppWidgetProvider;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ON_DAY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/alarmclock/DigitalAppWidgetProvider;->DAY_CHANGE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 1

    const-string v0, "alarm"

    .line 390
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    return-object p0
.end method

.method private static getDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 455
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const v1, 0x7f110155

    .line 456
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 457
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLongestTimeString(Landroid/widget/TextClock;)Ljava/lang/CharSequence;
    .locals 7

    .line 443
    invoke-virtual {p0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object p0

    .line 446
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x17

    const/16 v5, 0x3b

    move-object v0, v6

    .line 447
    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 448
    invoke-static {p0, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static measure(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;ILandroid/view/View;)Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;
    .locals 5

    .line 400
    invoke-static {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$900(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;

    move-result-object p0

    const v0, 0x7f0a0075

    .line 403
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    const v1, 0x7f0a006b

    .line 404
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    const v2, 0x7f0a00d8

    .line 405
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a00d9

    .line 406
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 409
    invoke-static {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$1000(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;I)V

    .line 410
    invoke-static {v1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->getLongestTimeString(Landroid/widget/TextClock;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    .line 411
    invoke-static {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$300(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result p1

    int-to-float p1, p1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, p1}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 412
    invoke-static {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$200(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, v4, p1}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 413
    invoke-static {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$200(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 414
    invoke-static {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$1100(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v3, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 415
    invoke-static {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$1200(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result p1

    invoke-static {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$1200(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result v0

    invoke-virtual {v3, p1, v4, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 418
    invoke-static {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$1300(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result p1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 419
    invoke-static {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$1400(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result v0

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 420
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 421
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 422
    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    .line 423
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p2, v4, v4, p1, v0}, Landroid/view/View;->layout(IIII)V

    .line 426
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$1502(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;I)I

    .line 427
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$1602(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;I)I

    .line 428
    invoke-virtual {v1}, Landroid/widget/TextClock;->getMeasuredWidth()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$1702(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;I)I

    .line 429
    invoke-virtual {v1}, Landroid/widget/TextClock;->getMeasuredHeight()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$1802(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;I)I

    .line 432
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 433
    invoke-static {v3}, Lcom/android/deskclock/Utils;->createBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$102(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    return-object p0
.end method

.method private static optimizeSizes(Landroid/content/Context;Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;Ljava/lang/String;)Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;
    .locals 3

    .line 293
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d003e

    const/4 v2, 0x0

    .line 295
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 298
    invoke-static {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->getDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f0a0075

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    .line 300
    invoke-virtual {v1, p0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {v1, p0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    const p0, 0x7f0a00d9

    .line 304
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v1, 0x7f0a00d8

    .line 305
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 306
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p2, 0x8

    .line 307
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 311
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/deskclock/uidata/UiDataModel;->getAlarmIconTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 317
    :goto_0
    invoke-static {p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$500(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result p0

    invoke-static {p1, p0, v0}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->measure(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;ILandroid/view/View;)Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;

    move-result-object p0

    .line 318
    invoke-static {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$600(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object p0

    .line 323
    :cond_1
    invoke-static {p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$700(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result p2

    invoke-static {p1, p2, v0}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->measure(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;ILandroid/view/View;)Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;

    move-result-object p2

    .line 324
    invoke-static {p2}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$600(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p2

    .line 329
    :cond_2
    :goto_1
    invoke-static {p2}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$800(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result v1

    invoke-static {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$800(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 330
    invoke-static {p2}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$800(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result v1

    invoke-static {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$800(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 331
    invoke-static {p2}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$800(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result v2

    if-ne v1, v2, :cond_3

    return-object p2

    .line 335
    :cond_3
    invoke-static {p1, v1, v0}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->measure(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;ILandroid/view/View;)Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;

    move-result-object v1

    .line 336
    invoke-static {v1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$600(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object p0, v1

    goto :goto_1

    :cond_4
    move-object p2, v1

    goto :goto_1

    :cond_5
    return-object p2
.end method

.method private static relayoutWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;Z)Landroid/widget/RemoteViews;
    .locals 15

    move-object v0, p0

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 208
    new-instance v2, Landroid/widget/RemoteViews;

    const v3, 0x7f0d003d

    invoke-direct {v2, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 211
    invoke-static/range {p1 .. p2}, Lcom/android/deskclock/Utils;->isWidgetClickable(Landroid/appwidget/AppWidgetManager;I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 212
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/deskclock/DeskClock;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v4, 0x7f0a008a

    .line 214
    invoke-virtual {v2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 218
    :cond_0
    invoke-static {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->getDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0a0075

    const-string v5, "setFormat12Hour"

    .line 219
    invoke-virtual {v2, v4, v5, v1}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    const-string v5, "setFormat24Hour"

    .line 220
    invoke-virtual {v2, v4, v5, v1}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 222
    invoke-static {p0}, Lcom/android/deskclock/Utils;->getNextAlarm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v6, 0x8

    const v7, 0x7f0a00d9

    const v8, 0x7f0a00d8

    if-eqz v5, :cond_1

    .line 224
    invoke-virtual {v2, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 225
    invoke-virtual {v2, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {v2, v8, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 228
    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 229
    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    if-nez p3, :cond_2

    .line 233
    invoke-virtual/range {p1 .. p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object/from16 v5, p3

    .line 237
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 238
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    const-string v11, "appWidgetMinWidth"

    .line 239
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v11, v11

    const-string v12, "appWidgetMinHeight"

    .line 240
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v10

    float-to-int v12, v12

    const-string v13, "appWidgetMaxWidth"

    .line 241
    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v10

    float-to-int v13, v13

    const-string v14, "appWidgetMaxHeight"

    .line 242
    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v10, v5

    float-to-int v5, v10

    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    move v11, v13

    :goto_2
    if-eqz p4, :cond_4

    move v12, v5

    :cond_4
    const v5, 0x7f07014f

    .line 246
    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 249
    new-instance v10, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v5, v13}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;-><init>(IIILcom/android/alarmclock/DigitalAppWidgetProvider$1;)V

    .line 252
    invoke-static {p0, v10, v1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->optimizeSizes(Landroid/content/Context;Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;Ljava/lang/String;)Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;

    move-result-object v1

    .line 253
    sget-object v5, Lcom/android/alarmclock/DigitalAppWidgetProvider;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    invoke-virtual {v5}, Lcom/android/deskclock/LogUtils$Logger;->isVerboseLoggable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 254
    sget-object v5, Lcom/android/alarmclock/DigitalAppWidgetProvider;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    invoke-virtual {v1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v10, v11}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :cond_5
    invoke-static {v1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$100(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 259
    invoke-static {v1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$200(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v3, v5}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 260
    invoke-static {v1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$200(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v8, v3, v4}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const v4, 0x7f0a006b

    .line 261
    invoke-static {v1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$300(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v3, v5}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const v4, 0x7f070150

    .line 264
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 265
    invoke-static {v1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->access$400(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I

    move-result v1

    const v5, 0x7f0a0179

    if-gt v1, v4, :cond_6

    .line 267
    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    .line 270
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/alarmclock/DigitalAppWidgetCityService;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "appWidgetId"

    move/from16 v6, p2

    .line 271
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v4, 0x1

    .line 272
    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 273
    invoke-virtual {v2, v5, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 274
    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 277
    invoke-static/range {p1 .. p2}, Lcom/android/deskclock/Utils;->isWidgetClickable(Landroid/appwidget/AppWidgetManager;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 278
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/deskclock/worldclock/CitySelectionActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 280
    invoke-virtual {v2, v5, v0}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    :cond_7
    :goto_3
    return-object v2
.end method

.method private static relayoutWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 194
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->relayoutWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    const/4 v1, 0x0

    .line 195
    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->relayoutWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;Z)Landroid/widget/RemoteViews;

    move-result-object p0

    .line 196
    new-instance p3, Landroid/widget/RemoteViews;

    invoke-direct {p3, p0, v0}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 197
    invoke-virtual {p1, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    const p0, 0x7f0a0179

    .line 198
    invoke-virtual {p1, p2, p0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    return-void
.end method

.method private removeDayChangeCallback(Landroid/content/Context;)V
    .locals 2

    .line 381
    sget-object p0, Lcom/android/alarmclock/DigitalAppWidgetProvider;->DAY_CHANGE_INTENT:Landroid/content/Intent;

    const/4 v0, 0x0

    const/high16 v1, 0x20000000

    .line 382
    invoke-static {p1, v0, p0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 384
    invoke-static {p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 385
    invoke-virtual {p0}, Landroid/app/PendingIntent;->cancel()V

    :cond_0
    return-void
.end method

.method private updateDayChangeCallback(Landroid/content/Context;)V
    .locals 4

    .line 351
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getSelectedCities()Ljava/util/List;

    move-result-object v1

    .line 353
    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getShowHomeClock()Z

    move-result v2

    .line 354
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 356
    invoke-direct {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->removeDayChangeCallback(Landroid/content/Context;)V

    return-void

    .line 361
    :cond_0
    new-instance p0, Landroid/util/ArraySet;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 362
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_1

    .line 364
    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getHomeCity()Lcom/android/deskclock/data/City;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/City;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/data/City;

    .line 367
    invoke-virtual {v1}, Lcom/android/deskclock/data/City;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0, p0}, Lcom/android/deskclock/Utils;->getNextDay(Ljava/util/Date;Ljava/util/Collection;)Ljava/util/Date;

    move-result-object p0

    const/4 v0, 0x0

    .line 372
    sget-object v1, Lcom/android/alarmclock/DigitalAppWidgetProvider;->DAY_CHANGE_INTENT:Landroid/content/Intent;

    const/high16 v2, 0x8000000

    .line 373
    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 374
    invoke-static {p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 185
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    invoke-static {p1, p0, p3, p4}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->relayoutWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->removeDayChangeCallback(Landroid/content/Context;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    .line 113
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->updateDayChangeCallback(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 129
    sget-object v0, Lcom/android/alarmclock/DigitalAppWidgetProvider;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 132
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/android/alarmclock/DigitalAppWidgetProvider;

    invoke-direct {v1, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const/4 v3, -0x1

    .line 141
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v4, "com.android.deskclock.ALARM_CHANGED"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x6

    goto :goto_1

    :sswitch_2
    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_3
    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_4
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_5
    const-string v4, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v2

    goto :goto_1

    :sswitch_6
    const-string v4, "com.android.deskclock.ON_DAY_CHANGE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x7

    goto :goto_1

    :sswitch_7
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_8
    const-string v4, "com.android.deskclock.WORLD_CITIES_CHANGED"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v3

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_3

    .line 151
    :pswitch_0
    array-length p2, v1

    :goto_2
    if-ge v2, p2, :cond_2

    aget v3, v1, v2

    .line 152
    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v0, v3, v4}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->relayoutWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 156
    :cond_2
    :goto_3
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p2

    .line 157
    const-class v0, Lcom/android/alarmclock/DigitalAppWidgetProvider;

    array-length v2, v1

    const v3, 0x7f1101b1

    invoke-virtual {p2, v0, v2, v3}, Lcom/android/deskclock/data/DataModel;->updateWidgetCount(Ljava/lang/Class;II)V

    .line 159
    array-length p2, v1

    if-lez p2, :cond_3

    .line 160
    invoke-direct {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->updateDayChangeCallback(Landroid/content/Context;)V

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x73510050 -> :sswitch_8
        -0x56ac2893 -> :sswitch_7
        -0x44c327d2 -> :sswitch_6
        -0x185734ab -> :sswitch_5
        -0x122164c -> :sswitch_4
        0x1df32313 -> :sswitch_3
        0x1e1f7f95 -> :sswitch_2
        0x2b5f9a81 -> :sswitch_1
        0x3e117848 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    .line 169
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 171
    array-length p0, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v1, p3, v0

    .line 172
    invoke-virtual {p2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->relayoutWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
