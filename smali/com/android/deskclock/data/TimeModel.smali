.class final Lcom/android/deskclock/data/TimeModel;
.super Ljava/lang/Object;
.source "TimeModel.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/deskclock/data/TimeModel;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method currentTimeMillis()J
    .locals 2

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method elapsedRealtime()J
    .locals 2

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method getCalendar()Ljava/util/Calendar;
    .locals 3

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/android/deskclock/data/TimeModel;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method is24HourFormat()Z
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/deskclock/data/TimeModel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
