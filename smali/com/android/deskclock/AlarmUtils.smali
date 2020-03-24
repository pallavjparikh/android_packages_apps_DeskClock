.class public Lcom/android/deskclock/AlarmUtils;
.super Ljava/lang/Object;
.source "AlarmUtils.java"


# direct methods
.method static formatElapsedTimeUntilAlarm(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0xea60

    cmp-long v3, p1, v1

    const/4 v4, 0x0

    if-gez v3, :cond_0

    .line 67
    aget-object p0, v0, v4

    return-object p0

    .line 73
    :cond_0
    rem-long v5, p1, v1

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    sub-long v7, v1, v5

    :goto_0
    add-long/2addr p1, v7

    long-to-int p1, p1

    const p2, 0x36ee80

    .line 76
    div-int p2, p1, p2

    const v1, 0xea60

    .line 77
    div-int/2addr p1, v1

    rem-int/lit8 p1, p1, 0x3c

    .line 78
    div-int/lit8 v1, p2, 0x18

    .line 79
    rem-int/lit8 p2, p2, 0x18

    const v2, 0x7f0f0003

    .line 81
    invoke-static {p0, v2, v1}, Lcom/android/deskclock/Utils;->getNumberFormattedQuantityString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0007

    .line 82
    invoke-static {p0, v3, p1}, Lcom/android/deskclock/Utils;->getNumberFormattedQuantityString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0f0005

    .line 83
    invoke-static {p0, v5, p2}, Lcom/android/deskclock/Utils;->getNumberFormattedQuantityString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    const/4 v5, 0x1

    if-lez v1, :cond_2

    move v1, v5

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    if-lez p2, :cond_3

    move p2, v5

    goto :goto_2

    :cond_3
    move p2, v4

    :goto_2
    if-lez p1, :cond_4

    move p1, v5

    goto :goto_3

    :cond_4
    move p1, v4

    :goto_3
    const/4 v6, 0x2

    if-eqz p2, :cond_5

    move p2, v6

    goto :goto_4

    :cond_5
    move p2, v4

    :goto_4
    or-int/2addr p2, v1

    if-eqz p1, :cond_6

    const/4 p1, 0x4

    goto :goto_5

    :cond_6
    move p1, v4

    :goto_5
    or-int/2addr p1, p2

    .line 92
    aget-object p1, v0, p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v2, p2, v4

    aput-object p0, p2, v5

    aput-object v3, p2, v6

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAlarmText(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)Ljava/lang/String;
    .locals 1

    .line 53
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    .line 54
    iget-object v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static getFormattedTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 48
    invoke-static {p0, v0}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    .line 40
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "EHm"

    goto :goto_0

    :cond_0
    const-string p0, "Ehma"

    .line 41
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static popAlarmSetSnackbar(Landroid/view/View;J)V
    .locals 2

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    invoke-static {v0, p1, p2}, Lcom/android/deskclock/AlarmUtils;->formatElapsedTimeUntilAlarm(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    .line 107
    invoke-static {p0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p2

    invoke-static {p2}, Lcom/android/deskclock/widget/toast/SnackbarManager;->show(Lcom/google/android/material/snackbar/Snackbar;)V

    .line 108
    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static popAlarmSetToast(Landroid/content/Context;J)V
    .locals 2

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 97
    invoke-static {p0, p1, p2}, Lcom/android/deskclock/AlarmUtils;->formatElapsedTimeUntilAlarm(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 98
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 99
    invoke-static {p0}, Lcom/android/deskclock/widget/toast/ToastManager;->setToast(Landroid/widget/Toast;)V

    .line 100
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
