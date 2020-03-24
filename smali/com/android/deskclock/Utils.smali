.class public Lcom/android/deskclock/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/Utils$ClickAccessibilityDelegate;
    }
.end annotation


# static fields
.field public static final RINGTONE_SILENT:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    sput-object v0, Lcom/android/deskclock/Utils;->RINGTONE_SILENT:Landroid/net/Uri;

    return-void
.end method

.method public static calculateRadiusOffset(FFF)F
    .locals 0

    .line 185
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static createBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    .line 506
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 507
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 508
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static createHoursDifferentString(Landroid/content/Context;ZZII)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    const p1, 0x7f0f0006

    .line 561
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 560
    invoke-static {p0, p1, p3}, Lcom/android/deskclock/Utils;->getNumberFormattedQuantityString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f0f0008

    .line 564
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    .line 563
    invoke-static {p0, p3, p4}, Lcom/android/deskclock/Utils;->getNumberFormattedQuantityString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_0

    const p2, 0x7f11026f

    goto :goto_0

    :cond_0
    const p2, 0x7f110270

    :goto_0
    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v0

    aput-object p3, p4, v1

    .line 568
    invoke-virtual {p0, p2, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    const v2, 0x7f0f0005

    .line 573
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 572
    invoke-static {p0, v2, p3}, Lcom/android/deskclock/Utils;->getNumberFormattedQuantityString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p3

    const v2, 0x7f0f0007

    .line 575
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    .line 574
    invoke-static {p0, v2, p4}, Lcom/android/deskclock/Utils;->getNumberFormattedQuantityString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p4

    if-eqz p2, :cond_2

    const p2, 0x7f110273

    goto :goto_1

    :cond_2
    const p2, 0x7f110274

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_3

    move-object p3, p4

    :cond_3
    aput-object p3, v1, v0

    .line 578
    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static dimClockView(ZLandroid/view/View;)V
    .locals 3

    .line 253
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    .line 254
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p0, :cond_0

    const p0, 0x40ffffff    # 7.9999995f

    goto :goto_0

    :cond_0
    const p0, -0x3f000001    # -7.9999995f

    .line 256
    :goto_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 255
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p0, 0x2

    .line 258
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static enforceMainLooper()V
    .locals 2

    .line 88
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "May only call from main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enforceNotMainLooper()V
    .locals 2

    .line 94
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "May not call from main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get12ModeFormat(FZ)Ljava/lang/CharSequence;
    .locals 4

    .line 398
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "hmsa"

    goto :goto_0

    :cond_0
    const-string p1, "hma"

    :goto_0
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    const-string v0, "a"

    const-string v1, ""

    .line 401
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, " "

    const-string v1, "\u200a"

    .line 405
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x61

    .line 407
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    return-object p1

    .line 412
    :cond_2
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 413
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {p1, p0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 p0, v0, 0x1

    const/16 v2, 0x21

    invoke-interface {v1, p1, v0, p0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 415
    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 v3, 0x0

    invoke-direct {p1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v1, p1, v0, p0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 417
    new-instance p1, Landroid/text/style/TypefaceSpan;

    const-string v3, "sans-serif"

    invoke-direct {p1, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p1, v0, p0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method public static get24ModeFormat(Z)Ljava/lang/CharSequence;
    .locals 1

    .line 424
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string p0, "Hms"

    goto :goto_0

    :cond_0
    const-string p0, "Hm"

    :goto_0
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGMTHourOffset(Ljava/util/TimeZone;Z)Ljava/lang/String;
    .locals 6

    .line 435
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0x36ee80

    .line 436
    div-long/2addr v0, v2

    .line 437
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-long v4, p0

    rem-long/2addr v4, v2

    const-wide/32 v2, 0xea60

    div-long/2addr v4, v2

    const/4 p0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 441
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p0, v2

    const-string v0, "%+d"

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 443
    :cond_0
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, p0

    const-string p0, "GMT %+d:%02d"

    invoke-static {p1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNextAlarm(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 287
    invoke-static {}, Lcom/android/deskclock/Utils;->isPreL()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/deskclock/Utils;->getNextAlarmPreL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/Utils;->getNextAlarmLOrLater(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getNextAlarmClock(Landroid/app/AlarmManager;)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 313
    invoke-virtual {p0}, Landroid/app/AlarmManager;->getNextAlarmClock()Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getNextAlarmLOrLater(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "alarm"

    .line 299
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 300
    invoke-static {v0}, Lcom/android/deskclock/Utils;->getNextAlarmClock(Landroid/app/AlarmManager;)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    .line 303
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 304
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 305
    invoke-static {p0, v2}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getNextAlarmPreL(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "next_alarm_formatted"

    .line 294
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNextDay(Ljava/util/Date;Ljava/util/Collection;)Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Collection<",
            "Ljava/util/TimeZone;",
            ">;)",
            "Ljava/util/Date;"
        }
    .end annotation

    .line 458
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TimeZone;

    .line 459
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 460
    invoke-virtual {v2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x6

    const/4 v4, 0x1

    .line 463
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    const/16 v3, 0xb

    const/4 v4, 0x0

    .line 466
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 467
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 468
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 469
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    if-eqz v1, :cond_1

    .line 471
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-gez v3, :cond_0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    .line 476
    :cond_3
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static getNumberFormattedQuantityString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 3

    .line 480
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 2

    .line 164
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    .line 165
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 167
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 168
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static getTimeString(Landroid/content/Context;III)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const v3, 0x7f1101df

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 593
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    const p1, 0x7f1101fb

    new-array v0, v0, [Ljava/lang/Object;

    .line 596
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p1, 0x7f110220

    new-array p2, v1, [Ljava/lang/Object;

    .line 598
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVectorDrawable(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
    .locals 1

    .line 497
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {v0, p1, p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object p0

    return-object p0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    .line 100
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 101
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static isAlarmWithin24Hours(Lcom/android/deskclock/provider/AlarmInstance;)Z
    .locals 4

    .line 322
    invoke-virtual {p0}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object p0

    .line 323
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLMR1OrLater()Z
    .locals 2

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLOrLater()Z
    .locals 2

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 1

    .line 535
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMOrLater()Z
    .locals 2

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNMR1OrLater()Z
    .locals 1

    .line 156
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastNMR1()Z

    move-result v0

    return v0
.end method

.method public static isNOrLater()Z
    .locals 1

    .line 149
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    return v0
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .locals 1

    .line 527
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPreL()Z
    .locals 2

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isScrolledToTop(Landroid/view/View;)Z
    .locals 1

    const/4 v0, -0x1

    .line 176
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isWidgetClickable(Landroid/appwidget/AppWidgetManager;I)Z
    .locals 1

    .line 488
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, -0x1

    const-string v0, "appWidgetCategory"

    .line 490
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static newArraySet(Ljava/util/Collection;)Landroid/util/ArraySet;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Landroid/util/ArraySet<",
            "TE;>;"
        }
    .end annotation

    .line 517
    new-instance v0, Landroid/util/ArraySet;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 518
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static now()J
    .locals 2

    .line 539
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static pendingActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 280
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static pendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 269
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static refreshAlarm(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a00d9

    .line 331
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a00d8

    .line 332
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    .line 337
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/Utils;->getNextAlarm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f110207

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 339
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 340
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 342
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 346
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static setClockIconTypeface(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a00d9

    .line 352
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 353
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/uidata/UiDataModel;->getAlarmIconTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static setClockSecondsEnabled(Landroid/widget/TextClock;Lcom/android/deskclock/AnalogClock;)V
    .locals 5

    .line 193
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getDisplayClockSeconds()Z

    move-result v0

    .line 194
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/data/DataModel;->getClockStyle()Lcom/android/deskclock/data/DataModel$ClockStyle;

    move-result-object v1

    .line 195
    sget-object v2, Lcom/android/deskclock/Utils$1;->$SwitchMap$com$android$deskclock$data$DataModel$ClockStyle:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 201
    invoke-virtual {p1, v4}, Lcom/android/deskclock/AnalogClock;->enableSeconds(Z)V

    .line 202
    invoke-static {p0, v0}, Lcom/android/deskclock/Utils;->setTimeFormat(Landroid/widget/TextClock;Z)V

    return-void

    .line 206
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected clock style: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :cond_1
    invoke-static {p0, v4}, Lcom/android/deskclock/Utils;->setTimeFormat(Landroid/widget/TextClock;Z)V

    .line 198
    invoke-virtual {p1, v0}, Lcom/android/deskclock/AnalogClock;->enableSeconds(Z)V

    return-void
.end method

.method public static setClockStyle(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 5

    .line 214
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getClockStyle()Lcom/android/deskclock/data/DataModel$ClockStyle;

    move-result-object v0

    .line 215
    sget-object v1, Lcom/android/deskclock/Utils$1;->$SwitchMap$com$android$deskclock$data$DataModel$ClockStyle:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 221
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 222
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    return-object p0

    .line 226
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected clock style: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 217
    :cond_1
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 218
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method

.method public static setScreensaverClockStyle(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 5

    .line 234
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getScreensaverClockStyle()Lcom/android/deskclock/data/DataModel$ClockStyle;

    move-result-object v0

    .line 235
    sget-object v1, Lcom/android/deskclock/Utils$1;->$SwitchMap$com$android$deskclock$data$DataModel$ClockStyle:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 241
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 242
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    return-object p0

    .line 246
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected clock style: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 237
    :cond_1
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 238
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method

.method public static setTimeFormat(Landroid/widget/TextClock;Z)V
    .locals 1

    if-eqz p0, :cond_0

    const v0, 0x3ecccccd    # 0.4f

    .line 385
    invoke-static {v0, p1}, Lcom/android/deskclock/Utils;->get12ModeFormat(FZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 387
    invoke-static {p1}, Lcom/android/deskclock/Utils;->get24ModeFormat(Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0075

    .line 360
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-nez p2, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 366
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 367
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 369
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 370
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 371
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static updateNextAlarm(Landroid/app/AlarmManager;Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 318
    invoke-virtual {p0, p1, p2}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static wallClock()J
    .locals 2

    .line 543
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
