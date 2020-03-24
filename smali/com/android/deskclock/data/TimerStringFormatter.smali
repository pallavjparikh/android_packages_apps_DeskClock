.class public Lcom/android/deskclock/data/TimerStringFormatter;
.super Ljava/lang/Object;
.source "TimerStringFormatter.java"


# direct methods
.method public static formatString(Landroid/content/Context;IJZ)Ljava/lang/String;
    .locals 1

    .line 120
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 121
    invoke-static {p0, p2, p3, p4}, Lcom/android/deskclock/data/TimerStringFormatter;->formatTimeRemaining(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    aput-object p0, v0, p2

    .line 120
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTimeRemaining(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 9

    const-wide/32 v0, 0x36ee80

    .line 36
    div-long v0, p1, v0

    long-to-int v0, v0

    const-wide/32 v1, 0xea60

    .line 37
    div-long v1, p1, v1

    const-wide/16 v3, 0x3c

    rem-long/2addr v1, v3

    long-to-int v1, v1

    const-wide/16 v5, 0x3e8

    .line 38
    div-long v7, p1, v5

    rem-long/2addr v7, v3

    long-to-int v2, v7

    .line 43
    rem-long/2addr p1, v5

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    add-int/lit8 v2, v2, 0x1

    const/16 p1, 0x3c

    if-ne v2, p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v1, p2

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p2

    :cond_1
    :goto_0
    const p1, 0x7f0f0007

    .line 70
    invoke-static {p0, p1, v1}, Lcom/android/deskclock/Utils;->getNumberFormattedQuantityString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    const v3, 0x7f0f0005

    .line 72
    invoke-static {p0, v3, v0}, Lcom/android/deskclock/Utils;->getNumberFormattedQuantityString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0f0009

    .line 74
    invoke-static {p0, v4, v2}, Lcom/android/deskclock/Utils;->getNumberFormattedQuantityString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-gt v1, v5, :cond_3

    if-gt v0, v5, :cond_3

    if-le v2, v5, :cond_2

    goto :goto_1

    :cond_2
    const v6, 0x7f11025a

    goto :goto_2

    :cond_3
    :goto_1
    const v6, 0x7f110259

    .line 78
    :goto_2
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-lez v0, :cond_4

    move v0, v5

    goto :goto_3

    :cond_4
    move v0, p2

    :goto_3
    if-lez v1, :cond_5

    move v1, v5

    goto :goto_4

    :cond_5
    move v1, p2

    :goto_4
    if-lez v2, :cond_6

    if-eqz p3, :cond_6

    move v2, v5

    goto :goto_5

    :cond_6
    move v2, p2

    :goto_5
    const/4 v7, -0x1

    if-eqz v0, :cond_a

    if-eqz v1, :cond_8

    if-eqz v2, :cond_7

    const p3, 0x7f11024f

    goto :goto_6

    :cond_7
    const p3, 0x7f11024e

    goto :goto_6

    :cond_8
    if-eqz v2, :cond_9

    const p3, 0x7f110250

    goto :goto_6

    :cond_9
    const p3, 0x7f11024d

    goto :goto_6

    :cond_a
    if-eqz v1, :cond_c

    if-eqz v2, :cond_b

    const p3, 0x7f110253

    goto :goto_6

    :cond_b
    const p3, 0x7f110252

    goto :goto_6

    :cond_c
    if-eqz v2, :cond_d

    const p3, 0x7f110254

    goto :goto_6

    :cond_d
    if-nez p3, :cond_e

    const p3, 0x7f110251

    goto :goto_6

    :cond_e
    move p3, v7

    :goto_6
    if-ne p3, v7, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_f
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v3, p3, p2

    aput-object p1, p3, v5

    const/4 p1, 0x2

    aput-object v6, p3, p1

    const/4 p1, 0x3

    aput-object v4, p3, p1

    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
